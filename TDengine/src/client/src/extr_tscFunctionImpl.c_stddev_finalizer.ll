; ModuleID = '/home/carl/AnghaBench/TDengine/src/client/src/extr_tscFunctionImpl.c_stddev_finalizer.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/client/src/extr_tscFunctionImpl.c_stddev_finalizer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_10__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*)* @stddev_finalizer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stddev_finalizer(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca double*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  %5 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %6 = call %struct.TYPE_10__* @GET_RES_INFO(%struct.TYPE_9__* %5)
  %7 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %9, %struct.TYPE_8__** %3, align 8
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp sle i32 %12, 0
  br i1 %13, label %14, label %25

14:                                               ; preds = %1
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @setNull(i64 %17, i32 %20, i32 %23)
  br label %41

25:                                               ; preds = %1
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = inttoptr i64 %28 to double*
  store double* %29, double** %4, align 8
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = sdiv i32 %32, %35
  %37 = call double @sqrt(i32 %36)
  %38 = load double*, double** %4, align 8
  store double %37, double* %38, align 8
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %40 = call i32 @SET_VAL(%struct.TYPE_9__* %39, i32 1, i32 1)
  br label %41

41:                                               ; preds = %25, %14
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %43 = call %struct.TYPE_10__* @GET_RES_INFO(%struct.TYPE_9__* %42)
  %44 = call i32 @resetResultInfo(%struct.TYPE_10__* %43)
  ret void
}

declare dso_local %struct.TYPE_10__* @GET_RES_INFO(%struct.TYPE_9__*) #1

declare dso_local i32 @setNull(i64, i32, i32) #1

declare dso_local double @sqrt(i32) #1

declare dso_local i32 @SET_VAL(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @resetResultInfo(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
