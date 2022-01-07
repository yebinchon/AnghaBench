; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/widgets/extr_menu_input_bind_dialog.c_menu_input_key_bind_poll_find_trigger.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/widgets/extr_menu_input_bind_dialog.c_menu_input_key_bind_poll_find_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.menu_bind_state = type { i32 }
%struct.retro_keybind = type { i32 }

@INPUT_ACTION_MAX_USERS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.menu_bind_state*, %struct.menu_bind_state*, %struct.retro_keybind*)* @menu_input_key_bind_poll_find_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @menu_input_key_bind_poll_find_trigger(%struct.menu_bind_state* %0, %struct.menu_bind_state* %1, %struct.retro_keybind* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.menu_bind_state*, align 8
  %6 = alloca %struct.menu_bind_state*, align 8
  %7 = alloca %struct.retro_keybind*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.menu_bind_state* %0, %struct.menu_bind_state** %5, align 8
  store %struct.menu_bind_state* %1, %struct.menu_bind_state** %6, align 8
  store %struct.retro_keybind* %2, %struct.retro_keybind** %7, align 8
  %10 = load i32, i32* @INPUT_ACTION_MAX_USERS, align 4
  %11 = call i32* @input_driver_get_uint(i32 %10)
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %9, align 4
  %13 = load %struct.menu_bind_state*, %struct.menu_bind_state** %5, align 8
  %14 = icmp ne %struct.menu_bind_state* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load %struct.menu_bind_state*, %struct.menu_bind_state** %6, align 8
  %17 = icmp ne %struct.menu_bind_state* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %15, %3
  store i32 0, i32* %4, align 4
  br label %37

19:                                               ; preds = %15
  store i32 0, i32* %8, align 4
  br label %20

20:                                               ; preds = %33, %19
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* %9, align 4
  %23 = icmp ult i32 %21, %22
  br i1 %23, label %24, label %36

24:                                               ; preds = %20
  %25 = load %struct.menu_bind_state*, %struct.menu_bind_state** %5, align 8
  %26 = load %struct.menu_bind_state*, %struct.menu_bind_state** %6, align 8
  %27 = load %struct.retro_keybind*, %struct.retro_keybind** %7, align 8
  %28 = load i32, i32* %8, align 4
  %29 = call i32 @menu_input_key_bind_poll_find_trigger_pad(%struct.menu_bind_state* %25, %struct.menu_bind_state* %26, %struct.retro_keybind* %27, i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %24
  br label %33

32:                                               ; preds = %24
  store i32 1, i32* %4, align 4
  br label %37

33:                                               ; preds = %31
  %34 = load i32, i32* %8, align 4
  %35 = add i32 %34, 1
  store i32 %35, i32* %8, align 4
  br label %20

36:                                               ; preds = %20
  store i32 0, i32* %4, align 4
  br label %37

37:                                               ; preds = %36, %32, %18
  %38 = load i32, i32* %4, align 4
  ret i32 %38
}

declare dso_local i32* @input_driver_get_uint(i32) #1

declare dso_local i32 @menu_input_key_bind_poll_find_trigger_pad(%struct.menu_bind_state*, %struct.menu_bind_state*, %struct.retro_keybind*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
