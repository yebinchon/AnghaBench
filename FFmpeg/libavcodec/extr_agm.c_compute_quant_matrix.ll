; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_agm.c_compute_quant_matrix.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_agm.c_compute_quant_matrix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32*, i32*, i32 }

@unscaled_luma = common dso_local global double* null, align 8
@unscaled_chroma = common dso_local global double* null, align 8
@ff_zigzag_direct = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, double)* @compute_quant_matrix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @compute_quant_matrix(%struct.TYPE_3__* %0, double %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca double, align 8
  %5 = alloca [64 x i32], align 16
  %6 = alloca [64 x i32], align 16
  %7 = alloca double, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store double %1, double* %4, align 8
  %14 = load double, double* %4, align 8
  %15 = call double @llvm.fabs.f64(double %14)
  %16 = fsub double 1.000000e+00, %15
  store double %16, double* %7, align 8
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %75, label %21

21:                                               ; preds = %2
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = and i32 %24, 2
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %75

27:                                               ; preds = %21
  %28 = load double, double* %4, align 8
  %29 = fcmp oge double %28, 0.000000e+00
  br i1 %29, label %30, label %51

30:                                               ; preds = %27
  store i32 0, i32* %8, align 4
  br label %31

31:                                               ; preds = %47, %30
  %32 = load i32, i32* %8, align 4
  %33 = icmp slt i32 %32, 64
  br i1 %33, label %34, label %50

34:                                               ; preds = %31
  %35 = load double, double* %7, align 8
  %36 = fmul double 1.600000e+01, %35
  %37 = call i32 @FFMAX(i32 1, double %36)
  %38 = load i32, i32* %8, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [64 x i32], [64 x i32]* %5, i64 0, i64 %39
  store i32 %37, i32* %40, align 4
  %41 = load double, double* %7, align 8
  %42 = fmul double 1.600000e+01, %41
  %43 = call i32 @FFMAX(i32 1, double %42)
  %44 = load i32, i32* %8, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [64 x i32], [64 x i32]* %6, i64 0, i64 %45
  store i32 %43, i32* %46, align 4
  br label %47

47:                                               ; preds = %34
  %48 = load i32, i32* %8, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %8, align 4
  br label %31

50:                                               ; preds = %31
  br label %74

51:                                               ; preds = %27
  store i32 0, i32* %9, align 4
  br label %52

52:                                               ; preds = %70, %51
  %53 = load i32, i32* %9, align 4
  %54 = icmp slt i32 %53, 64
  br i1 %54, label %55, label %73

55:                                               ; preds = %52
  %56 = load double, double* %4, align 8
  %57 = fmul double %56, 3.200000e+01
  %58 = fsub double 1.600000e+01, %57
  %59 = call i32 @FFMAX(i32 1, double %58)
  %60 = load i32, i32* %9, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds [64 x i32], [64 x i32]* %5, i64 0, i64 %61
  store i32 %59, i32* %62, align 4
  %63 = load double, double* %4, align 8
  %64 = fmul double %63, 3.200000e+01
  %65 = fsub double 1.600000e+01, %64
  %66 = call i32 @FFMAX(i32 1, double %65)
  %67 = load i32, i32* %9, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds [64 x i32], [64 x i32]* %6, i64 0, i64 %68
  store i32 %66, i32* %69, align 4
  br label %70

70:                                               ; preds = %55
  %71 = load i32, i32* %9, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %9, align 4
  br label %52

73:                                               ; preds = %52
  br label %74

74:                                               ; preds = %73, %50
  br label %165

75:                                               ; preds = %21, %2
  %76 = load double, double* %4, align 8
  %77 = fcmp oge double %76, 0.000000e+00
  br i1 %77, label %78, label %119

78:                                               ; preds = %75
  store i32 0, i32* %10, align 4
  br label %79

79:                                               ; preds = %115, %78
  %80 = load i32, i32* %10, align 4
  %81 = icmp slt i32 %80, 64
  br i1 %81, label %82, label %118

82:                                               ; preds = %79
  %83 = load double*, double** @unscaled_luma, align 8
  %84 = load i32, i32* %10, align 4
  %85 = and i32 %84, 7
  %86 = mul nsw i32 %85, 8
  %87 = load i32, i32* %10, align 4
  %88 = ashr i32 %87, 3
  %89 = add nsw i32 %86, %88
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds double, double* %83, i64 %90
  %92 = load double, double* %91, align 8
  %93 = load double, double* %7, align 8
  %94 = fmul double %92, %93
  %95 = call i32 @FFMAX(i32 1, double %94)
  %96 = load i32, i32* %10, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds [64 x i32], [64 x i32]* %5, i64 0, i64 %97
  store i32 %95, i32* %98, align 4
  %99 = load double*, double** @unscaled_chroma, align 8
  %100 = load i32, i32* %10, align 4
  %101 = and i32 %100, 7
  %102 = mul nsw i32 %101, 8
  %103 = load i32, i32* %10, align 4
  %104 = ashr i32 %103, 3
  %105 = add nsw i32 %102, %104
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds double, double* %99, i64 %106
  %108 = load double, double* %107, align 8
  %109 = load double, double* %7, align 8
  %110 = fmul double %108, %109
  %111 = call i32 @FFMAX(i32 1, double %110)
  %112 = load i32, i32* %10, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds [64 x i32], [64 x i32]* %6, i64 0, i64 %113
  store i32 %111, i32* %114, align 4
  br label %115

115:                                              ; preds = %82
  %116 = load i32, i32* %10, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %10, align 4
  br label %79

118:                                              ; preds = %79
  br label %164

119:                                              ; preds = %75
  store i32 0, i32* %11, align 4
  br label %120

120:                                              ; preds = %160, %119
  %121 = load i32, i32* %11, align 4
  %122 = icmp slt i32 %121, 64
  br i1 %122, label %123, label %163

123:                                              ; preds = %120
  %124 = load double*, double** @unscaled_luma, align 8
  %125 = load i32, i32* %11, align 4
  %126 = and i32 %125, 7
  %127 = mul nsw i32 %126, 8
  %128 = load i32, i32* %11, align 4
  %129 = ashr i32 %128, 3
  %130 = add nsw i32 %127, %129
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds double, double* %124, i64 %131
  %133 = load double, double* %132, align 8
  %134 = fsub double 2.550000e+02, %133
  %135 = load double, double* %7, align 8
  %136 = fmul double %134, %135
  %137 = fsub double 2.550000e+02, %136
  %138 = call i32 @FFMAX(i32 1, double %137)
  %139 = load i32, i32* %11, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds [64 x i32], [64 x i32]* %5, i64 0, i64 %140
  store i32 %138, i32* %141, align 4
  %142 = load double*, double** @unscaled_chroma, align 8
  %143 = load i32, i32* %11, align 4
  %144 = and i32 %143, 7
  %145 = mul nsw i32 %144, 8
  %146 = load i32, i32* %11, align 4
  %147 = ashr i32 %146, 3
  %148 = add nsw i32 %145, %147
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds double, double* %142, i64 %149
  %151 = load double, double* %150, align 8
  %152 = fsub double 2.550000e+02, %151
  %153 = load double, double* %7, align 8
  %154 = fmul double %152, %153
  %155 = fsub double 2.550000e+02, %154
  %156 = call i32 @FFMAX(i32 1, double %155)
  %157 = load i32, i32* %11, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds [64 x i32], [64 x i32]* %6, i64 0, i64 %158
  store i32 %156, i32* %159, align 4
  br label %160

160:                                              ; preds = %123
  %161 = load i32, i32* %11, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %11, align 4
  br label %120

163:                                              ; preds = %120
  br label %164

164:                                              ; preds = %163, %118
  br label %165

165:                                              ; preds = %164, %74
  store i32 0, i32* %12, align 4
  br label %166

166:                                              ; preds = %209, %165
  %167 = load i32, i32* %12, align 4
  %168 = icmp slt i32 %167, 64
  br i1 %168, label %169, label %212

169:                                              ; preds = %166
  %170 = load i32*, i32** @ff_zigzag_direct, align 8
  %171 = load i32, i32* %12, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i32, i32* %170, i64 %172
  %174 = load i32, i32* %173, align 4
  store i32 %174, i32* %13, align 4
  %175 = load i32, i32* %13, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds [64 x i32], [64 x i32]* %5, i64 0, i64 %176
  %178 = load i32, i32* %177, align 4
  %179 = load i32, i32* %13, align 4
  %180 = sdiv i32 %179, 8
  %181 = and i32 %180, 1
  %182 = icmp ne i32 %181, 0
  %183 = zext i1 %182 to i64
  %184 = select i1 %182, i32 -1, i32 1
  %185 = mul nsw i32 %178, %184
  %186 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %187 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %186, i32 0, i32 1
  %188 = load i32*, i32** %187, align 8
  %189 = load i32, i32* %12, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i32, i32* %188, i64 %190
  store i32 %185, i32* %191, align 4
  %192 = load i32, i32* %13, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds [64 x i32], [64 x i32]* %6, i64 0, i64 %193
  %195 = load i32, i32* %194, align 4
  %196 = load i32, i32* %13, align 4
  %197 = sdiv i32 %196, 8
  %198 = and i32 %197, 1
  %199 = icmp ne i32 %198, 0
  %200 = zext i1 %199 to i64
  %201 = select i1 %199, i32 -1, i32 1
  %202 = mul nsw i32 %195, %201
  %203 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %204 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %203, i32 0, i32 2
  %205 = load i32*, i32** %204, align 8
  %206 = load i32, i32* %12, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds i32, i32* %205, i64 %207
  store i32 %202, i32* %208, align 4
  br label %209

209:                                              ; preds = %169
  %210 = load i32, i32* %12, align 4
  %211 = add nsw i32 %210, 1
  store i32 %211, i32* %12, align 4
  br label %166

212:                                              ; preds = %166
  ret void
}

; Function Attrs: nounwind readnone speculatable willreturn
declare double @llvm.fabs.f64(double) #1

declare dso_local i32 @FFMAX(i32, double) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
