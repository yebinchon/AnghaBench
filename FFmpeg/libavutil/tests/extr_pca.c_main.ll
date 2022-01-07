; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavutil/tests/extr_pca.c_main.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavutil/tests/extr_pca.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, double*, i64* }

@.str = private unnamed_addr constant [4 x i8] c"%f \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"%9.6f \00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"  %9.1f %f\0A\00", align 1
@LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [64 x double], align 16
  %7 = alloca [8 x double], align 16
  %8 = alloca i32, align 4
  %9 = alloca [116 x double], align 16
  %10 = alloca double, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [8 x double], align 16
  %14 = alloca double, align 8
  store i32 0, i32* %1, align 4
  %15 = call i32 @av_lfg_init(i32* %8, i32 1)
  %16 = call %struct.TYPE_5__* @ff_pca_init(i32 8)
  store %struct.TYPE_5__* %16, %struct.TYPE_5__** %2, align 8
  store i32 0, i32* %3, align 4
  br label %17

17:                                               ; preds = %64, %0
  %18 = load i32, i32* %3, align 4
  %19 = icmp slt i32 %18, 9000000
  br i1 %19, label %20, label %67

20:                                               ; preds = %17
  store double 0.000000e+00, double* %10, align 8
  %21 = call i32 @av_lfg_get(i32* %8)
  %22 = srem i32 %21, 8
  store i32 %22, i32* %11, align 4
  %23 = call i32 @av_lfg_get(i32* %8)
  %24 = srem i32 %23, 101
  %25 = sub nsw i32 %24, 50
  store i32 %25, i32* %12, align 4
  %26 = call i32 @av_lfg_get(i32* %8)
  %27 = srem i32 %26, 101
  %28 = sub nsw i32 %27, 50
  %29 = sitofp i32 %28 to double
  %30 = getelementptr inbounds [116 x double], [116 x double]* %9, i64 0, i64 0
  store double %29, double* %30, align 16
  store i32 1, i32* %4, align 4
  br label %31

31:                                               ; preds = %57, %20
  %32 = load i32, i32* %4, align 4
  %33 = icmp slt i32 %32, 8
  br i1 %33, label %34, label %60

34:                                               ; preds = %31
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* %11, align 4
  %37 = icmp sle i32 %35, %36
  br i1 %37, label %38, label %44

38:                                               ; preds = %34
  %39 = getelementptr inbounds [116 x double], [116 x double]* %9, i64 0, i64 0
  %40 = load double, double* %39, align 16
  %41 = load i32, i32* %4, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [116 x double], [116 x double]* %9, i64 0, i64 %42
  store double %40, double* %43, align 8
  br label %50

44:                                               ; preds = %34
  %45 = load i32, i32* %12, align 4
  %46 = sitofp i32 %45 to double
  %47 = load i32, i32* %4, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [116 x double], [116 x double]* %9, i64 0, i64 %48
  store double %46, double* %49, align 8
  br label %50

50:                                               ; preds = %44, %38
  %51 = load i32, i32* %4, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [116 x double], [116 x double]* %9, i64 0, i64 %52
  %54 = load double, double* %53, align 8
  %55 = load double, double* %10, align 8
  %56 = fadd double %55, %54
  store double %56, double* %10, align 8
  br label %57

57:                                               ; preds = %50
  %58 = load i32, i32* %4, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %4, align 4
  br label %31

60:                                               ; preds = %31
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %62 = getelementptr inbounds [116 x double], [116 x double]* %9, i64 0, i64 0
  %63 = call i32 @ff_pca_add(%struct.TYPE_5__* %61, double* %62)
  br label %64

64:                                               ; preds = %60
  %65 = load i32, i32* %3, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %3, align 4
  br label %17

67:                                               ; preds = %17
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %69 = getelementptr inbounds [64 x double], [64 x double]* %6, i64 0, i64 0
  %70 = getelementptr inbounds [8 x double], [8 x double]* %7, i64 0, i64 0
  %71 = call i32 @ff_pca(%struct.TYPE_5__* %68, double* %69, double* %70)
  store i32 0, i32* %3, align 4
  br label %72

