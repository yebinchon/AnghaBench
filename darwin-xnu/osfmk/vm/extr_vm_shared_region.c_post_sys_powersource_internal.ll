; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_shared_region.c_post_sys_powersource_internal.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_shared_region.c_post_sys_powersource_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__system_power_source = common dso_local global i32 0, align 4
@__commpage_setup = common dso_local global i64 0, align 8
@MP_SPIN_TRIES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @post_sys_powersource_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @post_sys_powersource_internal(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %2
  %8 = load i32, i32* %3, align 4
  store i32 %8, i32* @__system_power_source, align 4
  br label %9

9:                                                ; preds = %7, %2
  %10 = load i64, i64* @__commpage_setup, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %21

12:                                               ; preds = %9
  %13 = load i32, i32* @__system_power_source, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %12
  %16 = call i32 @commpage_set_spin_count(i32 0)
  br label %20

17:                                               ; preds = %12
  %18 = load i32, i32* @MP_SPIN_TRIES, align 4
  %19 = call i32 @commpage_set_spin_count(i32 %18)
  br label %20

20:                                               ; preds = %17, %15
  br label %21

21:                                               ; preds = %20, %9
  ret void
}

declare dso_local i32 @commpage_set_spin_count(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
