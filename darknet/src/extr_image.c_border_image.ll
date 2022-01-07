; ModuleID = '/home/carl/AnghaBench/darknet/src/extr_image.c_border_image.c'
source_filename = "/home/carl/AnghaBench/darknet/src/extr_image.c_border_image.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i32 } @border_image(i64 %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_7__, align 4
  %5 = alloca %struct.TYPE_7__, align 4
  %6 = alloca { i64, i32 }, align 4
  %7 = alloca i32, align 4
  %8 = alloca { i64, i32 }, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca float, align 4
  %13 = alloca { i64, i32 }, align 4
  %14 = alloca { i64, i32 }, align 4
  %15 = alloca { i64, i32 }, align 8
  %16 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %6, i32 0, i32 0
  store i64 %0, i64* %16, align 4
  %17 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %6, i32 0, i32 1
  store i32 %1, i32* %17, align 4
  %18 = bitcast %struct.TYPE_7__* %5 to i8*
  %19 = bitcast { i64, i32 }* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %18, i8* align 4 %19, i64 12, i1 false)
  store i32 %2, i32* %7, align 4
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %7, align 4
  %23 = mul nsw i32 2, %22
  %24 = add nsw i32 %21, %23
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %7, align 4
  %28 = mul nsw i32 2, %27
  %29 = add nsw i32 %26, %28
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = call { i64, i32 } @make_image(i32 %24, i32 %29, i32 %31)
  store { i64, i32 } %32, { i64, i32 }* %8, align 8
  %33 = bitcast { i64, i32 }* %8 to i8*
  %34 = bitcast %struct.TYPE_7__* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %34, i8* align 8 %33, i64 12, i1 false)
  store i32 0, i32* %11, align 4
  br label %35

35:                                               ; preds = %111, %3
  %36 = load i32, i32* %11, align 4
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = icmp slt i32 %36, %38
  br i1 %39, label %40, label %114

40:                                               ; preds = %35
  store i32 0, i32* %10, align 4
  br label %41

41:                                               ; preds = %107, %40
  %42 = load i32, i32* %10, align 4
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = icmp slt i32 %42, %44
  br i1 %45, label %46, label %110

46:                                               ; preds = %41
  store i32 0, i32* %9, align 4
  br label %47

47:                                               ; preds = %103, %46
  %48 = load i32, i32* %9, align 4
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = icmp slt i32 %48, %50
  br i1 %51, label %52, label %106

52:                                               ; preds = %47
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* %7, align 4
  %55 = sub nsw i32 %53, %54
  %56 = load i32, i32* %10, align 4
  %57 = load i32, i32* %7, align 4
  %58 = sub nsw i32 %56, %57
  %59 = load i32, i32* %11, align 4
  %60 = bitcast { i64, i32 }* %13 to i8*
  %61 = bitcast %struct.TYPE_7__* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %60, i8* align 4 %61, i64 12, i1 false)
  %62 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %13, i32 0, i32 0
  %63 = load i64, i64* %62, align 4
  %64 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %13, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call float @get_pixel_extend(i64 %63, i32 %65, i32 %55, i32 %58, i32 %59)
  store float %66, float* %12, align 4
  %67 = load i32, i32* %9, align 4
  %68 = load i32, i32* %7, align 4
  %69 = sub nsw i32 %67, %68
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %90, label %71

71:                                               ; preds = %52
  %72 = load i32, i32* %9, align 4
  %73 = load i32, i32* %7, align 4
  %74 = sub nsw i32 %72, %73
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = icmp sge i32 %74, %76
  br i1 %77, label %90, label %78

78:                                               ; preds = %71
  %79 = load i32, i32* %10, align 4
  %80 = load i32, i32* %7, align 4
  %81 = sub nsw i32 %79, %80
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %90, label %83

83:                                               ; preds = %78
  %84 = load i32, i32* %10, align 4
  %85 = load i32, i32* %7, align 4
  %86 = sub nsw i32 %84, %85
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = icmp sge i32 %86, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %83, %78, %71, %52
  store float 1.000000e+00, float* %12, align 4
  br label %91

91:                                               ; preds = %90, %83
  %92 = load i32, i32* %9, align 4
  %93 = load i32, i32* %10, align 4
  %94 = load i32, i32* %11, align 4
  %95 = load float, float* %12, align 4
  %96 = bitcast { i64, i32 }* %14 to i8*
  %97 = bitcast %struct.TYPE_7__* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %96, i8* align 4 %97, i64 12, i1 false)
  %98 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %14, i32 0, i32 0
  %99 = load i64, i64* %98, align 4
  %100 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %14, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @set_pixel(i64 %99, i32 %101, i32 %92, i32 %93, i32 %94, float %95)
  br label %103

103:                                              ; preds = %91
  %104 = load i32, i32* %9, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %9, align 4
  br label %47

106:                                              ; preds = %47
  br label %107

107:                                              ; preds = %106
  %108 = load i32, i32* %10, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %10, align 4
  br label %41

110:                                              ; preds = %41
  br label %111

111:                                              ; preds = %110
  %112 = load i32, i32* %11, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %11, align 4
  br label %35

114:                                              ; preds = %35
  %115 = bitcast { i64, i32 }* %15 to i8*
  %116 = bitcast %struct.TYPE_7__* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %115, i8* align 4 %116, i64 12, i1 false)
  %117 = load { i64, i32 }, { i64, i32 }* %15, align 8
  ret { i64, i32 } %117
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local { i64, i32 } @make_image(i32, i32, i32) #2

declare dso_local float @get_pixel_extend(i64, i32, i32, i32, i32) #2

declare dso_local i32 @set_pixel(i64, i32, i32, i32, i32, float) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