72:                                               ; preds = %105, %67
  %73 = load i32, i32* %3, align 4
  %74 = icmp slt i32 %73, 8
  br i1 %74, label %75, label %108

75:                                               ; preds = %72
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  store i32 1, i32* %77, align 8
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 2
  %80 = load i64*, i64** %79, align 8
  %81 = load i32, i32* %3, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i64, i64* %80, i64 %82
  store i64 0, i64* %83, align 8
  %84 = load i32, i32* %3, align 4
  store i32 %84, i32* %4, align 4
  br label %85

85:                                               ; preds = %100, %75
  %86 = load i32, i32* %4, align 4
  %87 = icmp slt i32 %86, 8
  br i1 %87, label %88, label %103

88:                                               ; preds = %85
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 1
  %91 = load double*, double** %90, align 8
  %92 = load i32, i32* %3, align 4
  %93 = load i32, i32* %4, align 4
  %94 = mul nsw i32 %93, 8
  %95 = add nsw i32 %92, %94
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds double, double* %91, i64 %96
  %98 = load double, double* %97, align 8
  %99 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), double %98)
  br label %100

100:                                              ; preds = %88
  %101 = load i32, i32* %4, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %4, align 4
  br label %85

103:                                              ; preds = %85
  %104 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %105

105:                                              ; preds = %103
  %106 = load i32, i32* %3, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %3, align 4
  br label %72

108:                                              ; preds = %72
  store i32 0, i32* %3, align 4
  br label %109

109:                                              ; preds = %185, %108
  %110 = load i32, i32* %3, align 4
  %111 = icmp slt i32 %110, 8
  br i1 %111, label %112, label %188

112:                                              ; preds = %109
  store double 0.000000e+00, double* %14, align 8
  %113 = getelementptr inbounds [8 x double], [8 x double]* %13, i64 0, i64 0
  %114 = call i32 @memset(double* %113, i32 0, i32 64)
  store i32 0, i32* %4, align 4
  br label %115

115:                                              ; preds = %179, %112
  %116 = load i32, i32* %4, align 4
  %117 = icmp slt i32 %116, 8
  br i1 %117, label %118, label %182

118:                                              ; preds = %115
  store i32 0, i32* %5, align 4
  br label %119

119:                                              ; preds = %150, %118
  %120 = load i32, i32* %5, align 4
  %121 = icmp slt i32 %120, 8
  br i1 %121, label %122, label %153

122:                                              ; preds = %119
  %123 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 1
  %125 = load double*, double** %124, align 8
  %126 = load i32, i32* %5, align 4
  %127 = load i32, i32* %4, align 4
  %128 = call i32 @FFMIN(i32 %126, i32 %127)
  %129 = load i32, i32* %5, align 4
  %130 = load i32, i32* %4, align 4
  %131 = call i32 @FFMAX(i32 %129, i32 %130)
  %132 = mul nsw i32 %131, 8
  %133 = add nsw i32 %128, %132
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds double, double* %125, i64 %134
  %136 = load double, double* %135, align 8
  %137 = load i32, i32* %3, align 4
  %138 = load i32, i32* %5, align 4
  %139 = mul nsw i32 %138, 8
  %140 = add nsw i32 %137, %139
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds [64 x double], [64 x double]* %6, i64 0, i64 %141
  %143 = load double, double* %142, align 8
  %144 = fmul double %136, %143
  %145 = load i32, i32* %4, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds [8 x double], [8 x double]* %13, i64 0, i64 %146
  %148 = load double, double* %147, align 8
  %149 = fadd double %148, %144
  store double %149, double* %147, align 8
  br label %150

150:                                              ; preds = %122
  %151 = load i32, i32* %5, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %5, align 4
  br label %119

