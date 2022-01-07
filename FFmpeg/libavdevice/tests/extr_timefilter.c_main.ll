; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavdevice/tests/extr_timefilter.c_main.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavdevice/tests/extr_timefilter.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LFG_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Could not allocate memory for timefilter.\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"filter is unstable\0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c" [%12f %11f %9f]\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@SAMPLES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca [1000 x double], align 16
  %6 = alloca [1000 x double], align 16
  %7 = alloca [1000 x double], align 16
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca i32*, align 8
  %17 = alloca double, align 8
  store i32 0, i32* %1, align 4
  store double 0.000000e+00, double* %3, align 8
  br label %18

18:                                               ; preds = %225, %0
  %19 = load double, double* %3, align 8
  %20 = fcmp olt double %19, 4.000000e+01
  br i1 %20, label %21, label %229

21:                                               ; preds = %18
  store double 0.000000e+00, double* %4, align 8
  br label %22

22:                                               ; preds = %219, %21
  %23 = load double, double* %4, align 8
  %24 = fcmp olt double %23, 1.000000e+01
  br i1 %24, label %25, label %223

25:                                               ; preds = %22
  store double 1.000000e+09, double* %8, align 8
  %26 = load double, double* %3, align 8
  %27 = fcmp une double %26, 0.000000e+00
  %28 = zext i1 %27 to i64
  %29 = select i1 %27, i32 1, i32 100000
  %30 = sitofp i32 %29 to double
  store double %30, double* %9, align 8
  store double 1.000000e+00, double* %10, align 8
  %31 = call i32 @av_lfg_init(i32* %2, i32 123)
  store i32 0, i32* %12, align 4
  br label %32

32:                                               ; preds = %106, %25
  %33 = load i32, i32* %12, align 4
  %34 = icmp slt i32 %33, 1000
  br i1 %34, label %35, label %109

35:                                               ; preds = %32
  %36 = load i32, i32* %12, align 4
  %37 = add nsw i32 10, %36
  %38 = sitofp i32 %37 to double
  %39 = call i32 @av_lfg_get(i32* %2)
  %40 = load i32, i32* @LFG_MAX, align 4
  %41 = sdiv i32 %40, 2
  %42 = icmp slt i32 %39, %41
  %43 = zext i1 %42 to i64
  %44 = select i1 %42, double 0.000000e+00, double 0x3FEFF7CED916872B
  %45 = fadd double %38, %44
  %46 = load i32, i32* %12, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [1000 x double], [1000 x double]* %7, i64 0, i64 %47
  store double %45, double* %48, align 8
  %49 = load i32, i32* %12, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [1000 x double], [1000 x double]* %7, i64 0, i64 %50
  %52 = load double, double* %51, align 8
  %53 = load double, double* %4, align 8
  %54 = load i32, i32* %12, align 4
  %55 = sitofp i32 %54 to double
  %56 = fmul double %53, %55
  %57 = fdiv double %56, 1.000000e+03
  %58 = fadd double %52, %57
  %59 = load i32, i32* %12, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds [1000 x double], [1000 x double]* %5, i64 0, i64 %60
  store double %58, double* %61, align 8
  %62 = load i32, i32* %12, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [1000 x double], [1000 x double]* %5, i64 0, i64 %63
  %65 = load double, double* %64, align 8
  %66 = load double, double* %3, align 8
  %67 = call i32 @av_lfg_get(i32* %2)
  %68 = load i32, i32* @LFG_MAX, align 4
  %69 = sdiv i32 %68, 2
  %70 = sub nsw i32 %67, %69
  %71 = sitofp i32 %70 to double
  %72 = fmul double %66, %71
  %73 = load i32, i32* @LFG_MAX, align 4
  %74 = sext i32 %73 to i64
  %75 = mul nsw i64 %74, 10
  %76 = sitofp i64 %75 to double
  %77 = fdiv double %72, %76
  %78 = fadd double %65, %77
  %79 = load i32, i32* %12, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds [1000 x double], [1000 x double]* %6, i64 0, i64 %80
  store double %78, double* %81, align 8
  %82 = load i32, i32* %12, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %105

