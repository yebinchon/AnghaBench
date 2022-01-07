; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_vidsoft.c_Vdp2DrawBackScreen.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_vidsoft.c_Vdp2DrawBackScreen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32 (%struct.TYPE_7__*, i32)*, i32 }

@Vdp2Regs = common dso_local global %struct.TYPE_8__* null, align 8
@vdp2height = common dso_local global i32 0, align 4
@Vdp2Ram = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @Vdp2DrawBackScreen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Vdp2DrawBackScreen() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__, align 8
  %6 = load %struct.TYPE_8__*, %struct.TYPE_8__** @Vdp2Regs, align 8
  %7 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = and i32 %8, 32768
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %30

11:                                               ; preds = %0
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** @Vdp2Regs, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = and i32 %14, 256
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %30

17:                                               ; preds = %11
  store i32 0, i32* %2, align 4
  br label %18

18:                                               ; preds = %26, %17
  %19 = load i32, i32* %2, align 4
  %20 = load i32, i32* @vdp2height, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %29

22:                                               ; preds = %18
  %23 = load i32, i32* %2, align 4
  %24 = call i32 @COLSAT2YAB32(i32 63, i32 0)
  %25 = call i32 @TitanPutBackHLine(i32 %23, i32 %24)
  br label %26

26:                                               ; preds = %22
  %27 = load i32, i32* %2, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %2, align 4
  br label %18

29:                                               ; preds = %18
  br label %110

30:                                               ; preds = %11, %0
  %31 = bitcast %struct.TYPE_7__* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %31, i8 0, i64 16, i1 false)
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** @Vdp2Regs, align 8
  %33 = call i32 @ReadVdp2ColorOffset(%struct.TYPE_8__* %32, %struct.TYPE_7__* %5, i32 32, i32 0)
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** @Vdp2Regs, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = and i32 %36, 32768
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %50

39:                                               ; preds = %30
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** @Vdp2Regs, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = and i32 %42, 7
  %44 = shl i32 %43, 16
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** @Vdp2Regs, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = or i32 %44, %47
  %49 = mul nsw i32 %48, 2
  store i32 %49, i32* %3, align 4
  br label %61

50:                                               ; preds = %30
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** @Vdp2Regs, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = and i32 %53, 3
  %55 = shl i32 %54, 16
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** @Vdp2Regs, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = or i32 %55, %58
  %60 = mul nsw i32 %59, 2
  store i32 %60, i32* %3, align 4
  br label %61

61:                                               ; preds = %50, %39
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** @Vdp2Regs, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = and i32 %64, 32768
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %89

67:                                               ; preds = %61
  store i32 0, i32* %1, align 4
  br label %68

68:                                               ; preds = %85, %67
  %69 = load i32, i32* %1, align 4
  %70 = load i32, i32* @vdp2height, align 4
  %71 = icmp slt i32 %69, %70
  br i1 %71, label %72, label %88

72:                                               ; preds = %68
  %73 = load i32, i32* @Vdp2Ram, align 4
  %74 = load i32, i32* %3, align 4
  %75 = call i32 @T1ReadWord(i32 %73, i32 %74)
  store i32 %75, i32* %4, align 4
  %76 = load i32, i32* %3, align 4
  %77 = add nsw i32 %76, 2
  store i32 %77, i32* %3, align 4
  %78 = load i32, i32* %1, align 4
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  %80 = load i32 (%struct.TYPE_7__*, i32)*, i32 (%struct.TYPE_7__*, i32)** %79, align 8
  %81 = load i32, i32* %4, align 4
  %82 = call i32 @COLSAT2YAB16(i32 63, i32 %81)
  %83 = call i32 %80(%struct.TYPE_7__* %5, i32 %82)
  %84 = call i32 @TitanPutBackHLine(i32 %78, i32 %83)
  br label %85

85:                                               ; preds = %72
  %86 = load i32, i32* %1, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %1, align 4
  br label %68

88:                                               ; preds = %68
  br label %109

89:                                               ; preds = %61
  %90 = load i32, i32* @Vdp2Ram, align 4
  %91 = load i32, i32* %3, align 4
  %92 = call i32 @T1ReadWord(i32 %90, i32 %91)
  store i32 %92, i32* %4, align 4
  store i32 0, i32* %2, align 4
  br label %93

93:                                               ; preds = %105, %89
  %94 = load i32, i32* %2, align 4
  %95 = load i32, i32* @vdp2height, align 4
  %96 = icmp slt i32 %94, %95
  br i1 %96, label %97, label %108

97:                                               ; preds = %93
  %98 = load i32, i32* %2, align 4
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  %100 = load i32 (%struct.TYPE_7__*, i32)*, i32 (%struct.TYPE_7__*, i32)** %99, align 8
  %101 = load i32, i32* %4, align 4
  %102 = call i32 @COLSAT2YAB16(i32 63, i32 %101)
  %103 = call i32 %100(%struct.TYPE_7__* %5, i32 %102)
  %104 = call i32 @TitanPutBackHLine(i32 %98, i32 %103)
  br label %105

105:                                              ; preds = %97
  %106 = load i32, i32* %2, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %2, align 4
  br label %93

108:                                              ; preds = %93
  br label %109

109:                                              ; preds = %108, %88
  br label %110

110:                                              ; preds = %109, %29
  ret void
}

declare dso_local i32 @TitanPutBackHLine(i32, i32) #1

declare dso_local i32 @COLSAT2YAB32(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @ReadVdp2ColorOffset(%struct.TYPE_8__*, %struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @T1ReadWord(i32, i32) #1

declare dso_local i32 @COLSAT2YAB16(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
