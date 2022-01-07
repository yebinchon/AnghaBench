; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_filter_ntsc.c_FILTER_NTSC_NextPreset.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_filter_ntsc.c_FILTER_NTSC_NextPreset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FILTER_NTSC_PRESET_CUSTOM = common dso_local global i32 0, align 4
@FILTER_NTSC_PRESET_COMPOSITE = common dso_local global i32 0, align 4
@FILTER_NTSC_PRESET_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @FILTER_NTSC_NextPreset() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 (...) @FILTER_NTSC_GetPreset()
  store i32 %2, i32* %1, align 4
  %3 = load i32, i32* %1, align 4
  %4 = load i32, i32* @FILTER_NTSC_PRESET_CUSTOM, align 4
  %5 = icmp eq i32 %3, %4
  br i1 %5, label %6, label %8

6:                                                ; preds = %0
  %7 = load i32, i32* @FILTER_NTSC_PRESET_COMPOSITE, align 4
  store i32 %7, i32* %1, align 4
  br label %13

8:                                                ; preds = %0
  %9 = load i32, i32* %1, align 4
  %10 = add nsw i32 %9, 1
  %11 = load i32, i32* @FILTER_NTSC_PRESET_SIZE, align 4
  %12 = srem i32 %10, %11
  store i32 %12, i32* %1, align 4
  br label %13

13:                                               ; preds = %8, %6
  %14 = load i32, i32* %1, align 4
  %15 = call i32 @FILTER_NTSC_SetPreset(i32 %14)
  ret void
}

declare dso_local i32 @FILTER_NTSC_GetPreset(...) #1

declare dso_local i32 @FILTER_NTSC_SetPreset(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
