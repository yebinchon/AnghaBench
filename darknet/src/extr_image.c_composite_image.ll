; ModuleID = '/home/carl/AnghaBench/darknet/src/extr_image.c_composite_image.c'
source_filename = "/home/carl/AnghaBench/darknet/src/extr_image.c_composite_image.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @composite_image(i64 %0, i32 %1, i64 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.TYPE_7__, align 4
  %8 = alloca { i64, i32 }, align 4
  %9 = alloca %struct.TYPE_7__, align 4
  %10 = alloca { i64, i32 }, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca float, align 4
  %17 = alloca { i64, i32 }, align 4
  %18 = alloca float, align 4
  %19 = alloca { i64, i32 }, align 4
  %20 = alloca { i64, i32 }, align 4
  %21 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %8, i32 0, i32 0
  store i64 %0, i64* %21, align 4
  %22 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %8, i32 0, i32 1
  store i32 %1, i32* %22, align 4
  %23 = bitcast %struct.TYPE_7__* %7 to i8*
  %24 = bitcast { i64, i32 }* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %23, i8* align 4 %24, i64 12, i1 false)
  %25 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %10, i32 0, i32 0
  store i64 %2, i64* %25, align 4
  %26 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %10, i32 0, i32 1
  store i32 %3, i32* %26, align 4
  %27 = bitcast %struct.TYPE_7__* %9 to i8*
  %28 = bitcast { i64, i32 }* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %27, i8* align 4 %28, i64 12, i1 false)
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  store i32 0, i32* %15, align 4
  br label %29

29:                                               ; preds = %96, %6
  %30 = load i32, i32* %15, align 4
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp slt i32 %30, %32
  br i1 %33, label %34, label %99

34:                                               ; preds = %29
  store i32 0, i32* %14, align 4
  br label %35

35:                                               ; preds = %92, %34
  %36 = load i32, i32* %14, align 4
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = icmp slt i32 %36, %38
  br i1 %39, label %40, label %95

40:                                               ; preds = %35
  store i32 0, i32* %13, align 4
  br label %41

41:                                               ; preds = %88, %40
  %42 = load i32, i32* %13, align 4
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = icmp slt i32 %42, %44
  br i1 %45, label %46, label %91

46:                                               ; preds = %41
  %47 = load i32, i32* %13, align 4
  %48 = load i32, i32* %14, align 4
  %49 = load i32, i32* %15, align 4
  %50 = bitcast { i64, i32 }* %17 to i8*
  %51 = bitcast %struct.TYPE_7__* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %50, i8* align 4 %51, i64 12, i1 false)
  %52 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %17, i32 0, i32 0
  %53 = load i64, i64* %52, align 4
  %54 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %17, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call float @get_pixel(i64 %53, i32 %55, i32 %47, i32 %48, i32 %49)
  store float %56, float* %16, align 4
  %57 = load i32, i32* %11, align 4
  %58 = load i32, i32* %13, align 4
  %59 = add nsw i32 %57, %58
  %60 = load i32, i32* %12, align 4
  %61 = load i32, i32* %14, align 4
  %62 = add nsw i32 %60, %61
  %63 = load i32, i32* %15, align 4
  %64 = bitcast { i64, i32 }* %19 to i8*
  %65 = bitcast %struct.TYPE_7__* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %64, i8* align 4 %65, i64 12, i1 false)
  %66 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %19, i32 0, i32 0
  %67 = load i64, i64* %66, align 4
  %68 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %19, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call float @get_pixel_extend(i64 %67, i32 %69, i32 %59, i32 %62, i32 %63)
  store float %70, float* %18, align 4
  %71 = load i32, i32* %11, align 4
  %72 = load i32, i32* %13, align 4
  %73 = add nsw i32 %71, %72
  %74 = load i32, i32* %12, align 4
  %75 = load i32, i32* %14, align 4
  %76 = add nsw i32 %74, %75
  %77 = load i32, i32* %15, align 4
  %78 = load float, float* %16, align 4
  %79 = load float, float* %18, align 4
  %80 = fmul float %78, %79
  %81 = bitcast { i64, i32 }* %20 to i8*
  %82 = bitcast %struct.TYPE_7__* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %81, i8* align 4 %82, i64 12, i1 false)
  %83 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %20, i32 0, i32 0
  %84 = load i64, i64* %83, align 4
  %85 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %20, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @set_pixel(i64 %84, i32 %86, i32 %73, i32 %76, i32 %77, float %80)
  br label %88

88:                                               ; preds = %46
  %89 = load i32, i32* %13, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %13, align 4
  br label %41

91:                                               ; preds = %41
  br label %92

92:                                               ; preds = %91
  %93 = load i32, i32* %14, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %14, align 4
  br label %35

95:                                               ; preds = %35
  br label %96

96:                                               ; preds = %95
  %97 = load i32, i32* %15, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %15, align 4
  br label %29

99:                                               ; preds = %29
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local float @get_pixel(i64, i32, i32, i32, i32) #2

declare dso_local float @get_pixel_extend(i64, i32, i32, i32, i32) #2

declare dso_local i32 @set_pixel(i64, i32, i32, i32, i32, float) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
