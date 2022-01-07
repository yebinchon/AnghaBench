; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libwiikeyboard/extr_keyboard.c__kbd_thread_func.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libwiikeyboard/extr_keyboard.c__kbd_thread_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_kbd_thread_quit = common dso_local global i32 0, align 4
@KBD_THREAD_KBD_SCAN_INTERVAL = common dso_local global i32 0, align 4
@KBD_THREAD_UDELAY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @_kbd_thread_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @_kbd_thread_func(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %19, %1
  %5 = load i32, i32* @_kbd_thread_quit, align 4
  %6 = icmp ne i32 %5, 0
  %7 = xor i1 %6, true
  br i1 %7, label %8, label %25

8:                                                ; preds = %4
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @KBD_THREAD_KBD_SCAN_INTERVAL, align 4
  %11 = srem i32 %9, %10
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %8
  %14 = call i32 (...) @USBKeyboard_IsConnected()
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %13
  %17 = call i32 (...) @_kbd_scan_for_keyboard()
  br label %18

18:                                               ; preds = %16, %13
  store i32 0, i32* %3, align 4
  br label %19

19:                                               ; preds = %18, %8
  %20 = load i32, i32* %3, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %3, align 4
  %22 = call i32 (...) @USBKeyboard_Scan()
  %23 = load i32, i32* @KBD_THREAD_UDELAY, align 4
  %24 = call i32 @usleep(i32 %23)
  br label %4

25:                                               ; preds = %4
  ret i8* null
}

declare dso_local i32 @USBKeyboard_IsConnected(...) #1

declare dso_local i32 @_kbd_scan_for_keyboard(...) #1

declare dso_local i32 @USBKeyboard_Scan(...) #1

declare dso_local i32 @usleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