153:                                              ; preds = %119
  %154 = load i32, i32* %3, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds [8 x double], [8 x double]* %7, i64 0, i64 %155
  %157 = load double, double* %156, align 8
  %158 = load i32, i32* %4, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds [8 x double], [8 x double]* %13, i64 0, i64 %159
  %161 = load double, double* %160, align 8
  %162 = fdiv double %161, %157
  store double %162, double* %160, align 8
  %163 = load i32, i32* %4, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds [8 x double], [8 x double]* %13, i64 0, i64 %164
  %166 = load double, double* %165, align 8
  %167 = load i32, i32* %3, align 4
  %168 = load i32, i32* %4, align 4
  %169 = mul nsw i32 %168, 8
  %170 = add nsw i32 %167, %169
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds [64 x double], [64 x double]* %6, i64 0, i64 %171
  %173 = load double, double* %172, align 8
  %174 = fsub double %166, %173
  %175 = call i64 @fabs(double %174)
  %176 = sitofp i64 %175 to double
  %177 = load double, double* %14, align 8
  %178 = fadd double %177, %176
  store double %178, double* %14, align 8
  br label %179

179:                                              ; preds = %153
  %180 = load i32, i32* %4, align 4
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %4, align 4
  br label %115

182:                                              ; preds = %115
  %183 = load double, double* %14, align 8
  %184 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), double %183)
  br label %185

185:                                              ; preds = %182
  %186 = load i32, i32* %3, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %3, align 4
  br label %109

188:                                              ; preds = %109
  %189 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %190

190:                                              ; preds = %222, %188
  %191 = load i32, i32* %3, align 4
  %192 = icmp slt i32 %191, 8
  br i1 %192, label %193, label %225

193:                                              ; preds = %190
  store i32 0, i32* %4, align 4
  br label %194

194:                                              ; preds = %206, %193
  %195 = load i32, i32* %4, align 4
  %196 = icmp slt i32 %195, 8
  br i1 %196, label %197, label %209

197:                                              ; preds = %194
  %198 = load i32, i32* %3, align 4
  %199 = load i32, i32* %4, align 4
  %200 = mul nsw i32 %199, 8
  %201 = add nsw i32 %198, %200
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds [64 x double], [64 x double]* %6, i64 0, i64 %202
  %204 = load double, double* %203, align 8
  %205 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), double %204)
  br label %206

206:                                              ; preds = %197
  %207 = load i32, i32* %4, align 4
  %208 = add nsw i32 %207, 1
  store i32 %208, i32* %4, align 4
  br label %194

209:                                              ; preds = %194
  %210 = load i32, i32* %3, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds [8 x double], [8 x double]* %7, i64 0, i64 %211
  %213 = load double, double* %212, align 8
  %214 = load i32, i32* %3, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds [8 x double], [8 x double]* %7, i64 0, i64 %215
  %217 = load double, double* %216, align 8
  %218 = getelementptr inbounds [8 x double], [8 x double]* %7, i64 0, i64 0
  %219 = load double, double* %218, align 16
  %220 = fdiv double %217, %219
  %221 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), double %213, double %220)
  br label %222

222:                                              ; preds = %209
  %223 = load i32, i32* %3, align 4
  %224 = add nsw i32 %223, 1
  store i32 %224, i32* %3, align 4
  br label %190

225:                                              ; preds = %190
  ret i32 0
}

declare dso_local i32 @av_lfg_init(i32*, i32) #1

declare dso_local %struct.TYPE_5__* @ff_pca_init(i32) #1

declare dso_local i32 @av_lfg_get(i32*) #1

declare dso_local i32 @ff_pca_add(%struct.TYPE_5__*, double*) #1

declare dso_local i32 @ff_pca(%struct.TYPE_5__*, double*, double*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @memset(double*, i32, i32) #1

declare dso_local i32 @FFMIN(i32, i32) #1

declare dso_local i32 @FFMAX(i32, i32) #1

declare dso_local i64 @fabs(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
