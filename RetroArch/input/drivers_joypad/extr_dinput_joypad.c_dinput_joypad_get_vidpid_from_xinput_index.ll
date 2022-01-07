; ModuleID = '/home/carl/AnghaBench/RetroArch/input/drivers_joypad/extr_dinput_joypad.c_dinput_joypad_get_vidpid_from_xinput_index.c'
source_filename = "/home/carl/AnghaBench/RetroArch/input/drivers_joypad/extr_dinput_joypad.c_dinput_joypad_get_vidpid_from_xinput_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64 }

@g_xinput_pad_indexes = common dso_local global i64* null, align 8
@.str = private unnamed_addr constant [58 x i8] c"[DINPUT]: Found XInput pad at index %d (DINPUT index %d)\0A\00", align 1
@g_pads = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dinput_joypad_get_vidpid_from_xinput_index(i64 %0, i64* %1, i64* %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  store i64 %0, i64* %6, align 8
  store i64* %1, i64** %7, align 8
  store i64* %2, i64** %8, align 8
  store i64* %3, i64** %9, align 8
  store i32 0, i32* %10, align 4
  br label %11

11:                                               ; preds = %58, %4
  %12 = load i32, i32* %10, align 4
  %13 = load i64*, i64** @g_xinput_pad_indexes, align 8
  %14 = call i32 @ARRAY_SIZE(i64* %13)
  %15 = icmp slt i32 %12, %14
  br i1 %15, label %16, label %61

16:                                               ; preds = %11
  %17 = load i64, i64* %6, align 8
  %18 = load i64*, i64** @g_xinput_pad_indexes, align 8
  %19 = load i32, i32* %10, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i64, i64* %18, i64 %20
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %17, %22
  br i1 %23, label %24, label %57

24:                                               ; preds = %16
  %25 = load i64, i64* %6, align 8
  %26 = load i32, i32* %10, align 4
  %27 = call i32 @RARCH_LOG(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i64 %25, i32 %26)
  %28 = load i64*, i64** %7, align 8
  %29 = icmp ne i64* %28, null
  br i1 %29, label %30, label %38

30:                                               ; preds = %24
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** @g_pads, align 8
  %32 = load i32, i32* %10, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64*, i64** %7, align 8
  store i64 %36, i64* %37, align 8
  br label %38

38:                                               ; preds = %30, %24
  %39 = load i64*, i64** %8, align 8
  %40 = icmp ne i64* %39, null
  br i1 %40, label %41, label %49

41:                                               ; preds = %38
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** @g_pads, align 8
  %43 = load i32, i32* %10, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load i64*, i64** %8, align 8
  store i64 %47, i64* %48, align 8
  br label %49

49:                                               ; preds = %41, %38
  %50 = load i64*, i64** %9, align 8
  %51 = icmp ne i64* %50, null
  br i1 %51, label %52, label %56

52:                                               ; preds = %49
  %53 = load i32, i32* %10, align 4
  %54 = sext i32 %53 to i64
  %55 = load i64*, i64** %9, align 8
  store i64 %54, i64* %55, align 8
  br label %56

56:                                               ; preds = %52, %49
  store i32 1, i32* %5, align 4
  br label %62

57:                                               ; preds = %16
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %10, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %10, align 4
  br label %11

61:                                               ; preds = %11
  store i32 0, i32* %5, align 4
  br label %62

62:                                               ; preds = %61, %56
  %63 = load i32, i32* %5, align 4
  ret i32 %63
}

declare dso_local i32 @ARRAY_SIZE(i64*) #1

declare dso_local i32 @RARCH_LOG(i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
