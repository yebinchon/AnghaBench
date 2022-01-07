; ModuleID = '/home/carl/AnghaBench/darknet/src/extr_image.c_rgb_to_hsv.c'
source_filename = "/home/carl/AnghaBench/darknet/src/extr_image.c_rgb_to_hsv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rgb_to_hsv(i64 %0, i32 %1) #0 {
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
  %13 = alloca { i64, i32 }, align 4
  %14 = alloca { i64, i32 }, align 4
  %15 = alloca { i64, i32 }, align 4
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  %18 = alloca float, align 4
  %19 = alloca { i64, i32 }, align 4
  %20 = alloca { i64, i32 }, align 4
  %21 = alloca { i64, i32 }, align 4
  %22 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %4, i32 0, i32 0
  store i64 %0, i64* %22, align 4
  %23 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %4, i32 0, i32 1
  store i32 %1, i32* %23, align 4
  %24 = bitcast %struct.TYPE_5__* %3 to i8*
  %25 = bitcast { i64, i32 }* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %24, i8* align 4 %25, i64 12, i1 false)
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp eq i32 %27, 3
  %29 = zext i1 %28 to i32
  %30 = call i32 @assert(i32 %29)
  store i32 0, i32* %6, align 4
  br label %31

31:                                               ; preds = %163, %2
  %32 = load i32, i32* %6, align 4
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = icmp slt i32 %32, %34
  br i1 %35, label %36, label %166

36:                                               ; preds = %31
  store i32 0, i32* %5, align 4
  br label %37

37:                                               ; preds = %159, %36
  %38 = load i32, i32* %5, align 4
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = icmp slt i32 %38, %40
  br i1 %41, label %42, label %162

42:                                               ; preds = %37
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* %6, align 4
  %45 = bitcast { i64, i32 }* %13 to i8*
  %46 = bitcast %struct.TYPE_5__* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %45, i8* align 4 %46, i64 12, i1 false)
  %47 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %13, i32 0, i32 0
  %48 = load i64, i64* %47, align 4
  %49 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %13, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call float @get_pixel(i64 %48, i32 %50, i32 %43, i32 %44, i32 0)
  store float %51, float* %7, align 4
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* %6, align 4
  %54 = bitcast { i64, i32 }* %14 to i8*
  %55 = bitcast %struct.TYPE_5__* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %54, i8* align 4 %55, i64 12, i1 false)
  %56 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %14, i32 0, i32 0
  %57 = load i64, i64* %56, align 4
  %58 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %14, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call float @get_pixel(i64 %57, i32 %59, i32 %52, i32 %53, i32 1)
  store float %60, float* %8, align 4
  %61 = load i32, i32* %5, align 4
  %62 = load i32, i32* %6, align 4
  %63 = bitcast { i64, i32 }* %15 to i8*
  %64 = bitcast %struct.TYPE_5__* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %63, i8* align 4 %64, i64 12, i1 false)
  %65 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %15, i32 0, i32 0
  %66 = load i64, i64* %65, align 4
  %67 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %15, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call float @get_pixel(i64 %66, i32 %68, i32 %61, i32 %62, i32 2)
  store float %69, float* %9, align 4
  %70 = load float, float* %7, align 4
  %71 = load float, float* %8, align 4
  %72 = load float, float* %9, align 4
  %73 = call float @three_way_max(float %70, float %71, float %72)
  store float %73, float* %16, align 4
  %74 = load float, float* %7, align 4
  %75 = load float, float* %8, align 4
  %76 = load float, float* %9, align 4
  %77 = call float @three_way_min(float %74, float %75, float %76)
  store float %77, float* %17, align 4
  %78 = load float, float* %16, align 4
  %79 = load float, float* %17, align 4
  %80 = fsub float %78, %79
  store float %80, float* %18, align 4
  %81 = load float, float* %16, align 4
  store float %81, float* %12, align 4
  %82 = load float, float* %16, align 4
  %83 = fcmp oeq float %82, 0.000000e+00
  br i1 %83, label %84, label %85

84:                                               ; preds = %42
  store float 0.000000e+00, float* %11, align 4
  store float 0.000000e+00, float* %10, align 4
  br label %128

85:                                               ; preds = %42
  %86 = load float, float* %18, align 4
  %87 = load float, float* %16, align 4
  %88 = fdiv float %86, %87
  store float %88, float* %11, align 4
  %89 = load float, float* %7, align 4
  %90 = load float, float* %16, align 4
  %91 = fcmp oeq float %89, %90
  br i1 %91, label %92, label %98

