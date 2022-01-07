; ModuleID = '/home/carl/AnghaBench/darknet/src/extr_box.c_nms_comparator.c'
source_filename = "/home/carl/AnghaBench/darknet/src/extr_box.c_nms_comparator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, float*, float }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nms_comparator(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_2__, align 8
  %7 = alloca %struct.TYPE_2__, align 8
  %8 = alloca float, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.TYPE_2__*
  %11 = bitcast %struct.TYPE_2__* %6 to i8*
  %12 = bitcast %struct.TYPE_2__* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %11, i8* align 8 %12, i64 24, i1 false)
  %13 = load i8*, i8** %5, align 8
  %14 = bitcast i8* %13 to %struct.TYPE_2__*
  %15 = bitcast %struct.TYPE_2__* %7 to i8*
  %16 = bitcast %struct.TYPE_2__* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %15, i8* align 8 %16, i64 24, i1 false)
  store float 0.000000e+00, float* %8, align 4
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp uge i64 %18, 0
  br i1 %19, label %20, label %34

20:                                               ; preds = %2
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 1
  %22 = load float*, float** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds float, float* %22, i64 %24
  %26 = load float, float* %25, align 4
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 1
  %28 = load float*, float** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds float, float* %28, i64 %30
  %32 = load float, float* %31, align 4
  %33 = fsub float %26, %32
  store float %33, float* %8, align 4
  br label %40

34:                                               ; preds = %2
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 2
  %36 = load float, float* %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 2
  %38 = load float, float* %37, align 8
  %39 = fsub float %36, %38
  store float %39, float* %8, align 4
  br label %40

40:                                               ; preds = %34, %20
  %41 = load float, float* %8, align 4
  %42 = fcmp olt float %41, 0.000000e+00
  br i1 %42, label %43, label %44

43:                                               ; preds = %40
  store i32 1, i32* %3, align 4
  br label %50

44:                                               ; preds = %40
  %45 = load float, float* %8, align 4
  %46 = fcmp ogt float %45, 0.000000e+00
  br i1 %46, label %47, label %48

47:                                               ; preds = %44
  store i32 -1, i32* %3, align 4
  br label %50

48:                                               ; preds = %44
  br label %49

49:                                               ; preds = %48
  store i32 0, i32* %3, align 4
  br label %50

50:                                               ; preds = %49, %47, %43
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
