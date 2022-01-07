; ModuleID = '/home/carl/AnghaBench/darknet/src/extr_image.c_rotate_crop_image.c'
source_filename = "/home/carl/AnghaBench/darknet/src/extr_image.c_rotate_crop_image.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i32 } @rotate_crop_image(i64 %0, i32 %1, float %2, float %3, i32 %4, i32 %5, float %6, float %7, float %8) #0 {
  %10 = alloca %struct.TYPE_7__, align 4
  %11 = alloca %struct.TYPE_7__, align 4
  %12 = alloca { i64, i32 }, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca float, align 4
  %18 = alloca float, align 4
  %19 = alloca float, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca float, align 4
  %24 = alloca float, align 4
  %25 = alloca { i64, i32 }, align 8
  %26 = alloca float, align 4
  %27 = alloca float, align 4
  %28 = alloca float, align 4
  %29 = alloca { i64, i32 }, align 4
  %30 = alloca { i64, i32 }, align 4
  %31 = alloca { i64, i32 }, align 8
  %32 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %12, i32 0, i32 0
  store i64 %0, i64* %32, align 4
  %33 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %12, i32 0, i32 1
  store i32 %1, i32* %33, align 4
  %34 = bitcast %struct.TYPE_7__* %11 to i8*
  %35 = bitcast { i64, i32 }* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %34, i8* align 4 %35, i64 12, i1 false)
  store float %2, float* %13, align 4
  store float %3, float* %14, align 4
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store float %6, float* %17, align 4
  store float %7, float* %18, align 4
  store float %8, float* %19, align 4
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = sitofp i32 %37 to double
  %39 = fdiv double %38, 2.000000e+00
  %40 = fptrunc double %39 to float
  store float %40, float* %23, align 4
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = sitofp i32 %42 to double
  %44 = fdiv double %43, 2.000000e+00
  %45 = fptrunc double %44 to float
  store float %45, float* %24, align 4
  %46 = load i32, i32* %15, align 4
  %47 = load i32, i32* %16, align 4
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = call { i64, i32 } @make_image(i32 %46, i32 %47, i32 %49)
  store { i64, i32 } %50, { i64, i32 }* %25, align 8
  %51 = bitcast { i64, i32 }* %25 to i8*
  %52 = bitcast %struct.TYPE_7__* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %52, i8* align 8 %51, i64 12, i1 false)
  store i32 0, i32* %22, align 4
  br label %53

53:                                               ; preds = %190, %9
  %54 = load i32, i32* %22, align 4
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = icmp slt i32 %54, %56
  br i1 %57, label %58, label %193

58:                                               ; preds = %53
  store i32 0, i32* %21, align 4
  br label %59

59:                                               ; preds = %186, %58
  %60 = load i32, i32* %21, align 4
  %61 = load i32, i32* %16, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %189

63:                                               ; preds = %59
  store i32 0, i32* %20, align 4
  br label %64

64:                                               ; preds = %182, %63
  %65 = load i32, i32* %20, align 4
  %66 = load i32, i32* %15, align 4
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %68, label %185

