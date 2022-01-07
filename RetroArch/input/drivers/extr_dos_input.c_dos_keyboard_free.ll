; ModuleID = '/home/carl/AnghaBench/RetroArch/input/drivers/extr_dos_input.c_dos_keyboard_free.c'
source_filename = "/home/carl/AnghaBench/RetroArch/input/drivers/extr_dos_input.c_dos_keyboard_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DEFAULT_MAX_PADS = common dso_local global i32 0, align 4
@MAX_KEYS = common dso_local global i32 0, align 4
@dos_key_state = common dso_local global i64** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @dos_keyboard_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dos_keyboard_free() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  br label %3

3:                                                ; preds = %25, %0
  %4 = load i32, i32* %1, align 4
  %5 = load i32, i32* @DEFAULT_MAX_PADS, align 4
  %6 = icmp ult i32 %4, %5
  br i1 %6, label %7, label %28

7:                                                ; preds = %3
  store i32 0, i32* %2, align 4
  br label %8

8:                                                ; preds = %21, %7
  %9 = load i32, i32* %2, align 4
  %10 = load i32, i32* @MAX_KEYS, align 4
  %11 = icmp ult i32 %9, %10
  br i1 %11, label %12, label %24

12:                                               ; preds = %8
  %13 = load i64**, i64*** @dos_key_state, align 8
  %14 = load i32, i32* %1, align 4
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds i64*, i64** %13, i64 %15
  %17 = load i64*, i64** %16, align 8
  %18 = load i32, i32* %2, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds i64, i64* %17, i64 %19
  store i64 0, i64* %20, align 8
  br label %21

21:                                               ; preds = %12
  %22 = load i32, i32* %2, align 4
  %23 = add i32 %22, 1
  store i32 %23, i32* %2, align 4
  br label %8

24:                                               ; preds = %8
  br label %25

25:                                               ; preds = %24
  %26 = load i32, i32* %1, align 4
  %27 = add i32 %26, 1
  store i32 %27, i32* %1, align 4
  br label %3

28:                                               ; preds = %3
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
