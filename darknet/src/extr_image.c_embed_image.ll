; ModuleID = '/home/carl/AnghaBench/darknet/src/extr_image.c_embed_image.c'
source_filename = "/home/carl/AnghaBench/darknet/src/extr_image.c_embed_image.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @embed_image(i64 %0, i32 %1, i64 %2, i32 %3, i32 %4, i32 %5) #0 {
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
  %17 = alloca { i64, i32 }, align 4
  %18 = alloca { i64, i32 }, align 4
  %19 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %8, i32 0, i32 0
  store i64 %0, i64* %19, align 4
  %20 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %8, i32 0, i32 1
  store i32 %1, i32* %20, align 4
  %21 = bitcast %struct.TYPE_6__* %7 to i8*
  %22 = bitcast { i64, i32 }* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %21, i8* align 4 %22, i64 12, i1 false)
  %23 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %10, i32 0, i32 0
  store i64 %2, i64* %23, align 4
  %24 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %10, i32 0, i32 1
  store i32 %3, i32* %24, align 4
  %25 = bitcast %struct.TYPE_6__* %9 to i8*
  %26 = bitcast { i64, i32 }* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %25, i8* align 4 %26, i64 12, i1 false)
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  store i32 0, i32* %15, align 4
  br label %27

27:                                               ; preds = %78, %6
  %28 = load i32, i32* %15, align 4
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp slt i32 %28, %30
  br i1 %31, label %32, label %81

32:                                               ; preds = %27
  store i32 0, i32* %14, align 4
  br label %33

33:                                               ; preds = %74, %32
  %34 = load i32, i32* %14, align 4
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = icmp slt i32 %34, %36
  br i1 %37, label %38, label %77

38:                                               ; preds = %33
  store i32 0, i32* %13, align 4
  br label %39

39:                                               ; preds = %70, %38
  %40 = load i32, i32* %13, align 4
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = icmp slt i32 %40, %42
  br i1 %43, label %44, label %73

44:                                               ; preds = %39
  %45 = load i32, i32* %13, align 4
  %46 = load i32, i32* %14, align 4
  %47 = load i32, i32* %15, align 4
  %48 = bitcast { i64, i32 }* %17 to i8*
  %49 = bitcast %struct.TYPE_6__* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %48, i8* align 4 %49, i64 12, i1 false)
  %50 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %17, i32 0, i32 0
  %51 = load i64, i64* %50, align 4
  %52 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %17, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call float @get_pixel(i64 %51, i32 %53, i32 %45, i32 %46, i32 %47)
  store float %54, float* %16, align 4
  %55 = load i32, i32* %11, align 4
  %56 = load i32, i32* %13, align 4
  %57 = add nsw i32 %55, %56
  %58 = load i32, i32* %12, align 4
  %59 = load i32, i32* %14, align 4
  %60 = add nsw i32 %58, %59
  %61 = load i32, i32* %15, align 4
  %62 = load float, float* %16, align 4
  %63 = bitcast { i64, i32 }* %18 to i8*
  %64 = bitcast %struct.TYPE_6__* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %63, i8* align 4 %64, i64 12, i1 false)
  %65 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %18, i32 0, i32 0
  %66 = load i64, i64* %65, align 4
  %67 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %18, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @set_pixel(i64 %66, i32 %68, i32 %57, i32 %60, i32 %61, float %62)
  br label %70

70:                                               ; preds = %44
  %71 = load i32, i32* %13, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %13, align 4
  br label %39

73:                                               ; preds = %39
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %14, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %14, align 4
  br label %33

77:                                               ; preds = %33
  br label %78

78:                                               ; preds = %77
  %79 = load i32, i32* %15, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %15, align 4
  br label %27

81:                                               ; preds = %27
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
