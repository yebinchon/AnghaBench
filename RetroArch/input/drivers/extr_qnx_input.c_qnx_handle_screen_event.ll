; ModuleID = '/home/carl/AnghaBench/RetroArch/input/drivers/extr_qnx_input.c_qnx_handle_screen_event.c'
source_filename = "/home/carl/AnghaBench/RetroArch/input/drivers/extr_qnx_input.c_qnx_handle_screen_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, i32 }

@SCREEN_PROPERTY_TYPE = common dso_local global i32 0, align 4
@DEFAULT_MAX_PADS = common dso_local global i32 0, align 4
@SCREEN_PROPERTY_ATTACHED = common dso_local global i32 0, align 4
@SCREEN_PROPERTY_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*, i32*)* @qnx_handle_screen_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qnx_handle_screen_event(%struct.TYPE_11__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = call i32 @screen_event_get_event(i32* %7)
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = load i32, i32* @SCREEN_PROPERTY_TYPE, align 4
  %11 = call i32 @screen_get_event_property_iv(i32 %9, i32 %10, i32* %5)
  %12 = load i32, i32* %5, align 4
  switch i32 %12, label %23 [
    i32 128, label %13
    i32 129, label %13
    i32 130, label %13
    i32 131, label %18
  ]

13:                                               ; preds = %2, %2, %2
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @qnx_process_touch_event(%struct.TYPE_11__* %14, i32 %15, i32 %16)
  br label %24

18:                                               ; preds = %2
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @qnx_process_keyboard_event(%struct.TYPE_11__* %19, i32 %20, i32 %21)
  br label %24

23:                                               ; preds = %2
  br label %24

24:                                               ; preds = %23, %18, %13
  ret void
}

declare dso_local i32 @screen_event_get_event(i32*) #1

declare dso_local i32 @screen_get_event_property_iv(i32, i32, i32*) #1

declare dso_local i32 @qnx_process_touch_event(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @qnx_process_keyboard_event(%struct.TYPE_11__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
