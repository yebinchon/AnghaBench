; ModuleID = '/home/carl/AnghaBench/RetroArch/input/drivers/extr_switch_input.c_switch_input_poll.c'
source_filename = "/home/carl/AnghaBench/RetroArch/input/drivers/extr_switch_input.c_switch_input_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 }
%struct.TYPE_11__ = type { i32*, i32*, i32*, i32, i32, i32, i32, i64, i64, i64, i64, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 (...)* }

@KBD_LEFTALT = common dso_local global i32 0, align 4
@KBD_LEFTCTRL = common dso_local global i32 0, align 4
@KBD_LEFTSHIFT = common dso_local global i32 0, align 4
@KBD_RIGHTALT = common dso_local global i32 0, align 4
@KBD_RIGHTCTRL = common dso_local global i32 0, align 4
@KBD_RIGHTSHIFT = common dso_local global i32 0, align 4
@MOUSE_LEFT = common dso_local global i32 0, align 4
@MOUSE_MAX_X = common dso_local global i64 0, align 8
@MOUSE_MAX_Y = common dso_local global i64 0, align 8
@MOUSE_MIDDLE = common dso_local global i32 0, align 4
@MOUSE_RIGHT = common dso_local global i32 0, align 4
@MULTITOUCH_LIMIT = common dso_local global i32 0, align 4
@RETROKMOD_ALT = common dso_local global i32 0, align 4
@RETROKMOD_CTRL = common dso_local global i32 0, align 4
@RETROKMOD_SHIFT = common dso_local global i32 0, align 4
@RETRO_DEVICE_KEYBOARD = common dso_local global i32 0, align 4
@SWITCH_NUM_SCANCODES = common dso_local global i32 0, align 4
@rarch_key_map_switch = common dso_local global %struct.TYPE_13__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @switch_input_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @switch_input_poll(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_11__*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %5, %struct.TYPE_11__** %3, align 8
  %6 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 20
  %8 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %9 = icmp ne %struct.TYPE_9__* %8, null
  br i1 %9, label %10, label %17

10:                                               ; preds = %1
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 20
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  %15 = load i32 (...)*, i32 (...)** %14, align 8
  %16 = call i32 (...) %15()
  br label %17

17:                                               ; preds = %10, %1
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
