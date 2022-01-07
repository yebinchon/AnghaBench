; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_ratecontrol.c_get_diff_limited_q.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_ratecontrol.c_get_diff_limited_q.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_10__*, %struct.TYPE_8__ }
%struct.TYPE_10__ = type { double, double, double, double, i32 }
%struct.TYPE_8__ = type { double*, i64 }
%struct.TYPE_7__ = type { i32 }

@AV_PICTURE_TYPE_P = common dso_local global i64 0, align 8
@AV_PICTURE_TYPE_I = common dso_local global i32 0, align 4
@AV_PICTURE_TYPE_B = common dso_local global i32 0, align 4
@FF_QP2LAMBDA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (double (%struct.TYPE_9__*, %struct.TYPE_7__*, double)* @get_diff_limited_q to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @get_diff_limited_q(%struct.TYPE_9__* %0, %struct.TYPE_7__* %1, double %2) #0 {
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca double, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %5, align 8
  store double %2, double* %6, align 8
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 1
  store %struct.TYPE_8__* %15, %struct.TYPE_8__** %7, align 8
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  store %struct.TYPE_10__* %18, %struct.TYPE_10__** %8, align 8
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %9, align 4
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = load double*, double** %23, align 8
  %25 = load i64, i64* @AV_PICTURE_TYPE_P, align 8
  %26 = getelementptr inbounds double, double* %24, i64 %25
  %27 = load double, double* %26, align 8
  store double %27, double* %10, align 8
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = load double*, double** %29, align 8
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds double, double* %30, i64 %33
  %35 = load double, double* %34, align 8
  store double %35, double* %11, align 8
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* @AV_PICTURE_TYPE_I, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %61

39:                                               ; preds = %3
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 0
  %42 = load double, double* %41, align 8
  %43 = fcmp ogt double %42, 0.000000e+00
  br i1 %43, label %50, label %44

44:                                               ; preds = %39
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @AV_PICTURE_TYPE_P, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %61

50:                                               ; preds = %44, %39
  %51 = load double, double* %10, align 8
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 0
  %54 = load double, double* %53, align 8
  %55 = call double @FFABS(double %54)
  %56 = fmul double %51, %55
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 1
  %59 = load double, double* %58, align 8
  %60 = fadd double %56, %59
  store double %60, double* %6, align 8
  br label %81

61:                                               ; preds = %44, %3
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* @AV_PICTURE_TYPE_B, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %80

65:                                               ; preds = %61
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 2
  %68 = load double, double* %67, align 8
  %69 = fcmp ogt double %68, 0.000000e+00
  br i1 %69, label %70, label %80

70:                                               ; preds = %65
  %71 = load double, double* %11, align 8
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 2
  %74 = load double, double* %73, align 8
  %75 = fmul double %71, %74
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 3
  %78 = load double, double* %77, align 8
  %79 = fadd double %75, %78
  store double %79, double* %6, align 8
  br label %80

80:                                               ; preds = %70, %65, %61
  br label %81

81:                                               ; preds = %80, %50
  %82 = load double, double* %6, align 8
  %83 = fcmp olt double %82, 1.000000e+00
  br i1 %83, label %84, label %85

84:                                               ; preds = %81
  store double 1.000000e+00, double* %6, align 8
  br label %85

85:                                               ; preds = %84, %81
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = load i32, i32* %9, align 4
  %90 = sext i32 %89 to i64
  %91 = icmp eq i64 %88, %90
  br i1 %91, label %96, label %92

92:                                               ; preds = %85
  %93 = load i32, i32* %9, align 4
  %94 = load i32, i32* @AV_PICTURE_TYPE_I, align 4
  %95 = icmp ne i32 %93, %94
  br i1 %95, label %96, label %134

96:                                               ; preds = %92, %85
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 0
  %99 = load double*, double** %98, align 8
  %100 = load i32, i32* %9, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds double, double* %99, i64 %101
  %103 = load double, double* %102, align 8
  store double %103, double* %12, align 8
  %104 = load i32, i32* @FF_QP2LAMBDA, align 4
  %105 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 4
  %107 = load i32, i32* %106, align 8
  %108 = mul nsw i32 %104, %107
  store i32 %108, i32* %13, align 4
  %109 = load double, double* %6, align 8
  %110 = load double, double* %12, align 8
  %111 = load i32, i32* %13, align 4
  %112 = sitofp i32 %111 to double
  %113 = fadd double %110, %112
  %114 = fcmp ogt double %109, %113
  br i1 %114, label %115, label %120

115:                                              ; preds = %96
  %116 = load double, double* %12, align 8
  %117 = load i32, i32* %13, align 4
  %118 = sitofp i32 %117 to double
  %119 = fadd double %116, %118
  store double %119, double* %6, align 8
  br label %133

120:                                              ; preds = %96
  %121 = load double, double* %6, align 8
  %122 = load double, double* %12, align 8
  %123 = load i32, i32* %13, align 4
  %124 = sitofp i32 %123 to double
  %125 = fsub double %122, %124
  %126 = fcmp olt double %121, %125
  br i1 %126, label %127, label %132

127:                                              ; preds = %120
  %128 = load double, double* %12, align 8
  %129 = load i32, i32* %13, align 4
  %130 = sitofp i32 %129 to double
  %131 = fsub double %128, %130
  store double %131, double* %6, align 8
  br label %132

132:                                              ; preds = %127, %120
  br label %133

133:                                              ; preds = %132, %115
  br label %134

134:                                              ; preds = %133, %92
  %135 = load double, double* %6, align 8
  %136 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i32 0, i32 0
  %138 = load double*, double** %137, align 8
  %139 = load i32, i32* %9, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds double, double* %138, i64 %140
  store double %135, double* %141, align 8
  %142 = load i32, i32* %9, align 4
  %143 = load i32, i32* @AV_PICTURE_TYPE_B, align 4
  %144 = icmp ne i32 %142, %143
  br i1 %144, label %145, label %150

145:                                              ; preds = %134
  %146 = load i32, i32* %9, align 4
  %147 = sext i32 %146 to i64
  %148 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %149 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %148, i32 0, i32 1
  store i64 %147, i64* %149, align 8
  br label %150

150:                                              ; preds = %145, %134
  %151 = load double, double* %6, align 8
  ret double %151
}

declare dso_local double @FFABS(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
