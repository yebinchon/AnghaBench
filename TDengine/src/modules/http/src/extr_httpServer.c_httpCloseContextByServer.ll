; ModuleID = '/home/carl/AnghaBench/TDengine/src/modules/http/src/extr_httpServer.c_httpCloseContextByServer.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/modules/http/src/extr_httpServer.c_httpCloseContextByServer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32, i32 }

@HTTP_CONTEXT_STATE_HANDLING = common dso_local global i32 0, align 4
@HTTP_CONTEXT_STATE_DROPPING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"context:%p, fd:%d, ip:%s, epoll finished, still used by app\00", align 1
@.str.1 = private unnamed_addr constant [68 x i8] c"context:%p, fd:%d, ip:%s, epoll already finished, wait app finished\00", align 1
@HTTP_CONTEXT_STATE_READY = common dso_local global i32 0, align 4
@HTTP_CONTEXT_STATE_CLOSED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [56 x i8] c"context:%p, fd:%d, ip:%s, epoll finished, close context\00", align 1
@.str.3 = private unnamed_addr constant [62 x i8] c"context:%p, fd:%d, ip:%s, epoll finished, will be closed soon\00", align 1
@.str.4 = private unnamed_addr constant [43 x i8] c"context:%p, fd:%d, ip:%s, unknown state:%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @httpCloseContextByServer(i32* %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %4, align 8
  %5 = load i32*, i32** %3, align 8
  %6 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %7 = call i32 @httpRemoveContextFromEpoll(i32* %5, %struct.TYPE_8__* %6)
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  store i32 0, i32* %9, align 4
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %11 = load i32, i32* @HTTP_CONTEXT_STATE_HANDLING, align 4
  %12 = load i32, i32* @HTTP_CONTEXT_STATE_DROPPING, align 4
  %13 = call i64 @httpAlterContextState(%struct.TYPE_8__* %10, i32 %11, i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %24

15:                                               ; preds = %2
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @httpTrace(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), %struct.TYPE_8__* %16, i32 %19, i32 %22)
  br label %93

24:                                               ; preds = %2
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %26 = load i32, i32* @HTTP_CONTEXT_STATE_DROPPING, align 4
  %27 = load i32, i32* @HTTP_CONTEXT_STATE_DROPPING, align 4
  %28 = call i64 @httpAlterContextState(%struct.TYPE_8__* %25, i32 %26, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %39

30:                                               ; preds = %24
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @httpTrace(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_8__* %31, i32 %34, i32 %37)
  br label %92

39:                                               ; preds = %24
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %41 = load i32, i32* @HTTP_CONTEXT_STATE_READY, align 4
  %42 = load i32, i32* @HTTP_CONTEXT_STATE_CLOSED, align 4
  %43 = call i64 @httpAlterContextState(%struct.TYPE_8__* %40, i32 %41, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %57

45:                                               ; preds = %39
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @httpTrace(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_8__* %46, i32 %49, i32 %52)
  %54 = load i32*, i32** %3, align 8
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %56 = call i32 @httpCloseContext(i32* %54, %struct.TYPE_8__* %55)
  br label %91

57:                                               ; preds = %39
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %59 = load i32, i32* @HTTP_CONTEXT_STATE_CLOSED, align 4
  %60 = load i32, i32* @HTTP_CONTEXT_STATE_CLOSED, align 4
  %61 = call i64 @httpAlterContextState(%struct.TYPE_8__* %58, i32 %59, i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %75

63:                                               ; preds = %57
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @httpTrace(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.3, i64 0, i64 0), %struct.TYPE_8__* %64, i32 %67, i32 %70)
  %72 = load i32*, i32** %3, align 8
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %74 = call i32 @httpCloseContext(i32* %72, %struct.TYPE_8__* %73)
  br label %90

75:                                               ; preds = %57
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @httpError(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0), %struct.TYPE_8__* %76, i32 %79, i32 %82, i32 %85)
  %87 = load i32*, i32** %3, align 8
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %89 = call i32 @httpCloseContext(i32* %87, %struct.TYPE_8__* %88)
  br label %90

90:                                               ; preds = %75, %63
  br label %91

91:                                               ; preds = %90, %45
  br label %92

92:                                               ; preds = %91, %30
  br label %93

93:                                               ; preds = %92, %15
  ret void
}

declare dso_local i32 @httpRemoveContextFromEpoll(i32*, %struct.TYPE_8__*) #1

declare dso_local i64 @httpAlterContextState(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @httpTrace(i8*, %struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @httpCloseContext(i32*, %struct.TYPE_8__*) #1

declare dso_local i32 @httpError(i8*, %struct.TYPE_8__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
