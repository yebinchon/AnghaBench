; ModuleID = '/home/carl/AnghaBench/darknet/src/extr_data.c_load_data_tag.c'
source_filename = "/home/carl/AnghaBench/darknet/src/extr_data.c_load_data_tag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @load_data_tag(%struct.TYPE_3__* noalias sret %0, i8** %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, float %8, float %9, float %10, float %11, float %12) #0 {
  %14 = alloca i8**, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca float, align 4
  %22 = alloca float, align 4
  %23 = alloca float, align 4
  %24 = alloca float, align 4
  %25 = alloca float, align 4
  store i8** %1, i8*** %14, align 8
  store i32 %2, i32* %15, align 4
  store i32 %3, i32* %16, align 4
  store i32 %4, i32* %17, align 4
  store i32 %5, i32* %18, align 4
  store i32 %6, i32* %19, align 4
  store i32 %7, i32* %20, align 4
  store float %8, float* %21, align 4
  store float %9, float* %22, align 4
  store float %10, float* %23, align 4
  store float %11, float* %24, align 4
  store float %12, float* %25, align 4
  %26 = load i32, i32* %16, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %13
  %29 = load i8**, i8*** %14, align 8
  %30 = load i32, i32* %15, align 4
  %31 = load i32, i32* %16, align 4
  %32 = call i8** @get_random_paths(i8** %29, i32 %30, i32 %31)
  store i8** %32, i8*** %14, align 8
  br label %33

33:                                               ; preds = %28, %13
  %34 = bitcast %struct.TYPE_3__* %0 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %34, i8 0, i64 32, i1 false)
  %35 = load i32, i32* %20, align 4
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 0
  store i32 %35, i32* %36, align 8
  %37 = load i32, i32* %20, align 4
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 1
  store i32 %37, i32* %38, align 4
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 4
  store i64 0, i64* %39, align 8
  %40 = load i8**, i8*** %14, align 8
  %41 = load i32, i32* %15, align 4
  %42 = load i32, i32* %18, align 4
  %43 = load i32, i32* %19, align 4
  %44 = load i32, i32* %20, align 4
  %45 = load float, float* %21, align 4
  %46 = load float, float* %22, align 4
  %47 = load float, float* %23, align 4
  %48 = load float, float* %24, align 4
  %49 = load float, float* %25, align 4
  %50 = call i32 @load_image_augment_paths(i8** %40, i32 %41, i32 %42, i32 %43, i32 %44, float %45, float %46, float %47, float %48, float %49, i32 0)
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 3
  store i32 %50, i32* %51, align 4
  %52 = load i8**, i8*** %14, align 8
  %53 = load i32, i32* %15, align 4
  %54 = load i32, i32* %17, align 4
  %55 = call i32 @load_tags_paths(i8** %52, i32 %53, i32 %54)
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 2
  store i32 %55, i32* %56, align 8
  %57 = load i32, i32* %16, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %33
  %60 = load i8**, i8*** %14, align 8
  %61 = call i32 @free(i8** %60)
  br label %62

62:                                               ; preds = %59, %33
  ret void
}

declare dso_local i8** @get_random_paths(i8**, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @load_image_augment_paths(i8**, i32, i32, i32, i32, float, float, float, float, float, i32) #1

declare dso_local i32 @load_tags_paths(i8**, i32, i32) #1

declare dso_local i32 @free(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
