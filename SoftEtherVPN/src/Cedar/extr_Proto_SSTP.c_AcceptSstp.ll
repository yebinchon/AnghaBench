; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Proto_SSTP.c_AcceptSstp.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Proto_SSTP.c_AcceptSstp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32* }

@MAX_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"HTTP/1.1\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"200\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"OK\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"Content-Length\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"18446744073709551615\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"Server\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"Microsoft-HTTPAPI/2.0\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"Date\00", align 1
@INFINITE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [25 x i8] c"ProcessSstpHttps Start.\0A\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"ProcessSstpHttps End.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AcceptSstp(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %12 = load i32, i32* @MAX_SIZE, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %6, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %7, align 8
  store i32 0, i32* %9, align 4
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %17 = icmp eq %struct.TYPE_3__* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %65

19:                                               ; preds = %1
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  store i32* %22, i32** %4, align 8
  %23 = trunc i64 %13 to i32
  %24 = call i32 (...) @SystemTime64()
  %25 = call i32 @GetHttpDateStr(i8* %15, i32 %23, i32 %24)
  %26 = call i32* @NewHttpHeader(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  store i32* %26, i32** %5, align 8
  %27 = load i32*, i32** %5, align 8
  %28 = call i32 @NewHttpValue(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  %29 = call i32 @AddHttpValue(i32* %27, i32 %28)
  %30 = load i32*, i32** %5, align 8
  %31 = call i32 @NewHttpValue(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0))
  %32 = call i32 @AddHttpValue(i32* %30, i32 %31)
  %33 = load i32*, i32** %5, align 8
  %34 = call i32 @NewHttpValue(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8* %15)
  %35 = call i32 @AddHttpValue(i32* %33, i32 %34)
  %36 = load i32*, i32** %4, align 8
  %37 = load i32*, i32** %5, align 8
  %38 = call i32 @PostHttp(i32* %36, i32* %37, i32* null, i32 0)
  store i32 %38, i32* %8, align 4
  %39 = load i32*, i32** %5, align 8
  %40 = call i32 @FreeHttpHeader(i32* %39)
  %41 = load i32, i32* %8, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %61

43:                                               ; preds = %19
  %44 = load i32*, i32** %4, align 8
  %45 = load i32, i32* @INFINITE, align 4
  %46 = call i32 @SetTimeout(i32* %44, i32 %45)
  %47 = call i32* (...) @NewSockEvent()
  store i32* %47, i32** %10, align 8
  %48 = load i32*, i32** %4, align 8
  %49 = load i32*, i32** %10, align 8
  %50 = call i32 @JoinSockToSockEvent(i32* %48, i32* %49)
  %51 = call i32 @Debug(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0))
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32*, i32** %4, align 8
  %56 = load i32*, i32** %10, align 8
  %57 = call i32 @ProcessSstpHttps(i32 %54, i32* %55, i32* %56)
  store i32 %57, i32* %9, align 4
  %58 = call i32 @Debug(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0))
  %59 = load i32*, i32** %10, align 8
  %60 = call i32 @ReleaseSockEvent(i32* %59)
  br label %61

61:                                               ; preds = %43, %19
  %62 = load i32*, i32** %4, align 8
  %63 = call i32 @Disconnect(i32* %62)
  %64 = load i32, i32* %9, align 4
  store i32 %64, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %65

65:                                               ; preds = %61, %18
  %66 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %66)
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @GetHttpDateStr(i8*, i32, i32) #2

declare dso_local i32 @SystemTime64(...) #2

declare dso_local i32* @NewHttpHeader(i8*, i8*, i8*) #2

declare dso_local i32 @AddHttpValue(i32*, i32) #2

declare dso_local i32 @NewHttpValue(i8*, i8*) #2

declare dso_local i32 @PostHttp(i32*, i32*, i32*, i32) #2

declare dso_local i32 @FreeHttpHeader(i32*) #2

declare dso_local i32 @SetTimeout(i32*, i32) #2

declare dso_local i32* @NewSockEvent(...) #2

declare dso_local i32 @JoinSockToSockEvent(i32*, i32*) #2

declare dso_local i32 @Debug(i8*) #2

declare dso_local i32 @ProcessSstpHttps(i32, i32*, i32*) #2

declare dso_local i32 @ReleaseSockEvent(i32*) #2

declare dso_local i32 @Disconnect(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
