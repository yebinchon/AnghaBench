; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/hello_pi/hello_fft/extr_hello_fft.c_main.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/hello_pi/hello_fft/extr_hello_fft.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.GPU_FFT_COMPLEX = type { double, double }
%struct.GPU_FFT = type { i32, %struct.GPU_FFT_COMPLEX*, %struct.GPU_FFT_COMPLEX* }

@Usage = common dso_local global i8* null, align 8
@GPU_FFT_REV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [65 x i8] c"Unable to enable V3D. Please check your firmware is up to date.\0A\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"log2_N=%d not supported.  Try between 8 and 22.\0A\00", align 1
@.str.2 = private unnamed_addr constant [61 x i8] c"Out of memory.  Try a smaller batch or increase GPU memory.\0A\00", align 1
@.str.3 = private unnamed_addr constant [60 x i8] c"Unable to map Videocore peripherals into ARM memory space.\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"Can't open libbcm_host.\0A\00", align 1
@GPU_FFT_PI = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [41 x i8] c"rel_rms_err = %0.2g, usecs = %d, k = %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca [2 x i32], align 4
  %17 = alloca [2 x double], align 16
  %18 = alloca %struct.GPU_FFT_COMPLEX*, align 8
  %19 = alloca %struct.GPU_FFT*, align 8
  %20 = alloca double, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %21 = call i32 (...) @mbox_open()
  store i32 %21, i32* %15, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp sgt i32 %22, 1
  br i1 %23, label %24, label %29

24:                                               ; preds = %2
  %25 = load i8**, i8*** %5, align 8
  %26 = getelementptr inbounds i8*, i8** %25, i64 1
  %27 = load i8*, i8** %26, align 8
  %28 = call i32 @atoi(i8* %27)
  br label %30

29:                                               ; preds = %2
  br label %30

30:                                               ; preds = %29, %24
  %31 = phi i32 [ %28, %24 ], [ 12, %29 ]
  store i32 %31, i32* %12, align 4
  %32 = load i32, i32* %4, align 4
  %33 = icmp sgt i32 %32, 2
  br i1 %33, label %34, label %39

34:                                               ; preds = %30
  %35 = load i8**, i8*** %5, align 8
  %36 = getelementptr inbounds i8*, i8** %35, i64 2
  %37 = load i8*, i8** %36, align 8
  %38 = call i32 @atoi(i8* %37)
  br label %40

39:                                               ; preds = %30
  br label %40

40:                                               ; preds = %39, %34
  %41 = phi i32 [ %38, %34 ], [ 1, %39 ]
  store i32 %41, i32* %13, align 4
  %42 = load i32, i32* %4, align 4
  %43 = icmp sgt i32 %42, 3
  br i1 %43, label %44, label %49

44:                                               ; preds = %40
  %45 = load i8**, i8*** %5, align 8
  %46 = getelementptr inbounds i8*, i8** %45, i64 3
  %47 = load i8*, i8** %46, align 8
  %48 = call i32 @atoi(i8* %47)
  br label %50

49:                                               ; preds = %40
  br label %50

50:                                               ; preds = %49, %44
  %51 = phi i32 [ %48, %44 ], [ 1, %49 ]
  store i32 %51, i32* %10, align 4
  %52 = load i32, i32* %4, align 4
  %53 = icmp slt i32 %52, 2
  br i1 %53, label %60, label %54

54:                                               ; preds = %50
  %55 = load i32, i32* %13, align 4
  %56 = icmp slt i32 %55, 1
  br i1 %56, label %60, label %57

57:                                               ; preds = %54
  %58 = load i32, i32* %10, align 4
  %59 = icmp slt i32 %58, 1
  br i1 %59, label %60, label %63

60:                                               ; preds = %57, %54, %50
  %61 = load i8*, i8** @Usage, align 8
  %62 = call i32 (i8*, ...) @printf(i8* %61)
  store i32 -1, i32* %3, align 4
  br label %237

