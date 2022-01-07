; ModuleID = '/home/carl/AnghaBench/darknet/src/extr_image.c_grayscale_image.c'
source_filename = "/home/carl/AnghaBench/darknet/src/extr_image.c_grayscale_image.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, float* }

@__const.grayscale_image.scale = private unnamed_addr constant [3 x float] [float 0x3FD322D0E0000000, float 0x3FE2C8B440000000, float 0x3FBD2F1AA0000000], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @grayscale_image(%struct.TYPE_6__* noalias sret %0, %struct.TYPE_6__* byval(%struct.TYPE_6__) align 8 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [3 x float], align 4
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp eq i32 %8, 3
  %10 = zext i1 %9 to i32
  %11 = call i32 @assert(i32 %10)
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  call void @make_image(%struct.TYPE_6__* sret %0, i32 %13, i32 %15, i32 1)
  %16 = bitcast [3 x float]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %16, i8* align 4 bitcast ([3 x float]* @__const.grayscale_image.scale to i8*), i64 12, i1 false)
  store i32 0, i32* %5, align 4
  br label %17

17:                                               ; preds = %64, %2
  %18 = load i32, i32* %5, align 4
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp slt i32 %18, %20
  br i1 %21, label %22, label %67

22:                                               ; preds = %17
  store i32 0, i32* %4, align 4
  br label %23

23:                                               ; preds = %60, %22
  %24 = load i32, i32* %4, align 4
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = icmp slt i32 %24, %26
  br i1 %27, label %28, label %63

28:                                               ; preds = %23
  store i32 0, i32* %3, align 4
  br label %29

29:                                               ; preds = %56, %28
  %30 = load i32, i32* %3, align 4
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = icmp slt i32 %30, %32
  br i1 %33, label %34, label %59

34:                                               ; preds = %29
  %35 = load i32, i32* %5, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [3 x float], [3 x float]* %6, i64 0, i64 %36
  %38 = load float, float* %37, align 4
  %39 = load i32, i32* %3, align 4
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* %5, align 4
  %42 = call float @get_pixel(%struct.TYPE_6__* byval(%struct.TYPE_6__) align 8 %1, i32 %39, i32 %40, i32 %41)
  %43 = fmul float %38, %42
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 3
  %45 = load float*, float** %44, align 8
  %46 = load i32, i32* %3, align 4
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %4, align 4
  %50 = mul nsw i32 %48, %49
  %51 = add nsw i32 %46, %50
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds float, float* %45, i64 %52
  %54 = load float, float* %53, align 4
  %55 = fadd float %54, %43
  store float %55, float* %53, align 4
  br label %56

56:                                               ; preds = %34
  %57 = load i32, i32* %3, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %3, align 4
  br label %29

59:                                               ; preds = %29
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %4, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %4, align 4
  br label %23

63:                                               ; preds = %23
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %5, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %5, align 4
  br label %17

67:                                               ; preds = %17
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local void @make_image(%struct.TYPE_6__* sret, i32, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local float @get_pixel(%struct.TYPE_6__* byval(%struct.TYPE_6__) align 8, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
