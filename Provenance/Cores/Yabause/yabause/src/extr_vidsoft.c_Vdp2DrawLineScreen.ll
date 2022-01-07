; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_vidsoft.c_Vdp2DrawLineScreen.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_vidsoft.c_Vdp2DrawLineScreen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@Vdp2Regs = common dso_local global %struct.TYPE_6__* null, align 8
@vdp2height = common dso_local global i32 0, align 4
@Vdp2Ram = common dso_local global i32 0, align 4
@Vdp2ColorRam = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @Vdp2DrawLineScreen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Vdp2DrawLineScreen() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Vdp2Regs, align 8
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %0
  br label %90

11:                                               ; preds = %0
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Vdp2Regs, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = and i32 %14, 32768
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %11
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Vdp2Regs, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 3
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = and i32 %21, 524287
  %23 = shl i32 %22, 1
  store i32 %23, i32* %1, align 4
  br label %31

24:                                               ; preds = %11
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Vdp2Regs, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 3
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = and i32 %28, 262143
  %30 = shl i32 %29, 1
  store i32 %30, i32* %1, align 4
  br label %31

31:                                               ; preds = %24, %17
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Vdp2Regs, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = and i32 %34, 31
  %36 = shl i32 %35, 1
  store i32 %36, i32* %5, align 4
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Vdp2Regs, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 3
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = and i32 %41, 32768
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %68

44:                                               ; preds = %31
  store i32 0, i32* %4, align 4
  br label %45

45:                                               ; preds = %64, %44
  %46 = load i32, i32* %4, align 4
  %47 = load i32, i32* @vdp2height, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %67

49:                                               ; preds = %45
  %50 = load i32, i32* @Vdp2Ram, align 4
  %51 = load i32, i32* %1, align 4
  %52 = call i32 @T1ReadWord(i32 %50, i32 %51)
  %53 = and i32 %52, 2047
  store i32 %53, i32* %2, align 4
  %54 = load i32, i32* %2, align 4
  %55 = load i32, i32* @Vdp2ColorRam, align 4
  %56 = call i32 @Vdp2ColorRamGetColor(i32 %54, i32 %55)
  store i32 %56, i32* %3, align 4
  %57 = load i32, i32* %1, align 4
  %58 = add nsw i32 %57, 2
  store i32 %58, i32* %1, align 4
  %59 = load i32, i32* %4, align 4
  %60 = load i32, i32* %5, align 4
  %61 = load i32, i32* %3, align 4
  %62 = call i32 @COLSAT2YAB32(i32 %60, i32 %61)
  %63 = call i32 @TitanPutLineHLine(i32 1, i32 %59, i32 %62)
  br label %64

64:                                               ; preds = %49
  %65 = load i32, i32* %4, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %4, align 4
  br label %45

67:                                               ; preds = %45
  br label %90

68:                                               ; preds = %31
  %69 = load i32, i32* @Vdp2Ram, align 4
  %70 = load i32, i32* %1, align 4
  %71 = call i32 @T1ReadWord(i32 %69, i32 %70)
  %72 = and i32 %71, 2047
  store i32 %72, i32* %2, align 4
  %73 = load i32, i32* %2, align 4
  %74 = load i32, i32* @Vdp2ColorRam, align 4
  %75 = call i32 @Vdp2ColorRamGetColor(i32 %73, i32 %74)
  store i32 %75, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %76

76:                                               ; preds = %86, %68
  %77 = load i32, i32* %4, align 4
  %78 = load i32, i32* @vdp2height, align 4
  %79 = icmp slt i32 %77, %78
  br i1 %79, label %80, label %89

80:                                               ; preds = %76
  %81 = load i32, i32* %4, align 4
  %82 = load i32, i32* %5, align 4
  %83 = load i32, i32* %3, align 4
  %84 = call i32 @COLSAT2YAB32(i32 %82, i32 %83)
  %85 = call i32 @TitanPutLineHLine(i32 1, i32 %81, i32 %84)
  br label %86

86:                                               ; preds = %80
  %87 = load i32, i32* %4, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %4, align 4
  br label %76

89:                                               ; preds = %76
  br label %90

90:                                               ; preds = %10, %89, %67
  ret void
}

declare dso_local i32 @T1ReadWord(i32, i32) #1

declare dso_local i32 @Vdp2ColorRamGetColor(i32, i32) #1

declare dso_local i32 @TitanPutLineHLine(i32, i32, i32) #1

declare dso_local i32 @COLSAT2YAB32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