63:                                               ; preds = %57
  %64 = load i32, i32* %12, align 4
  %65 = shl i32 1, %64
  store i32 %65, i32* %14, align 4
  %66 = load i32, i32* %15, align 4
  %67 = load i32, i32* %12, align 4
  %68 = load i32, i32* @GPU_FFT_REV, align 4
  %69 = load i32, i32* %13, align 4
  %70 = call i32 @gpu_fft_prepare(i32 %66, i32 %67, i32 %68, i32 %69, %struct.GPU_FFT** %19)
  store i32 %70, i32* %9, align 4
  %71 = load i32, i32* %9, align 4
  switch i32 %71, label %83 [
    i32 -1, label %72
    i32 -2, label %74
    i32 -3, label %77
    i32 -4, label %79
    i32 -5, label %81
  ]

72:                                               ; preds = %63
  %73 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %237

74:                                               ; preds = %63
  %75 = load i32, i32* %12, align 4
  %76 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %75)
  store i32 -1, i32* %3, align 4
  br label %237

77:                                               ; preds = %63
  %78 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %237

79:                                               ; preds = %63
  %80 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %237

81:                                               ; preds = %63
  %82 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %237

83:                                               ; preds = %63
  store i32 0, i32* %8, align 4
  br label %84

84:                                               ; preds = %231, %83
  %85 = load i32, i32* %8, align 4
  %86 = load i32, i32* %10, align 4
  %87 = icmp slt i32 %85, %86
  br i1 %87, label %88, label %234

88:                                               ; preds = %84
  store i32 0, i32* %7, align 4
  br label %89

89:                                               ; preds = %137, %88
  %90 = load i32, i32* %7, align 4
  %91 = load i32, i32* %13, align 4
  %92 = icmp slt i32 %90, %91
  br i1 %92, label %93, label %140

93:                                               ; preds = %89
  %94 = load %struct.GPU_FFT*, %struct.GPU_FFT** %19, align 8
  %95 = getelementptr inbounds %struct.GPU_FFT, %struct.GPU_FFT* %94, i32 0, i32 2
  %96 = load %struct.GPU_FFT_COMPLEX*, %struct.GPU_FFT_COMPLEX** %95, align 8
  %97 = load i32, i32* %7, align 4
  %98 = load %struct.GPU_FFT*, %struct.GPU_FFT** %19, align 8
  %99 = getelementptr inbounds %struct.GPU_FFT, %struct.GPU_FFT* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = mul nsw i32 %97, %100
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.GPU_FFT_COMPLEX, %struct.GPU_FFT_COMPLEX* %96, i64 %102
  store %struct.GPU_FFT_COMPLEX* %103, %struct.GPU_FFT_COMPLEX** %18, align 8
  store i32 0, i32* %6, align 4
  br label %104

104:                                              ; preds = %119, %93
  %105 = load i32, i32* %6, align 4
  %106 = load i32, i32* %14, align 4
  %107 = icmp slt i32 %105, %106
  br i1 %107, label %108, label %122

108:                                              ; preds = %104
  %109 = load %struct.GPU_FFT_COMPLEX*, %struct.GPU_FFT_COMPLEX** %18, align 8
  %110 = load i32, i32* %6, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.GPU_FFT_COMPLEX, %struct.GPU_FFT_COMPLEX* %109, i64 %111
  %113 = getelementptr inbounds %struct.GPU_FFT_COMPLEX, %struct.GPU_FFT_COMPLEX* %112, i32 0, i32 1
  store double 0.000000e+00, double* %113, align 8
  %114 = load %struct.GPU_FFT_COMPLEX*, %struct.GPU_FFT_COMPLEX** %18, align 8
  %115 = load i32, i32* %6, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.GPU_FFT_COMPLEX, %struct.GPU_FFT_COMPLEX* %114, i64 %116
  %118 = getelementptr inbounds %struct.GPU_FFT_COMPLEX, %struct.GPU_FFT_COMPLEX* %117, i32 0, i32 0
  store double 0.000000e+00, double* %118, align 8
  br label %119

119:                                              ; preds = %108
  %120 = load i32, i32* %6, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %6, align 4
  br label %104

