; ModuleID = '/home/carl/AnghaBench/darknet/src/extr_maxpool_layer.c_make_maxpool_layer.c'
source_filename = "/home/carl/AnghaBench/darknet/src/extr_maxpool_layer.c_make_maxpool_layer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i8*, i32, i32 }

@MAXPOOL = common dso_local global i32 0, align 4
@forward_maxpool_layer = common dso_local global i32 0, align 4
@backward_maxpool_layer = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [62 x i8] c"max          %d x %d / %d  %4d x%4d x%4d   ->  %4d x%4d x%4d\0A\00", align 1
@backward_maxpool_layer_gpu = common dso_local global i32 0, align 4
@forward_maxpool_layer_gpu = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @make_maxpool_layer(%struct.TYPE_3__* noalias sret %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  store i32 %7, i32* %15, align 4
  %17 = bitcast %struct.TYPE_3__* %0 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %17, i8 0, i64 120, i1 false)
  %18 = load i32, i32* @MAXPOOL, align 4
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 22
  store i32 %18, i32* %19, align 8
  %20 = load i32, i32* %9, align 4
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 0
  store i32 %20, i32* %21, align 8
  %22 = load i32, i32* %10, align 4
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 1
  store i32 %22, i32* %23, align 4
  %24 = load i32, i32* %11, align 4
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 2
  store i32 %24, i32* %25, align 8
  %26 = load i32, i32* %12, align 4
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 3
  store i32 %26, i32* %27, align 4
  %28 = load i32, i32* %15, align 4
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 4
  store i32 %28, i32* %29, align 8
  %30 = load i32, i32* %11, align 4
  %31 = load i32, i32* %15, align 4
  %32 = add nsw i32 %30, %31
  %33 = load i32, i32* %13, align 4
  %34 = sub nsw i32 %32, %33
  %35 = load i32, i32* %14, align 4
  %36 = sdiv i32 %34, %35
  %37 = add nsw i32 %36, 1
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 5
  store i32 %37, i32* %38, align 4
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* %15, align 4
  %41 = add nsw i32 %39, %40
  %42 = load i32, i32* %13, align 4
  %43 = sub nsw i32 %41, %42
  %44 = load i32, i32* %14, align 4
  %45 = sdiv i32 %43, %44
  %46 = add nsw i32 %45, 1
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 6
  store i32 %46, i32* %47, align 8
  %48 = load i32, i32* %12, align 4
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 7
  store i32 %48, i32* %49, align 4
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 6
  %51 = load i32, i32* %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 5
  %53 = load i32, i32* %52, align 4
  %54 = mul nsw i32 %51, %53
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 7
  %56 = load i32, i32* %55, align 4
  %57 = mul nsw i32 %54, %56
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 8
  store i32 %57, i32* %58, align 8
  %59 = load i32, i32* %10, align 4
  %60 = load i32, i32* %11, align 4
  %61 = mul nsw i32 %59, %60
  %62 = load i32, i32* %12, align 4
  %63 = mul nsw i32 %61, %62
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 9
  store i32 %63, i32* %64, align 4
  %65 = load i32, i32* %13, align 4
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 10
  store i32 %65, i32* %66, align 8
  %67 = load i32, i32* %14, align 4
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 11
  store i32 %67, i32* %68, align 4
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 6
  %70 = load i32, i32* %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 5
  %72 = load i32, i32* %71, align 4
  %73 = mul nsw i32 %70, %72
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 7
  %75 = load i32, i32* %74, align 4
  %76 = mul nsw i32 %73, %75
  %77 = load i32, i32* %9, align 4
  %78 = mul nsw i32 %76, %77
  store i32 %78, i32* %16, align 4
  %79 = load i32, i32* %16, align 4
  %80 = call i8* @calloc(i32 %79, i32 4)
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 21
  store i8* %80, i8** %81, align 8
  %82 = load i32, i32* %16, align 4
  %83 = call i8* @calloc(i32 %82, i32 4)
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 14
  store i8* %83, i8** %84, align 8
  %85 = load i32, i32* %16, align 4
  %86 = call i8* @calloc(i32 %85, i32 4)
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 12
  store i8* %86, i8** %87, align 8
  %88 = load i32, i32* @forward_maxpool_layer, align 4
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 20
  store i32 %88, i32* %89, align 8
  %90 = load i32, i32* @backward_maxpool_layer, align 4
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 19
  store i32 %90, i32* %91, align 4
  %92 = load i32, i32* @stderr, align 4
  %93 = load i32, i32* %13, align 4
  %94 = load i32, i32* %13, align 4
  %95 = load i32, i32* %14, align 4
  %96 = load i32, i32* %11, align 4
  %97 = load i32, i32* %10, align 4
  %98 = load i32, i32* %12, align 4
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 5
  %100 = load i32, i32* %99, align 4
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 6
  %102 = load i32, i32* %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 7
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @fprintf(i32 %92, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i32 %93, i32 %94, i32 %95, i32 %96, i32 %97, i32 %98, i32 %100, i32 %102, i32 %104)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i8* @calloc(i32, i32) #2

declare dso_local i32 @fprintf(i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
