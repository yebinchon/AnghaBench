; ModuleID = '/home/carl/AnghaBench/darknet/src/extr_softmax_layer.c_make_softmax_layer.c'
source_filename = "/home/carl/AnghaBench/darknet/src/extr_softmax_layer.c_make_softmax_layer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i8*, i32, i32 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"softmax                                        %4d\0A\00", align 1
@SOFTMAX = common dso_local global i32 0, align 4
@forward_softmax_layer = common dso_local global i32 0, align 4
@backward_softmax_layer = common dso_local global i32 0, align 4
@backward_softmax_layer_gpu = common dso_local global i32 0, align 4
@forward_softmax_layer_gpu = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @make_softmax_layer(%struct.TYPE_3__* noalias sret %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 %3, i32* %7, align 4
  %8 = load i32, i32* %6, align 4
  %9 = load i32, i32* %7, align 4
  %10 = srem i32 %8, %9
  %11 = icmp eq i32 %10, 0
  %12 = zext i1 %11 to i32
  %13 = call i32 @assert(i32 %12)
  %14 = load i32, i32* @stderr, align 4
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @fprintf(i32 %14, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = bitcast %struct.TYPE_3__* %0 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %17, i8 0, i64 96, i1 false)
  %18 = load i32, i32* @SOFTMAX, align 4
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 15
  store i32 %18, i32* %19, align 8
  %20 = load i32, i32* %5, align 4
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 0
  store i32 %20, i32* %21, align 8
  %22 = load i32, i32* %7, align 4
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 1
  store i32 %22, i32* %23, align 4
  %24 = load i32, i32* %6, align 4
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 2
  store i32 %24, i32* %25, align 8
  %26 = load i32, i32* %6, align 4
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 3
  store i32 %26, i32* %27, align 4
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* %5, align 4
  %30 = mul nsw i32 %28, %29
  %31 = call i8* @calloc(i32 %30, i32 4)
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 6
  store i8* %31, i8** %32, align 8
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* %5, align 4
  %35 = mul nsw i32 %33, %34
  %36 = call i8* @calloc(i32 %35, i32 4)
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 8
  store i8* %36, i8** %37, align 8
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* %5, align 4
  %40 = mul nsw i32 %38, %39
  %41 = call i8* @calloc(i32 %40, i32 4)
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 4
  store i8* %41, i8** %42, align 8
  %43 = call i8* @calloc(i32 1, i32 4)
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 14
  store i8* %43, i8** %44, align 8
  %45 = load i32, i32* @forward_softmax_layer, align 4
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 13
  store i32 %45, i32* %46, align 4
  %47 = load i32, i32* @backward_softmax_layer, align 4
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 12
  store i32 %47, i32* %48, align 8
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @fprintf(i32, i8*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i8* @calloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