122:                                              ; preds = %104
  %123 = load i32, i32* %7, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %11, align 4
  %125 = load %struct.GPU_FFT_COMPLEX*, %struct.GPU_FFT_COMPLEX** %18, align 8
  %126 = load i32, i32* %14, align 4
  %127 = load i32, i32* %11, align 4
  %128 = sub nsw i32 %126, %127
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.GPU_FFT_COMPLEX, %struct.GPU_FFT_COMPLEX* %125, i64 %129
  %131 = getelementptr inbounds %struct.GPU_FFT_COMPLEX, %struct.GPU_FFT_COMPLEX* %130, i32 0, i32 0
  store double 5.000000e-01, double* %131, align 8
  %132 = load %struct.GPU_FFT_COMPLEX*, %struct.GPU_FFT_COMPLEX** %18, align 8
  %133 = load i32, i32* %11, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.GPU_FFT_COMPLEX, %struct.GPU_FFT_COMPLEX* %132, i64 %134
  %136 = getelementptr inbounds %struct.GPU_FFT_COMPLEX, %struct.GPU_FFT_COMPLEX* %135, i32 0, i32 0
  store double 5.000000e-01, double* %136, align 8
  br label %137

137:                                              ; preds = %122
  %138 = load i32, i32* %7, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %7, align 4
  br label %89

140:                                              ; preds = %89
  %141 = call i32 @usleep(i32 1)
  %142 = call i32 (...) @Microseconds()
  %143 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 0, i64 0
  store i32 %142, i32* %143, align 4
  %144 = load %struct.GPU_FFT*, %struct.GPU_FFT** %19, align 8
  %145 = call i32 @gpu_fft_execute(%struct.GPU_FFT* %144)
  %146 = call i32 (...) @Microseconds()
  %147 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 0, i64 1
  store i32 %146, i32* %147, align 4
  %148 = getelementptr inbounds [2 x double], [2 x double]* %17, i64 0, i64 1
  store double 0.000000e+00, double* %148, align 8
  %149 = getelementptr inbounds [2 x double], [2 x double]* %17, i64 0, i64 0
  store double 0.000000e+00, double* %149, align 16
  store i32 0, i32* %7, align 4
  br label %150

150:                                              ; preds = %212, %140
  %151 = load i32, i32* %7, align 4
  %152 = load i32, i32* %13, align 4
  %153 = icmp slt i32 %151, %152
  br i1 %153, label %154, label %215

154:                                              ; preds = %150
  %155 = load %struct.GPU_FFT*, %struct.GPU_FFT** %19, align 8
  %156 = getelementptr inbounds %struct.GPU_FFT, %struct.GPU_FFT* %155, i32 0, i32 1
  %157 = load %struct.GPU_FFT_COMPLEX*, %struct.GPU_FFT_COMPLEX** %156, align 8
  %158 = load i32, i32* %7, align 4
  %159 = load %struct.GPU_FFT*, %struct.GPU_FFT** %19, align 8
  %160 = getelementptr inbounds %struct.GPU_FFT, %struct.GPU_FFT* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = mul nsw i32 %158, %161
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds %struct.GPU_FFT_COMPLEX, %struct.GPU_FFT_COMPLEX* %157, i64 %163
  store %struct.GPU_FFT_COMPLEX* %164, %struct.GPU_FFT_COMPLEX** %18, align 8
  %165 = load i32, i32* %7, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %11, align 4
  store i32 0, i32* %6, align 4
  br label %167

167:                                              ; preds = %208, %154
  %168 = load i32, i32* %6, align 4
  %169 = load i32, i32* %14, align 4
  %170 = icmp slt i32 %168, %169
  br i1 %170, label %171, label %211

