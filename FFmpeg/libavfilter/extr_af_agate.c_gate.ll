; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_agate.c_gate.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_agate.c_gate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { double, double, double, i32, double, double, double, i64, i32, i32, i32, i32, i32, i32, i64 }
%struct.TYPE_7__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, double*, double*, double*, i32, double, double, %struct.TYPE_7__*, %struct.TYPE_7__*)* @gate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gate(%struct.TYPE_6__* %0, double* %1, double* %2, double* %3, i32 %4, double %5, double %6, %struct.TYPE_7__* %7, %struct.TYPE_7__* %8) #0 {
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca double*, align 8
  %12 = alloca double*, align 8
  %13 = alloca double*, align 8
  %14 = alloca i32, align 4
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca %struct.TYPE_7__*, align 8
  %18 = alloca %struct.TYPE_7__*, align 8
  %19 = alloca double, align 8
  %20 = alloca double, align 8
  %21 = alloca double, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca double, align 8
  %25 = alloca double, align 8
  %26 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %10, align 8
  store double* %1, double** %11, align 8
  store double* %2, double** %12, align 8
  store double* %3, double** %13, align 8
  store i32 %4, i32* %14, align 4
  store double %5, double* %15, align 8
  store double %6, double* %16, align 8
  store %struct.TYPE_7__* %7, %struct.TYPE_7__** %17, align 8
  store %struct.TYPE_7__* %8, %struct.TYPE_7__** %18, align 8
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load double, double* %28, align 8
  store double %29, double* %19, align 8
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 1
  %32 = load double, double* %31, align 8
  store double %32, double* %20, align 8
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 2
  %35 = load double, double* %34, align 8
  store double %35, double* %21, align 8
  store i32 0, i32* %22, align 4
  br label %36

36:                                               ; preds = %215, %9
  %37 = load i32, i32* %22, align 4
  %38 = load i32, i32* %14, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %236

40:                                               ; preds = %36
  %41 = load double*, double** %13, align 8
  %42 = getelementptr inbounds double, double* %41, i64 0
  %43 = load double, double* %42, align 8
  %44 = load double, double* %16, align 8
  %45 = fmul double %43, %44
  %46 = call double @llvm.fabs.f64(double %45)
  store double %46, double* %24, align 8
  store double 1.000000e+00, double* %25, align 8
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 8
  %50 = icmp eq i32 %49, 1
  br i1 %50, label %51, label %73

51:                                               ; preds = %40
  store i32 1, i32* %23, align 4
  br label %52

52:                                               ; preds = %69, %51
  %53 = load i32, i32* %23, align 4
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = icmp slt i32 %53, %56
  br i1 %57, label %58, label %72

58:                                               ; preds = %52
  %59 = load double*, double** %13, align 8
  %60 = load i32, i32* %23, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds double, double* %59, i64 %61
  %63 = load double, double* %62, align 8
  %64 = load double, double* %16, align 8
  %65 = fmul double %63, %64
  %66 = call double @llvm.fabs.f64(double %65)
  %67 = load double, double* %24, align 8
  %68 = call double @FFMAX(double %66, double %67)
  store double %68, double* %24, align 8
  br label %69

69:                                               ; preds = %58
  %70 = load i32, i32* %23, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %23, align 4
  br label %52

72:                                               ; preds = %52
  br label %101

73:                                               ; preds = %40
  store i32 1, i32* %23, align 4
  br label %74

74:                                               ; preds = %91, %73
  %75 = load i32, i32* %23, align 4
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = icmp slt i32 %75, %78
  br i1 %79, label %80, label %94

80:                                               ; preds = %74
  %81 = load double*, double** %13, align 8
  %82 = load i32, i32* %23, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds double, double* %81, i64 %83
  %85 = load double, double* %84, align 8
  %86 = load double, double* %16, align 8
  %87 = fmul double %85, %86
  %88 = call double @llvm.fabs.f64(double %87)
  %89 = load double, double* %24, align 8
  %90 = fadd double %89, %88
  store double %90, double* %24, align 8
  br label %91

91:                                               ; preds = %80
  %92 = load i32, i32* %23, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %23, align 4
  br label %74

94:                                               ; preds = %74
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = sitofp i32 %97 to double
  %99 = load double, double* %24, align 8
  %100 = fdiv double %99, %98
  store double %100, double* %24, align 8
  br label %101

101:                                              ; preds = %94, %72
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 14
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %110

106:                                              ; preds = %101
  %107 = load double, double* %24, align 8
  %108 = load double, double* %24, align 8
  %109 = fmul double %108, %107
  store double %109, double* %24, align 8
  br label %110

110:                                              ; preds = %106, %101
  %111 = load double, double* %24, align 8
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 4
  %114 = load double, double* %113, align 8
  %115 = fsub double %111, %114
  %116 = load double, double* %24, align 8
  %117 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 4
  %119 = load double, double* %118, align 8
  %120 = fcmp ogt double %116, %119
  br i1 %120, label %121, label %123

