; ModuleID = '/home/carl/AnghaBench/darknet/src/extr_box.c_float_to_box.c'
source_filename = "/home/carl/AnghaBench/darknet/src/extr_box.c_float_to_box.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { float, float, float, float, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @float_to_box(%struct.TYPE_3__* noalias sret %0, float* %1, i32 %2) #0 {
  %4 = alloca float*, align 8
  %5 = alloca i32, align 4
  store float* %1, float** %4, align 8
  store i32 %2, i32* %5, align 4
  %6 = bitcast %struct.TYPE_3__* %0 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %6, i8 0, i64 20, i1 false)
  %7 = load float*, float** %4, align 8
  %8 = getelementptr inbounds float, float* %7, i64 0
  %9 = load float, float* %8, align 4
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 0
  store float %9, float* %10, align 4
  %11 = load float*, float** %4, align 8
  %12 = load i32, i32* %5, align 4
  %13 = mul nsw i32 1, %12
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds float, float* %11, i64 %14
  %16 = load float, float* %15, align 4
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 1
  store float %16, float* %17, align 4
  %18 = load float*, float** %4, align 8
  %19 = load i32, i32* %5, align 4
  %20 = mul nsw i32 2, %19
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds float, float* %18, i64 %21
  %23 = load float, float* %22, align 4
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 2
  store float %23, float* %24, align 4
  %25 = load float*, float** %4, align 8
  %26 = load i32, i32* %5, align 4
  %27 = mul nsw i32 3, %26
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds float, float* %25, i64 %28
  %30 = load float, float* %29, align 4
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 3
  store float %30, float* %31, align 4
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
