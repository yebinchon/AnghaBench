; ModuleID = '/home/carl/AnghaBench/darknet/src/extr_image.c_hsv_to_rgb.c'
source_filename = "/home/carl/AnghaBench/darknet/src/extr_image.c_hsv_to_rgb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hsv_to_rgb(i64 %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_5__, align 4
  %4 = alloca { i64, i32 }, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  %17 = alloca { i64, i32 }, align 4
  %18 = alloca { i64, i32 }, align 4
  %19 = alloca { i64, i32 }, align 4
  %20 = alloca i32, align 4
  %21 = alloca { i64, i32 }, align 4
  %22 = alloca { i64, i32 }, align 4
  %23 = alloca { i64, i32 }, align 4
  %24 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %4, i32 0, i32 0
  store i64 %0, i64* %24, align 4
  %25 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %4, i32 0, i32 1
  store i32 %1, i32* %25, align 4
  %26 = bitcast %struct.TYPE_5__* %3 to i8*
  %27 = bitcast { i64, i32 }* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %26, i8* align 4 %27, i64 12, i1 false)
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp eq i32 %29, 3
  %31 = zext i1 %30 to i32
  %32 = call i32 @assert(i32 %31)
  store i32 0, i32* %6, align 4
  br label %33

33:                                               ; preds = %182, %2
  %34 = load i32, i32* %6, align 4
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = icmp slt i32 %34, %36
  br i1 %37, label %38, label %185

38:                                               ; preds = %33
  store i32 0, i32* %5, align 4
  br label %39

39:                                               ; preds = %178, %38
  %40 = load i32, i32* %5, align 4
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = icmp slt i32 %40, %42
  br i1 %43, label %44, label %181

44:                                               ; preds = %39
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* %6, align 4
  %47 = bitcast { i64, i32 }* %17 to i8*
  %48 = bitcast %struct.TYPE_5__* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %47, i8* align 4 %48, i64 12, i1 false)
  %49 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %17, i32 0, i32 0
  %50 = load i64, i64* %49, align 4
  %51 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %17, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @get_pixel(i64 %50, i32 %52, i32 %45, i32 %46, i32 0)
  %54 = mul nsw i32 6, %53
  %55 = sitofp i32 %54 to float
  store float %55, float* %10, align 4
  %56 = load i32, i32* %5, align 4
  %57 = load i32, i32* %6, align 4
  %58 = bitcast { i64, i32 }* %18 to i8*
  %59 = bitcast %struct.TYPE_5__* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %58, i8* align 4 %59, i64 12, i1 false)
  %60 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %18, i32 0, i32 0
  %61 = load i64, i64* %60, align 4
  %62 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %18, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @get_pixel(i64 %61, i32 %63, i32 %56, i32 %57, i32 1)
  %65 = sitofp i32 %64 to float
  store float %65, float* %11, align 4
  %66 = load i32, i32* %5, align 4
  %67 = load i32, i32* %6, align 4
  %68 = bitcast { i64, i32 }* %19 to i8*
  %69 = bitcast %struct.TYPE_5__* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %68, i8* align 4 %69, i64 12, i1 false)
  %70 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %19, i32 0, i32 0
  %71 = load i64, i64* %70, align 4
  %72 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %19, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @get_pixel(i64 %71, i32 %73, i32 %66, i32 %67, i32 2)
  %75 = sitofp i32 %74 to float
  store float %75, float* %12, align 4
  %76 = load float, float* %11, align 4
  %77 = fcmp oeq float %76, 0.000000e+00
  br i1 %77, label %78, label %80

78:                                               ; preds = %44
  %79 = load float, float* %12, align 4
  store float %79, float* %9, align 4
  store float %79, float* %8, align 4
  store float %79, float* %7, align 4
  br label %147

80:                                               ; preds = %44
  %81 = load float, float* %10, align 4
  %82 = call i32 @floor(float %81)
  store i32 %82, i32* %20, align 4
  %83 = load float, float* %10, align 4
  %84 = load i32, i32* %20, align 4
  %85 = sitofp i32 %84 to float
  %86 = fsub float %83, %85
  store float %86, float* %13, align 4
  %87 = load float, float* %12, align 4
  %88 = load float, float* %11, align 4
  %89 = fsub float 1.000000e+00, %88
  %90 = fmul float %87, %89
  store float %90, float* %14, align 4
  %91 = load float, float* %12, align 4
  %92 = load float, float* %11, align 4
  %93 = load float, float* %13, align 4
  %94 = fmul float %92, %93
  %95 = fsub float 1.000000e+00, %94
  %96 = fmul float %91, %95
  store float %96, float* %15, align 4
  %97 = load float, float* %12, align 4
  %98 = load float, float* %11, align 4
  %99 = load float, float* %13, align 4
  %100 = fsub float 1.000000e+00, %99
  %101 = fmul float %98, %100
  %102 = fsub float 1.000000e+00, %101
  %103 = fmul float %97, %102
  store float %103, float* %16, align 4
  %104 = load i32, i32* %20, align 4
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %110

