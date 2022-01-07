; ModuleID = '/home/carl/AnghaBench/darknet/src/extr_dropout_layer.c_make_dropout_layer.c'
source_filename = "/home/carl/AnghaBench/darknet/src/extr_dropout_layer.c_make_dropout_layer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { float, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@DROPOUT = common dso_local global i32 0, align 4
@forward_dropout_layer = common dso_local global i32 0, align 4
@backward_dropout_layer = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"dropout       p = %.2f               %4d  ->  %4d\0A\00", align 1
@backward_dropout_layer_gpu = common dso_local global i32 0, align 4
@forward_dropout_layer_gpu = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @make_dropout_layer(%struct.TYPE_3__* noalias sret %0, i32 %1, i32 %2, float %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca float, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store float %3, float* %7, align 4
  %8 = bitcast %struct.TYPE_3__* %0 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %8, i8 0, i64 52, i1 false)
  %9 = load i32, i32* @DROPOUT, align 4
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 11
  store i32 %9, i32* %10, align 4
  %11 = load float, float* %7, align 4
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 0
  store float %11, float* %12, align 4
  %13 = load i32, i32* %6, align 4
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 1
  store i32 %13, i32* %14, align 4
  %15 = load i32, i32* %6, align 4
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 2
  store i32 %15, i32* %16, align 4
  %17 = load i32, i32* %5, align 4
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 3
  store i32 %17, i32* %18, align 4
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* %5, align 4
  %21 = mul nsw i32 %19, %20
  %22 = call i32 @calloc(i32 %21, i32 4)
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 5
  store i32 %22, i32* %23, align 4
  %24 = load float, float* %7, align 4
  %25 = fpext float %24 to double
  %26 = fsub double 1.000000e+00, %25
  %27 = fdiv double 1.000000e+00, %26
  %28 = fptosi double %27 to i32
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 4
  store i32 %28, i32* %29, align 4
  %30 = load i32, i32* @forward_dropout_layer, align 4
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 10
  store i32 %30, i32* %31, align 4
  %32 = load i32, i32* @backward_dropout_layer, align 4
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 9
  store i32 %32, i32* %33, align 4
  %34 = load i32, i32* @stderr, align 4
  %35 = load float, float* %7, align 4
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @fprintf(i32 %34, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), float %35, i32 %36, i32 %37)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @calloc(i32, i32) #2

declare dso_local i32 @fprintf(i32, i8*, float, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
