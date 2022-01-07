; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/sound/extr_sound.c_PsndGetSamples.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/sound/extr_sound.c_PsndGetSamples.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PsndGetSamples.curr_pos = internal global i32 0, align 4
@emustatus = common dso_local global i32 0, align 4
@PsndLen = common dso_local global i32 0, align 4
@PicoOpt = common dso_local global i32 0, align 4
@POPT_EN_STEREO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @PsndGetSamples(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = icmp eq i32 %3, 224
  br i1 %4, label %5, label %44

5:                                                ; preds = %1
  %6 = load i32, i32* @emustatus, align 4
  %7 = and i32 %6, 2
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %18

9:                                                ; preds = %5
  %10 = load i32, i32* @PsndGetSamples.curr_pos, align 4
  %11 = load i32, i32* @PsndLen, align 4
  %12 = load i32, i32* @PsndLen, align 4
  %13 = sdiv i32 %12, 2
  %14 = sub nsw i32 %11, %13
  %15 = call i32 @PsndRender(i32 %10, i32 %14)
  %16 = load i32, i32* @PsndGetSamples.curr_pos, align 4
  %17 = add nsw i32 %16, %15
  store i32 %17, i32* @PsndGetSamples.curr_pos, align 4
  br label %21

18:                                               ; preds = %5
  %19 = load i32, i32* @PsndLen, align 4
  %20 = call i32 @PsndRender(i32 0, i32 %19)
  store i32 %20, i32* @PsndGetSamples.curr_pos, align 4
  br label %21

21:                                               ; preds = %18, %9
  %22 = load i32, i32* @emustatus, align 4
  %23 = and i32 %22, 1
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = load i32, i32* @emustatus, align 4
  %27 = or i32 %26, 2
  store i32 %27, i32* @emustatus, align 4
  br label %31

28:                                               ; preds = %21
  %29 = load i32, i32* @emustatus, align 4
  %30 = and i32 %29, -3
  store i32 %30, i32* @emustatus, align 4
  br label %31

31:                                               ; preds = %28, %25
  br i1 true, label %32, label %42

32:                                               ; preds = %31
  %33 = load i32, i32* @PsndGetSamples.curr_pos, align 4
  %34 = load i32, i32* @PicoOpt, align 4
  %35 = load i32, i32* @POPT_EN_STEREO, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  %38 = zext i1 %37 to i64
  %39 = select i1 %37, i32 4, i32 2
  %40 = mul nsw i32 %33, %39
  %41 = call i32 @PicoWriteSound(i32 %40)
  br label %42

42:                                               ; preds = %32, %31
  %43 = call i32 (...) @PsndClear()
  br label %57

44:                                               ; preds = %1
  %45 = load i32, i32* @emustatus, align 4
  %46 = and i32 %45, 3
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %56

48:                                               ; preds = %44
  %49 = load i32, i32* @emustatus, align 4
  %50 = or i32 %49, 2
  store i32 %50, i32* @emustatus, align 4
  %51 = load i32, i32* @emustatus, align 4
  %52 = and i32 %51, -2
  store i32 %52, i32* @emustatus, align 4
  %53 = load i32, i32* @PsndLen, align 4
  %54 = sdiv i32 %53, 2
  %55 = call i32 @PsndRender(i32 0, i32 %54)
  store i32 %55, i32* @PsndGetSamples.curr_pos, align 4
  br label %56

56:                                               ; preds = %48, %44
  br label %57

57:                                               ; preds = %56, %42
  ret void
}

declare dso_local i32 @PsndRender(i32, i32) #1

declare dso_local i32 @PicoWriteSound(i32) #1

declare dso_local i32 @PsndClear(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
