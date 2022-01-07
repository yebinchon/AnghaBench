; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/m68k/extr_s68kcpu.c_s68k_get_reg.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/m68k/extr_s68kcpu.c_s68k_get_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32*, i32, i32, i32, i32, i32, i32, i32, i32*, i32, i32, i32, i32, i32 }

@m68ki_cpu = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@XFLAG_SET = common dso_local global i32 0, align 4
@NFLAG_SET = common dso_local global i32 0, align 4
@VFLAG_SET = common dso_local global i32 0, align 4
@CFLAG_SET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @s68k_get_reg(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %137 [
    i32 143, label %5
    i32 142, label %9
    i32 141, label %13
    i32 140, label %17
    i32 139, label %21
    i32 138, label %25
    i32 137, label %29
    i32 136, label %33
    i32 151, label %37
    i32 150, label %41
    i32 149, label %45
    i32 148, label %49
    i32 147, label %53
    i32 146, label %57
    i32 145, label %61
    i32 144, label %65
    i32 133, label %69
    i32 129, label %72
    i32 130, label %105
    i32 128, label %109
    i32 134, label %122
    i32 135, label %135
  ]

5:                                                ; preds = %1
  %6 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @m68ki_cpu, i32 0, i32 0), align 8
  %7 = getelementptr inbounds i32, i32* %6, i64 0
  %8 = load i32, i32* %7, align 4
  store i32 %8, i32* %2, align 4
  br label %138

9:                                                ; preds = %1
  %10 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @m68ki_cpu, i32 0, i32 0), align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 1
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %2, align 4
  br label %138

13:                                               ; preds = %1
  %14 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @m68ki_cpu, i32 0, i32 0), align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 2
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %2, align 4
  br label %138

17:                                               ; preds = %1
  %18 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @m68ki_cpu, i32 0, i32 0), align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 3
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %2, align 4
  br label %138

21:                                               ; preds = %1
  %22 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @m68ki_cpu, i32 0, i32 0), align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 4
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %2, align 4
  br label %138

25:                                               ; preds = %1
  %26 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @m68ki_cpu, i32 0, i32 0), align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 5
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %2, align 4
  br label %138

29:                                               ; preds = %1
  %30 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @m68ki_cpu, i32 0, i32 0), align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 6
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %2, align 4
  br label %138

33:                                               ; preds = %1
  %34 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @m68ki_cpu, i32 0, i32 0), align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 7
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %2, align 4
  br label %138

37:                                               ; preds = %1
  %38 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @m68ki_cpu, i32 0, i32 0), align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 8
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %2, align 4
  br label %138

41:                                               ; preds = %1
  %42 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @m68ki_cpu, i32 0, i32 0), align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 9
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %2, align 4
  br label %138

45:                                               ; preds = %1
  %46 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @m68ki_cpu, i32 0, i32 0), align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 10
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %2, align 4
  br label %138

49:                                               ; preds = %1
  %50 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @m68ki_cpu, i32 0, i32 0), align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 11
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %2, align 4
  br label %138

53:                                               ; preds = %1
  %54 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @m68ki_cpu, i32 0, i32 0), align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 12
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %2, align 4
  br label %138

57:                                               ; preds = %1
  %58 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @m68ki_cpu, i32 0, i32 0), align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 13
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* %2, align 4
  br label %138

61:                                               ; preds = %1
  %62 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @m68ki_cpu, i32 0, i32 0), align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 14
  %64 = load i32, i32* %63, align 4
  store i32 %64, i32* %2, align 4
  br label %138

65:                                               ; preds = %1
  %66 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @m68ki_cpu, i32 0, i32 0), align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 15
  %68 = load i32, i32* %67, align 4
  store i32 %68, i32* %2, align 4
  br label %138

69:                                               ; preds = %1
  %70 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @m68ki_cpu, i32 0, i32 13), align 8
  %71 = call i32 @MASK_OUT_ABOVE_32(i32 %70)
  store i32 %71, i32* %2, align 4
  br label %138

