; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/FCEU/FCEU/~attic/pc/extr_dos-sound.c_ProgramDMA.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/FCEU/FCEU/~attic/pc/extr_dos-sound.c_ProgramDMA.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ProgramDMA.PPorts = internal global [8 x i32] [i32 135, i32 131, i32 129, i32 130, i32 0, i32 139, i32 137, i32 138], align 16
@format = common dso_local global i32 0, align 4
@SBDMA16 = common dso_local global i32 0, align 4
@SBDMA = common dso_local global i32 0, align 4
@fragsize = common dso_local global i32 0, align 4
@LMBuffer = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @ProgramDMA to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ProgramDMA() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @format, align 4
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %4, label %18

4:                                                ; preds = %0
  %5 = load i32, i32* @SBDMA16, align 4
  %6 = and i32 %5, 3
  %7 = or i32 %6, 4
  %8 = call i32 @outportb(i32 212, i32 %7)
  %9 = call i32 @outportb(i32 216, i32 0)
  %10 = load i32, i32* @SBDMA16, align 4
  %11 = and i32 %10, 3
  %12 = or i32 %11, 88
  %13 = call i32 @outportb(i32 214, i32 %12)
  %14 = load i32, i32* @SBDMA16, align 4
  %15 = and i32 %14, 3
  %16 = shl i32 %15, 2
  %17 = add nsw i32 %16, 194
  store i32 %17, i32* %1, align 4
  br label %29

18:                                               ; preds = %0
  %19 = load i32, i32* @SBDMA, align 4
  %20 = or i32 %19, 4
  %21 = call i32 @outportb(i32 10, i32 %20)
  %22 = call i32 @outportb(i32 12, i32 0)
  %23 = load i32, i32* @SBDMA, align 4
  %24 = or i32 %23, 88
  %25 = call i32 @outportb(i32 11, i32 %24)
  %26 = load i32, i32* @SBDMA, align 4
  %27 = shl i32 %26, 1
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %1, align 4
  br label %29

29:                                               ; preds = %18, %4
  %30 = load i32, i32* %1, align 4
  %31 = load i32, i32* @fragsize, align 4
  %32 = mul nsw i32 %31, 2
  %33 = sub nsw i32 %32, 1
  %34 = call i32 @outportb(i32 %30, i32 %33)
  %35 = load i32, i32* %1, align 4
  %36 = load i32, i32* @fragsize, align 4
  %37 = mul nsw i32 %36, 2
  %38 = sub nsw i32 %37, 1
  %39 = ashr i32 %38, 8
  %40 = call i32 @outportb(i32 %35, i32 %39)
  %41 = load i32, i32* @format, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %29
  %44 = load i32, i32* @SBDMA16, align 4
  br label %47

45:                                               ; preds = %29
  %46 = load i32, i32* @SBDMA, align 4
  br label %47

47:                                               ; preds = %45, %43
  %48 = phi i32 [ %44, %43 ], [ %46, %45 ]
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [8 x i32], [8 x i32]* @ProgramDMA.PPorts, i64 0, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @LMBuffer, align 4
  %53 = ashr i32 %52, 16
  %54 = call i32 @outportb(i32 %51, i32 %53)
  %55 = load i32, i32* @format, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %47
  %58 = load i32, i32* @SBDMA16, align 4
  %59 = and i32 %58, 3
  %60 = shl i32 %59, 2
  %61 = add nsw i32 %60, 192
  store i32 %61, i32* %1, align 4
  br label %65

62:                                               ; preds = %47
  %63 = load i32, i32* @SBDMA, align 4
  %64 = shl i32 %63, 1
  store i32 %64, i32* %1, align 4
  br label %65

65:                                               ; preds = %62, %57
  %66 = load i32, i32* %1, align 4
  %67 = load i32, i32* @LMBuffer, align 4
  %68 = load i32, i32* @format, align 4
  %69 = ashr i32 %67, %68
  %70 = call i32 @outportb(i32 %66, i32 %69)
  %71 = load i32, i32* %1, align 4
  %72 = load i32, i32* @LMBuffer, align 4
  %73 = load i32, i32* @format, align 4
  %74 = add nsw i32 8, %73
  %75 = ashr i32 %72, %74
  %76 = call i32 @outportb(i32 %71, i32 %75)
  ret void
}

declare dso_local i32 @outportb(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
