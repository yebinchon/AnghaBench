; ModuleID = '/home/carl/AnghaBench/RetroArch/input/drivers_joypad/extr_android_joypad.c_android_joypad_destroy.c'
source_filename = "/home/carl/AnghaBench/RetroArch/input/drivers_joypad/extr_android_joypad.c_android_joypad_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.android_app = type { i64**, i64** }

@g_android = common dso_local global i64 0, align 8
@DEFAULT_MAX_PADS = common dso_local global i32 0, align 4
@MAX_AXIS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @android_joypad_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @android_joypad_destroy() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.android_app*, align 8
  %4 = load i64, i64* @g_android, align 8
  %5 = inttoptr i64 %4 to %struct.android_app*
  store %struct.android_app* %5, %struct.android_app** %3, align 8
  store i32 0, i32* %1, align 4
  br label %6

6:                                                ; preds = %48, %0
  %7 = load i32, i32* %1, align 4
  %8 = load i32, i32* @DEFAULT_MAX_PADS, align 4
  %9 = icmp ult i32 %7, %8
  br i1 %9, label %10, label %51

10:                                               ; preds = %6
  store i32 0, i32* %2, align 4
  br label %11

11:                                               ; preds = %25, %10
  %12 = load i32, i32* %2, align 4
  %13 = icmp ult i32 %12, 2
  br i1 %13, label %14, label %28

14:                                               ; preds = %11
  %15 = load %struct.android_app*, %struct.android_app** %3, align 8
  %16 = getelementptr inbounds %struct.android_app, %struct.android_app* %15, i32 0, i32 1
  %17 = load i64**, i64*** %16, align 8
  %18 = load i32, i32* %1, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds i64*, i64** %17, i64 %19
  %21 = load i64*, i64** %20, align 8
  %22 = load i32, i32* %2, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds i64, i64* %21, i64 %23
  store i64 0, i64* %24, align 8
  br label %25

25:                                               ; preds = %14
  %26 = load i32, i32* %2, align 4
  %27 = add i32 %26, 1
  store i32 %27, i32* %2, align 4
  br label %11

28:                                               ; preds = %11
  store i32 0, i32* %2, align 4
  br label %29

29:                                               ; preds = %44, %28
  %30 = load i32, i32* %2, align 4
  %31 = load i32, i32* @MAX_AXIS, align 4
  %32 = icmp ult i32 %30, %31
  br i1 %32, label %33, label %47

33:                                               ; preds = %29
  %34 = load %struct.android_app*, %struct.android_app** %3, align 8
  %35 = getelementptr inbounds %struct.android_app, %struct.android_app* %34, i32 0, i32 0
  %36 = load i64**, i64*** %35, align 8
  %37 = load i32, i32* %1, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds i64*, i64** %36, i64 %38
  %40 = load i64*, i64** %39, align 8
  %41 = load i32, i32* %2, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds i64, i64* %40, i64 %42
  store i64 0, i64* %43, align 8
  br label %44

44:                                               ; preds = %33
  %45 = load i32, i32* %2, align 4
  %46 = add i32 %45, 1
  store i32 %46, i32* %2, align 4
  br label %29

47:                                               ; preds = %29
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %1, align 4
  %50 = add i32 %49, 1
  store i32 %50, i32* %1, align 4
  br label %6

51:                                               ; preds = %6
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
