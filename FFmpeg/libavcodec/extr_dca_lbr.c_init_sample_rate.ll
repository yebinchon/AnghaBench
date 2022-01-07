; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dca_lbr.c_init_sample_rate.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dca_lbr.c_init_sample_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32*, i32, i32*, i32 }

@ff_dca_long_window = common dso_local global i32* null, align 8
@INT_MAX = common dso_local global double 0.000000e+00, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*)* @init_sample_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_sample_rate(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca double, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = sub nsw i32 2, %9
  %11 = shl i32 1, %10
  %12 = call double @sqrt(i32 %11)
  %13 = fmul double 0xBEE0000000000000, %12
  store double %13, double* %4, align 8
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = sdiv i32 %16, %19
  store i32 %20, i32* %6, align 4
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 8
  %23 = call i32 @ff_mdct_end(i32* %22)
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 8
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = add nsw i32 %28, 6
  %30 = load double, double* %4, align 8
  %31 = call i64 @ff_mdct_init(i32* %25, i32 %29, i32 1, double %30)
  %32 = icmp slt i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %141

34:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %35

35:                                               ; preds = %59, %34
  %36 = load i32, i32* %5, align 4
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = shl i32 32, %39
  %41 = icmp slt i32 %36, %40
  br i1 %41, label %42, label %62

42:                                               ; preds = %35
  %43 = load i32*, i32** @ff_dca_long_window, align 8
  %44 = load i32, i32* %5, align 4
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = sub nsw i32 2, %47
  %49 = shl i32 %44, %48
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %43, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 7
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %5, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  store i32 %52, i32* %58, align 4
  br label %59

59:                                               ; preds = %42
  %60 = load i32, i32* %5, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %5, align 4
  br label %35

62:                                               ; preds = %35
  %63 = load i32, i32* %6, align 4
  %64 = icmp slt i32 %63, 14000
  br i1 %64, label %65, label %66

65:                                               ; preds = %62
  store double 8.500000e-01, double* %4, align 8
  br label %77

66:                                               ; preds = %62
  %67 = load i32, i32* %6, align 4
  %68 = icmp slt i32 %67, 32000
  br i1 %68, label %69, label %75

69:                                               ; preds = %66
  %70 = load i32, i32* %6, align 4
  %71 = sub nsw i32 %70, 14000
  %72 = sitofp i32 %71 to double
  %73 = fmul double %72, 0x3EE179EC9CBD821E
  %74 = fadd double %73, 8.500000e-01
  store double %74, double* %4, align 8
  br label %76

75:                                               ; preds = %66
  store double 1.000000e+00, double* %4, align 8
  br label %76

76:                                               ; preds = %75, %69
  br label %77

77:                                               ; preds = %76, %65
  %78 = load double, double* @INT_MAX, align 8
  %79 = fdiv double 1.000000e+00, %78
  %80 = load double, double* %4, align 8
  %81 = fmul double %80, %79
  store double %81, double* %4, align 8
  store i32 0, i32* %5, align 4
  br label %82

82:                                               ; preds = %128, %77
  %83 = load i32, i32* %5, align 4
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 4
  %86 = load i32, i32* %85, align 8
  %87 = icmp slt i32 %83, %86
  br i1 %87, label %88, label %131

88:                                               ; preds = %82
  %89 = load i32, i32* %5, align 4
  %90 = icmp slt i32 %89, 2
  br i1 %90, label %91, label %98

91:                                               ; preds = %88
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 5
  %94 = load i32*, i32** %93, align 8
  %95 = load i32, i32* %5, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  store i32 0, i32* %97, align 4
  br label %127

98:                                               ; preds = %88
  %99 = load i32, i32* %5, align 4
  %100 = icmp slt i32 %99, 5
  br i1 %100, label %101, label %116

101:                                              ; preds = %98
  %102 = load i32, i32* %5, align 4
  %103 = sub nsw i32 %102, 1
  %104 = sitofp i32 %103 to double
  %105 = fmul double %104, 2.500000e-01
  %106 = fmul double %105, 7.850000e-01
  %107 = load double, double* %4, align 8
  %108 = fmul double %106, %107
  %109 = fptosi double %108 to i32
  %110 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 5
  %112 = load i32*, i32** %111, align 8
  %113 = load i32, i32* %5, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  store i32 %109, i32* %115, align 4
  br label %126

116:                                              ; preds = %98
  %117 = load double, double* %4, align 8
  %118 = fmul double 7.850000e-01, %117
  %119 = fptosi double %118 to i32
  %120 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 5
  %122 = load i32*, i32** %121, align 8
  %123 = load i32, i32* %5, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32, i32* %122, i64 %124
  store i32 %119, i32* %125, align 4
  br label %126

126:                                              ; preds = %116, %101
  br label %127

127:                                              ; preds = %126, %91
  br label %128

128:                                              ; preds = %127
  %129 = load i32, i32* %5, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %5, align 4
  br label %82

131:                                              ; preds = %82
  %132 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i32 0, i32 3
  %134 = load i32, i32* %133, align 4
  %135 = shl i32 16, %134
  %136 = sitofp i32 %135 to double
  %137 = fmul double %136, 0x3EE069DE41A2D800
  %138 = fptosi double %137 to i32
  %139 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %140 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %139, i32 0, i32 6
  store i32 %138, i32* %140, align 8
  store i32 0, i32* %2, align 4
  br label %141

141:                                              ; preds = %131, %33
  %142 = load i32, i32* %2, align 4
  ret i32 %142
}

declare dso_local double @sqrt(i32) #1

declare dso_local i32 @ff_mdct_end(i32*) #1

declare dso_local i64 @ff_mdct_init(i32*, i32, i32, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
