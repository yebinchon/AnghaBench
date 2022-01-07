; ModuleID = '/home/carl/AnghaBench/TDengine/src/modules/http/src/extr_httpHandle.c_httpProcessData.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/modules/http/src/extr_httpHandle.c_httpProcessData.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32, %struct.TYPE_12__, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }

@HTTP_CONTEXT_STATE_READY = common dso_local global i32 0, align 4
@HTTP_CONTEXT_STATE_HANDLING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [76 x i8] c"context:%p, fd:%d, ip:%s, state:%s not in ready state, stop process request\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"OPTIONS\00", align 1
@.str.2 = private unnamed_addr constant [50 x i8] c"context:%p, fd:%d, ip:%s, process options request\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"process options request success\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @httpProcessData(%struct.TYPE_13__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  %4 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %5 = load i32, i32* @HTTP_CONTEXT_STATE_READY, align 4
  %6 = load i32, i32* @HTTP_CONTEXT_STATE_HANDLING, align 4
  %7 = call i32 @httpAlterContextState(%struct.TYPE_13__* %4, i32 %5, i32 %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %24, label %9

9:                                                ; preds = %1
  %10 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %11 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @httpContextStateStr(i32 %19)
  %21 = call i32 (i8*, %struct.TYPE_13__*, i32, i32, ...) @httpTrace(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str, i64 0, i64 0), %struct.TYPE_13__* %10, i32 %13, i32 %16, i32 %20)
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %23 = call i32 @httpCloseContextByApp(%struct.TYPE_13__* %22)
  store i32 0, i32* %2, align 4
  br label %53

24:                                               ; preds = %1
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @strcmp(i32 %29, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %43

32:                                               ; preds = %24
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 (i8*, %struct.TYPE_13__*, i32, i32, ...) @httpTrace(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_13__* %33, i32 %36, i32 %39)
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %42 = call i32 @httpSendOptionResp(%struct.TYPE_13__* %41, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  br label %52

43:                                               ; preds = %24
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %45 = call i32 @httpDecodeRequest(%struct.TYPE_13__* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %43
  br label %51

48:                                               ; preds = %43
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %50 = call i32 @httpProcessRequest(%struct.TYPE_13__* %49)
  br label %51

51:                                               ; preds = %48, %47
  br label %52

52:                                               ; preds = %51, %32
  store i32 1, i32* %2, align 4
  br label %53

53:                                               ; preds = %52, %9
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local i32 @httpAlterContextState(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @httpTrace(i8*, %struct.TYPE_13__*, i32, i32, ...) #1

declare dso_local i32 @httpContextStateStr(i32) #1

declare dso_local i32 @httpCloseContextByApp(%struct.TYPE_13__*) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @httpSendOptionResp(%struct.TYPE_13__*, i8*) #1

declare dso_local i32 @httpDecodeRequest(%struct.TYPE_13__*) #1

declare dso_local i32 @httpProcessRequest(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
