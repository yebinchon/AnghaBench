; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_afftdn.c_set_noise_profile.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_afftdn.c_set_noise_profile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { double*, double*, double*, float, i64, i32 }
%struct.TYPE_6__ = type { i32* }

@AV_LOG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"bn=\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, %struct.TYPE_6__*, double*, i32)* @set_noise_profile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_noise_profile(%struct.TYPE_7__* %0, %struct.TYPE_6__* %1, double* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca double*, align 8
  %8 = alloca i32, align 4
  %9 = alloca [15 x i32], align 16
  %10 = alloca [15 x double], align 16
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca float, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %6, align 8
  store double* %2, double** %7, align 8
  store i32 %3, i32* %8, align 4
  store double 0.000000e+00, double* %11, align 8
  store i32 0, i32* %16, align 4
  br label %22

22:                                               ; preds = %34, %4
  %23 = load i32, i32* %16, align 4
  %24 = icmp slt i32 %23, 15
  br i1 %24, label %25, label %37

25:                                               ; preds = %22
  %26 = load double*, double** %7, align 8
  %27 = load i32, i32* %16, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds double, double* %26, i64 %28
  %30 = load double, double* %29, align 8
  %31 = load i32, i32* %16, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [15 x double], [15 x double]* %10, i64 0, i64 %32
  store double %30, double* %33, align 8
  br label %34

34:                                               ; preds = %25
  %35 = load i32, i32* %16, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %16, align 4
  br label %22

37:                                               ; preds = %22
  %38 = load i32, i32* %8, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %124

40:                                               ; preds = %37
  store i32 0, i32* %14, align 4
  store i32 0, i32* %17, align 4
  br label %41

41:                                               ; preds = %75, %40
  %42 = load i32, i32* %17, align 4
  %43 = icmp slt i32 %42, 5
  br i1 %43, label %44, label %78

44:                                               ; preds = %41
  store double 0.000000e+00, double* %11, align 8
  store i32 0, i32* %15, align 4
  br label %45

45:                                               ; preds = %64, %44
  %46 = load i32, i32* %15, align 4
  %47 = icmp slt i32 %46, 15
  br i1 %47, label %48, label %67

48:                                               ; preds = %45
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = load double*, double** %50, align 8
  %52 = load i32, i32* %14, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %14, align 4
  %54 = sext i32 %52 to i64
  %55 = getelementptr inbounds double, double* %51, i64 %54
  %56 = load double, double* %55, align 8
  %57 = load i32, i32* %15, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [15 x double], [15 x double]* %10, i64 0, i64 %58
  %60 = load double, double* %59, align 8
  %61 = fmul double %56, %60
  %62 = load double, double* %11, align 8
  %63 = fadd double %62, %61
  store double %63, double* %11, align 8
  br label %64

64:                                               ; preds = %48
  %65 = load i32, i32* %15, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %15, align 4
  br label %45

67:                                               ; preds = %45
  %68 = load double, double* %11, align 8
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 1
  %71 = load double*, double** %70, align 8
  %72 = load i32, i32* %17, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds double, double* %71, i64 %73
  store double %68, double* %74, align 8
  br label %75

75:                                               ; preds = %67
  %76 = load i32, i32* %17, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %17, align 4
  br label %41

78:                                               ; preds = %41
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 5
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 1
  %84 = load double*, double** %83, align 8
  %85 = call i32 @solve(i32 %81, double* %84, i32 5)
  store i32 0, i32* %14, align 4
  store i32 0, i32* %18, align 4
  br label %86

86:                                               ; preds = %120, %78
  %87 = load i32, i32* %18, align 4
  %88 = icmp slt i32 %87, 15
  br i1 %88, label %89, label %123

89:                                               ; preds = %86
  store double 0.000000e+00, double* %11, align 8
  store i32 0, i32* %15, align 4
  br label %90

