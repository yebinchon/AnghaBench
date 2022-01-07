; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/common/extr_menu_pico.c_sndrate_prevnext.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/common/extr_menu_pico.c_sndrate_prevnext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@sndrate_prevnext.rates = internal constant [5 x i32] [i32 8000, i32 11025, i32 16000, i32 22050, i32 44100], align 16
@PicoOpt = common dso_local global i32 0, align 4
@POPT_EN_STEREO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @sndrate_prevnext to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sndrate_prevnext(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %19, %2
  %8 = load i32, i32* %6, align 4
  %9 = icmp slt i32 %8, 5
  br i1 %9, label %10, label %22

10:                                               ; preds = %7
  %11 = load i32, i32* %6, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [5 x i32], [5 x i32]* @sndrate_prevnext.rates, i64 0, i64 %12
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %10
  br label %22

18:                                               ; preds = %10
  br label %19

19:                                               ; preds = %18
  %20 = load i32, i32* %6, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %6, align 4
  br label %7

22:                                               ; preds = %17, %7
  %23 = load i32, i32* %5, align 4
  %24 = icmp ne i32 %23, 0
  %25 = zext i1 %24 to i64
  %26 = select i1 %24, i32 1, i32 -1
  %27 = load i32, i32* %6, align 4
  %28 = add nsw i32 %27, %26
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp sgt i32 %29, 4
  br i1 %30, label %31, label %43

31:                                               ; preds = %22
  %32 = load i32, i32* @PicoOpt, align 4
  %33 = load i32, i32* @POPT_EN_STEREO, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %31
  %37 = load i32, i32* @POPT_EN_STEREO, align 4
  %38 = load i32, i32* @PicoOpt, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* @PicoOpt, align 4
  %40 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @sndrate_prevnext.rates, i64 0, i64 0), align 16
  store i32 %40, i32* %3, align 4
  br label %64

41:                                               ; preds = %31
  %42 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @sndrate_prevnext.rates, i64 0, i64 4), align 16
  store i32 %42, i32* %3, align 4
  br label %64

43:                                               ; preds = %22
  %44 = load i32, i32* %6, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %59

46:                                               ; preds = %43
  %47 = load i32, i32* @PicoOpt, align 4
  %48 = load i32, i32* @POPT_EN_STEREO, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %46
  %52 = load i32, i32* @POPT_EN_STEREO, align 4
  %53 = xor i32 %52, -1
  %54 = load i32, i32* @PicoOpt, align 4
  %55 = and i32 %54, %53
  store i32 %55, i32* @PicoOpt, align 4
  %56 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @sndrate_prevnext.rates, i64 0, i64 4), align 16
  store i32 %56, i32* %3, align 4
  br label %64

57:                                               ; preds = %46
  %58 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @sndrate_prevnext.rates, i64 0, i64 0), align 16
  store i32 %58, i32* %3, align 4
  br label %64

59:                                               ; preds = %43
  %60 = load i32, i32* %6, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds [5 x i32], [5 x i32]* @sndrate_prevnext.rates, i64 0, i64 %61
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %3, align 4
  br label %64

64:                                               ; preds = %59, %57, %51, %41, %36
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
