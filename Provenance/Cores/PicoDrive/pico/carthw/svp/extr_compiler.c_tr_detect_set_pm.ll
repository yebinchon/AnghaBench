; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/carthw/svp/extr_compiler.c_tr_detect_set_pm.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/carthw/svp/extr_compiler.c_tr_detect_set_pm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32*, i32*, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@known_regs = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@KRREG_PMC = common dso_local global i32 0, align 4
@known_regb = common dso_local global i32 0, align 4
@dirty_regb = common dso_local global i32 0, align 4
@SSP_PMC_SET = common dso_local global i32 0, align 4
@n_in_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i32)* @tr_detect_set_pm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tr_detect_set_pm(i32 %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load i32, i32* %5, align 4
  %13 = and i32 %12, 65264
  %14 = icmp eq i32 %13, 2272
  br i1 %14, label %15, label %21

15:                                               ; preds = %3
  %16 = load i32*, i32** %6, align 8
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @PROGRAM(i32 %17)
  %19 = and i32 %18, 65264
  %20 = icmp eq i32 %19, 2272
  br i1 %20, label %22, label %21

21:                                               ; preds = %15, %3
  store i32 0, i32* %4, align 4
  br label %140

22:                                               ; preds = %15
  %23 = load i32*, i32** %6, align 8
  %24 = load i32, i32* %23, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %23, align 4
  %26 = load i32, i32* %7, align 4
  %27 = load i32*, i32** %6, align 8
  %28 = load i32, i32* %27, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %27, align 4
  %30 = call i32 @PROGRAM(i32 %28)
  %31 = shl i32 %30, 16
  %32 = or i32 %26, %31
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  store i32 %33, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @known_regs, i32 0, i32 3, i32 0), align 4
  %34 = load i32, i32* @KRREG_PMC, align 4
  %35 = load i32, i32* @known_regb, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* @known_regb, align 4
  %37 = load i32, i32* @KRREG_PMC, align 4
  %38 = load i32, i32* @dirty_regb, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* @dirty_regb, align 4
  %40 = load i32, i32* @SSP_PMC_SET, align 4
  %41 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @known_regs, i32 0, i32 2), align 8
  %42 = or i32 %41, %40
  store i32 %42, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @known_regs, i32 0, i32 2), align 8
  %43 = load i32, i32* @n_in_ops, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* @n_in_ops, align 4
  %45 = load i32*, i32** %6, align 8
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @PROGRAM(i32 %46)
  store i32 %47, i32* %9, align 4
  %48 = load i32, i32* %9, align 4
  %49 = and i32 %48, 65528
  %50 = icmp eq i32 %49, 8
  br i1 %50, label %55, label %51

51:                                               ; preds = %22
  %52 = load i32, i32* %9, align 4
  %53 = and i32 %52, 65423
  %54 = icmp eq i32 %53, 128
  br i1 %54, label %55, label %138

55:                                               ; preds = %51, %22
  %56 = load i32, i32* %9, align 4
  %57 = and i32 %56, 65423
  %58 = icmp eq i32 %57, 128
  %59 = zext i1 %58 to i32
  store i32 %59, i32* %10, align 4
  %60 = load i32, i32* %10, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %55
  %63 = load i32, i32* %9, align 4
  %64 = ashr i32 %63, 4
  %65 = and i32 %64, 7
  br label %69

66:                                               ; preds = %55
  %67 = load i32, i32* %9, align 4
  %68 = and i32 %67, 7
  br label %69

69:                                               ; preds = %66, %62
  %70 = phi i32 [ %65, %62 ], [ %68, %66 ]
  store i32 %70, i32* %11, align 4
  %71 = load i32, i32* %11, align 4
  %72 = icmp sgt i32 %71, 4
  br i1 %72, label %73, label %75

73:                                               ; preds = %69
  %74 = call i32 (...) @tr_unhandled()
  br label %75

75:                                               ; preds = %73, %69
  %76 = load i32, i32* %9, align 4
  %77 = and i32 %76, 15
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %75
  %80 = load i32, i32* %9, align 4
  %81 = and i32 %80, 240
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %79
  %84 = call i32 (...) @tr_unhandled()
  br label %85

85:                                               ; preds = %83, %79, %75
  %86 = load i32, i32* %10, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %94

88:                                               ; preds = %85
  %89 = load i32, i32* %8, align 4
  %90 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @known_regs, i32 0, i32 0), align 8
  %91 = load i32, i32* %11, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  store i32 %89, i32* %93, align 4
  br label %100

94:                                               ; preds = %85
  %95 = load i32, i32* %8, align 4
  %96 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @known_regs, i32 0, i32 1), align 8
  %97 = load i32, i32* %11, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %96, i64 %98
  store i32 %95, i32* %99, align 4
  br label %100

100:                                              ; preds = %94, %88
  %101 = load i32, i32* %10, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %100
  %104 = load i32, i32* %11, align 4
  %105 = add nsw i32 %104, 25
  %106 = shl i32 1, %105
  br label %111

107:                                              ; preds = %100
  %108 = load i32, i32* %11, align 4
  %109 = add nsw i32 %108, 20
  %110 = shl i32 1, %109
  br label %111

111:                                              ; preds = %107, %103
  %112 = phi i32 [ %106, %103 ], [ %110, %107 ]
  %113 = load i32, i32* @known_regb, align 4
  %114 = or i32 %113, %112
  store i32 %114, i32* @known_regb, align 4
  %115 = load i32, i32* %10, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %121

117:                                              ; preds = %111
  %118 = load i32, i32* %11, align 4
  %119 = add nsw i32 %118, 25
  %120 = shl i32 1, %119
  br label %125

121:                                              ; preds = %111
  %122 = load i32, i32* %11, align 4
  %123 = add nsw i32 %122, 20
  %124 = shl i32 1, %123
  br label %125

125:                                              ; preds = %121, %117
  %126 = phi i32 [ %120, %117 ], [ %124, %121 ]
  %127 = load i32, i32* @dirty_regb, align 4
  %128 = or i32 %127, %126
  store i32 %128, i32* @dirty_regb, align 4
  %129 = load i32, i32* @SSP_PMC_SET, align 4
  %130 = xor i32 %129, -1
  %131 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @known_regs, i32 0, i32 2), align 8
  %132 = and i32 %131, %130
  store i32 %132, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @known_regs, i32 0, i32 2), align 8
  %133 = load i32*, i32** %6, align 8
  %134 = load i32, i32* %133, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %133, align 4
  %136 = load i32, i32* @n_in_ops, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* @n_in_ops, align 4
  store i32 5, i32* %4, align 4
  br label %140

138:                                              ; preds = %51
  %139 = call i32 (...) @tr_unhandled()
  store i32 4, i32* %4, align 4
  br label %140

140:                                              ; preds = %138, %125, %21
  %141 = load i32, i32* %4, align 4
  ret i32 %141
}

declare dso_local i32 @PROGRAM(i32) #1

declare dso_local i32 @tr_unhandled(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
