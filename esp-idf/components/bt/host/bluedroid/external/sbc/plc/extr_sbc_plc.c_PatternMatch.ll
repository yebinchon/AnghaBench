; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/external/sbc/plc/extr_sbc_plc.c_PatternMatch.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/external/sbc/plc/extr_sbc_plc.c_PatternMatch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SBC_N = common dso_local global i32 0, align 4
@SBC_LHIST = common dso_local global i64 0, align 8
@SBC_M = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @PatternMatch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @PatternMatch(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  store float -9.999990e+05, float* %4, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %3, align 4
  br label %7

7:                                                ; preds = %29, %1
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @SBC_N, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %32

11:                                               ; preds = %7
  %12 = load i32*, i32** %2, align 8
  %13 = load i64, i64* @SBC_LHIST, align 8
  %14 = load i64, i64* @SBC_M, align 8
  %15 = sub i64 %13, %14
  %16 = getelementptr inbounds i32, i32* %12, i64 %15
  %17 = load i32*, i32** %2, align 8
  %18 = load i32, i32* %3, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = call float @CrossCorrelation(i32* %16, i32* %20)
  store float %21, float* %5, align 4
  %22 = load float, float* %5, align 4
  %23 = load float, float* %4, align 4
  %24 = fcmp ogt float %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %11
  %26 = load i32, i32* %3, align 4
  store i32 %26, i32* %6, align 4
  %27 = load float, float* %5, align 4
  store float %27, float* %4, align 4
  br label %28

28:                                               ; preds = %25, %11
  br label %29

29:                                               ; preds = %28
  %30 = load i32, i32* %3, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %3, align 4
  br label %7

32:                                               ; preds = %7
  %33 = load i32, i32* %6, align 4
  ret i32 %33
}

declare dso_local float @CrossCorrelation(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