90:                                               ; preds = %112, %89
  %91 = load i32, i32* %15, align 4
  %92 = icmp slt i32 %91, 5
  br i1 %92, label %93, label %115

93:                                               ; preds = %90
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 2
  %96 = load double*, double** %95, align 8
  %97 = load i32, i32* %14, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %14, align 4
  %99 = sext i32 %97 to i64
  %100 = getelementptr inbounds double, double* %96, i64 %99
  %101 = load double, double* %100, align 8
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 1
  %104 = load double*, double** %103, align 8
  %105 = load i32, i32* %15, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds double, double* %104, i64 %106
  %108 = load double, double* %107, align 8
  %109 = fmul double %101, %108
  %110 = load double, double* %11, align 8
  %111 = fadd double %110, %109
  store double %111, double* %11, align 8
  br label %112

112:                                              ; preds = %93
  %113 = load i32, i32* %15, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %15, align 4
  br label %90

115:                                              ; preds = %90
  %116 = load double, double* %11, align 8
  %117 = load i32, i32* %18, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds [15 x double], [15 x double]* %10, i64 0, i64 %118
  store double %116, double* %119, align 8
  br label %120

120:                                              ; preds = %115
  %121 = load i32, i32* %18, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %18, align 4
  br label %86

123:                                              ; preds = %86
  br label %124

124:                                              ; preds = %123, %37
  store double 0.000000e+00, double* %11, align 8
  store i32 0, i32* %19, align 4
  br label %125

125:                                              ; preds = %135, %124
  %126 = load i32, i32* %19, align 4
  %127 = icmp slt i32 %126, 15
  br i1 %127, label %128, label %138

128:                                              ; preds = %125
  %129 = load i32, i32* %19, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds [15 x double], [15 x double]* %10, i64 0, i64 %130
  %132 = load double, double* %131, align 8
  %133 = load double, double* %11, align 8
  %134 = fadd double %133, %132
  store double %134, double* %11, align 8
  br label %135

135:                                              ; preds = %128
  %136 = load i32, i32* %19, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %19, align 4
  br label %125

138:                                              ; preds = %125
  %139 = load double, double* %11, align 8
  %140 = fdiv double %139, 1.500000e+01
  %141 = fsub double %140, 5.000000e-01
  %142 = fptosi double %141 to i32
  %143 = sitofp i32 %142 to double
  store double %143, double* %12, align 8
  %144 = load i32, i32* %8, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %152, label %146

146:                                              ; preds = %138
  %147 = getelementptr inbounds [15 x double], [15 x double]* %10, i64 0, i64 7
  %148 = load double, double* %147, align 8
  %149 = load double, double* %12, align 8
  %150 = fsub double %148, %149
  %151 = call i32 @lrint(double %150)
  store i32 %151, i32* %14, align 4
  br label %152

152:                                              ; preds = %146, %138
  %153 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %154 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i32 0, i32 0
  %155 = load i32*, i32** %154, align 8
  %156 = getelementptr inbounds i32, i32* %155, i64 7
  %157 = load i32, i32* %156, align 4
  %158 = load i32, i32* %14, align 4
  %159 = sub nsw i32 %157, %158
  %160 = sitofp i32 %159 to double
  %161 = load double, double* %12, align 8
  %162 = fsub double %161, %160
  store double %162, double* %12, align 8
  br label %163

163:                                              ; preds = %167, %152
  %164 = load double, double* %12, align 8
  %165 = fcmp ogt double %164, -2.000000e+01
  br i1 %165, label %166, label %170

166:                                              ; preds = %163
  br label %167

167:                                              ; preds = %166
  %168 = load double, double* %12, align 8
  %169 = fsub double %168, 1.000000e+00
  store double %169, double* %12, align 8
  br label %163

170:                                              ; preds = %163
  store i32 0, i32* %20, align 4
  br label %171

171:                                              ; preds = %181, %170
  %172 = load i32, i32* %20, align 4
  %173 = icmp slt i32 %172, 15
  br i1 %173, label %174, label %184

