; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers_context/extr_wayland_ctx.c_keyboard_handle_key.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers_context/extr_wayland_ctx.c_keyboard_handle_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl_keyboard = type { i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@WL_KEYBOARD_KEY_STATE_PRESSED = common dso_local global i64 0, align 8
@WL_KEYBOARD_KEY_STATE_RELEASED = common dso_local global i64 0, align 8
@RETRO_DEVICE_KEYBOARD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.wl_keyboard*, i64, i64, i64, i64)* @keyboard_handle_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @keyboard_handle_key(i8* %0, %struct.wl_keyboard* %1, i64 %2, i64 %3, i64 %4, i64 %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca %struct.wl_keyboard*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_4__*, align 8
  store i8* %0, i8** %7, align 8
  store %struct.wl_keyboard* %1, %struct.wl_keyboard** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  store i64 %5, i64* %12, align 8
  %15 = load i64, i64* %9, align 8
  %16 = load i64, i64* %10, align 8
  %17 = load %struct.wl_keyboard*, %struct.wl_keyboard** %8, align 8
  store i32 1, i32* %13, align 4
  %18 = load i8*, i8** %7, align 8
  %19 = bitcast i8* %18 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %19, %struct.TYPE_4__** %14, align 8
  %20 = load i64, i64* %12, align 8
  %21 = load i64, i64* @WL_KEYBOARD_KEY_STATE_PRESSED, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %30

23:                                               ; preds = %6
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i64, i64* %11, align 8
  %29 = call i32 @BIT_SET(i32 %27, i64 %28)
  store i32 1, i32* %13, align 4
  br label %42

30:                                               ; preds = %6
  %31 = load i64, i64* %12, align 8
  %32 = load i64, i64* @WL_KEYBOARD_KEY_STATE_RELEASED, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %41

34:                                               ; preds = %30
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i64, i64* %11, align 8
  %40 = call i32 @BIT_CLEAR(i32 %38, i64 %39)
  store i32 0, i32* %13, align 4
  br label %41

41:                                               ; preds = %34, %30
  br label %42

42:                                               ; preds = %41, %23
  %43 = load i32, i32* %13, align 4
  %44 = load i64, i64* %11, align 8
  %45 = call i32 @input_keymaps_translate_keysym_to_rk(i64 %44)
  %46 = load i32, i32* @RETRO_DEVICE_KEYBOARD, align 4
  %47 = call i32 @input_keyboard_event(i32 %43, i32 %45, i32 0, i32 0, i32 %46)
  ret void
}

declare dso_local i32 @BIT_SET(i32, i64) #1

declare dso_local i32 @BIT_CLEAR(i32, i64) #1

declare dso_local i32 @input_keyboard_event(i32, i32, i32, i32, i32) #1

declare dso_local i32 @input_keymaps_translate_keysym_to_rk(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