84:                                               ; preds = %35
  %85 = load i32, i32* %12, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds [1000 x double], [1000 x double]* %6, i64 0, i64 %86
  %88 = load double, double* %87, align 8
  %89 = load i32, i32* %12, align 4
  %90 = sub nsw i32 %89, 1
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds [1000 x double], [1000 x double]* %6, i64 0, i64 %91
  %93 = load double, double* %92, align 8
  %94 = fcmp olt double %88, %93
  br i1 %94, label %95, label %105

95:                                               ; preds = %84
  %96 = load i32, i32* %12, align 4
  %97 = sub nsw i32 %96, 1
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds [1000 x double], [1000 x double]* %6, i64 0, i64 %98
  %100 = load double, double* %99, align 8
  %101 = fadd double %100, 1.000000e-03
  %102 = load i32, i32* %12, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds [1000 x double], [1000 x double]* %6, i64 0, i64 %103
  store double %101, double* %104, align 8
  br label %105

105:                                              ; preds = %95, %84, %35
  br label %106

106:                                              ; preds = %105
  %107 = load i32, i32* %12, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %12, align 4
  br label %32

109:                                              ; preds = %32
  br label %110

110:                                              ; preds = %211, %109
  store i32 0, i32* %11, align 4
  %111 = load double, double* %9, align 8
  %112 = fmul double %111, 8.000000e-01
  store double %112, double* %13, align 8
  br label %113

113:                                              ; preds = %205, %110
  %114 = load double, double* %13, align 8
  %115 = load double, double* %9, align 8
  %116 = fmul double %115, 1.210000e+00
  %117 = fcmp ole double %114, %116
  br i1 %117, label %118, label %210

118:                                              ; preds = %113
  %119 = load double, double* %10, align 8
  %120 = fmul double %119, 8.000000e-01
  store double %120, double* %14, align 8
  br label %121

121:                                              ; preds = %199, %118
  %122 = load double, double* %14, align 8
  %123 = load double, double* %10, align 8
  %124 = fmul double %123, 1.210000e+00
  %125 = fcmp ole double %122, %124
  br i1 %125, label %126, label %204

126:                                              ; preds = %121
  store double 0.000000e+00, double* %15, align 8
  %127 = load double, double* %13, align 8
  %128 = load double, double* %14, align 8
  %129 = call i32* @ff_timefilter_new(i32 1, double %127, double %128)
  store i32* %129, i32** %16, align 8
  %130 = load i32*, i32** %16, align 8
  %131 = icmp ne i32* %130, null
  br i1 %131, label %135, label %132

132:                                              ; preds = %126
  %133 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %134 = call i32 @exit(i32 1) #3
  unreachable

135:                                              ; preds = %126
  store i32 0, i32* %12, align 4
  br label %136

136:                                              ; preds = %185, %135
  %137 = load i32, i32* %12, align 4
  %138 = icmp slt i32 %137, 1000
  br i1 %138, label %139, label %188

139:                                              ; preds = %136
  %140 = load i32*, i32** %16, align 8
  %141 = load i32, i32* %12, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds [1000 x double], [1000 x double]* %6, i64 0, i64 %142
  %144 = load double, double* %143, align 8
  %145 = load i32, i32* %12, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %158

147:                                              ; preds = %139
  %148 = load i32, i32* %12, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds [1000 x double], [1000 x double]* %7, i64 0, i64 %149
  %151 = load double, double* %150, align 8
  %152 = load i32, i32* %12, align 4
  %153 = sub nsw i32 %152, 1
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds [1000 x double], [1000 x double]* %7, i64 0, i64 %154
  %156 = load double, double* %155, align 8
  %157 = fsub double %151, %156
  br label %159

158:                                              ; preds = %139
  br label %159

