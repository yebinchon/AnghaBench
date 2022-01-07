; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/input_hw/extr_input.c_input_reset.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/input_hw/extr_input.c_input_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32*, i64* }

@MAX_DEVICES = common dso_local global i32 0, align 4
@input = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@SYSTEM_TEAMPLAYER = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @input_reset() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  br label %2

2:                                                ; preds = %38, %0
  %3 = load i32, i32* %1, align 4
  %4 = load i32, i32* @MAX_DEVICES, align 4
  %5 = icmp slt i32 %3, %4
  br i1 %5, label %6, label %41

6:                                                ; preds = %2
  %7 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @input, i32 0, i32 0), align 8
  %8 = load i32, i32* %1, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds i32, i32* %7, i64 %9
  %11 = load i32, i32* %10, align 4
  switch i32 %11, label %36 [
    i32 134, label %12
    i32 133, label %12
    i32 132, label %12
    i32 136, label %15
    i32 135, label %18
    i32 137, label %21
    i32 128, label %25
    i32 131, label %28
    i32 130, label %31
    i32 129, label %34
  ]

12:                                               ; preds = %6, %6, %6
  %13 = load i32, i32* %1, align 4
  %14 = call i32 @gamepad_reset(i32 %13)
  br label %37

15:                                               ; preds = %6
  %16 = load i32, i32* %1, align 4
  %17 = call i32 @lightgun_reset(i32 %16)
  br label %37

18:                                               ; preds = %6
  %19 = load i32, i32* %1, align 4
  %20 = call i32 @mouse_reset(i32 %19)
  br label %37

21:                                               ; preds = %6
  %22 = load i32, i32* %1, align 4
  %23 = ashr i32 %22, 2
  %24 = call i32 @activator_reset(i32 %23)
  br label %37

25:                                               ; preds = %6
  %26 = load i32, i32* %1, align 4
  %27 = call i32 @xe_a1p_reset(i32 %26)
  br label %37

28:                                               ; preds = %6
  %29 = load i32, i32* %1, align 4
  %30 = call i32 @paddle_reset(i32 %29)
  br label %37

31:                                               ; preds = %6
  %32 = load i32, i32* %1, align 4
  %33 = call i32 @sportspad_reset(i32 %32)
  br label %37

34:                                               ; preds = %6
  %35 = call i32 (...) @terebi_oekaki_reset()
  br label %37

36:                                               ; preds = %6
  br label %37

37:                                               ; preds = %36, %34, %31, %28, %25, %21, %18, %15, %12
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %1, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %1, align 4
  br label %2

41:                                               ; preds = %2
  store i32 0, i32* %1, align 4
  br label %42

42:                                               ; preds = %57, %41
  %43 = load i32, i32* %1, align 4
  %44 = icmp slt i32 %43, 2
  br i1 %44, label %45, label %60

45:                                               ; preds = %42
  %46 = load i64*, i64** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @input, i32 0, i32 1), align 8
  %47 = load i32, i32* %1, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i64, i64* %46, i64 %48
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @SYSTEM_TEAMPLAYER, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %45
  %54 = load i32, i32* %1, align 4
  %55 = call i32 @teamplayer_reset(i32 %54)
  br label %56

56:                                               ; preds = %53, %45
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %1, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %1, align 4
  br label %42

60:                                               ; preds = %42
  ret void
}

declare dso_local i32 @gamepad_reset(i32) #1

declare dso_local i32 @lightgun_reset(i32) #1

declare dso_local i32 @mouse_reset(i32) #1

declare dso_local i32 @activator_reset(i32) #1

declare dso_local i32 @xe_a1p_reset(i32) #1

declare dso_local i32 @paddle_reset(i32) #1

declare dso_local i32 @sportspad_reset(i32) #1

declare dso_local i32 @terebi_oekaki_reset(...) #1

declare dso_local i32 @teamplayer_reset(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