92:                                               ; preds = %85
  %93 = load float, float* %8, align 4
  %94 = load float, float* %9, align 4
  %95 = fsub float %93, %94
  %96 = load float, float* %18, align 4
  %97 = fdiv float %95, %96
  store float %97, float* %10, align 4
  br label %117

98:                                               ; preds = %85
  %99 = load float, float* %8, align 4
  %100 = load float, float* %16, align 4
  %101 = fcmp oeq float %99, %100
  br i1 %101, label %102, label %109

102:                                              ; preds = %98
  %103 = load float, float* %9, align 4
  %104 = load float, float* %7, align 4
  %105 = fsub float %103, %104
  %106 = load float, float* %18, align 4
  %107 = fdiv float %105, %106
  %108 = fadd float 2.000000e+00, %107
  store float %108, float* %10, align 4
  br label %116

109:                                              ; preds = %98
  %110 = load float, float* %7, align 4
  %111 = load float, float* %8, align 4
  %112 = fsub float %110, %111
  %113 = load float, float* %18, align 4
  %114 = fdiv float %112, %113
  %115 = fadd float 4.000000e+00, %114
  store float %115, float* %10, align 4
  br label %116

116:                                              ; preds = %109, %102
  br label %117

117:                                              ; preds = %116, %92
  %118 = load float, float* %10, align 4
  %119 = fcmp olt float %118, 0.000000e+00
  br i1 %119, label %120, label %123

120:                                              ; preds = %117
  %121 = load float, float* %10, align 4
  %122 = fadd float %121, 6.000000e+00
  store float %122, float* %10, align 4
  br label %123

123:                                              ; preds = %120, %117
  %124 = load float, float* %10, align 4
  %125 = fpext float %124 to double
  %126 = fdiv double %125, 6.000000e+00
  %127 = fptrunc double %126 to float
  store float %127, float* %10, align 4
  br label %128

128:                                              ; preds = %123, %84
  %129 = load i32, i32* %5, align 4
  %130 = load i32, i32* %6, align 4
  %131 = load float, float* %10, align 4
  %132 = bitcast { i64, i32 }* %19 to i8*
  %133 = bitcast %struct.TYPE_5__* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %132, i8* align 4 %133, i64 12, i1 false)
  %134 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %19, i32 0, i32 0
  %135 = load i64, i64* %134, align 4
  %136 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %19, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @set_pixel(i64 %135, i32 %137, i32 %129, i32 %130, i32 0, float %131)
  %139 = load i32, i32* %5, align 4
  %140 = load i32, i32* %6, align 4
  %141 = load float, float* %11, align 4
  %142 = bitcast { i64, i32 }* %20 to i8*
  %143 = bitcast %struct.TYPE_5__* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %142, i8* align 4 %143, i64 12, i1 false)
  %144 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %20, i32 0, i32 0
  %145 = load i64, i64* %144, align 4
  %146 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %20, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = call i32 @set_pixel(i64 %145, i32 %147, i32 %139, i32 %140, i32 1, float %141)
  %149 = load i32, i32* %5, align 4
  %150 = load i32, i32* %6, align 4
  %151 = load float, float* %12, align 4
  %152 = bitcast { i64, i32 }* %21 to i8*
  %153 = bitcast %struct.TYPE_5__* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %152, i8* align 4 %153, i64 12, i1 false)
  %154 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %21, i32 0, i32 0
  %155 = load i64, i64* %154, align 4
  %156 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %21, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = call i32 @set_pixel(i64 %155, i32 %157, i32 %149, i32 %150, i32 2, float %151)
  br label %159

159:                                              ; preds = %128
  %160 = load i32, i32* %5, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %5, align 4
  br label %37

162:                                              ; preds = %37
  br label %163

163:                                              ; preds = %162
  %164 = load i32, i32* %6, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %6, align 4
  br label %31

166:                                              ; preds = %31
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @assert(i32) #2

declare dso_local float @get_pixel(i64, i32, i32, i32, i32) #2

declare dso_local float @three_way_max(float, float, float) #2

declare dso_local float @three_way_min(float, float, float) #2

declare dso_local i32 @set_pixel(i64, i32, i32, i32, i32, float) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
