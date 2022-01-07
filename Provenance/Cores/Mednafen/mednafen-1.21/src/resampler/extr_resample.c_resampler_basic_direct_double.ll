; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mednafen/mednafen-1.21/src/resampler/extr_resample.c_resampler_basic_direct_double.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mednafen/mednafen-1.21/src/resampler/extr_resample.c_resampler_basic_direct_double.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32*, i64*, double*, i32, i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i64, double*, i64*, double*, i64*)* @resampler_basic_direct_double to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @resampler_basic_direct_double(%struct.TYPE_3__* %0, i64 %1, double* %2, i64* %3, double* %4, i64* %5) #0 {
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca double*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca double*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca double*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  %22 = alloca double, align 8
  %23 = alloca i32, align 4
  %24 = alloca double*, align 8
  %25 = alloca double*, align 8
  %26 = alloca [4 x double], align 16
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %7, align 8
  store i64 %1, i64* %8, align 8
  store double* %2, double** %9, align 8
  store i64* %3, i64** %10, align 8
  store double* %4, double** %11, align 8
  store i64* %5, i64** %12, align 8
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = load i64, i64* %8, align 8
  %34 = getelementptr inbounds i32, i32* %32, i64 %33
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %15, align 4
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 2
  %38 = load i64*, i64** %37, align 8
  %39 = load i64, i64* %8, align 8
  %40 = getelementptr inbounds i64, i64* %38, i64 %39
  %41 = load i64, i64* %40, align 8
  store i64 %41, i64* %16, align 8
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 3
  %44 = load double*, double** %43, align 8
  store double* %44, double** %17, align 8
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 8
  store i32 %47, i32* %18, align 4
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 5
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %19, align 4
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 6
  %53 = load i32, i32* %52, align 8
  store i32 %53, i32* %20, align 4
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 7
  %56 = load i64, i64* %55, align 8
  store i64 %56, i64* %21, align 8
  br label %57

57:                                               ; preds = %191, %6
  %58 = load i32, i32* %15, align 4
  %59 = load i64*, i64** %10, align 8
  %60 = load i64, i64* %59, align 8
  %61 = trunc i64 %60 to i32
  %62 = icmp sge i32 %58, %61
  br i1 %62, label %69, label %63

63:                                               ; preds = %57
  %64 = load i32, i32* %14, align 4
  %65 = load i64*, i64** %12, align 8
  %66 = load i64, i64* %65, align 8
  %67 = trunc i64 %66 to i32
  %68 = icmp sge i32 %64, %67
  br label %69

69:                                               ; preds = %63, %57
  %70 = phi i1 [ true, %57 ], [ %68, %63 ]
  %71 = xor i1 %70, true
  br i1 %71, label %72, label %192

72:                                               ; preds = %69
  %73 = load double*, double** %17, align 8
  %74 = load i64, i64* %16, align 8
  %75 = load i32, i32* %13, align 4
  %76 = sext i32 %75 to i64
  %77 = mul i64 %74, %76
  %78 = getelementptr inbounds double, double* %73, i64 %77
  store double* %78, double** %24, align 8
  %79 = load double*, double** %9, align 8
  %80 = load i32, i32* %15, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds double, double* %79, i64 %81
  store double* %82, double** %25, align 8
  %83 = bitcast [4 x double]* %26 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %83, i8 0, i64 32, i1 false)
  store i32 0, i32* %23, align 4
  br label %84

84:                                               ; preds = %151, %72
  %85 = load i32, i32* %23, align 4
  %86 = load i32, i32* %13, align 4
  %87 = icmp slt i32 %85, %86
  br i1 %87, label %88, label %154

