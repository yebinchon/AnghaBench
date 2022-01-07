; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/dreamcast/extr_viddc.c_VIDDCVdp1DrawStart.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/dreamcast/extr_viddc.c_VIDDCVdp1DrawStart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@Vdp2Regs = common dso_local global %struct.TYPE_2__* null, align 8
@vdp1cor = common dso_local global i32 0, align 4
@vdp1cog = common dso_local global i32 0, align 4
@vdp1cob = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @VIDDCVdp1DrawStart to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @VIDDCVdp1DrawStart() #0 {
  %1 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Vdp2Regs, align 8
  %2 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %1, i32 0, i32 0
  %3 = load i32, i32* %2, align 4
  %4 = and i32 %3, 64
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %93

6:                                                ; preds = %0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Vdp2Regs, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = and i32 %9, 64
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %52

12:                                               ; preds = %6
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Vdp2Regs, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = and i32 %15, 255
  store i32 %16, i32* @vdp1cor, align 4
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Vdp2Regs, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = and i32 %19, 256
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %12
  %23 = load i32, i32* @vdp1cor, align 4
  %24 = or i32 %23, -256
  store i32 %24, i32* @vdp1cor, align 4
  br label %25

25:                                               ; preds = %22, %12
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Vdp2Regs, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = and i32 %28, 255
  store i32 %29, i32* @vdp1cog, align 4
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Vdp2Regs, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = and i32 %32, 256
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %25
  %36 = load i32, i32* @vdp1cog, align 4
  %37 = or i32 %36, -256
  store i32 %37, i32* @vdp1cog, align 4
  br label %38

38:                                               ; preds = %35, %25
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Vdp2Regs, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 4
  %42 = and i32 %41, 255
  store i32 %42, i32* @vdp1cob, align 4
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Vdp2Regs, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 4
  %46 = and i32 %45, 256
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %38
  %49 = load i32, i32* @vdp1cob, align 4
  %50 = or i32 %49, -256
  store i32 %50, i32* @vdp1cob, align 4
  br label %51

51:                                               ; preds = %48, %38
  br label %92

52:                                               ; preds = %6
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Vdp2Regs, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 5
  %55 = load i32, i32* %54, align 4
  %56 = and i32 %55, 255
  store i32 %56, i32* @vdp1cor, align 4
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Vdp2Regs, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 5
  %59 = load i32, i32* %58, align 4
  %60 = and i32 %59, 256
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %52
  %63 = load i32, i32* @vdp1cor, align 4
  %64 = or i32 %63, -256
  store i32 %64, i32* @vdp1cor, align 4
  br label %65

65:                                               ; preds = %62, %52
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Vdp2Regs, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 6
  %68 = load i32, i32* %67, align 4
  %69 = and i32 %68, 255
  store i32 %69, i32* @vdp1cog, align 4
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Vdp2Regs, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 6
  %72 = load i32, i32* %71, align 4
  %73 = and i32 %72, 256
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %65
  %76 = load i32, i32* @vdp1cog, align 4
  %77 = or i32 %76, -256
  store i32 %77, i32* @vdp1cog, align 4
  br label %78

78:                                               ; preds = %75, %65
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Vdp2Regs, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 7
  %81 = load i32, i32* %80, align 4
  %82 = and i32 %81, 255
  store i32 %82, i32* @vdp1cob, align 4
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Vdp2Regs, align 8
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 7
  %85 = load i32, i32* %84, align 4
  %86 = and i32 %85, 256
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %78
  %89 = load i32, i32* @vdp1cob, align 4
  %90 = or i32 %89, -256
  store i32 %90, i32* @vdp1cob, align 4
  br label %91

91:                                               ; preds = %88, %78
  br label %92

92:                                               ; preds = %91, %51
  br label %94

93:                                               ; preds = %0
  store i32 0, i32* @vdp1cob, align 4
  store i32 0, i32* @vdp1cog, align 4
  store i32 0, i32* @vdp1cor, align 4
  br label %94

94:                                               ; preds = %93, %92
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