159:                                              ; preds = %158, %147
  %160 = phi double [ %157, %147 ], [ 1.000000e+00, %158 ]
  %161 = call double @ff_timefilter_update(i32* %140, double %144, double %160)
  store double %161, double* %17, align 8
  %162 = load double, double* %17, align 8
  %163 = fcmp olt double %162, 0.000000e+00
  br i1 %163, label %167, label %164

164:                                              ; preds = %159
  %165 = load double, double* %17, align 8
  %166 = fcmp ogt double %165, 1.000000e+09
  br i1 %166, label %167, label %169

167:                                              ; preds = %164, %159
  %168 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  br label %169

169:                                              ; preds = %167, %164
  %170 = load double, double* %17, align 8
  %171 = load i32, i32* %12, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds [1000 x double], [1000 x double]* %5, i64 0, i64 %172
  %174 = load double, double* %173, align 8
  %175 = fsub double %170, %174
  %176 = load double, double* %17, align 8
  %177 = load i32, i32* %12, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds [1000 x double], [1000 x double]* %5, i64 0, i64 %178
  %180 = load double, double* %179, align 8
  %181 = fsub double %176, %180
  %182 = fmul double %175, %181
  %183 = load double, double* %15, align 8
  %184 = fadd double %183, %182
  store double %184, double* %15, align 8
  br label %185

185:                                              ; preds = %169
  %186 = load i32, i32* %12, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %12, align 4
  br label %136

188:                                              ; preds = %136
  %189 = load i32*, i32** %16, align 8
  %190 = call i32 @ff_timefilter_destroy(i32* %189)
  %191 = load double, double* %15, align 8
  %192 = load double, double* %8, align 8
  %193 = fcmp olt double %191, %192
  br i1 %193, label %194, label %198

194:                                              ; preds = %188
  %195 = load double, double* %15, align 8
  store double %195, double* %8, align 8
  %196 = load double, double* %13, align 8
  store double %196, double* %9, align 8
  %197 = load double, double* %14, align 8
  store double %197, double* %10, align 8
  store i32 1, i32* %11, align 4
  br label %198

198:                                              ; preds = %194, %188
  br label %199

199:                                              ; preds = %198
  %200 = load double, double* %10, align 8
  %201 = fmul double %200, 5.000000e-02
  %202 = load double, double* %14, align 8
  %203 = fadd double %202, %201
  store double %203, double* %14, align 8
  br label %121

204:                                              ; preds = %121
  br label %205

205:                                              ; preds = %204
  %206 = load double, double* %9, align 8
  %207 = fmul double %206, 5.000000e-02
  %208 = load double, double* %13, align 8
  %209 = fadd double %208, %207
  store double %209, double* %13, align 8
  br label %113

210:                                              ; preds = %113
  br label %211

211:                                              ; preds = %210
  %212 = load i32, i32* %11, align 4
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %110, label %214

214:                                              ; preds = %211
  %215 = load double, double* %9, align 8
  %216 = load double, double* %10, align 8
  %217 = load double, double* %8, align 8
  %218 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), double %215, double %216, double %217)
  br label %219

219:                                              ; preds = %214
  %220 = load double, double* %4, align 8
  %221 = fmul double 2.000000e+00, %220
  %222 = fadd double %221, 1.000000e+00
  store double %222, double* %4, align 8
  br label %22

223:                                              ; preds = %22
  %224 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %225

225:                                              ; preds = %223
  %226 = load double, double* %3, align 8
  %227 = fmul double 2.000000e+00, %226
  %228 = fadd double %227, 1.000000e+00
  store double %228, double* %3, align 8
  br label %18

229:                                              ; preds = %18
  ret i32 0
}

declare dso_local i32 @av_lfg_init(i32*, i32) #1

declare dso_local i32 @av_lfg_get(i32*) #1

declare dso_local i32* @ff_timefilter_new(i32, double, double) #1

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local double @ff_timefilter_update(i32*, double, double) #1

declare dso_local i32 @ff_timefilter_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
