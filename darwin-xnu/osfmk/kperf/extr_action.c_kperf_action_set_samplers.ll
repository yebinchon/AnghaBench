; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kperf/extr_action.c_kperf_action_set_samplers.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kperf/extr_action.c_kperf_action_set_samplers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@actionc = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SAMPLER_PMC_THREAD = common dso_local global i32 0, align 4
@SAMPLER_PMC_CPU = common dso_local global i32 0, align 4
@actionv = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kperf_action_set_samplers(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @actionc, align 4
  %8 = icmp ugt i32 %6, %7
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = load i32, i32* %4, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %9, %2
  %13 = load i32, i32* @EINVAL, align 4
  store i32 %13, i32* %3, align 4
  br label %34

14:                                               ; preds = %9
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @SAMPLER_PMC_THREAD, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %14
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @SAMPLER_PMC_CPU, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = load i32, i32* @EINVAL, align 4
  store i32 %25, i32* %3, align 4
  br label %34

26:                                               ; preds = %19, %14
  %27 = load i32, i32* %5, align 4
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** @actionv, align 8
  %29 = load i32, i32* %4, align 4
  %30 = sub i32 %29, 1
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  store i32 %27, i32* %33, align 4
  store i32 0, i32* %3, align 4
  br label %34

34:                                               ; preds = %26, %24, %12
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
