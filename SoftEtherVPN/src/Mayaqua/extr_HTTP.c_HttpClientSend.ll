; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_HTTP.c_HttpClientSend.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_HTTP.c_HttpClientSend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32 }

@MAX_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"POST\00", align 1
@HTTP_VPN_TARGET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"HTTP/1.1\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"Date\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"Host\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"Keep-Alive\00", align 1
@HTTP_KEEP_ALIVE = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [11 x i8] c"Connection\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"Content-Type\00", align 1
@HTTP_CONTENT_TYPE2 = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @HttpClientSend(%struct.TYPE_7__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i32* %1, i32** %5, align 8
  %13 = load i32, i32* @MAX_SIZE, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %9, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %10, align 8
  %17 = load i32, i32* @MAX_SIZE, align 4
  %18 = zext i32 %17 to i64
  %19 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %11, align 8
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %21 = icmp eq %struct.TYPE_7__* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %2
  %23 = load i32*, i32** %5, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %22, %2
  store i32 0, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %75

26:                                               ; preds = %22
  %27 = trunc i64 %18 to i32
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = call i32 @IPToStr(i8* %19, i32 %27, i32* %29)
  %31 = load i32*, i32** %5, align 8
  %32 = call i32 @CreateDummyValue(i32* %31)
  %33 = load i32*, i32** %5, align 8
  %34 = call %struct.TYPE_8__* @PackToBuf(i32* %33)
  store %struct.TYPE_8__* %34, %struct.TYPE_8__** %6, align 8
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %36 = icmp eq %struct.TYPE_8__* %35, null
  br i1 %36, label %37, label %38

37:                                               ; preds = %26
  store i32 0, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %75

38:                                               ; preds = %26
  %39 = load i32, i32* @HTTP_VPN_TARGET, align 4
  %40 = call i32* @NewHttpHeader(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %39, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  store i32* %40, i32** %8, align 8
  %41 = trunc i64 %14 to i32
  %42 = call i32 (...) @SystemTime64()
  %43 = call i32 @GetHttpDateStr(i8* %16, i32 %41, i32 %42)
  %44 = load i32*, i32** %8, align 8
  %45 = call i32 @NewHttpValue(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* %16)
  %46 = call i32 @AddHttpValue(i32* %44, i32 %45)
  %47 = load i32*, i32** %8, align 8
  %48 = call i32 @NewHttpValue(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* %19)
  %49 = call i32 @AddHttpValue(i32* %47, i32 %48)
  %50 = load i32*, i32** %8, align 8
  %51 = load i8*, i8** @HTTP_KEEP_ALIVE, align 8
  %52 = call i32 @NewHttpValue(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i8* %51)
  %53 = call i32 @AddHttpValue(i32* %50, i32 %52)
  %54 = load i32*, i32** %8, align 8
  %55 = call i32 @NewHttpValue(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  %56 = call i32 @AddHttpValue(i32* %54, i32 %55)
  %57 = load i32*, i32** %8, align 8
  %58 = load i8*, i8** @HTTP_CONTENT_TYPE2, align 8
  %59 = call i32 @NewHttpValue(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i8* %58)
  %60 = call i32 @AddHttpValue(i32* %57, i32 %59)
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %62 = load i32*, i32** %8, align 8
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @PostHttp(%struct.TYPE_7__* %61, i32* %62, i32 %65, i32 %68)
  store i32 %69, i32* %7, align 4
  %70 = load i32*, i32** %8, align 8
  %71 = call i32 @FreeHttpHeader(i32* %70)
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %73 = call i32 @FreeBuf(%struct.TYPE_8__* %72)
  %74 = load i32, i32* %7, align 4
  store i32 %74, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %75

75:                                               ; preds = %38, %37, %25
  %76 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %76)
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @IPToStr(i8*, i32, i32*) #2

declare dso_local i32 @CreateDummyValue(i32*) #2

declare dso_local %struct.TYPE_8__* @PackToBuf(i32*) #2

declare dso_local i32* @NewHttpHeader(i8*, i32, i8*) #2

declare dso_local i32 @GetHttpDateStr(i8*, i32, i32) #2

declare dso_local i32 @SystemTime64(...) #2

declare dso_local i32 @AddHttpValue(i32*, i32) #2

declare dso_local i32 @NewHttpValue(i8*, i8*) #2

declare dso_local i32 @PostHttp(%struct.TYPE_7__*, i32*, i32, i32) #2

declare dso_local i32 @FreeHttpHeader(i32*) #2

declare dso_local i32 @FreeBuf(%struct.TYPE_8__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
