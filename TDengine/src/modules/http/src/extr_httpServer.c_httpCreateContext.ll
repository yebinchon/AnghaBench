; ModuleID = '/home/carl/AnghaBench/TDengine/src/modules/http/src/extr_httpServer.c_httpCreateContext.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/modules/http/src/extr_httpServer.c_httpCreateContext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32, i32, %struct.TYPE_8__* }
%struct.TYPE_7__ = type { i32 }

@.str = private unnamed_addr constant [37 x i8] c"context:%p, is malloced from mempool\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"context:%p, is malloced from raw memory\00", align 1
@HTTP_VERSION_10 = common dso_local global i32 0, align 4
@HTTP_CONTEXT_STATE_READY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_8__* @httpCreateContext(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  %5 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call i64 @taosMemPoolMalloc(i32 %7)
  %9 = inttoptr i64 %8 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %9, %struct.TYPE_8__** %4, align 8
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %11 = icmp ne %struct.TYPE_8__* %10, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %1
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  store i32 1, i32* %14, align 8
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %16 = call i32 @httpTrace(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), %struct.TYPE_8__* %15)
  br label %29

17:                                               ; preds = %1
  %18 = call i64 @malloc(i32 24)
  %19 = inttoptr i64 %18 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %19, %struct.TYPE_8__** %4, align 8
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %21 = icmp eq %struct.TYPE_8__* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %2, align 8
  br label %43

23:                                               ; preds = %17
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %25 = call i32 @memset(%struct.TYPE_8__* %24, i32 0, i32 24)
  br label %26

26:                                               ; preds = %23
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %28 = call i32 @httpTrace(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_8__* %27)
  br label %29

29:                                               ; preds = %26, %12
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 4
  store %struct.TYPE_8__* %30, %struct.TYPE_8__** %32, align 8
  %33 = load i32, i32* @HTTP_VERSION_10, align 4
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 3
  store i32 %33, i32* %35, align 4
  %36 = call i32 (...) @taosGetTimestampSec()
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 2
  store i32 %36, i32* %38, align 8
  %39 = load i32, i32* @HTTP_CONTEXT_STATE_READY, align 4
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 4
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  store %struct.TYPE_8__* %42, %struct.TYPE_8__** %2, align 8
  br label %43

43:                                               ; preds = %29, %22
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  ret %struct.TYPE_8__* %44
}

declare dso_local i64 @taosMemPoolMalloc(i32) #1

declare dso_local i32 @httpTrace(i8*, %struct.TYPE_8__*) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @memset(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @taosGetTimestampSec(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
