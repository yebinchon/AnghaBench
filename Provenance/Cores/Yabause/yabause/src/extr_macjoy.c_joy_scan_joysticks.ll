; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_macjoy.c_joy_scan_joysticks.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_macjoy.c_joy_scan_joysticks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@joys = common dso_local global i32* null, align 8
@kIOMasterPortDefault = common dso_local global i32 0, align 4
@joy_count = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @joy_scan_joysticks() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 0, i64* %2, align 8
  %4 = load i32*, i32** @joys, align 8
  %5 = icmp ne i32* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %0
  store i32 -1, i32* %1, align 4
  br label %27

7:                                                ; preds = %0
  %8 = load i32, i32* @kIOMasterPortDefault, align 4
  %9 = call i32 @joy_get_iterator(i32 %8, i64* %2)
  %10 = load i64, i64* %2, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %25

12:                                               ; preds = %7
  br label %13

13:                                               ; preds = %17, %12
  %14 = load i64, i64* %2, align 8
  %15 = call i64 @IOIteratorNext(i64 %14)
  store i64 %15, i64* %3, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %13
  %18 = load i64, i64* %3, align 8
  %19 = call i32 @joy_read_device(i64 %18)
  %20 = load i64, i64* %3, align 8
  %21 = call i32 @IOObjectRelease(i64 %20)
  br label %13

22:                                               ; preds = %13
  %23 = load i64, i64* %2, align 8
  %24 = call i32 @IOObjectRelease(i64 %23)
  br label %25

25:                                               ; preds = %22, %7
  %26 = load i32, i32* @joy_count, align 4
  store i32 %26, i32* %1, align 4
  br label %27

27:                                               ; preds = %25, %6
  %28 = load i32, i32* %1, align 4
  ret i32 %28
}

declare dso_local i32 @joy_get_iterator(i32, i64*) #1

declare dso_local i64 @IOIteratorNext(i64) #1

declare dso_local i32 @joy_read_device(i64) #1

declare dso_local i32 @IOObjectRelease(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
