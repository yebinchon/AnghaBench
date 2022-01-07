; ModuleID = '/home/carl/AnghaBench/RetroArch/extr_retroarch.c_retroarch_override_setting_free_state.c'
source_filename = "/home/carl/AnghaBench/RetroArch/extr_retroarch.c_retroarch_override_setting_free_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RARCH_OVERRIDE_SETTING_LAST = common dso_local global i32 0, align 4
@RARCH_OVERRIDE_SETTING_LIBRETRO_DEVICE = common dso_local global i32 0, align 4
@MAX_USERS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @retroarch_override_setting_free_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @retroarch_override_setting_free_state() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  br label %3

3:                                                ; preds = %27, %0
  %4 = load i32, i32* %1, align 4
  %5 = load i32, i32* @RARCH_OVERRIDE_SETTING_LAST, align 4
  %6 = icmp ult i32 %4, %5
  br i1 %6, label %7, label %30

7:                                                ; preds = %3
  %8 = load i32, i32* %1, align 4
  %9 = load i32, i32* @RARCH_OVERRIDE_SETTING_LIBRETRO_DEVICE, align 4
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %11, label %23

11:                                               ; preds = %7
  store i32 0, i32* %2, align 4
  br label %12

12:                                               ; preds = %19, %11
  %13 = load i32, i32* %2, align 4
  %14 = load i32, i32* @MAX_USERS, align 4
  %15 = icmp ult i32 %13, %14
  br i1 %15, label %16, label %22

16:                                               ; preds = %12
  %17 = load i32, i32* %1, align 4
  %18 = call i32 @retroarch_override_setting_unset(i32 %17, i32* %2)
  br label %19

19:                                               ; preds = %16
  %20 = load i32, i32* %2, align 4
  %21 = add i32 %20, 1
  store i32 %21, i32* %2, align 4
  br label %12

22:                                               ; preds = %12
  br label %26

23:                                               ; preds = %7
  %24 = load i32, i32* %1, align 4
  %25 = call i32 @retroarch_override_setting_unset(i32 %24, i32* null)
  br label %26

26:                                               ; preds = %23, %22
  br label %27

27:                                               ; preds = %26
  %28 = load i32, i32* %1, align 4
  %29 = add i32 %28, 1
  store i32 %29, i32* %1, align 4
  br label %3

30:                                               ; preds = %3
  ret void
}

declare dso_local i32 @retroarch_override_setting_unset(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