72:                                               ; preds = %1
  %73 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @m68ki_cpu, i32 0, i32 1), align 8
  %74 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @m68ki_cpu, i32 0, i32 2), align 4
  %75 = shl i32 %74, 11
  %76 = or i32 %73, %75
  %77 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @m68ki_cpu, i32 0, i32 3), align 8
  %78 = or i32 %76, %77
  %79 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @m68ki_cpu, i32 0, i32 4), align 4
  %80 = load i32, i32* @XFLAG_SET, align 4
  %81 = and i32 %79, %80
  %82 = ashr i32 %81, 4
  %83 = or i32 %78, %82
  %84 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @m68ki_cpu, i32 0, i32 5), align 8
  %85 = load i32, i32* @NFLAG_SET, align 4
  %86 = and i32 %84, %85
  %87 = ashr i32 %86, 4
  %88 = or i32 %83, %87
  %89 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @m68ki_cpu, i32 0, i32 12), align 4
  %90 = icmp ne i32 %89, 0
  %91 = xor i1 %90, true
  %92 = zext i1 %91 to i32
  %93 = shl i32 %92, 2
  %94 = or i32 %88, %93
  %95 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @m68ki_cpu, i32 0, i32 6), align 4
  %96 = load i32, i32* @VFLAG_SET, align 4
  %97 = and i32 %95, %96
  %98 = ashr i32 %97, 6
  %99 = or i32 %94, %98
  %100 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @m68ki_cpu, i32 0, i32 7), align 8
  %101 = load i32, i32* @CFLAG_SET, align 4
  %102 = and i32 %100, %101
  %103 = ashr i32 %102, 8
  %104 = or i32 %99, %103
  store i32 %104, i32* %2, align 4
  br label %138

105:                                              ; preds = %1
  %106 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @m68ki_cpu, i32 0, i32 0), align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 15
  %108 = load i32, i32* %107, align 4
  store i32 %108, i32* %2, align 4
  br label %138

109:                                              ; preds = %1
  %110 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @m68ki_cpu, i32 0, i32 2), align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %116

112:                                              ; preds = %109
  %113 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @m68ki_cpu, i32 0, i32 8), align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 0
  %115 = load i32, i32* %114, align 4
  br label %120

116:                                              ; preds = %109
  %117 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @m68ki_cpu, i32 0, i32 0), align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 15
  %119 = load i32, i32* %118, align 4
  br label %120

120:                                              ; preds = %116, %112
  %121 = phi i32 [ %115, %112 ], [ %119, %116 ]
  store i32 %121, i32* %2, align 4
  br label %138

122:                                              ; preds = %1
  %123 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @m68ki_cpu, i32 0, i32 2), align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %129

125:                                              ; preds = %122
  %126 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @m68ki_cpu, i32 0, i32 0), align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 15
  %128 = load i32, i32* %127, align 4
  br label %133

129:                                              ; preds = %122
  %130 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @m68ki_cpu, i32 0, i32 8), align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 4
  %132 = load i32, i32* %131, align 4
  br label %133

133:                                              ; preds = %129, %125
  %134 = phi i32 [ %128, %125 ], [ %132, %129 ]
  store i32 %134, i32* %2, align 4
  br label %138

135:                                              ; preds = %1
  %136 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @m68ki_cpu, i32 0, i32 11), align 8
  store i32 %136, i32* %2, align 4
  br label %138

137:                                              ; preds = %1
  store i32 0, i32* %2, align 4
  br label %138

138:                                              ; preds = %137, %135, %133, %120, %105, %72, %69, %65, %61, %57, %53, %49, %45, %41, %37, %33, %29, %25, %21, %17, %13, %9, %5
  %139 = load i32, i32* %2, align 4
  ret i32 %139
}

declare dso_local i32 @MASK_OUT_ABOVE_32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
