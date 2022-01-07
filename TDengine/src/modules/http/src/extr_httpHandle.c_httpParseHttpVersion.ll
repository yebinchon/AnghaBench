; ModuleID = '/home/carl/AnghaBench/TDengine/src/modules/http/src/extr_httpHandle.c_httpParseHttpVersion.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/modules/http/src/extr_httpHandle.c_httpParseHttpVersion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i8*, i32, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@.str = private unnamed_addr constant [65 x i8] c"context:%p, fd:%d, ip:%s, can't find http version at position:%s\00", align 1
@HTTP_PARSE_HTTP_VERSION_ERROR = common dso_local global i32 0, align 4
@HTTP_VERSION_10 = common dso_local global i8* null, align 8
@HTTP_VERSION_11 = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [43 x i8] c"context:%p, fd:%d, ip:%s, httpVersion:1.%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @httpParseHttpVersion(%struct.TYPE_8__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i8*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  %6 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 3
  store %struct.TYPE_7__* %7, %struct.TYPE_7__** %4, align 8
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i8* @strchr(i32 %10, i8 signext 49)
  store i8* %11, i8** %5, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = icmp eq i8* %12, null
  br i1 %13, label %14, label %29

14:                                               ; preds = %1
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @httpError(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0), %struct.TYPE_8__* %15, i32 %18, i32 %21, i32 %24)
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %27 = load i32, i32* @HTTP_PARSE_HTTP_VERSION_ERROR, align 4
  %28 = call i32 @httpSendErrorResp(%struct.TYPE_8__* %26, i32 %27)
  store i32 0, i32* %2, align 4
  br label %98

29:                                               ; preds = %1
  %30 = load i8*, i8** %5, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 1
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp ne i32 %33, 46
  br i1 %34, label %35, label %50

35:                                               ; preds = %29
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @httpError(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0), %struct.TYPE_8__* %36, i32 %39, i32 %42, i32 %45)
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %48 = load i32, i32* @HTTP_PARSE_HTTP_VERSION_ERROR, align 4
  %49 = call i32 @httpSendErrorResp(%struct.TYPE_8__* %47, i32 %48)
  store i32 0, i32* %2, align 4
  br label %98

50:                                               ; preds = %29
  %51 = load i8*, i8** %5, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 2
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp eq i32 %54, 48
  br i1 %55, label %56, label %60

56:                                               ; preds = %50
  %57 = load i8*, i8** @HTTP_VERSION_10, align 8
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  store i8* %57, i8** %59, align 8
  br label %86

60:                                               ; preds = %50
  %61 = load i8*, i8** %5, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 2
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp eq i32 %64, 49
  br i1 %65, label %66, label %70

66:                                               ; preds = %60
  %67 = load i8*, i8** @HTTP_VERSION_11, align 8
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  store i8* %67, i8** %69, align 8
  br label %85

70:                                               ; preds = %60
  %71 = load i8*, i8** %5, align 8
  %72 = getelementptr inbounds i8, i8* %71, i64 2
  %73 = load i8, i8* %72, align 1
  %74 = sext i8 %73 to i32
  %75 = icmp eq i32 %74, 50
  br i1 %75, label %76, label %80

76:                                               ; preds = %70
  %77 = load i8*, i8** @HTTP_VERSION_11, align 8
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 0
  store i8* %77, i8** %79, align 8
  br label %84

80:                                               ; preds = %70
  %81 = load i8*, i8** @HTTP_VERSION_10, align 8
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 0
  store i8* %81, i8** %83, align 8
  br label %84

84:                                               ; preds = %80, %76
  br label %85

85:                                               ; preds = %84, %66
  br label %86

86:                                               ; preds = %85, %56
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 0
  %96 = load i8*, i8** %95, align 8
  %97 = call i32 @httpTrace(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_8__* %87, i32 %90, i32 %93, i8* %96)
  store i32 1, i32* %2, align 4
  br label %98

98:                                               ; preds = %86, %35, %14
  %99 = load i32, i32* %2, align 4
  ret i32 %99
}

declare dso_local i8* @strchr(i32, i8 signext) #1

declare dso_local i32 @httpError(i8*, %struct.TYPE_8__*, i32, i32, i32) #1

declare dso_local i32 @httpSendErrorResp(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @httpTrace(i8*, %struct.TYPE_8__*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
