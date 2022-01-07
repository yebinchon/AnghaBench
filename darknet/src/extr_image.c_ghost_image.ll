; ModuleID = '/home/carl/AnghaBench/darknet/src/extr_image.c_ghost_image.c'
source_filename = "/home/carl/AnghaBench/darknet/src/extr_image.c_ghost_image.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ghost_image(i64 %0, i32 %1, i64 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.TYPE_6__, align 4
  %8 = alloca { i64, i32 }, align 4
  %9 = alloca %struct.TYPE_6__, align 4
  %10 = alloca { i64, i32 }, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  %18 = alloca float, align 4
  %19 = alloca float, align 4
  %20 = alloca { i64, i32 }, align 4
  %21 = alloca float, align 4
  %22 = alloca { i64, i32 }, align 4
  %23 = alloca float, align 4
  %24 = alloca { i64, i32 }, align 4
  %25 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %8, i32 0, i32 0
  store i64 %0, i64* %25, align 4
  %26 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %8, i32 0, i32 1
  store i32 %1, i32* %26, align 4
  %27 = bitcast %struct.TYPE_6__* %7 to i8*
  %28 = bitcast { i64, i32 }* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %27, i8* align 4 %28, i64 12, i1 false)
  %29 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %10, i32 0, i32 0
  store i64 %2, i64* %29, align 4
  %30 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %10, i32 0, i32 1
  store i32 %3, i32* %30, align 4
  %31 = bitcast %struct.TYPE_6__* %9 to i8*
  %32 = bitcast { i64, i32 }* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %31, i8* align 4 %32, i64 12, i1 false)
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = sub nsw i32 0, %34
  %36 = sitofp i32 %35 to double
  %37 = fdiv double %36, 2.000000e+00
  %38 = fadd double %37, 5.000000e-01
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = sub nsw i32 0, %40
  %42 = sitofp i32 %41 to double
  %43 = fdiv double %42, 2.000000e+00
  %44 = fadd double %43, 5.000000e-01
  %45 = fmul double %38, %44
  %46 = fptosi double %45 to i32
  %47 = call float @sqrt(i32 %46)
  store float %47, float* %16, align 4
  store i32 0, i32* %15, align 4
  br label %48

48:                                               ; preds = %166, %6
  %49 = load i32, i32* %15, align 4
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = icmp slt i32 %49, %51
  br i1 %52, label %53, label %169

53:                                               ; preds = %48
  store i32 0, i32* %14, align 4
  br label %54

54:                                               ; preds = %162, %53
  %55 = load i32, i32* %14, align 4
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = icmp slt i32 %55, %57
  br i1 %58, label %59, label %165

59:                                               ; preds = %54
  store i32 0, i32* %13, align 4
  br label %60

60:                                               ; preds = %158, %59
  %61 = load i32, i32* %13, align 4
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = icmp slt i32 %61, %63
  br i1 %64, label %65, label %161

65:                                               ; preds = %60
  %66 = load i32, i32* %13, align 4
  %67 = sitofp i32 %66 to double
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = sitofp i32 %69 to double
  %71 = fdiv double %70, 2.000000e+00
  %72 = fsub double %67, %71
  %73 = fadd double %72, 5.000000e-01
  %74 = load i32, i32* %13, align 4
  %75 = sitofp i32 %74 to double
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = sitofp i32 %77 to double
  %79 = fdiv double %78, 2.000000e+00
  %80 = fsub double %75, %79
  %81 = fadd double %80, 5.000000e-01
  %82 = fmul double %73, %81
  %83 = load i32, i32* %14, align 4
  %84 = sitofp i32 %83 to double
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = sitofp i32 %86 to double
  %88 = fdiv double %87, 2.000000e+00
  %89 = fsub double %84, %88
  %90 = fadd double %89, 5.000000e-01
  %91 = load i32, i32* %14, align 4
  %92 = sitofp i32 %91 to double
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = sitofp i32 %94 to double
  %96 = fdiv double %95, 2.000000e+00
  %97 = fsub double %92, %96
  %98 = fadd double %97, 5.000000e-01
  %99 = fmul double %90, %98
  %100 = fadd double %82, %99
  %101 = fptosi double %100 to i32
  %102 = call float @sqrt(i32 %101)
  store float %102, float* %17, align 4
  %103 = load float, float* %17, align 4
  %104 = load float, float* %16, align 4
  %105 = fdiv float %103, %104
  %106 = fsub float 1.000000e+00, %105
  store float %106, float* %18, align 4
  %107 = load float, float* %18, align 4
  %108 = fcmp olt float %107, 0.000000e+00
  br i1 %108, label %109, label %110

