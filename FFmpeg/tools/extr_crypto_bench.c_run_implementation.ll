; ModuleID = '/home/carl/AnghaBench/FFmpeg/tools/extr_crypto_bench.c_run_implementation.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/tools/extr_crypto_bench.c_run_implementation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hash_impl = type { i8*, i8*, i32 (i32*, i32*, i32)*, i64 }

@specified_runs = common dso_local global i32 0, align 4
@MAX_OUTPUT_SIZE = common dso_local global i32 0, align 4
@enabled_libs = common dso_local global i64 0, align 8
@enabled_algos = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"crc:%x\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"Expected: \00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"%08x\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"output mismatch\00", align 1
@.str.6 = private unnamed_addr constant [55 x i8] c"%-10s %-12s size: %7d  runs: %6d  time: %8.3f +- %.3f\0A\00", align 1
@stdout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, %struct.hash_impl*, i32)* @run_implementation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @run_implementation(i32* %0, i32* %1, %struct.hash_impl* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.hash_impl*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  %20 = alloca double, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.hash_impl* %2, %struct.hash_impl** %7, align 8
  store i32 %3, i32* %8, align 4
  %24 = load i32, i32* @specified_runs, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %4
  %27 = load i32, i32* @specified_runs, align 4
  br label %31

28:                                               ; preds = %4
  %29 = load i32, i32* %8, align 4
  %30 = udiv i32 1073741824, %29
  br label %31

31:                                               ; preds = %28, %26
  %32 = phi i32 [ %27, %26 ], [ %30, %28 ]
  store i32 %32, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store double 0.000000e+00, double* %18, align 8
  store double 0.000000e+00, double* %19, align 8
  %33 = load i32, i32* @MAX_OUTPUT_SIZE, align 4
  %34 = zext i32 %33 to i64
  %35 = call i8* @llvm.stacksave()
  store i8* %35, i8** %21, align 8
  %36 = alloca i32, i64 %34, align 16
  store i64 %34, i64* %22, align 8
  %37 = load i64, i64* @enabled_libs, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %31
  %40 = load i64, i64* @enabled_libs, align 8
  %41 = load %struct.hash_impl*, %struct.hash_impl** %7, align 8
  %42 = getelementptr inbounds %struct.hash_impl, %struct.hash_impl* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  %44 = call i32 @av_stristr(i64 %40, i8* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %56

46:                                               ; preds = %39, %31
  %47 = load i64, i64* @enabled_algos, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %57

49:                                               ; preds = %46
  %50 = load i64, i64* @enabled_algos, align 8
  %51 = load %struct.hash_impl*, %struct.hash_impl** %7, align 8
  %52 = getelementptr inbounds %struct.hash_impl, %struct.hash_impl* %51, i32 0, i32 1
  %53 = load i8*, i8** %52, align 8
  %54 = call i32 @av_stristr(i64 %50, i8* %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %49, %39
  store i32 1, i32* %23, align 4
  br label %215

57:                                               ; preds = %49, %46
  %58 = load %struct.hash_impl*, %struct.hash_impl** %7, align 8
  %59 = getelementptr inbounds %struct.hash_impl, %struct.hash_impl* %58, i32 0, i32 3
  %60 = load i64, i64* %59, align 8
  %61 = call i32 @sscanf(i64 %60, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32* %13)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %90, label %63

63:                                               ; preds = %57
  %64 = load %struct.hash_impl*, %struct.hash_impl** %7, align 8
  %65 = getelementptr inbounds %struct.hash_impl, %struct.hash_impl* %64, i32 0, i32 3
  %66 = load i64, i64* %65, align 8
  %67 = call i32 @strlen(i64 %66)
  %68 = sdiv i32 %67, 2
  store i32 %68, i32* %12, align 4
  store i32 0, i32* %14, align 4
  br label %69

69:                                               ; preds = %86, %63
  %70 = load i32, i32* %14, align 4
  %71 = load i32, i32* %12, align 4
  %72 = icmp ult i32 %70, %71
  br i1 %72, label %73, label %89

73:                                               ; preds = %69
  %74 = load %struct.hash_impl*, %struct.hash_impl** %7, align 8
  %75 = getelementptr inbounds %struct.hash_impl, %struct.hash_impl* %74, i32 0, i32 3
  %76 = load i64, i64* %75, align 8
  %77 = load i32, i32* %14, align 4
  %78 = mul i32 %77, 2
  %79 = zext i32 %78 to i64
  %80 = add nsw i64 %76, %79
  %81 = call i32 @sscanf(i64 %80, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32* %16)
  %82 = load i32, i32* %16, align 4
  %83 = load i32, i32* %14, align 4
  %84 = zext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %36, i64 %84
  store i32 %82, i32* %85, align 4
  br label %86

86:                                               ; preds = %73
  %87 = load i32, i32* %14, align 4
  %88 = add i32 %87, 1
  store i32 %88, i32* %14, align 4
  br label %69

89:                                               ; preds = %69
  br label %90

90:                                               ; preds = %89, %57
  store i32 0, i32* %14, align 4
  br label %91

91:                                               ; preds = %102, %90
  %92 = load i32, i32* %14, align 4
  %93 = icmp ult i32 %92, 8
  br i1 %93, label %94, label %105

94:                                               ; preds = %91
  %95 = load %struct.hash_impl*, %struct.hash_impl** %7, align 8
  %96 = getelementptr inbounds %struct.hash_impl, %struct.hash_impl* %95, i32 0, i32 2
  %97 = load i32 (i32*, i32*, i32)*, i32 (i32*, i32*, i32)** %96, align 8
  %98 = load i32*, i32** %6, align 8
  %99 = load i32*, i32** %5, align 8
  %100 = load i32, i32* %8, align 4
  %101 = call i32 %97(i32* %98, i32* %99, i32 %100)
  br label %102

102:                                              ; preds = %94
  %103 = load i32, i32* %14, align 4
  %104 = add i32 %103, 1
  store i32 %104, i32* %14, align 4
  br label %91

105:                                              ; preds = %91
  store i32 0, i32* %14, align 4
  br label %106

106:                                              ; preds = %184, %105
  %107 = load i32, i32* %14, align 4
  %108 = load i32, i32* %11, align 4
  %109 = icmp ult i32 %107, %108
  br i1 %109, label %110, label %187

110:                                              ; preds = %106
  %111 = load i32*, i32** %6, align 8
  %112 = load i32, i32* %8, align 4
  %113 = call i32 @memset(i32* %111, i32 0, i32 %112)
  %114 = call i64 (...) @AV_READ_TIME()
  store i64 %114, i64* %9, align 8
  %115 = load %struct.hash_impl*, %struct.hash_impl** %7, align 8
  %116 = getelementptr inbounds %struct.hash_impl, %struct.hash_impl* %115, i32 0, i32 2
  %117 = load i32 (i32*, i32*, i32)*, i32 (i32*, i32*, i32)** %116, align 8
  %118 = load i32*, i32** %6, align 8
  %119 = load i32*, i32** %5, align 8
  %120 = load i32, i32* %8, align 4
  %121 = call i32 %117(i32* %118, i32* %119, i32 %120)
  %122 = call i64 (...) @AV_READ_TIME()
  store i64 %122, i64* %10, align 8
  %123 = load i32, i32* %12, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %130

125:                                              ; preds = %110
  %126 = load i32*, i32** %6, align 8
  %127 = load i32, i32* %12, align 4
  %128 = call i32 @memcmp(i32* %126, i32* %36, i32 %127)
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %136, label %168

130:                                              ; preds = %110
  %131 = load i32*, i32** %6, align 8
  %132 = load i32, i32* %8, align 4
  %133 = call i32 @crc32(i32* %131, i32 %132)
  %134 = load i32, i32* %13, align 4
  %135 = icmp ne i32 %133, %134
  br i1 %135, label %136, label %168

136:                                              ; preds = %130, %125
  %137 = load i32, i32* @stderr, align 4
  %138 = call i32 (i32, i8*, ...) @fprintf(i32 %137, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %139 = load i32, i32* %12, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %158

141:                                              ; preds = %136
  store i32 0, i32* %15, align 4
  br label %142

142:                                              ; preds = %154, %141
  %143 = load i32, i32* %15, align 4
  %144 = load i32, i32* %12, align 4
  %145 = icmp ult i32 %143, %144
  br i1 %145, label %146, label %157

146:                                              ; preds = %142
  %147 = load i32, i32* @stderr, align 4
  %148 = load i32*, i32** %6, align 8
  %149 = load i32, i32* %15, align 4
  %150 = zext i32 %149 to i64
  %151 = getelementptr inbounds i32, i32* %148, i64 %150
  %152 = load i32, i32* %151, align 4
  %153 = call i32 (i32, i8*, ...) @fprintf(i32 %147, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %152)
  br label %154

154:                                              ; preds = %146
  %155 = load i32, i32* %15, align 4
  %156 = add i32 %155, 1
  store i32 %156, i32* %15, align 4
  br label %142

157:                                              ; preds = %142
  br label %164

158:                                              ; preds = %136
  %159 = load i32, i32* @stderr, align 4
  %160 = load i32*, i32** %6, align 8
  %161 = load i32, i32* %8, align 4
  %162 = call i32 @crc32(i32* %160, i32 %161)
  %163 = call i32 (i32, i8*, ...) @fprintf(i32 %159, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %162)
  br label %164

164:                                              ; preds = %158, %157
  %165 = load i32, i32* @stderr, align 4
  %166 = call i32 (i32, i8*, ...) @fprintf(i32 %165, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %167 = call i32 @fatal_error(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0))
  br label %168

168:                                              ; preds = %164, %130, %125
  %169 = load i64, i64* %10, align 8
  %170 = load i64, i64* %9, align 8
  %171 = sub nsw i64 %169, %170
  %172 = sitofp i64 %171 to double
  %173 = load i32, i32* %8, align 4
  %174 = uitofp i32 %173 to double
  %175 = fdiv double %172, %174
  store double %175, double* %17, align 8
  %176 = load double, double* %17, align 8
  %177 = load double, double* %18, align 8
  %178 = fadd double %177, %176
  store double %178, double* %18, align 8
  %179 = load double, double* %17, align 8
  %180 = load double, double* %17, align 8
  %181 = fmul double %179, %180
  %182 = load double, double* %19, align 8
  %183 = fadd double %182, %181
  store double %183, double* %19, align 8
  br label %184

184:                                              ; preds = %168
  %185 = load i32, i32* %14, align 4
  %186 = add i32 %185, 1
  store i32 %186, i32* %14, align 4
  br label %106

187:                                              ; preds = %106
  %188 = load i32, i32* %11, align 4
  %189 = uitofp i32 %188 to double
  %190 = load double, double* %18, align 8
  %191 = fdiv double %190, %189
  store double %191, double* %18, align 8
  %192 = load i32, i32* %11, align 4
  %193 = uitofp i32 %192 to double
  %194 = load double, double* %19, align 8
  %195 = fdiv double %194, %193
  store double %195, double* %19, align 8
  %196 = load double, double* %19, align 8
  %197 = load double, double* %18, align 8
  %198 = load double, double* %18, align 8
  %199 = fmul double %197, %198
  %200 = fsub double %196, %199
  %201 = call double @sqrt(double %200) #1
  store double %201, double* %20, align 8
  %202 = load %struct.hash_impl*, %struct.hash_impl** %7, align 8
  %203 = getelementptr inbounds %struct.hash_impl, %struct.hash_impl* %202, i32 0, i32 0
  %204 = load i8*, i8** %203, align 8
  %205 = load %struct.hash_impl*, %struct.hash_impl** %7, align 8
  %206 = getelementptr inbounds %struct.hash_impl, %struct.hash_impl* %205, i32 0, i32 1
  %207 = load i8*, i8** %206, align 8
  %208 = load i32, i32* %8, align 4
  %209 = load i32, i32* %11, align 4
  %210 = load double, double* %18, align 8
  %211 = load double, double* %20, align 8
  %212 = call i32 @printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.6, i64 0, i64 0), i8* %204, i8* %207, i32 %208, i32 %209, double %210, double %211)
  %213 = load i32, i32* @stdout, align 4
  %214 = call i32 @fflush(i32 %213)
  store i32 0, i32* %23, align 4
  br label %215

215:                                              ; preds = %187, %56
  %216 = load i8*, i8** %21, align 8
  call void @llvm.stackrestore(i8* %216)
  %217 = load i32, i32* %23, align 4
  switch i32 %217, label %219 [
    i32 0, label %218
    i32 1, label %218
  ]

218:                                              ; preds = %215, %215
  ret void

219:                                              ; preds = %215
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @av_stristr(i64, i8*) #2

declare dso_local i32 @sscanf(i64, i8*, i32*) #2

declare dso_local i32 @strlen(i64) #2

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i64 @AV_READ_TIME(...) #2

declare dso_local i32 @memcmp(i32*, i32*, i32) #2

declare dso_local i32 @crc32(i32*, i32) #2

declare dso_local i32 @fprintf(i32, i8*, ...) #2

declare dso_local i32 @fatal_error(i8*) #2

; Function Attrs: nounwind
declare dso_local double @sqrt(double) #3

declare dso_local i32 @printf(i8*, i8*, i8*, i32, i32, double, double) #2

declare dso_local i32 @fflush(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
