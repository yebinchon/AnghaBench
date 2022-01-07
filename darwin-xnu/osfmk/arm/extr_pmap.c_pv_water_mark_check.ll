; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/arm/extr_pmap.c_pv_water_mark_check.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/arm/extr_pmap.c_pv_water_mark_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pv_free_count = common dso_local global i64 0, align 8
@pv_low_water_mark = common dso_local global i64 0, align 8
@pv_kern_free_count = common dso_local global i64 0, align 8
@pv_kern_low_water_mark = common dso_local global i64 0, align 8
@mappingrecurse = common dso_local global i32 0, align 4
@mapping_replenish_event = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @pv_water_mark_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pv_water_mark_check() #0 {
  %1 = load i64, i64* @pv_free_count, align 8
  %2 = load i64, i64* @pv_low_water_mark, align 8
  %3 = icmp slt i64 %1, %2
  br i1 %3, label %8, label %4

4:                                                ; preds = %0
  %5 = load i64, i64* @pv_kern_free_count, align 8
  %6 = load i64, i64* @pv_kern_low_water_mark, align 8
  %7 = icmp slt i64 %5, %6
  br i1 %7, label %8, label %17

8:                                                ; preds = %4, %0
  %9 = load i32, i32* @mappingrecurse, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %8
  %12 = call i64 @hw_compare_and_store(i32 0, i32 1, i32* @mappingrecurse)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %11
  %15 = call i32 @thread_wakeup(i32* @mapping_replenish_event)
  br label %16

16:                                               ; preds = %14, %11, %8
  br label %17

17:                                               ; preds = %16, %4
  ret void
}

declare dso_local i64 @hw_compare_and_store(i32, i32, i32*) #1

declare dso_local i32 @thread_wakeup(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