171:                                              ; preds = %167
  %172 = load i32, i32* @GPU_FFT_PI, align 4
  %173 = mul nsw i32 2, %172
  %174 = load i32, i32* %11, align 4
  %175 = mul nsw i32 %173, %174
  %176 = load i32, i32* %6, align 4
  %177 = mul nsw i32 %175, %176
  %178 = load i32, i32* %14, align 4
  %179 = sdiv i32 %177, %178
  %180 = call double @cos(i32 %179)
  store double %180, double* %20, align 8
  %181 = load double, double* %20, align 8
  %182 = call i64 @pow(double %181, i32 2)
  %183 = sitofp i64 %182 to double
  %184 = getelementptr inbounds [2 x double], [2 x double]* %17, i64 0, i64 0
  %185 = load double, double* %184, align 16
  %186 = fadd double %185, %183
  store double %186, double* %184, align 16
  %187 = load double, double* %20, align 8
  %188 = load %struct.GPU_FFT_COMPLEX*, %struct.GPU_FFT_COMPLEX** %18, align 8
  %189 = load i32, i32* %6, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds %struct.GPU_FFT_COMPLEX, %struct.GPU_FFT_COMPLEX* %188, i64 %190
  %192 = getelementptr inbounds %struct.GPU_FFT_COMPLEX, %struct.GPU_FFT_COMPLEX* %191, i32 0, i32 0
  %193 = load double, double* %192, align 8
  %194 = fsub double %187, %193
  %195 = call i64 @pow(double %194, i32 2)
  %196 = load %struct.GPU_FFT_COMPLEX*, %struct.GPU_FFT_COMPLEX** %18, align 8
  %197 = load i32, i32* %6, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds %struct.GPU_FFT_COMPLEX, %struct.GPU_FFT_COMPLEX* %196, i64 %198
  %200 = getelementptr inbounds %struct.GPU_FFT_COMPLEX, %struct.GPU_FFT_COMPLEX* %199, i32 0, i32 1
  %201 = load double, double* %200, align 8
  %202 = call i64 @pow(double %201, i32 2)
  %203 = add nsw i64 %195, %202
  %204 = sitofp i64 %203 to double
  %205 = getelementptr inbounds [2 x double], [2 x double]* %17, i64 0, i64 1
  %206 = load double, double* %205, align 8
  %207 = fadd double %206, %204
  store double %207, double* %205, align 8
  br label %208

208:                                              ; preds = %171
  %209 = load i32, i32* %6, align 4
  %210 = add nsw i32 %209, 1
  store i32 %210, i32* %6, align 4
  br label %167

211:                                              ; preds = %167
  br label %212

212:                                              ; preds = %211
  %213 = load i32, i32* %7, align 4
  %214 = add nsw i32 %213, 1
  store i32 %214, i32* %7, align 4
  br label %150

215:                                              ; preds = %150
  %216 = getelementptr inbounds [2 x double], [2 x double]* %17, i64 0, i64 1
  %217 = load double, double* %216, align 8
  %218 = getelementptr inbounds [2 x double], [2 x double]* %17, i64 0, i64 0
  %219 = load double, double* %218, align 16
  %220 = fdiv double %217, %219
  %221 = call double @sqrt(double %220) #3
  %222 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 0, i64 1
  %223 = load i32, i32* %222, align 4
  %224 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 0, i64 0
  %225 = load i32, i32* %224, align 4
  %226 = sub i32 %223, %225
  %227 = load i32, i32* %13, align 4
  %228 = udiv i32 %226, %227
  %229 = load i32, i32* %8, align 4
  %230 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0), double %221, i32 %228, i32 %229)
  br label %231

231:                                              ; preds = %215
  %232 = load i32, i32* %8, align 4
  %233 = add nsw i32 %232, 1
  store i32 %233, i32* %8, align 4
  br label %84

234:                                              ; preds = %84
  %235 = load %struct.GPU_FFT*, %struct.GPU_FFT** %19, align 8
  %236 = call i32 @gpu_fft_release(%struct.GPU_FFT* %235)
  store i32 0, i32* %3, align 4
  br label %237

237:                                              ; preds = %234, %81, %79, %77, %74, %72, %60
  %238 = load i32, i32* %3, align 4
  ret i32 %238
}

declare dso_local i32 @mbox_open(...) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @gpu_fft_prepare(i32, i32, i32, i32, %struct.GPU_FFT**) #1

declare dso_local i32 @usleep(i32) #1

declare dso_local i32 @Microseconds(...) #1

declare dso_local i32 @gpu_fft_execute(%struct.GPU_FFT*) #1

declare dso_local double @cos(i32) #1

declare dso_local i64 @pow(double, i32) #1

; Function Attrs: nounwind
declare dso_local double @sqrt(double) #2

declare dso_local i32 @gpu_fft_release(%struct.GPU_FFT*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
