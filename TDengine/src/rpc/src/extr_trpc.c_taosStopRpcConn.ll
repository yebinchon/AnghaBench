; ModuleID = '/home/carl/AnghaBench/TDengine/src/rpc/src/extr_trpc.c_taosStopRpcConn.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/rpc/src/extr_trpc.c_taosStopRpcConn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i32, i64, i32, i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_10__*, i32, i32*, i32 }

@.str = private unnamed_addr constant [53 x i8] c"%s cid:%d sid:%d id:%s, stop the connection pConn:%p\00", align 1
@taosProcessSchedMsg = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @taosStopRpcConn(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca %struct.TYPE_9__, align 8
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = bitcast i8* %7 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %8, %struct.TYPE_10__** %3, align 8
  %9 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 6
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  store %struct.TYPE_8__* %11, %struct.TYPE_8__** %4, align 8
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i64 %18
  store %struct.TYPE_11__* %19, %struct.TYPE_11__** %5, align 8
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 5
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %33 = call i32 @tTrace(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %25, i32 %28, i32 %31, %struct.TYPE_10__* %32)
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 0
  %36 = call i32 @pthread_mutex_lock(i32* %35)
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 3
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %60

41:                                               ; preds = %1
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 1
  store i32 1, i32* %43, align 4
  %44 = load i32, i32* @taosProcessSchedMsg, align 4
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 3
  store i32 %44, i32* %45, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 2
  store i32* null, i32** %46, align 8
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 1
  store i32 %49, i32* %50, align 8
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 0
  store %struct.TYPE_10__* %51, %struct.TYPE_10__** %52, align 8
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 0
  %55 = call i32 @pthread_mutex_unlock(i32* %54)
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @taosScheduleTask(i32 %58, %struct.TYPE_9__* %6)
  br label %66

60:                                               ; preds = %1
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 0
  %63 = call i32 @pthread_mutex_unlock(i32* %62)
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %65 = call i32 @taosCloseRpcConn(%struct.TYPE_10__* %64)
  br label %66

66:                                               ; preds = %60, %41
  ret void
}

declare dso_local i32 @tTrace(i8*, i32, i32, i32, i32, %struct.TYPE_10__*) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i32 @taosScheduleTask(i32, %struct.TYPE_9__*) #1

declare dso_local i32 @taosCloseRpcConn(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
