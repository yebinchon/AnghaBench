; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/FCEU/FCEU/~attic/pc/extr_sdl-throttle.c_FCEUD_SetEmulationSpeed.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/FCEU/FCEU/~attic/pc/extr_sdl-throttle.c_FCEUD_SetEmulationSpeed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@fps_scale_table = common dso_local global i32* null, align 8
@fps_scale = common dso_local global i32 0, align 4
@fps_table_size = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"emulation speed %d%%\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @FCEUD_SetEmulationSpeed(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  switch i32 %3, label %20 [
    i32 128, label %4
    i32 129, label %8
    i32 130, label %10
    i32 132, label %11
    i32 131, label %13
  ]

4:                                                ; preds = %1
  %5 = load i32*, i32** @fps_scale_table, align 8
  %6 = getelementptr inbounds i32, i32* %5, i64 0
  %7 = load i32, i32* %6, align 4
  store i32 %7, i32* @fps_scale, align 4
  br label %21

8:                                                ; preds = %1
  %9 = call i32 (...) @DecreaseEmulationSpeed()
  br label %21

10:                                               ; preds = %1
  store i32 256, i32* @fps_scale, align 4
  br label %21

11:                                               ; preds = %1
  %12 = call i32 (...) @IncreaseEmulationSpeed()
  br label %21

13:                                               ; preds = %1
  %14 = load i32*, i32** @fps_scale_table, align 8
  %15 = load i32, i32* @fps_table_size, align 4
  %16 = sub nsw i32 %15, 1
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %14, i64 %17
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* @fps_scale, align 4
  br label %21

20:                                               ; preds = %1
  br label %27

21:                                               ; preds = %13, %11, %10, %8, %4
  %22 = call i32 (...) @RefreshThrottleFPS()
  %23 = load i32, i32* @fps_scale, align 4
  %24 = mul nsw i32 %23, 100
  %25 = ashr i32 %24, 8
  %26 = call i32 @FCEU_DispMessage(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %25)
  br label %27

27:                                               ; preds = %21, %20
  ret void
}

declare dso_local i32 @DecreaseEmulationSpeed(...) #1

declare dso_local i32 @IncreaseEmulationSpeed(...) #1

declare dso_local i32 @RefreshThrottleFPS(...) #1

declare dso_local i32 @FCEU_DispMessage(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
