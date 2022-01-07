; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/psp/extr_emu.c_writeSound.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/psp/extr_emu.c_writeSound.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PsndOut = common dso_local global i64 0, align 8
@sndBuffer_endptr = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [15 x i8] c"snd oflow %i!\0A\00", align 1
@sndBuffer = common dso_local global i64 0, align 8
@samples_made = common dso_local global i32 0, align 4
@samples_done = common dso_local global i32 0, align 4
@samples_block = common dso_local global i32 0, align 4
@sound_sem = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @writeSound to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @writeSound(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = sdiv i32 %4, 2
  %6 = sext i32 %5 to i64
  %7 = load i64, i64* @PsndOut, align 8
  %8 = add nsw i64 %7, %6
  store i64 %8, i64* @PsndOut, align 8
  %9 = load i64, i64* @PsndOut, align 8
  %10 = load i64, i64* @sndBuffer_endptr, align 8
  %11 = icmp sgt i64 %9, %10
  br i1 %11, label %12, label %17

12:                                               ; preds = %1
  %13 = load i64, i64* @PsndOut, align 8
  %14 = load i64, i64* @sndBuffer_endptr, align 8
  %15 = sub nsw i64 %13, %14
  %16 = call i32 @lprintf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i64 %15)
  br label %17

17:                                               ; preds = %12, %1
  %18 = load i64, i64* @PsndOut, align 8
  %19 = load i64, i64* @sndBuffer_endptr, align 8
  %20 = icmp sge i64 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = load i64, i64* @sndBuffer, align 8
  store i64 %22, i64* @PsndOut, align 8
  br label %23

23:                                               ; preds = %21, %17
  %24 = load i32, i32* %2, align 4
  %25 = sdiv i32 %24, 2
  %26 = load i32, i32* @samples_made, align 4
  %27 = add nsw i32 %26, %25
  store i32 %27, i32* @samples_made, align 4
  %28 = load i32, i32* @samples_made, align 4
  %29 = load i32, i32* @samples_done, align 4
  %30 = sub nsw i32 %28, %29
  %31 = load i32, i32* @samples_block, align 4
  %32 = mul nsw i32 %31, 2
  %33 = icmp sgt i32 %30, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %23
  %35 = load i32, i32* @sound_sem, align 4
  %36 = call i32 @sceKernelSignalSema(i32 %35, i32 1)
  store i32 %36, i32* %3, align 4
  br label %37

37:                                               ; preds = %34, %23
  ret void
}

declare dso_local i32 @lprintf(i8*, i64) #1

declare dso_local i32 @sceKernelSignalSema(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
