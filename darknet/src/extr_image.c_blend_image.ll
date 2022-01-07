; ModuleID = '/home/carl/AnghaBench/darknet/src/extr_image.c_blend_image.c'
source_filename = "/home/carl/AnghaBench/darknet/src/extr_image.c_blend_image.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i32 } @blend_image(i64 %0, i32 %1, i64 %2, i32 %3, float %4) #0 {
  %6 = alloca %struct.TYPE_8__, align 4
  %7 = alloca %struct.TYPE_8__, align 4
  %8 = alloca { i64, i32 }, align 4
  %9 = alloca %struct.TYPE_8__, align 4
  %10 = alloca { i64, i32 }, align 4
  %11 = alloca float, align 4
  %12 = alloca { i64, i32 }, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca float, align 4
  %17 = alloca { i64, i32 }, align 4
  %18 = alloca { i64, i32 }, align 4
  %19 = alloca { i64, i32 }, align 4
  %20 = alloca { i64, i32 }, align 8
  %21 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %8, i32 0, i32 0
  store i64 %0, i64* %21, align 4
  %22 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %8, i32 0, i32 1
  store i32 %1, i32* %22, align 4
  %23 = bitcast %struct.TYPE_8__* %7 to i8*
  %24 = bitcast { i64, i32 }* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %23, i8* align 4 %24, i64 12, i1 false)
  %25 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %10, i32 0, i32 0
  store i64 %2, i64* %25, align 4
  %26 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %10, i32 0, i32 1
  store i32 %3, i32* %26, align 4
  %27 = bitcast %struct.TYPE_8__* %9 to i8*
  %28 = bitcast { i64, i32 }* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %27, i8* align 4 %28, i64 12, i1 false)
  store float %4, float* %11, align 4
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp eq i32 %30, %32
  br i1 %33, label %34, label %46

34:                                               ; preds = %5
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = icmp eq i32 %36, %38
  br i1 %39, label %40, label %46

40:                                               ; preds = %34
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = icmp eq i32 %42, %44
  br label %46

46:                                               ; preds = %40, %34, %5
  %47 = phi i1 [ false, %34 ], [ false, %5 ], [ %45, %40 ]
  %48 = zext i1 %47 to i32
  %49 = call i32 @assert(i32 %48)
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = call { i64, i32 } @make_image(i32 %51, i32 %53, i32 %55)
  store { i64, i32 } %56, { i64, i32 }* %12, align 8
  %57 = bitcast { i64, i32 }* %12 to i8*
  %58 = bitcast %struct.TYPE_8__* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %58, i8* align 8 %57, i64 12, i1 false)
  store i32 0, i32* %15, align 4
  br label %59

59:                                               ; preds = %124, %46
  %60 = load i32, i32* %15, align 4
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = icmp slt i32 %60, %62
  br i1 %63, label %64, label %127

64:                                               ; preds = %59
  store i32 0, i32* %14, align 4
  br label %65

65:                                               ; preds = %120, %64
  %66 = load i32, i32* %14, align 4
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = icmp slt i32 %66, %68
  br i1 %69, label %70, label %123

70:                                               ; preds = %65
  store i32 0, i32* %13, align 4
  br label %71

71:                                               ; preds = %116, %70
  %72 = load i32, i32* %13, align 4
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = icmp slt i32 %72, %74
  br i1 %75, label %76, label %119

76:                                               ; preds = %71
  %77 = load float, float* %11, align 4
  %78 = load i32, i32* %13, align 4
  %79 = load i32, i32* %14, align 4
  %80 = load i32, i32* %15, align 4
  %81 = bitcast { i64, i32 }* %17 to i8*
  %82 = bitcast %struct.TYPE_8__* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %81, i8* align 4 %82, i64 12, i1 false)
  %83 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %17, i32 0, i32 0
  %84 = load i64, i64* %83, align 4
  %85 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %17, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @get_pixel(i64 %84, i32 %86, i32 %78, i32 %79, i32 %80)
  %88 = sitofp i32 %87 to float
  %89 = fmul float %77, %88
  %90 = load float, float* %11, align 4
  %91 = fsub float 1.000000e+00, %90
  %92 = load i32, i32* %13, align 4
  %93 = load i32, i32* %14, align 4
  %94 = load i32, i32* %15, align 4
  %95 = bitcast { i64, i32 }* %18 to i8*
  %96 = bitcast %struct.TYPE_8__* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %95, i8* align 4 %96, i64 12, i1 false)
  %97 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %18, i32 0, i32 0
  %98 = load i64, i64* %97, align 4
  %99 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %18, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @get_pixel(i64 %98, i32 %100, i32 %92, i32 %93, i32 %94)
  %102 = sitofp i32 %101 to float
  %103 = fmul float %91, %102
  %104 = fadd float %89, %103
  store float %104, float* %16, align 4
  %105 = load i32, i32* %13, align 4
  %106 = load i32, i32* %14, align 4
  %107 = load i32, i32* %15, align 4
  %108 = load float, float* %16, align 4
  %109 = bitcast { i64, i32 }* %19 to i8*
  %110 = bitcast %struct.TYPE_8__* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %109, i8* align 4 %110, i64 12, i1 false)
  %111 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %19, i32 0, i32 0
  %112 = load i64, i64* %111, align 4
  %113 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %19, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @set_pixel(i64 %112, i32 %114, i32 %105, i32 %106, i32 %107, float %108)
  br label %116

116:                                              ; preds = %76
  %117 = load i32, i32* %13, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %13, align 4
  br label %71

119:                                              ; preds = %71
  br label %120

120:                                              ; preds = %119
  %121 = load i32, i32* %14, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %14, align 4
  br label %65

123:                                              ; preds = %65
  br label %124

124:                                              ; preds = %123
  %125 = load i32, i32* %15, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %15, align 4
  br label %59

127:                                              ; preds = %59
  %128 = bitcast { i64, i32 }* %20 to i8*
  %129 = bitcast %struct.TYPE_8__* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %128, i8* align 4 %129, i64 12, i1 false)
  %130 = load { i64, i32 }, { i64, i32 }* %20, align 8
  ret { i64, i32 } %130
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @assert(i32) #2

declare dso_local { i64, i32 } @make_image(i32, i32, i32) #2

declare dso_local i32 @get_pixel(i64, i32, i32, i32, i32) #2

declare dso_local i32 @set_pixel(i64, i32, i32, i32, i32, float) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
