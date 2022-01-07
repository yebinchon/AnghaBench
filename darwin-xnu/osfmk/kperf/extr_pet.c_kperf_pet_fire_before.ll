; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kperf/extr_pet.c_kperf_pet_fire_before.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kperf/extr_pet.c_kperf_pet_fire_before.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pet_initted = common dso_local global i32 0, align 4
@pet_running = common dso_local global i32 0, align 4
@lightweight_pet = common dso_local global i64 0, align 8
@PERF_PET_SAMPLE = common dso_local global i32 0, align 4
@kperf_pet_gen = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kperf_pet_fire_before() #0 {
  %1 = load i32, i32* @pet_initted, align 4
  %2 = icmp ne i32 %1, 0
  br i1 %2, label %3, label %6

3:                                                ; preds = %0
  %4 = load i32, i32* @pet_running, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %3, %0
  br label %14

7:                                                ; preds = %3
  %8 = load i64, i64* @lightweight_pet, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %7
  %11 = load i32, i32* @PERF_PET_SAMPLE, align 4
  %12 = call i32 @BUF_INFO(i32 %11)
  %13 = call i32 @OSIncrementAtomic(i32* @kperf_pet_gen)
  br label %14

14:                                               ; preds = %6, %10, %7
  ret void
}

declare dso_local i32 @BUF_INFO(i32) #1

declare dso_local i32 @OSIncrementAtomic(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