109:                                              ; preds = %65
  store float 0.000000e+00, float* %18, align 4
  br label %110

110:                                              ; preds = %109, %65
  %111 = load i32, i32* %13, align 4
  %112 = load i32, i32* %14, align 4
  %113 = load i32, i32* %15, align 4
  %114 = bitcast { i64, i32 }* %20 to i8*
  %115 = bitcast %struct.TYPE_6__* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %114, i8* align 4 %115, i64 12, i1 false)
  %116 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %20, i32 0, i32 0
  %117 = load i64, i64* %116, align 4
  %118 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %20, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = call float @get_pixel(i64 %117, i32 %119, i32 %111, i32 %112, i32 %113)
  store float %120, float* %19, align 4
  %121 = load i32, i32* %11, align 4
  %122 = load i32, i32* %13, align 4
  %123 = add nsw i32 %121, %122
  %124 = load i32, i32* %12, align 4
  %125 = load i32, i32* %14, align 4
  %126 = add nsw i32 %124, %125
  %127 = load i32, i32* %15, align 4
  %128 = bitcast { i64, i32 }* %22 to i8*
  %129 = bitcast %struct.TYPE_6__* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %128, i8* align 4 %129, i64 12, i1 false)
  %130 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %22, i32 0, i32 0
  %131 = load i64, i64* %130, align 4
  %132 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %22, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = call float @get_pixel(i64 %131, i32 %133, i32 %123, i32 %126, i32 %127)
  store float %134, float* %21, align 4
  %135 = load float, float* %18, align 4
  %136 = load float, float* %19, align 4
  %137 = fmul float %135, %136
  %138 = load float, float* %18, align 4
  %139 = fsub float 1.000000e+00, %138
  %140 = load float, float* %21, align 4
  %141 = fmul float %139, %140
  %142 = fadd float %137, %141
  store float %142, float* %23, align 4
  %143 = load i32, i32* %11, align 4
  %144 = load i32, i32* %13, align 4
  %145 = add nsw i32 %143, %144
  %146 = load i32, i32* %12, align 4
  %147 = load i32, i32* %14, align 4
  %148 = add nsw i32 %146, %147
  %149 = load i32, i32* %15, align 4
  %150 = load float, float* %23, align 4
  %151 = bitcast { i64, i32 }* %24 to i8*
  %152 = bitcast %struct.TYPE_6__* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %151, i8* align 4 %152, i64 12, i1 false)
  %153 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %24, i32 0, i32 0
  %154 = load i64, i64* %153, align 4
  %155 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %24, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = call i32 @set_pixel(i64 %154, i32 %156, i32 %145, i32 %148, i32 %149, float %150)
  br label %158

158:                                              ; preds = %110
  %159 = load i32, i32* %13, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %13, align 4
  br label %60

161:                                              ; preds = %60
  br label %162

162:                                              ; preds = %161
  %163 = load i32, i32* %14, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %14, align 4
  br label %54

165:                                              ; preds = %54
  br label %166

166:                                              ; preds = %165
  %167 = load i32, i32* %15, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %15, align 4
  br label %48

169:                                              ; preds = %48
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local float @sqrt(i32) #2

declare dso_local float @get_pixel(i64, i32, i32, i32, i32) #2

declare dso_local i32 @set_pixel(i64, i32, i32, i32, i32, float) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