106:                                              ; preds = %80
  %107 = load float, float* %12, align 4
  store float %107, float* %7, align 4
  %108 = load float, float* %16, align 4
  store float %108, float* %8, align 4
  %109 = load float, float* %14, align 4
  store float %109, float* %9, align 4
  br label %146

110:                                              ; preds = %80
  %111 = load i32, i32* %20, align 4
  %112 = icmp eq i32 %111, 1
  br i1 %112, label %113, label %117

113:                                              ; preds = %110
  %114 = load float, float* %15, align 4
  store float %114, float* %7, align 4
  %115 = load float, float* %12, align 4
  store float %115, float* %8, align 4
  %116 = load float, float* %14, align 4
  store float %116, float* %9, align 4
  br label %145

117:                                              ; preds = %110
  %118 = load i32, i32* %20, align 4
  %119 = icmp eq i32 %118, 2
  br i1 %119, label %120, label %124

120:                                              ; preds = %117
  %121 = load float, float* %14, align 4
  store float %121, float* %7, align 4
  %122 = load float, float* %12, align 4
  store float %122, float* %8, align 4
  %123 = load float, float* %16, align 4
  store float %123, float* %9, align 4
  br label %144

124:                                              ; preds = %117
  %125 = load i32, i32* %20, align 4
  %126 = icmp eq i32 %125, 3
  br i1 %126, label %127, label %131

127:                                              ; preds = %124
  %128 = load float, float* %14, align 4
  store float %128, float* %7, align 4
  %129 = load float, float* %15, align 4
  store float %129, float* %8, align 4
  %130 = load float, float* %12, align 4
  store float %130, float* %9, align 4
  br label %143

131:                                              ; preds = %124
  %132 = load i32, i32* %20, align 4
  %133 = icmp eq i32 %132, 4
  br i1 %133, label %134, label %138

134:                                              ; preds = %131
  %135 = load float, float* %16, align 4
  store float %135, float* %7, align 4
  %136 = load float, float* %14, align 4
  store float %136, float* %8, align 4
  %137 = load float, float* %12, align 4
  store float %137, float* %9, align 4
  br label %142

138:                                              ; preds = %131
  %139 = load float, float* %12, align 4
  store float %139, float* %7, align 4
  %140 = load float, float* %14, align 4
  store float %140, float* %8, align 4
  %141 = load float, float* %15, align 4
  store float %141, float* %9, align 4
  br label %142

142:                                              ; preds = %138, %134
  br label %143

143:                                              ; preds = %142, %127
  br label %144

144:                                              ; preds = %143, %120
  br label %145

145:                                              ; preds = %144, %113
  br label %146

146:                                              ; preds = %145, %106
  br label %147

147:                                              ; preds = %146, %78
  %148 = load i32, i32* %5, align 4
  %149 = load i32, i32* %6, align 4
  %150 = load float, float* %7, align 4
  %151 = bitcast { i64, i32 }* %21 to i8*
  %152 = bitcast %struct.TYPE_5__* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %151, i8* align 4 %152, i64 12, i1 false)
  %153 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %21, i32 0, i32 0
  %154 = load i64, i64* %153, align 4
  %155 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %21, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = call i32 @set_pixel(i64 %154, i32 %156, i32 %148, i32 %149, i32 0, float %150)
  %158 = load i32, i32* %5, align 4
  %159 = load i32, i32* %6, align 4
  %160 = load float, float* %8, align 4
  %161 = bitcast { i64, i32 }* %22 to i8*
  %162 = bitcast %struct.TYPE_5__* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %161, i8* align 4 %162, i64 12, i1 false)
  %163 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %22, i32 0, i32 0
  %164 = load i64, i64* %163, align 4
  %165 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %22, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = call i32 @set_pixel(i64 %164, i32 %166, i32 %158, i32 %159, i32 1, float %160)
  %168 = load i32, i32* %5, align 4
  %169 = load i32, i32* %6, align 4
  %170 = load float, float* %9, align 4
  %171 = bitcast { i64, i32 }* %23 to i8*
  %172 = bitcast %struct.TYPE_5__* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %171, i8* align 4 %172, i64 12, i1 false)
  %173 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %23, i32 0, i32 0
  %174 = load i64, i64* %173, align 4
  %175 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %23, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = call i32 @set_pixel(i64 %174, i32 %176, i32 %168, i32 %169, i32 2, float %170)
  br label %178

178:                                              ; preds = %147
  %179 = load i32, i32* %5, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %5, align 4
  br label %39

181:                                              ; preds = %39
  br label %182

182:                                              ; preds = %181
  %183 = load i32, i32* %6, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %6, align 4
  br label %33

185:                                              ; preds = %33
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @get_pixel(i64, i32, i32, i32, i32) #2

declare dso_local i32 @floor(float) #2

declare dso_local i32 @set_pixel(i64, i32, i32, i32, i32, float) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
