; ModuleID = '/home/carl/AnghaBench/darknet/src/extr_image.c_get_label.c'
source_filename = "/home/carl/AnghaBench/darknet/src/extr_image.c_get_label.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { double }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @get_label(%struct.TYPE_11__** %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_11__, align 8
  %5 = alloca %struct.TYPE_11__**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_11__, align 8
  %9 = alloca %struct.TYPE_11__, align 8
  %10 = alloca %struct.TYPE_11__, align 8
  store %struct.TYPE_11__** %0, %struct.TYPE_11__*** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = sdiv i32 %11, 10
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp sgt i32 %13, 7
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  store i32 7, i32* %7, align 4
  br label %16

16:                                               ; preds = %15, %3
  %17 = call double @make_empty_image(i32 0, i32 0, i32 0)
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 0
  store double %17, double* %18, align 8
  br label %19

19:                                               ; preds = %23, %16
  %20 = load i8*, i8** %6, align 8
  %21 = load i8, i8* %20, align 1
  %22 = icmp ne i8 %21, 0
  br i1 %22, label %23, label %56

23:                                               ; preds = %19
  %24 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %5, align 8
  %25 = load i32, i32* %7, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %24, i64 %26
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %27, align 8
  %29 = load i8*, i8** %6, align 8
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i64 %32
  %34 = bitcast %struct.TYPE_11__* %9 to i8*
  %35 = bitcast %struct.TYPE_11__* %33 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %34, i8* align 8 %35, i64 8, i1 false)
  %36 = load i32, i32* %7, align 4
  %37 = sub nsw i32 0, %36
  %38 = sub nsw i32 %37, 1
  %39 = load i32, i32* %7, align 4
  %40 = add nsw i32 %39, 1
  %41 = sdiv i32 %40, 2
  %42 = add nsw i32 %38, %41
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 0
  %44 = load double, double* %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 0
  %46 = load double, double* %45, align 8
  %47 = call double @tile_images(double %44, double %46, i32 %42)
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 0
  store double %47, double* %48, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 0
  %50 = load double, double* %49, align 8
  %51 = call i32 @free_image(double %50)
  %52 = bitcast %struct.TYPE_11__* %8 to i8*
  %53 = bitcast %struct.TYPE_11__* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %52, i8* align 8 %53, i64 8, i1 false)
  %54 = load i8*, i8** %6, align 8
  %55 = getelementptr inbounds i8, i8* %54, i32 1
  store i8* %55, i8** %6, align 8
  br label %19

56:                                               ; preds = %19
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 0
  %58 = load double, double* %57, align 8
  %59 = fmul double %58, 2.500000e-01
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 0
  %61 = load double, double* %60, align 8
  %62 = call double @border_image(double %61, double %59)
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 0
  store double %62, double* %63, align 8
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 0
  %65 = load double, double* %64, align 8
  %66 = call i32 @free_image(double %65)
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 0
  %68 = load double, double* %67, align 8
  ret double %68
}

declare dso_local double @make_empty_image(i32, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local double @tile_images(double, double, i32) #1

declare dso_local i32 @free_image(double) #1

declare dso_local double @border_image(double, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
