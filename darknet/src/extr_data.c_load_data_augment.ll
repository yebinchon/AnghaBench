; ModuleID = '/home/carl/AnghaBench/darknet/src/extr_data.c_load_data_augment.c'
source_filename = "/home/carl/AnghaBench/darknet/src/extr_data.c_load_data_augment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @load_data_augment(%struct.TYPE_3__* noalias sret %0, i8** %1, i32 %2, i32 %3, i8** %4, i32 %5, i32* %6, i32 %7, i32 %8, i32 %9, float %10, float %11, float %12, float %13, float %14, i32 %15) #0 {
  %17 = alloca i8**, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i8**, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca float, align 4
  %27 = alloca float, align 4
  %28 = alloca float, align 4
  %29 = alloca float, align 4
  %30 = alloca float, align 4
  %31 = alloca i32, align 4
  store i8** %1, i8*** %17, align 8
  store i32 %2, i32* %18, align 4
  store i32 %3, i32* %19, align 4
  store i8** %4, i8*** %20, align 8
  store i32 %5, i32* %21, align 4
  store i32* %6, i32** %22, align 8
  store i32 %7, i32* %23, align 4
  store i32 %8, i32* %24, align 4
  store i32 %9, i32* %25, align 4
  store float %10, float* %26, align 4
  store float %11, float* %27, align 4
  store float %12, float* %28, align 4
  store float %13, float* %29, align 4
  store float %14, float* %30, align 4
  store i32 %15, i32* %31, align 4
  %32 = load i32, i32* %19, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %16
  %35 = load i8**, i8*** %17, align 8
  %36 = load i32, i32* %18, align 4
  %37 = load i32, i32* %19, align 4
  %38 = call i8** @get_random_paths(i8** %35, i32 %36, i32 %37)
  store i8** %38, i8*** %17, align 8
  br label %39

39:                                               ; preds = %34, %16
  %40 = bitcast %struct.TYPE_3__* %0 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %40, i8 0, i64 32, i1 false)
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 4
  store i64 0, i64* %41, align 8
  %42 = load i32, i32* %25, align 4
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 0
  store i32 %42, i32* %43, align 8
  %44 = load i32, i32* %25, align 4
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 1
  store i32 %44, i32* %45, align 4
  %46 = load i8**, i8*** %17, align 8
  %47 = load i32, i32* %18, align 4
  %48 = load i32, i32* %23, align 4
  %49 = load i32, i32* %24, align 4
  %50 = load i32, i32* %25, align 4
  %51 = load float, float* %26, align 4
  %52 = load float, float* %27, align 4
  %53 = load float, float* %28, align 4
  %54 = load float, float* %29, align 4
  %55 = load float, float* %30, align 4
  %56 = load i32, i32* %31, align 4
  %57 = call i32 @load_image_augment_paths(i8** %46, i32 %47, i32 %48, i32 %49, i32 %50, float %51, float %52, float %53, float %54, float %55, i32 %56)
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 3
  store i32 %57, i32* %58, align 4
  %59 = load i8**, i8*** %17, align 8
  %60 = load i32, i32* %18, align 4
  %61 = load i8**, i8*** %20, align 8
  %62 = load i32, i32* %21, align 4
  %63 = load i32*, i32** %22, align 8
  %64 = call i32 @load_labels_paths(i8** %59, i32 %60, i8** %61, i32 %62, i32* %63)
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 2
  store i32 %64, i32* %65, align 8
  %66 = load i32, i32* %19, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %39
  %69 = load i8**, i8*** %17, align 8
  %70 = call i32 @free(i8** %69)
  br label %71

71:                                               ; preds = %68, %39
  ret void
}

declare dso_local i8** @get_random_paths(i8**, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @load_image_augment_paths(i8**, i32, i32, i32, i32, float, float, float, float, float, i32) #1

declare dso_local i32 @load_labels_paths(i8**, i32, i8**, i32, i32*) #1

declare dso_local i32 @free(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
