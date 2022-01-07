; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_sol.c_sol_codec_id.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_sol.c_sol_codec_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SOL_DPCM = common dso_local global i32 0, align 4
@AV_CODEC_ID_SOL_DPCM = common dso_local global i32 0, align 4
@AV_CODEC_ID_PCM_U8 = common dso_local global i32 0, align 4
@SOL_16BIT = common dso_local global i32 0, align 4
@AV_CODEC_ID_PCM_S16LE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @sol_codec_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sol_codec_id(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @SOL_DPCM, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = load i32, i32* @AV_CODEC_ID_SOL_DPCM, align 4
  store i32 %11, i32* %3, align 4
  br label %26

12:                                               ; preds = %2
  %13 = load i32, i32* %4, align 4
  %14 = icmp eq i32 %13, 2957
  br i1 %14, label %15, label %17

15:                                               ; preds = %12
  %16 = load i32, i32* @AV_CODEC_ID_PCM_U8, align 4
  store i32 %16, i32* %3, align 4
  br label %26

17:                                               ; preds = %12
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @SOL_16BIT, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = load i32, i32* @AV_CODEC_ID_PCM_S16LE, align 4
  store i32 %23, i32* %3, align 4
  br label %26

24:                                               ; preds = %17
  %25 = load i32, i32* @AV_CODEC_ID_PCM_U8, align 4
  store i32 %25, i32* %3, align 4
  br label %26

26:                                               ; preds = %24, %22, %15, %10
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
