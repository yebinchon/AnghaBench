; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/dreamcast/extr_viddc.c_VIDDCVdp2DrawEnd.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/dreamcast/extr_viddc.c_VIDDCVdp2DrawEnd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dmadone = common dso_local global i32 0, align 4
@framecount = common dso_local global i32 0, align 4
@lastup = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"%d frames in %d seconds FPS: %f\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @VIDDCVdp2DrawEnd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @VIDDCVdp2DrawEnd() #0 {
  %1 = call i32 @sem_wait(i32* @dmadone)
  %2 = call i32 @sem_signal(i32* @dmadone)
  %3 = call i32 (...) @pvr_scene_finish()
  %4 = load i32, i32* @framecount, align 4
  %5 = add nsw i32 %4, 1
  store i32 %5, i32* @framecount, align 4
  %6 = load i64, i64* @lastup, align 8
  %7 = add nsw i64 %6, 10
  %8 = call i64 @time(i32* null)
  %9 = icmp sle i64 %7, %8
  br i1 %9, label %10, label %24

10:                                               ; preds = %0
  %11 = load i32, i32* @framecount, align 4
  %12 = call i64 @time(i32* null)
  %13 = load i64, i64* @lastup, align 8
  %14 = sub nsw i64 %12, %13
  %15 = load i32, i32* @framecount, align 4
  %16 = sitofp i32 %15 to float
  %17 = call i64 @time(i32* null)
  %18 = load i64, i64* @lastup, align 8
  %19 = sub nsw i64 %17, %18
  %20 = sitofp i64 %19 to float
  %21 = fdiv float %16, %20
  %22 = call i32 @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %11, i64 %14, float %21)
  store i32 0, i32* @framecount, align 4
  %23 = call i64 @time(i32* null)
  store i64 %23, i64* @lastup, align 8
  br label %24

24:                                               ; preds = %10, %0
  ret void
}

declare dso_local i32 @sem_wait(i32*) #1

declare dso_local i32 @sem_signal(i32*) #1

declare dso_local i32 @pvr_scene_finish(...) #1

declare dso_local i64 @time(i32*) #1

declare dso_local i32 @printf(i8*, i32, i64, float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
