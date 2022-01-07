; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/dreamcast/extr_viddc.c_Vdp2ColorRamGetColor32.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/dreamcast/extr_viddc.c_Vdp2ColorRamGetColor32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@Vdp2Internal = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@Vdp2ColorRam = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @Vdp2ColorRamGetColor32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Vdp2ColorRamGetColor32(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Vdp2Internal, i32 0, i32 0), align 4
  switch i32 %9, label %36 [
    i32 0, label %10
    i32 1, label %10
    i32 2, label %20
  ]

10:                                               ; preds = %2, %2
  %11 = load i32, i32* %4, align 4
  %12 = shl i32 %11, 1
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* @Vdp2ColorRam, align 4
  %14 = load i32, i32* %4, align 4
  %15 = and i32 %14, 4095
  %16 = call i32 @T2ReadWord(i32 %13, i32 %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @SAT2YAB32(i32 %17, i32 %18)
  store i32 %19, i32* %3, align 4
  br label %38

20:                                               ; preds = %2
  %21 = load i32, i32* %4, align 4
  %22 = shl i32 %21, 2
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = and i32 %23, 4095
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* @Vdp2ColorRam, align 4
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @T2ReadWord(i32 %25, i32 %26)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* @Vdp2ColorRam, align 4
  %29 = load i32, i32* %4, align 4
  %30 = add nsw i32 %29, 2
  %31 = call i32 @T2ReadWord(i32 %28, i32 %30)
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @SAT2YAB2_32(i32 %32, i32 %33, i32 %34)
  store i32 %35, i32* %3, align 4
  br label %38

36:                                               ; preds = %2
  br label %37

37:                                               ; preds = %36
  store i32 0, i32* %3, align 4
  br label %38

38:                                               ; preds = %37, %20, %10
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i32 @T2ReadWord(i32, i32) #1

declare dso_local i32 @SAT2YAB32(i32, i32) #1

declare dso_local i32 @SAT2YAB2_32(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
