; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libwiikeyboard/extr_keyboard.c__kbd_buf_thread_func.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libwiikeyboard/extr_keyboard.c__kbd_buf_thread_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32* }
%struct.TYPE_4__ = type { i64, i32 }

@_kbd_thread_quit = common dso_local global i32 0, align 4
@_keyBuffer = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@KEYBOARD_PRESSED = common dso_local global i64 0, align 8
@KBD_THREAD_UDELAY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @_kbd_buf_thread_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @_kbd_buf_thread_func(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_4__, align 8
  store i8* %0, i8** %2, align 8
  br label %4

4:                                                ; preds = %33, %1
  %5 = load i32, i32* @_kbd_thread_quit, align 4
  %6 = icmp ne i32 %5, 0
  %7 = xor i1 %6, true
  br i1 %7, label %8, label %36

8:                                                ; preds = %4
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @_keyBuffer, i32 0, i32 0), align 8
  %10 = add nsw i32 %9, 1
  %11 = and i32 %10, 255
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @_keyBuffer, i32 0, i32 1), align 4
  %13 = icmp ne i32 %11, %12
  br i1 %13, label %14, label %33

14:                                               ; preds = %8
  %15 = call i64 @KEYBOARD_GetEvent(%struct.TYPE_4__* %3)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %32

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @KEYBOARD_PRESSED, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %31

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = load i32*, i32** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @_keyBuffer, i32 0, i32 2), align 8
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @_keyBuffer, i32 0, i32 0), align 8
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  store i32 %24, i32* %28, align 4
  %29 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @_keyBuffer, i32 0, i32 0), align 8
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @_keyBuffer, i32 0, i32 0), align 8
  br label %31

31:                                               ; preds = %22, %17
  br label %32

32:                                               ; preds = %31, %14
  br label %33

33:                                               ; preds = %32, %8
  %34 = load i32, i32* @KBD_THREAD_UDELAY, align 4
  %35 = call i32 @usleep(i32 %34)
  br label %4

36:                                               ; preds = %4
  ret i8* null
}

declare dso_local i64 @KEYBOARD_GetEvent(%struct.TYPE_4__*) #1

declare dso_local i32 @usleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