88:                                               ; preds = %84
  %89 = load double*, double** %24, align 8
  %90 = load i32, i32* %23, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds double, double* %89, i64 %91
  %93 = load double, double* %92, align 8
  %94 = load double*, double** %25, align 8
  %95 = load i32, i32* %23, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds double, double* %94, i64 %96
  %98 = load double, double* %97, align 8
  %99 = fmul double %93, %98
  %100 = getelementptr inbounds [4 x double], [4 x double]* %26, i64 0, i64 0
  %101 = load double, double* %100, align 16
  %102 = fadd double %101, %99
  store double %102, double* %100, align 16
  %103 = load double*, double** %24, align 8
  %104 = load i32, i32* %23, align 4
  %105 = add nsw i32 %104, 1
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds double, double* %103, i64 %106
  %108 = load double, double* %107, align 8
  %109 = load double*, double** %25, align 8
  %110 = load i32, i32* %23, align 4
  %111 = add nsw i32 %110, 1
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds double, double* %109, i64 %112
  %114 = load double, double* %113, align 8
  %115 = fmul double %108, %114
  %116 = getelementptr inbounds [4 x double], [4 x double]* %26, i64 0, i64 1
  %117 = load double, double* %116, align 8
  %118 = fadd double %117, %115
  store double %118, double* %116, align 8
  %119 = load double*, double** %24, align 8
  %120 = load i32, i32* %23, align 4
  %121 = add nsw i32 %120, 2
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds double, double* %119, i64 %122
  %124 = load double, double* %123, align 8
  %125 = load double*, double** %25, align 8
  %126 = load i32, i32* %23, align 4
  %127 = add nsw i32 %126, 2
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds double, double* %125, i64 %128
  %130 = load double, double* %129, align 8
  %131 = fmul double %124, %130
  %132 = getelementptr inbounds [4 x double], [4 x double]* %26, i64 0, i64 2
  %133 = load double, double* %132, align 16
  %134 = fadd double %133, %131
  store double %134, double* %132, align 16
  %135 = load double*, double** %24, align 8
  %136 = load i32, i32* %23, align 4
  %137 = add nsw i32 %136, 3
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds double, double* %135, i64 %138
  %140 = load double, double* %139, align 8
  %141 = load double*, double** %25, align 8
  %142 = load i32, i32* %23, align 4
  %143 = add nsw i32 %142, 3
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds double, double* %141, i64 %144
  %146 = load double, double* %145, align 8
  %147 = fmul double %140, %146
  %148 = getelementptr inbounds [4 x double], [4 x double]* %26, i64 0, i64 3
  %149 = load double, double* %148, align 8
  %150 = fadd double %149, %147
  store double %150, double* %148, align 8
  br label %151

151:                                              ; preds = %88
  %152 = load i32, i32* %23, align 4
  %153 = add nsw i32 %152, 4
  store i32 %153, i32* %23, align 4
  br label %84

154:                                              ; preds = %84
  %155 = getelementptr inbounds [4 x double], [4 x double]* %26, i64 0, i64 0
  %156 = load double, double* %155, align 16
  %157 = getelementptr inbounds [4 x double], [4 x double]* %26, i64 0, i64 1
  %158 = load double, double* %157, align 8
  %159 = fadd double %156, %158
  %160 = getelementptr inbounds [4 x double], [4 x double]* %26, i64 0, i64 2
  %161 = load double, double* %160, align 16
  %162 = fadd double %159, %161
  %163 = getelementptr inbounds [4 x double], [4 x double]* %26, i64 0, i64 3
  %164 = load double, double* %163, align 8
  %165 = fadd double %162, %164
  store double %165, double* %22, align 8
  %166 = load double, double* %22, align 8
  %167 = call double @PSHR32(double %166, i32 15)
  %168 = load double*, double** %11, align 8
  %169 = load i32, i32* %18, align 4
  %170 = load i32, i32* %14, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %14, align 4
  %172 = mul nsw i32 %169, %170
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds double, double* %168, i64 %173
  store double %167, double* %174, align 8
  %175 = load i32, i32* %19, align 4
  %176 = load i32, i32* %15, align 4
  %177 = add nsw i32 %176, %175
  store i32 %177, i32* %15, align 4
  %178 = load i32, i32* %20, align 4
  %179 = sext i32 %178 to i64
  %180 = load i64, i64* %16, align 8
  %181 = add i64 %180, %179
  store i64 %181, i64* %16, align 8
  %182 = load i64, i64* %16, align 8
  %183 = load i64, i64* %21, align 8
  %184 = icmp uge i64 %182, %183
  br i1 %184, label %185, label %191

185:                                              ; preds = %154
  %186 = load i64, i64* %21, align 8
  %187 = load i64, i64* %16, align 8
  %188 = sub i64 %187, %186
  store i64 %188, i64* %16, align 8
  %189 = load i32, i32* %15, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %15, align 4
  br label %191

191:                                              ; preds = %185, %154
  br label %57

192:                                              ; preds = %69
  %193 = load i32, i32* %15, align 4
  %194 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %195 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %194, i32 0, i32 1
  %196 = load i32*, i32** %195, align 8
  %197 = load i64, i64* %8, align 8
  %198 = getelementptr inbounds i32, i32* %196, i64 %197
  store i32 %193, i32* %198, align 4
  %199 = load i64, i64* %16, align 8
  %200 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %201 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %200, i32 0, i32 2
  %202 = load i64*, i64** %201, align 8
  %203 = load i64, i64* %8, align 8
  %204 = getelementptr inbounds i64, i64* %202, i64 %203
  store i64 %199, i64* %204, align 8
  %205 = load i32, i32* %14, align 4
  ret i32 %205
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local double @PSHR32(double, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
