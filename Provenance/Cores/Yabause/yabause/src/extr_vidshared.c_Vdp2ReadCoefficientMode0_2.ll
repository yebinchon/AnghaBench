; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_vidshared.c_Vdp2ReadCoefficientMode0_2.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_vidshared.c_Vdp2ReadCoefficientMode0_2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @Vdp2ReadCoefficientMode0_2(%struct.TYPE_3__* %0, i32 %1, i32* %2) #0 {
  %4 = alloca float, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp eq i32 %11, 2
  br i1 %12, label %13, label %34

13:                                               ; preds = %3
  %14 = load i32, i32* %6, align 4
  %15 = and i32 %14, 524286
  store i32 %15, i32* %6, align 4
  %16 = load i32*, i32** %7, align 8
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @T1ReadWord(i32* %16, i32 %17)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = ashr i32 %19, 15
  %21 = and i32 %20, 1
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* %8, align 4
  %25 = and i32 %24, 32767
  %26 = load i32, i32* %8, align 4
  %27 = and i32 %26, 16384
  %28 = icmp ne i32 %27, 0
  %29 = zext i1 %28 to i64
  %30 = select i1 %28, i32 -16384, i32 0
  %31 = or i32 %25, %30
  %32 = sitofp i32 %31 to float
  %33 = fdiv float %32, 1.024000e+03
  store float %33, float* %4, align 4
  br label %55

34:                                               ; preds = %3
  %35 = load i32, i32* %6, align 4
  %36 = and i32 %35, 524284
  store i32 %36, i32* %6, align 4
  %37 = load i32*, i32** %7, align 8
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @T1ReadLong(i32* %37, i32 %38)
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = ashr i32 %40, 31
  %42 = and i32 %41, 1
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  %45 = load i32, i32* %8, align 4
  %46 = and i32 %45, 16777215
  %47 = load i32, i32* %8, align 4
  %48 = and i32 %47, 8388608
  %49 = icmp ne i32 %48, 0
  %50 = zext i1 %49 to i64
  %51 = select i1 %49, i32 -8388608, i32 0
  %52 = or i32 %46, %51
  %53 = sitofp i32 %52 to float
  %54 = fdiv float %53, 6.553600e+04
  store float %54, float* %4, align 4
  br label %55

55:                                               ; preds = %34, %13
  %56 = load float, float* %4, align 4
  ret float %56
}

declare dso_local i32 @T1ReadWord(i32*, i32) #1

declare dso_local i32 @T1ReadLong(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
