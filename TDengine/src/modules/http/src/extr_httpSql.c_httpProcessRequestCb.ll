; ModuleID = '/home/carl/AnghaBench/TDengine/src/modules/http/src/extr_httpSql.c_httpProcessRequestCb.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/modules/http/src/extr_httpSql.c_httpProcessRequestCb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32*, i32*, i32, i32, i32, %struct.TYPE_9__* }

@.str = private unnamed_addr constant [56 x i8] c"context:%p, fd:%d, ip:%s, user:%s, login error, code:%d\00", align 1
@.str.1 = private unnamed_addr constant [69 x i8] c"context:%p, fd:%d, ip:%s, user:%s, connect tdengine success, taos:%p\00", align 1
@.str.2 = private unnamed_addr constant [62 x i8] c"context:%p, fd:%d, ip:%s, user:%s, login error, taos is empty\00", align 1
@HTTP_NO_ENOUGH_SESSIONS = common dso_local global i32 0, align 4
@HTTP_SESSION_FULL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @httpProcessRequestCb(i8* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_9__*, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %9, %struct.TYPE_9__** %7, align 8
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %11 = icmp eq %struct.TYPE_9__* %10, null
  br i1 %11, label %18, label %12

12:                                               ; preds = %3
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 5
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %17 = icmp ne %struct.TYPE_9__* %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %12, %3
  br label %93

19:                                               ; preds = %12
  %20 = load i32, i32* %6, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %40

22:                                               ; preds = %19
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* %6, align 4
  %34 = sub nsw i32 0, %33
  %35 = call i32 (i8*, %struct.TYPE_9__*, i32, i32, i32, ...) @httpError(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), %struct.TYPE_9__* %23, i32 %26, i32 %29, i32 %32, i32 %34)
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %37 = load i32, i32* %6, align 4
  %38 = sub nsw i32 0, %37
  %39 = call i32 @httpSendTaosdErrorResp(%struct.TYPE_9__* %36, i32 %38)
  br label %93

40:                                               ; preds = %19
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  %54 = call i32 @httpTrace(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_9__* %41, i32 %44, i32 %47, i32 %50, i32* %53)
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  %58 = icmp eq i32* %57, null
  br i1 %58, label %59, label %74

59:                                               ; preds = %40
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = call i32 (i8*, %struct.TYPE_9__*, i32, i32, i32, ...) @httpError(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_9__* %60, i32 %63, i32 %66, i32 %69)
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %72 = load i32, i32* @HTTP_NO_ENOUGH_SESSIONS, align 4
  %73 = call i32 @httpSendErrorResp(%struct.TYPE_9__* %71, i32 %72)
  br label %93

74:                                               ; preds = %40
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 1
  %78 = load i32*, i32** %77, align 8
  %79 = call i32 @httpCreateSession(%struct.TYPE_9__* %75, i32* %78)
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = icmp eq i32* %82, null
  br i1 %83, label %84, label %90

84:                                               ; preds = %74
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %86 = load i32, i32* @HTTP_SESSION_FULL, align 4
  %87 = call i32 @httpSendErrorResp(%struct.TYPE_9__* %85, i32 %86)
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %89 = call i32 @httpCloseContextByApp(%struct.TYPE_9__* %88)
  br label %93

90:                                               ; preds = %74
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %92 = call i32 @httpExecCmd(%struct.TYPE_9__* %91)
  br label %93

93:                                               ; preds = %18, %22, %59, %90, %84
  ret void
}

declare dso_local i32 @httpError(i8*, %struct.TYPE_9__*, i32, i32, i32, ...) #1

declare dso_local i32 @httpSendTaosdErrorResp(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @httpTrace(i8*, %struct.TYPE_9__*, i32, i32, i32, i32*) #1

declare dso_local i32 @httpSendErrorResp(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @httpCreateSession(%struct.TYPE_9__*, i32*) #1

declare dso_local i32 @httpCloseContextByApp(%struct.TYPE_9__*) #1

declare dso_local i32 @httpExecCmd(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
