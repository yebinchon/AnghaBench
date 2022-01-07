; ModuleID = '/home/carl/AnghaBench/darknet/src/extr_image.c_letterbox_image.c'
source_filename = "/home/carl/AnghaBench/darknet/src/extr_image.c_letterbox_image.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i32 } @letterbox_image(i64 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_11__, align 4
  %6 = alloca %struct.TYPE_11__, align 4
  %7 = alloca { i64, i32 }, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_11__, align 4
  %13 = alloca { i64, i32 }, align 4
  %14 = alloca { i64, i32 }, align 8
  %15 = alloca { i64, i32 }, align 8
  %16 = alloca { i64, i32 }, align 4
  %17 = alloca { i64, i32 }, align 4
  %18 = alloca { i64, i32 }, align 4
  %19 = alloca { i64, i32 }, align 4
  %20 = alloca { i64, i32 }, align 8
  %21 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %7, i32 0, i32 0
  store i64 %0, i64* %21, align 4
  %22 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %7, i32 0, i32 1
  store i32 %1, i32* %22, align 4
  %23 = bitcast %struct.TYPE_11__* %6 to i8*
  %24 = bitcast { i64, i32 }* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %23, i8* align 4 %24, i64 12, i1 false)
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %10, align 4
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* %8, align 4
  %30 = sitofp i32 %29 to float
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = sitofp i32 %32 to float
  %34 = fdiv float %30, %33
  %35 = load i32, i32* %9, align 4
  %36 = sitofp i32 %35 to float
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = sitofp i32 %38 to float
  %40 = fdiv float %36, %39
  %41 = fcmp olt float %34, %40
  br i1 %41, label %42, label %51

42:                                               ; preds = %4
  %43 = load i32, i32* %8, align 4
  store i32 %43, i32* %10, align 4
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %8, align 4
  %47 = mul nsw i32 %45, %46
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = sdiv i32 %47, %49
  store i32 %50, i32* %11, align 4
  br label %60

51:                                               ; preds = %4
  %52 = load i32, i32* %9, align 4
  store i32 %52, i32* %11, align 4
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %9, align 4
  %56 = mul nsw i32 %54, %55
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = sdiv i32 %56, %58
  store i32 %59, i32* %10, align 4
  br label %60

60:                                               ; preds = %51, %42
  %61 = load i32, i32* %10, align 4
  %62 = load i32, i32* %11, align 4
  %63 = bitcast { i64, i32 }* %13 to i8*
  %64 = bitcast %struct.TYPE_11__* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %63, i8* align 4 %64, i64 12, i1 false)
  %65 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %13, i32 0, i32 0
  %66 = load i64, i64* %65, align 4
  %67 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %13, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call { i64, i32 } @resize_image(i64 %66, i32 %68, i32 %61, i32 %62)
  store { i64, i32 } %69, { i64, i32 }* %14, align 8
  %70 = bitcast { i64, i32 }* %14 to i8*
  %71 = bitcast %struct.TYPE_11__* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %71, i8* align 8 %70, i64 12, i1 false)
  %72 = load i32, i32* %8, align 4
  %73 = load i32, i32* %9, align 4
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = call { i64, i32 } @make_image(i32 %72, i32 %73, i32 %75)
  store { i64, i32 } %76, { i64, i32 }* %15, align 8
  %77 = bitcast { i64, i32 }* %15 to i8*
  %78 = bitcast %struct.TYPE_11__* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %78, i8* align 8 %77, i64 12, i1 false)
  %79 = bitcast { i64, i32 }* %16 to i8*
  %80 = bitcast %struct.TYPE_11__* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %79, i8* align 4 %80, i64 12, i1 false)
  %81 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %16, i32 0, i32 0
  %82 = load i64, i64* %81, align 4
  %83 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %16, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @fill_image(i64 %82, i32 %84, double 5.000000e-01)
  %86 = load i32, i32* %8, align 4
  %87 = load i32, i32* %10, align 4
  %88 = sub nsw i32 %86, %87
  %89 = sdiv i32 %88, 2
  %90 = load i32, i32* %9, align 4
  %91 = load i32, i32* %11, align 4
  %92 = sub nsw i32 %90, %91
  %93 = sdiv i32 %92, 2
  %94 = bitcast { i64, i32 }* %17 to i8*
  %95 = bitcast %struct.TYPE_11__* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %94, i8* align 4 %95, i64 12, i1 false)
  %96 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %17, i32 0, i32 0
  %97 = load i64, i64* %96, align 4
  %98 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %17, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = bitcast { i64, i32 }* %18 to i8*
  %101 = bitcast %struct.TYPE_11__* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %100, i8* align 4 %101, i64 12, i1 false)
  %102 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %18, i32 0, i32 0
  %103 = load i64, i64* %102, align 4
  %104 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %18, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @embed_image(i64 %97, i32 %99, i64 %103, i32 %105, i32 %89, i32 %93)
  %107 = bitcast { i64, i32 }* %19 to i8*
  %108 = bitcast %struct.TYPE_11__* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %107, i8* align 4 %108, i64 12, i1 false)
  %109 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %19, i32 0, i32 0
  %110 = load i64, i64* %109, align 4
  %111 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %19, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @free_image(i64 %110, i32 %112)
  %114 = bitcast { i64, i32 }* %20 to i8*
  %115 = bitcast %struct.TYPE_11__* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %114, i8* align 4 %115, i64 12, i1 false)
  %116 = load { i64, i32 }, { i64, i32 }* %20, align 8
  ret { i64, i32 } %116
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local { i64, i32 } @resize_image(i64, i32, i32, i32) #2

declare dso_local { i64, i32 } @make_image(i32, i32, i32) #2

declare dso_local i32 @fill_image(i64, i32, double) #2

declare dso_local i32 @embed_image(i64, i32, i64, i32, i32, i32) #2

declare dso_local i32 @free_image(i64, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
