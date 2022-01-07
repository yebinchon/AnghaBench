; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/client/extr_snd_mem.c_ResampleSfxRaw.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/client/extr_snd_mem.c_ResampleSfxRaw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { float }

@dma = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i16*, i32, i32, i32, i32*)* @ResampleSfxRaw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ResampleSfxRaw(i16* %0, i32 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i16*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca float, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i16* %0, i16** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  %18 = load i32, i32* %7, align 4
  %19 = sitofp i32 %18 to float
  %20 = load float, float* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dma, i32 0, i32 0), align 4
  %21 = fdiv float %19, %20
  store float %21, float* %13, align 4
  %22 = load i32, i32* %9, align 4
  %23 = sitofp i32 %22 to float
  %24 = load float, float* %13, align 4
  %25 = fdiv float %23, %24
  %26 = fptosi float %25 to i32
  store i32 %26, i32* %11, align 4
  store i32 0, i32* %16, align 4
  %27 = load float, float* %13, align 4
  %28 = fmul float %27, 2.560000e+02
  %29 = fptosi float %28 to i32
  store i32 %29, i32* %17, align 4
  store i32 0, i32* %14, align 4
  br label %30

30:                                               ; preds = %67, %5
  %31 = load i32, i32* %14, align 4
  %32 = load i32, i32* %11, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %70

34:                                               ; preds = %30
  %35 = load i32, i32* %16, align 4
  %36 = ashr i32 %35, 8
  store i32 %36, i32* %12, align 4
  %37 = load i32, i32* %17, align 4
  %38 = load i32, i32* %16, align 4
  %39 = add nsw i32 %38, %37
  store i32 %39, i32* %16, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp eq i32 %40, 2
  br i1 %41, label %42, label %50

42:                                               ; preds = %34
  %43 = load i32*, i32** %10, align 8
  %44 = bitcast i32* %43 to i16*
  %45 = load i32, i32* %12, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i16, i16* %44, i64 %46
  %48 = load i16, i16* %47, align 2
  %49 = call i32 @LittleShort(i16 signext %48)
  store i32 %49, i32* %15, align 4
  br label %60

50:                                               ; preds = %34
  %51 = load i32*, i32** %10, align 8
  %52 = load i32, i32* %12, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = trunc i32 %55 to i8
  %57 = zext i8 %56 to i32
  %58 = sub nsw i32 %57, 128
  %59 = shl i32 %58, 8
  store i32 %59, i32* %15, align 4
  br label %60

60:                                               ; preds = %50, %42
  %61 = load i32, i32* %15, align 4
  %62 = trunc i32 %61 to i16
  %63 = load i16*, i16** %6, align 8
  %64 = load i32, i32* %14, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i16, i16* %63, i64 %65
  store i16 %62, i16* %66, align 2
  br label %67

67:                                               ; preds = %60
  %68 = load i32, i32* %14, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %14, align 4
  br label %30

70:                                               ; preds = %30
  %71 = load i32, i32* %11, align 4
  ret i32 %71
}

declare dso_local i32 @LittleShort(i16 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