121:                                              ; preds = %110
  %122 = load double, double* %20, align 8
  br label %125

123:                                              ; preds = %110
  %124 = load double, double* %21, align 8
  br label %125

125:                                              ; preds = %123, %121
  %126 = phi double [ %122, %121 ], [ %124, %123 ]
  %127 = fmul double %115, %126
  %128 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 4
  %130 = load double, double* %129, align 8
  %131 = fadd double %130, %127
  store double %131, double* %129, align 8
  %132 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 7
  %134 = load i64, i64* %133, align 8
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %145

136:                                              ; preds = %125
  %137 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 4
  %139 = load double, double* %138, align 8
  %140 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 5
  %142 = load double, double* %141, align 8
  %143 = fcmp ogt double %139, %142
  %144 = zext i1 %143 to i32
  store i32 %144, i32* %26, align 4
  br label %154

145:                                              ; preds = %125
  %146 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 4
  %148 = load double, double* %147, align 8
  %149 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i32 0, i32 6
  %151 = load double, double* %150, align 8
  %152 = fcmp olt double %148, %151
  %153 = zext i1 %152 to i32
  store i32 %153, i32* %26, align 4
  br label %154

154:                                              ; preds = %145, %136
  %155 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %156 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %155, i32 0, i32 4
  %157 = load double, double* %156, align 8
  %158 = fcmp ogt double %157, 0.000000e+00
  br i1 %158, label %159, label %188

159:                                              ; preds = %154
  %160 = load i32, i32* %26, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %188

162:                                              ; preds = %159
  %163 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %164 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %163, i32 0, i32 4
  %165 = load double, double* %164, align 8
  %166 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %167 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %166, i32 0, i32 13
  %168 = load i32, i32* %167, align 4
  %169 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %170 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %169, i32 0, i32 12
  %171 = load i32, i32* %170, align 8
  %172 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %173 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %172, i32 0, i32 11
  %174 = load i32, i32* %173, align 4
  %175 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %176 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %175, i32 0, i32 10
  %177 = load i32, i32* %176, align 8
  %178 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %179 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %178, i32 0, i32 9
  %180 = load i32, i32* %179, align 4
  %181 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %182 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %181, i32 0, i32 8
  %183 = load i32, i32* %182, align 8
  %184 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %185 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %184, i32 0, i32 7
  %186 = load i64, i64* %185, align 8
  %187 = call double @output_gain(double %165, i32 %168, i32 %171, i32 %174, i32 %177, i32 %180, i32 %183, i64 %186)
  store double %187, double* %25, align 8
  br label %188

188:                                              ; preds = %162, %159, %154
  store i32 0, i32* %23, align 4
  br label %189

189:                                              ; preds = %211, %188
  %190 = load i32, i32* %23, align 4
  %191 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %192 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 4
  %194 = icmp slt i32 %190, %193
  br i1 %194, label %195, label %214

195:                                              ; preds = %189
  %196 = load double*, double** %11, align 8
  %197 = load i32, i32* %23, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds double, double* %196, i64 %198
  %200 = load double, double* %199, align 8
  %201 = load double, double* %15, align 8
  %202 = fmul double %200, %201
  %203 = load double, double* %25, align 8
  %204 = fmul double %202, %203
  %205 = load double, double* %19, align 8
  %206 = fmul double %204, %205
  %207 = load double*, double** %12, align 8
  %208 = load i32, i32* %23, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds double, double* %207, i64 %209
  store double %206, double* %210, align 8
  br label %211

211:                                              ; preds = %195
  %212 = load i32, i32* %23, align 4
  %213 = add nsw i32 %212, 1
  store i32 %213, i32* %23, align 4
  br label %189

214:                                              ; preds = %189
  br label %215

215:                                              ; preds = %214
  %216 = load i32, i32* %22, align 4
  %217 = add nsw i32 %216, 1
  store i32 %217, i32* %22, align 4
  %218 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %219 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 4
  %221 = load double*, double** %11, align 8
  %222 = sext i32 %220 to i64
  %223 = getelementptr inbounds double, double* %221, i64 %222
  store double* %223, double** %11, align 8
  %224 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %225 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 4
  %227 = load double*, double** %12, align 8
  %228 = sext i32 %226 to i64
  %229 = getelementptr inbounds double, double* %227, i64 %228
  store double* %229, double** %12, align 8
  %230 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %231 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 4
  %233 = load double*, double** %13, align 8
  %234 = sext i32 %232 to i64
  %235 = getelementptr inbounds double, double* %233, i64 %234
  store double* %235, double** %13, align 8
  br label %36

236:                                              ; preds = %36
  ret void
}

; Function Attrs: nounwind readnone speculatable willreturn
declare double @llvm.fabs.f64(double) #1

declare dso_local double @FFMAX(double, double) #2

declare dso_local double @output_gain(double, i32, i32, i32, i32, i32, i32, i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
