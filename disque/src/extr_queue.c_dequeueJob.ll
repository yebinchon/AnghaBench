; ModuleID = '/home/carl/AnghaBench/disque/src/extr_queue.c_dequeueJob.c'
source_filename = "/home/carl/AnghaBench/disque/src/extr_queue.c_dequeueJob.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i32, i32 }
%struct.TYPE_6__ = type { i32 }

@JOB_STATE_QUEUED = common dso_local global i64 0, align 8
@C_ERR = common dso_local global i32 0, align 4
@JOB_STATE_ACTIVE = common dso_local global i64 0, align 8
@LL_VERBOSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"DE-QUEUED %.*s\00", align 1
@JOB_ID_LEN = common dso_local global i32 0, align 4
@C_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dequeueJob(%struct.TYPE_7__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  %5 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @JOB_STATE_QUEUED, align 8
  %9 = icmp ne i64 %7, %8
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* @C_ERR, align 4
  store i32 %11, i32* %2, align 4
  br label %38

12:                                               ; preds = %1
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.TYPE_6__* @lookupQueue(i32 %15)
  store %struct.TYPE_6__* %16, %struct.TYPE_6__** %4, align 8
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %18 = icmp ne %struct.TYPE_6__* %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %12
  %20 = load i32, i32* @C_ERR, align 4
  store i32 %20, i32* %2, align 4
  br label %38

21:                                               ; preds = %12
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %26 = call i32 @skiplistDelete(i32 %24, %struct.TYPE_7__* %25)
  %27 = call i32 @serverAssert(i32 %26)
  %28 = load i64, i64* @JOB_STATE_ACTIVE, align 8
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  store i64 %28, i64* %30, align 8
  %31 = load i32, i32* @LL_VERBOSE, align 4
  %32 = load i32, i32* @JOB_ID_LEN, align 4
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @serverLog(i32 %31, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %32, i32 %35)
  %37 = load i32, i32* @C_OK, align 4
  store i32 %37, i32* %2, align 4
  br label %38

38:                                               ; preds = %21, %19, %10
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local %struct.TYPE_6__* @lookupQueue(i32) #1

declare dso_local i32 @serverAssert(i32) #1

declare dso_local i32 @skiplistDelete(i32, %struct.TYPE_7__*) #1

declare dso_local i32 @serverLog(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
