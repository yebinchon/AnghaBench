; ModuleID = '/home/carl/AnghaBench/RetroArch/input/drivers_joypad/wiiu/extr_kpad_driver.c_kpad_poll.c'
source_filename = "/home/carl/AnghaBench/RetroArch/input/drivers_joypad/wiiu/extr_kpad_driver.c_kpad_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@WIIU_WIIMOTE_CHANNELS = common dso_local global i32 0, align 4
@poll_failures = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @kpad_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kpad_poll() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  store i64 0, i64* %3, align 8
  store i32 0, i32* %1, align 4
  br label %4

4:                                                ; preds = %38, %0
  %5 = load i32, i32* %1, align 4
  %6 = load i32, i32* @WIIU_WIIMOTE_CHANNELS, align 4
  %7 = icmp ult i32 %5, %6
  br i1 %7, label %8, label %41

8:                                                ; preds = %4
  %9 = call i32 @memset(i32* %2, i32 0, i32 4)
  %10 = load i32, i32* %1, align 4
  %11 = call i64 @KPADRead(i32 %10, i32* %2, i32 1)
  store i64 %11, i64* %3, align 8
  %12 = load i64, i64* %3, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %31

14:                                               ; preds = %8
  %15 = load i32*, i32** @poll_failures, align 8
  %16 = load i32, i32* %1, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %18, align 4
  %21 = load i32*, i32** @poll_failures, align 8
  %22 = load i32, i32* %1, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = icmp sgt i32 %25, 5
  br i1 %26, label %27, label %30

27:                                               ; preds = %14
  %28 = load i32, i32* %1, align 4
  %29 = call i32 @kpad_deregister(i32 %28)
  br label %30

30:                                               ; preds = %27, %14
  br label %38

31:                                               ; preds = %8
  %32 = load i32*, i32** @poll_failures, align 8
  %33 = load i32, i32* %1, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  store i32 0, i32* %35, align 4
  %36 = load i32, i32* %1, align 4
  %37 = call i32 @kpad_poll_one_channel(i32 %36, i32* %2)
  br label %38

38:                                               ; preds = %31, %30
  %39 = load i32, i32* %1, align 4
  %40 = add i32 %39, 1
  store i32 %40, i32* %1, align 4
  br label %4

41:                                               ; preds = %4
  ret void
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i64 @KPADRead(i32, i32*, i32) #1

declare dso_local i32 @kpad_deregister(i32) #1

declare dso_local i32 @kpad_poll_one_channel(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
