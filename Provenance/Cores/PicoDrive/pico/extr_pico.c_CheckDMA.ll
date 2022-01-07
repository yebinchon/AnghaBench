; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/extr_pico.c_CheckDMA.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/extr_pico.c_CheckDMA.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32*, i32, i32 }

@Pico = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@dma_timings = common dso_local global i32* null, align 8
@dma_bsycles = common dso_local global i32* null, align 8
@EL_VDPDMA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"~Dma %i op=%i can=%i burn=%i [%i]\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CheckDMA() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %6 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @Pico, i32 0, i32 1, i32 0), align 8
  %7 = getelementptr inbounds i32, i32* %6, i64 23
  %8 = load i32, i32* %7, align 4
  %9 = ashr i32 %8, 6
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @Pico, i32 0, i32 0, i32 0), align 8
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %3, align 4
  %12 = and i32 %11, 2
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %0
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @Pico, i32 0, i32 1, i32 1), align 8
  %16 = icmp eq i32 %15, 1
  %17 = zext i1 %16 to i64
  %18 = select i1 %16, i32 0, i32 1
  store i32 %18, i32* %3, align 4
  br label %19

19:                                               ; preds = %14, %0
  %20 = load i32, i32* %3, align 4
  store i32 %20, i32* %5, align 4
  %21 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @Pico, i32 0, i32 1, i32 0), align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 12
  %23 = load i32, i32* %22, align 4
  %24 = and i32 %23, 1
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %19
  %27 = load i32, i32* %3, align 4
  %28 = or i32 %27, 4
  store i32 %28, i32* %3, align 4
  br label %29

29:                                               ; preds = %26, %19
  %30 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @Pico, i32 0, i32 1, i32 2), align 4
  %31 = and i32 %30, 8
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %42, label %33

33:                                               ; preds = %29
  %34 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @Pico, i32 0, i32 1, i32 0), align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 1
  %36 = load i32, i32* %35, align 4
  %37 = and i32 %36, 64
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %33
  %40 = load i32, i32* %3, align 4
  %41 = or i32 %40, 8
  store i32 %41, i32* %3, align 4
  br label %42

42:                                               ; preds = %39, %33, %29
  %43 = load i32*, i32** @dma_timings, align 8
  %44 = load i32, i32* %3, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %2, align 4
  %48 = load i32, i32* %4, align 4
  %49 = load i32, i32* %2, align 4
  %50 = icmp sle i32 %48, %49
  br i1 %50, label %51, label %68

51:                                               ; preds = %42
  %52 = load i32, i32* %3, align 4
  %53 = and i32 %52, 2
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %51
  %56 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @Pico, i32 0, i32 1, i32 2), align 4
  %57 = and i32 %56, -3
  store i32 %57, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @Pico, i32 0, i32 1, i32 2), align 4
  br label %67

58:                                               ; preds = %51
  %59 = load i32, i32* %4, align 4
  %60 = load i32*, i32** @dma_bsycles, align 8
  %61 = load i32, i32* %3, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = mul nsw i32 %59, %64
  %66 = ashr i32 %65, 8
  store i32 %66, i32* %1, align 4
  br label %67

67:                                               ; preds = %58, %55
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @Pico, i32 0, i32 0, i32 0), align 8
  br label %77

68:                                               ; preds = %42
  %69 = load i32, i32* %3, align 4
  %70 = and i32 %69, 2
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %68
  store i32 488, i32* %1, align 4
  br label %73

73:                                               ; preds = %72, %68
  %74 = load i32, i32* %2, align 4
  %75 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @Pico, i32 0, i32 0, i32 0), align 8
  %76 = sub nsw i32 %75, %74
  store i32 %76, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @Pico, i32 0, i32 0, i32 0), align 8
  br label %77

77:                                               ; preds = %73, %67
  %78 = load i32, i32* @EL_VDPDMA, align 4
  %79 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @Pico, i32 0, i32 0, i32 0), align 8
  %80 = load i32, i32* %5, align 4
  %81 = load i32, i32* %2, align 4
  %82 = load i32, i32* %1, align 4
  %83 = call i32 (...) @SekCyclesDone()
  %84 = call i32 @elprintf(i32 %78, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %79, i32 %80, i32 %81, i32 %82, i32 %83)
  %85 = load i32, i32* %1, align 4
  ret i32 %85
}

declare dso_local i32 @elprintf(i32, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @SekCyclesDone(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
