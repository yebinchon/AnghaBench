; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_vdp1.c_ColorRamGetColor.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_vdp1.c_ColorRamGetColor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@Vdp2Internal = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@Vdp2ColorRam = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ColorRamGetColor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ColorRamGetColor(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Vdp2Internal, i32 0, i32 0), align 4
  switch i32 %7, label %32 [
    i32 0, label %8
    i32 1, label %8
    i32 2, label %17
  ]

8:                                                ; preds = %1, %1
  %9 = load i32, i32* %3, align 4
  %10 = shl i32 %9, 1
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* @Vdp2ColorRam, align 4
  %12 = load i32, i32* %3, align 4
  %13 = and i32 %12, 4095
  %14 = call i32 @T2ReadWord(i32 %11, i32 %13)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @SAT2YAB1(i32 255, i32 %15)
  store i32 %16, i32* %2, align 4
  br label %34

17:                                               ; preds = %1
  %18 = load i32, i32* %3, align 4
  %19 = shl i32 %18, 2
  store i32 %19, i32* %3, align 4
  %20 = load i32, i32* %3, align 4
  %21 = and i32 %20, 4095
  store i32 %21, i32* %3, align 4
  %22 = load i32, i32* @Vdp2ColorRam, align 4
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @T2ReadWord(i32 %22, i32 %23)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* @Vdp2ColorRam, align 4
  %26 = load i32, i32* %3, align 4
  %27 = add nsw i32 %26, 2
  %28 = call i32 @T2ReadWord(i32 %25, i32 %27)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @SAT2YAB2(i32 255, i32 %29, i32 %30)
  store i32 %31, i32* %2, align 4
  br label %34

32:                                               ; preds = %1
  br label %33

33:                                               ; preds = %32
  store i32 0, i32* %2, align 4
  br label %34

34:                                               ; preds = %33, %17, %8
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local i32 @T2ReadWord(i32, i32) #1

declare dso_local i32 @SAT2YAB1(i32, i32) #1

declare dso_local i32 @SAT2YAB2(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
