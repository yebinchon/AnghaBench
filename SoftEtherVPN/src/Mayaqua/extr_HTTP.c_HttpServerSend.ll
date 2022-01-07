; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_HTTP.c_HttpServerSend.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_HTTP.c_HttpServerSend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@MAX_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"HTTP/1.1\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"200\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"OK\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"Date\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"Keep-Alive\00", align 1
@HTTP_KEEP_ALIVE = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [11 x i8] c"Connection\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"Content-Type\00", align 1
@HTTP_CONTENT_TYPE2 = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @HttpServerSend(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %12 = load i32, i32* @MAX_SIZE, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %9, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %10, align 8
  %16 = load i32*, i32** %4, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load i32*, i32** %5, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %18, %2
  store i32 0, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %63

22:                                               ; preds = %18
  %23 = load i32*, i32** %5, align 8
  %24 = call i32 @CreateDummyValue(i32* %23)
  %25 = load i32*, i32** %5, align 8
  %26 = call %struct.TYPE_4__* @PackToBuf(i32* %25)
  store %struct.TYPE_4__* %26, %struct.TYPE_4__** %6, align 8
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %28 = icmp eq %struct.TYPE_4__* %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %22
  store i32 0, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %63

30:                                               ; preds = %22
  %31 = call i32* @NewHttpHeader(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  store i32* %31, i32** %8, align 8
  %32 = trunc i64 %13 to i32
  %33 = call i32 (...) @SystemTime64()
  %34 = call i32 @GetHttpDateStr(i8* %15, i32 %32, i32 %33)
  %35 = load i32*, i32** %8, align 8
  %36 = call i32 @NewHttpValue(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* %15)
  %37 = call i32 @AddHttpValue(i32* %35, i32 %36)
  %38 = load i32*, i32** %8, align 8
  %39 = load i8*, i8** @HTTP_KEEP_ALIVE, align 8
  %40 = call i32 @NewHttpValue(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i8* %39)
  %41 = call i32 @AddHttpValue(i32* %38, i32 %40)
  %42 = load i32*, i32** %8, align 8
  %43 = call i32 @NewHttpValue(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  %44 = call i32 @AddHttpValue(i32* %42, i32 %43)
  %45 = load i32*, i32** %8, align 8
  %46 = load i8*, i8** @HTTP_CONTENT_TYPE2, align 8
  %47 = call i32 @NewHttpValue(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i8* %46)
  %48 = call i32 @AddHttpValue(i32* %45, i32 %47)
  %49 = load i32*, i32** %4, align 8
  %50 = load i32*, i32** %8, align 8
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @PostHttp(i32* %49, i32* %50, i32 %53, i32 %56)
  store i32 %57, i32* %7, align 4
  %58 = load i32*, i32** %8, align 8
  %59 = call i32 @FreeHttpHeader(i32* %58)
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %61 = call i32 @FreeBuf(%struct.TYPE_4__* %60)
  %62 = load i32, i32* %7, align 4
  store i32 %62, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %63

63:                                               ; preds = %30, %29, %21
  %64 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %64)
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @CreateDummyValue(i32*) #2

declare dso_local %struct.TYPE_4__* @PackToBuf(i32*) #2

declare dso_local i32* @NewHttpHeader(i8*, i8*, i8*) #2

declare dso_local i32 @GetHttpDateStr(i8*, i32, i32) #2

declare dso_local i32 @SystemTime64(...) #2

declare dso_local i32 @AddHttpValue(i32*, i32) #2

declare dso_local i32 @NewHttpValue(i8*, i8*) #2

declare dso_local i32 @PostHttp(i32*, i32*, i32, i32) #2

declare dso_local i32 @FreeHttpHeader(i32*) #2

declare dso_local i32 @FreeBuf(%struct.TYPE_4__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