174:                                              ; preds = %171
  %175 = load double, double* %12, align 8
  %176 = load i32, i32* %20, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds [15 x double], [15 x double]* %10, i64 0, i64 %177
  %179 = load double, double* %178, align 8
  %180 = fsub double %179, %175
  store double %180, double* %178, align 8
  br label %181

181:                                              ; preds = %174
  %182 = load i32, i32* %20, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %20, align 4
  br label %171

184:                                              ; preds = %171
  %185 = load double, double* %12, align 8
  %186 = fadd double %185, 2.500000e+00
  %187 = fptrunc double %186 to float
  store float %187, float* %13, align 4
  %188 = load i32, i32* %8, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %233

190:                                              ; preds = %184
  %191 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %192 = load i32, i32* @AV_LOG_INFO, align 4
  %193 = call i32 (%struct.TYPE_7__*, i32, i8*, ...) @av_log(%struct.TYPE_7__* %191, i32 %192, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %21, align 4
  br label %194

194:                                              ; preds = %221, %190
  %195 = load i32, i32* %21, align 4
  %196 = icmp slt i32 %195, 15
  br i1 %196, label %197, label %224

197:                                              ; preds = %194
  %198 = load i32, i32* %21, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds [15 x double], [15 x double]* %10, i64 0, i64 %199
  %201 = load double, double* %200, align 8
  %202 = call i32 @lrint(double %201)
  %203 = load i32, i32* %21, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds [15 x i32], [15 x i32]* %9, i64 0, i64 %204
  store i32 %202, i32* %205, align 4
  %206 = load i32, i32* %21, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds [15 x i32], [15 x i32]* %9, i64 0, i64 %207
  %209 = load i32, i32* %208, align 4
  %210 = call i32 @av_clip(i32 %209, i32 -24, i32 24)
  %211 = load i32, i32* %21, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds [15 x i32], [15 x i32]* %9, i64 0, i64 %212
  store i32 %210, i32* %213, align 4
  %214 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %215 = load i32, i32* @AV_LOG_INFO, align 4
  %216 = load i32, i32* %21, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds [15 x i32], [15 x i32]* %9, i64 0, i64 %217
  %219 = load i32, i32* %218, align 4
  %220 = call i32 (%struct.TYPE_7__*, i32, i8*, ...) @av_log(%struct.TYPE_7__* %214, i32 %215, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %219)
  br label %221

221:                                              ; preds = %197
  %222 = load i32, i32* %21, align 4
  %223 = add nsw i32 %222, 1
  store i32 %223, i32* %21, align 4
  br label %194

224:                                              ; preds = %194
  %225 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %226 = load i32, i32* @AV_LOG_INFO, align 4
  %227 = call i32 (%struct.TYPE_7__*, i32, i8*, ...) @av_log(%struct.TYPE_7__* %225, i32 %226, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %228 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %229 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %228, i32 0, i32 0
  %230 = load i32*, i32** %229, align 8
  %231 = getelementptr inbounds [15 x i32], [15 x i32]* %9, i64 0, i64 0
  %232 = call i32 @memcpy(i32* %230, i32* %231, i32 60)
  br label %233

233:                                              ; preds = %224, %184
  %234 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %235 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %234, i32 0, i32 4
  %236 = load i64, i64* %235, align 8
  %237 = icmp ne i64 %236, 0
  br i1 %237, label %238, label %242

238:                                              ; preds = %233
  %239 = load float, float* %13, align 4
  %240 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %241 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %240, i32 0, i32 3
  store float %239, float* %241, align 8
  br label %242

242:                                              ; preds = %238, %233
  ret void
}

declare dso_local i32 @solve(i32, double*, i32) #1

declare dso_local i32 @lrint(double) #1

declare dso_local i32 @av_log(%struct.TYPE_7__*, i32, i8*, ...) #1

declare dso_local i32 @av_clip(i32, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
