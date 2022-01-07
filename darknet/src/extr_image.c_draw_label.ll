; ModuleID = '/home/carl/AnghaBench/darknet/src/extr_image.c_draw_label.c'
source_filename = "/home/carl/AnghaBench/darknet/src/extr_image.c_draw_label.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @draw_label(i64 %0, i32 %1, i32 %2, i32 %3, i64 %4, i32 %5, float* %6) #0 {
  %8 = alloca %struct.TYPE_6__, align 4
  %9 = alloca { i64, i32 }, align 4
  %10 = alloca %struct.TYPE_6__, align 4
  %11 = alloca { i64, i32 }, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca float*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca float, align 4
  %21 = alloca { i64, i32 }, align 4
  %22 = alloca { i64, i32 }, align 4
  %23 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %9, i32 0, i32 0
  store i64 %0, i64* %23, align 4
  %24 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %9, i32 0, i32 1
  store i32 %1, i32* %24, align 4
  %25 = bitcast %struct.TYPE_6__* %8 to i8*
  %26 = bitcast { i64, i32 }* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %25, i8* align 4 %26, i64 12, i1 false)
  %27 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %11, i32 0, i32 0
  store i64 %4, i64* %27, align 4
  %28 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %11, i32 0, i32 1
  store i32 %5, i32* %28, align 4
  %29 = bitcast %struct.TYPE_6__* %10 to i8*
  %30 = bitcast { i64, i32 }* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %29, i8* align 4 %30, i64 12, i1 false)
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store float* %6, float** %14, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %15, align 4
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %16, align 4
  %35 = load i32, i32* %12, align 4
  %36 = load i32, i32* %16, align 4
  %37 = sub nsw i32 %35, %36
  %38 = icmp sge i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %7
  %40 = load i32, i32* %12, align 4
  %41 = load i32, i32* %16, align 4
  %42 = sub nsw i32 %40, %41
  store i32 %42, i32* %12, align 4
  br label %43

43:                                               ; preds = %39, %7
  store i32 0, i32* %18, align 4
  br label %44

44:                                               ; preds = %117, %43
  %45 = load i32, i32* %18, align 4
  %46 = load i32, i32* %16, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %55

48:                                               ; preds = %44
  %49 = load i32, i32* %18, align 4
  %50 = load i32, i32* %12, align 4
  %51 = add nsw i32 %49, %50
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = icmp slt i32 %51, %53
  br label %55

55:                                               ; preds = %48, %44
  %56 = phi i1 [ false, %44 ], [ %54, %48 ]
  br i1 %56, label %57, label %120

57:                                               ; preds = %55
  store i32 0, i32* %17, align 4
  br label %58

58:                                               ; preds = %113, %57
  %59 = load i32, i32* %17, align 4
  %60 = load i32, i32* %15, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %69

62:                                               ; preds = %58
  %63 = load i32, i32* %17, align 4
  %64 = load i32, i32* %13, align 4
  %65 = add nsw i32 %63, %64
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = icmp slt i32 %65, %67
  br label %69

69:                                               ; preds = %62, %58
  %70 = phi i1 [ false, %58 ], [ %68, %62 ]
  br i1 %70, label %71, label %116

71:                                               ; preds = %69
  store i32 0, i32* %19, align 4
  br label %72

72:                                               ; preds = %109, %71
  %73 = load i32, i32* %19, align 4
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = icmp slt i32 %73, %75
  br i1 %76, label %77, label %112

77:                                               ; preds = %72
  %78 = load i32, i32* %17, align 4
  %79 = load i32, i32* %18, align 4
  %80 = load i32, i32* %19, align 4
  %81 = bitcast { i64, i32 }* %21 to i8*
  %82 = bitcast %struct.TYPE_6__* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %81, i8* align 4 %82, i64 12, i1 false)
  %83 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %21, i32 0, i32 0
  %84 = load i64, i64* %83, align 4
  %85 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %21, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = call float @get_pixel(i64 %84, i32 %86, i32 %78, i32 %79, i32 %80)
  store float %87, float* %20, align 4
  %88 = load i32, i32* %17, align 4
  %89 = load i32, i32* %13, align 4
  %90 = add nsw i32 %88, %89
  %91 = load i32, i32* %18, align 4
  %92 = load i32, i32* %12, align 4
  %93 = add nsw i32 %91, %92
  %94 = load i32, i32* %19, align 4
  %95 = load float*, float** %14, align 8
  %96 = load i32, i32* %19, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds float, float* %95, i64 %97
  %99 = load float, float* %98, align 4
  %100 = load float, float* %20, align 4
  %101 = fmul float %99, %100
  %102 = bitcast { i64, i32 }* %22 to i8*
  %103 = bitcast %struct.TYPE_6__* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %102, i8* align 4 %103, i64 12, i1 false)
  %104 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %22, i32 0, i32 0
  %105 = load i64, i64* %104, align 4
  %106 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %22, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @set_pixel(i64 %105, i32 %107, i32 %90, i32 %93, i32 %94, float %101)
  br label %109

109:                                              ; preds = %77
  %110 = load i32, i32* %19, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %19, align 4
  br label %72

112:                                              ; preds = %72
  br label %113

113:                                              ; preds = %112
  %114 = load i32, i32* %17, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %17, align 4
  br label %58

116:                                              ; preds = %69
  br label %117

117:                                              ; preds = %116
  %118 = load i32, i32* %18, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %18, align 4
  br label %44

120:                                              ; preds = %55
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local float @get_pixel(i64, i32, i32, i32, i32) #2

declare dso_local i32 @set_pixel(i64, i32, i32, i32, i32, float) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
