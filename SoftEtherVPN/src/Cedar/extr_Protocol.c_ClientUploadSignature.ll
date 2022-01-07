; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Protocol.c_ClientUploadSignature.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Protocol.c_ClientUploadSignature.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"POST\00", align 1
@HTTP_VPN_TARGET2 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"HTTP/1.1\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"Host\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"Content-Type\00", align 1
@HTTP_CONTENT_TYPE3 = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [11 x i8] c"Connection\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"Keep-Alive\00", align 1
@HTTP_PACK_RAND_SIZE_MAX = common dso_local global i32 0, align 4
@WaterMark = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ClientUploadSignature(%struct.TYPE_4__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca [128 x i8], align 16
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %10 = icmp eq %struct.TYPE_4__* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %65

12:                                               ; preds = %1
  %13 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = call i32 @IPToStr(i8* %13, i32 128, i32* %15)
  %17 = load i32, i32* @HTTP_VPN_TARGET2, align 4
  %18 = call i32* @NewHttpHeader(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %17, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  store i32* %18, i32** %4, align 8
  %19 = load i32*, i32** %4, align 8
  %20 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 0
  %21 = call i32 @NewHttpValue(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* %20)
  %22 = call i32 @AddHttpValue(i32* %19, i32 %21)
  %23 = load i32*, i32** %4, align 8
  %24 = load i8*, i8** @HTTP_CONTENT_TYPE3, align 8
  %25 = call i32 @NewHttpValue(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i8* %24)
  %26 = call i32 @AddHttpValue(i32* %23, i32 %25)
  %27 = load i32*, i32** %4, align 8
  %28 = call i32 @NewHttpValue(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0))
  %29 = call i32 @AddHttpValue(i32* %27, i32 %28)
  %30 = call i32 (...) @Rand32()
  %31 = load i32, i32* @HTTP_PACK_RAND_SIZE_MAX, align 4
  %32 = mul nsw i32 %31, 2
  %33 = srem i32 %30, %32
  %34 = sext i32 %33 to i64
  store i64 %34, i64* %6, align 8
  %35 = call i64 (...) @SizeOfWaterMark()
  %36 = load i64, i64* %6, align 8
  %37 = add i64 %35, %36
  store i64 %37, i64* %5, align 8
  %38 = load i64, i64* %5, align 8
  %39 = call i32* @Malloc(i64 %38)
  store i32* %39, i32** %7, align 8
  %40 = load i32*, i32** %7, align 8
  %41 = load i32, i32* @WaterMark, align 4
  %42 = call i64 (...) @SizeOfWaterMark()
  %43 = call i32 @Copy(i32* %40, i32 %41, i64 %42)
  %44 = load i32*, i32** %7, align 8
  %45 = call i64 (...) @SizeOfWaterMark()
  %46 = getelementptr inbounds i32, i32* %44, i64 %45
  %47 = load i64, i64* %6, align 8
  %48 = call i32 @Rand(i32* %46, i64 %47)
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %50 = load i32*, i32** %4, align 8
  %51 = load i32*, i32** %7, align 8
  %52 = load i64, i64* %5, align 8
  %53 = call i32 @PostHttp(%struct.TYPE_4__* %49, i32* %50, i32* %51, i64 %52)
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %12
  %56 = load i32*, i32** %7, align 8
  %57 = call i32 @Free(i32* %56)
  %58 = load i32*, i32** %4, align 8
  %59 = call i32 @FreeHttpHeader(i32* %58)
  store i32 0, i32* %2, align 4
  br label %65

60:                                               ; preds = %12
  %61 = load i32*, i32** %7, align 8
  %62 = call i32 @Free(i32* %61)
  %63 = load i32*, i32** %4, align 8
  %64 = call i32 @FreeHttpHeader(i32* %63)
  store i32 1, i32* %2, align 4
  br label %65

65:                                               ; preds = %60, %55, %11
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local i32 @IPToStr(i8*, i32, i32*) #1

declare dso_local i32* @NewHttpHeader(i8*, i32, i8*) #1

declare dso_local i32 @AddHttpValue(i32*, i32) #1

declare dso_local i32 @NewHttpValue(i8*, i8*) #1

declare dso_local i32 @Rand32(...) #1

declare dso_local i64 @SizeOfWaterMark(...) #1

declare dso_local i32* @Malloc(i64) #1

declare dso_local i32 @Copy(i32*, i32, i64) #1

declare dso_local i32 @Rand(i32*, i64) #1

declare dso_local i32 @PostHttp(%struct.TYPE_4__*, i32*, i32*, i64) #1

declare dso_local i32 @Free(i32*) #1

declare dso_local i32 @FreeHttpHeader(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