68:                                               ; preds = %64
  %69 = load float, float* %13, align 4
  %70 = call i32 @cos(float %69)
  %71 = sitofp i32 %70 to double
  %72 = load i32, i32* %20, align 4
  %73 = sitofp i32 %72 to double
  %74 = load i32, i32* %15, align 4
  %75 = sitofp i32 %74 to double
  %76 = fdiv double %75, 2.000000e+00
  %77 = fsub double %73, %76
  %78 = load float, float* %14, align 4
  %79 = fpext float %78 to double
  %80 = fdiv double %77, %79
  %81 = load float, float* %19, align 4
  %82 = fpext float %81 to double
  %83 = fmul double %80, %82
  %84 = load float, float* %17, align 4
  %85 = load float, float* %14, align 4
  %86 = fdiv float %84, %85
  %87 = load float, float* %19, align 4
  %88 = fmul float %86, %87
  %89 = fpext float %88 to double
  %90 = fadd double %83, %89
  %91 = fmul double %71, %90
  %92 = load float, float* %13, align 4
  %93 = call i32 @sin(float %92)
  %94 = sitofp i32 %93 to double
  %95 = load i32, i32* %21, align 4
  %96 = sitofp i32 %95 to double
  %97 = load i32, i32* %16, align 4
  %98 = sitofp i32 %97 to double
  %99 = fdiv double %98, 2.000000e+00
  %100 = fsub double %96, %99
  %101 = load float, float* %14, align 4
  %102 = fpext float %101 to double
  %103 = fdiv double %100, %102
  %104 = load float, float* %18, align 4
  %105 = load float, float* %14, align 4
  %106 = fdiv float %104, %105
  %107 = fpext float %106 to double
  %108 = fadd double %103, %107
  %109 = fmul double %94, %108
  %110 = fsub double %91, %109
  %111 = load float, float* %23, align 4
  %112 = fpext float %111 to double
  %113 = fadd double %110, %112
  %114 = fptrunc double %113 to float
  store float %114, float* %26, align 4
  %115 = load float, float* %13, align 4
  %116 = call i32 @sin(float %115)
  %117 = sitofp i32 %116 to double
  %118 = load i32, i32* %20, align 4
  %119 = sitofp i32 %118 to double
  %120 = load i32, i32* %15, align 4
  %121 = sitofp i32 %120 to double
  %122 = fdiv double %121, 2.000000e+00
  %123 = fsub double %119, %122
  %124 = load float, float* %14, align 4
  %125 = fpext float %124 to double
  %126 = fdiv double %123, %125
  %127 = load float, float* %19, align 4
  %128 = fpext float %127 to double
  %129 = fmul double %126, %128
  %130 = load float, float* %17, align 4
  %131 = load float, float* %14, align 4
  %132 = fdiv float %130, %131
  %133 = load float, float* %19, align 4
  %134 = fmul float %132, %133
  %135 = fpext float %134 to double
  %136 = fadd double %129, %135
  %137 = fmul double %117, %136
  %138 = load float, float* %13, align 4
  %139 = call i32 @cos(float %138)
  %140 = sitofp i32 %139 to double
  %141 = load i32, i32* %21, align 4
  %142 = sitofp i32 %141 to double
  %143 = load i32, i32* %16, align 4
  %144 = sitofp i32 %143 to double
  %145 = fdiv double %144, 2.000000e+00
  %146 = fsub double %142, %145
  %147 = load float, float* %14, align 4
  %148 = fpext float %147 to double
  %149 = fdiv double %146, %148
  %150 = load float, float* %18, align 4
  %151 = load float, float* %14, align 4
  %152 = fdiv float %150, %151
  %153 = fpext float %152 to double
  %154 = fadd double %149, %153
  %155 = fmul double %140, %154
  %156 = fadd double %137, %155
  %157 = load float, float* %24, align 4
  %158 = fpext float %157 to double
  %159 = fadd double %156, %158
  %160 = fptrunc double %159 to float
  store float %160, float* %27, align 4
  %161 = load float, float* %26, align 4
  %162 = load float, float* %27, align 4
  %163 = load i32, i32* %22, align 4
  %164 = bitcast { i64, i32 }* %29 to i8*
  %165 = bitcast %struct.TYPE_7__* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %164, i8* align 4 %165, i64 12, i1 false)
  %166 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %29, i32 0, i32 0
  %167 = load i64, i64* %166, align 4
  %168 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %29, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = call float @bilinear_interpolate(i64 %167, i32 %169, float %161, float %162, i32 %163)
  store float %170, float* %28, align 4
  %171 = load i32, i32* %20, align 4
  %172 = load i32, i32* %21, align 4
  %173 = load i32, i32* %22, align 4
  %174 = load float, float* %28, align 4
  %175 = bitcast { i64, i32 }* %30 to i8*
  %176 = bitcast %struct.TYPE_7__* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %175, i8* align 4 %176, i64 12, i1 false)
  %177 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %30, i32 0, i32 0
  %178 = load i64, i64* %177, align 4
  %179 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %30, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = call i32 @set_pixel(i64 %178, i32 %180, i32 %171, i32 %172, i32 %173, float %174)
  br label %182

182:                                              ; preds = %68
  %183 = load i32, i32* %20, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %20, align 4
  br label %64

185:                                              ; preds = %64
  br label %186

186:                                              ; preds = %185
  %187 = load i32, i32* %21, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %21, align 4
  br label %59

189:                                              ; preds = %59
  br label %190

190:                                              ; preds = %189
  %191 = load i32, i32* %22, align 4
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %22, align 4
  br label %53

193:                                              ; preds = %53
  %194 = bitcast { i64, i32 }* %31 to i8*
  %195 = bitcast %struct.TYPE_7__* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %194, i8* align 4 %195, i64 12, i1 false)
  %196 = load { i64, i32 }, { i64, i32 }* %31, align 8
  ret { i64, i32 } %196
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local { i64, i32 } @make_image(i32, i32, i32) #2

declare dso_local i32 @cos(float) #2

declare dso_local i32 @sin(float) #2

declare dso_local float @bilinear_interpolate(i64, i32, float, float, i32) #2

declare dso_local i32 @set_pixel(i64, i32, i32, i32, i32, float) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
