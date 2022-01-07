; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/arm64/extr_kpc.c_get_counter_config.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/arm64/extr_kpc.c_get_counter_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SREG_PMESR0 = common dso_local global i32 0, align 4
@SREG_PMESR1 = common dso_local global i32 0, align 4
@SREG_PMCR1 = common dso_local global i32 0, align 4
@CFGWORD_EL0A32EN_MASK = common dso_local global i32 0, align 4
@CFGWORD_EL0A64EN_MASK = common dso_local global i32 0, align 4
@CFGWORD_EL1EN_MASK = common dso_local global i32 0, align 4
@CFGWORD_EL3EN_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @get_counter_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_counter_config(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  switch i32 %6, label %17 [
    i32 2, label %7
    i32 3, label %7
    i32 4, label %7
    i32 5, label %7
    i32 6, label %12
    i32 7, label %12
  ]

7:                                                ; preds = %1, %1, %1, %1
  %8 = load i32, i32* @SREG_PMESR0, align 4
  %9 = call i32 @SREG_READ(i32 %8)
  %10 = load i32, i32* %2, align 4
  %11 = call i32 @PMESR_EVT_DECODE(i32 %9, i32 %10, i32 2)
  store i32 %11, i32* %3, align 4
  br label %18

12:                                               ; preds = %1, %1
  %13 = load i32, i32* @SREG_PMESR1, align 4
  %14 = call i32 @SREG_READ(i32 %13)
  %15 = load i32, i32* %2, align 4
  %16 = call i32 @PMESR_EVT_DECODE(i32 %14, i32 %15, i32 6)
  store i32 %16, i32* %3, align 4
  br label %18

17:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  br label %18

18:                                               ; preds = %17, %12, %7
  %19 = load i32, i32* %3, align 4
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* @SREG_PMCR1, align 4
  %21 = call i32 @SREG_READ(i32 %20)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* %2, align 4
  %24 = call i32 @PMCR1_EL0_A32_ENABLE_MASK(i32 %23)
  %25 = and i32 %22, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %18
  %28 = load i32, i32* @CFGWORD_EL0A32EN_MASK, align 4
  %29 = load i32, i32* %4, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %4, align 4
  br label %31

31:                                               ; preds = %27, %18
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* %2, align 4
  %34 = call i32 @PMCR1_EL0_A64_ENABLE_MASK(i32 %33)
  %35 = and i32 %32, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %31
  %38 = load i32, i32* @CFGWORD_EL0A64EN_MASK, align 4
  %39 = load i32, i32* %4, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %4, align 4
  br label %41

41:                                               ; preds = %37, %31
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* %2, align 4
  %44 = call i32 @PMCR1_EL1_A64_ENABLE_MASK(i32 %43)
  %45 = and i32 %42, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %41
  %48 = load i32, i32* @CFGWORD_EL1EN_MASK, align 4
  %49 = load i32, i32* %4, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %4, align 4
  br label %51

51:                                               ; preds = %47, %41
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* %2, align 4
  %54 = call i32 @PMCR1_EL3_A64_ENABLE_MASK(i32 %53)
  %55 = and i32 %52, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %51
  %58 = load i32, i32* @CFGWORD_EL3EN_MASK, align 4
  %59 = load i32, i32* %4, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %4, align 4
  br label %61

61:                                               ; preds = %57, %51
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

declare dso_local i32 @PMESR_EVT_DECODE(i32, i32, i32) #1

declare dso_local i32 @SREG_READ(i32) #1

declare dso_local i32 @PMCR1_EL0_A32_ENABLE_MASK(i32) #1

declare dso_local i32 @PMCR1_EL0_A64_ENABLE_MASK(i32) #1

declare dso_local i32 @PMCR1_EL1_A64_ENABLE_MASK(i32) #1

declare dso_local i32 @PMCR1_EL3_A64_ENABLE_MASK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
