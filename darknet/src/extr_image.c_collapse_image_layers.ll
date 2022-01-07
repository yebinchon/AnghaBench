; ModuleID = '/home/carl/AnghaBench/darknet/src/extr_image.c_collapse_image_layers.c'
source_filename = "/home/carl/AnghaBench/darknet/src/extr_image.c_collapse_image_layers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i32 } @collapse_image_layers(i64 %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_10__, align 4
  %5 = alloca %struct.TYPE_10__, align 4
  %6 = alloca { i64, i32 }, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca { i64, i32 }, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_10__, align 4
  %12 = alloca { i64, i32 }, align 4
  %13 = alloca { i64, i32 }, align 8
  %14 = alloca i32, align 4
  %15 = alloca { i64, i32 }, align 4
  %16 = alloca { i64, i32 }, align 4
  %17 = alloca { i64, i32 }, align 4
  %18 = alloca { i64, i32 }, align 8
  %19 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %6, i32 0, i32 0
  store i64 %0, i64* %19, align 4
  %20 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %6, i32 0, i32 1
  store i32 %1, i32* %20, align 4
  %21 = bitcast %struct.TYPE_10__* %5 to i8*
  %22 = bitcast { i64, i32 }* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %21, i8* align 4 %22, i64 12, i1 false)
  store i32 %2, i32* %7, align 4
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* %7, align 4
  %27 = add nsw i32 %25, %26
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = mul nsw i32 %27, %29
  %31 = load i32, i32* %7, align 4
  %32 = sub nsw i32 %30, %31
  store i32 %32, i32* %8, align 4
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %8, align 4
  %36 = call { i64, i32 } @make_image(i32 %34, i32 %35, i32 1)
  store { i64, i32 } %36, { i64, i32 }* %9, align 8
  %37 = bitcast { i64, i32 }* %9 to i8*
  %38 = bitcast %struct.TYPE_10__* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %38, i8* align 8 %37, i64 12, i1 false)
  store i32 0, i32* %10, align 4
  br label %39

39:                                               ; preds = %82, %3
  %40 = load i32, i32* %10, align 4
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = icmp slt i32 %40, %42
  br i1 %43, label %44, label %85

44:                                               ; preds = %39
  %45 = load i32, i32* %10, align 4
  %46 = bitcast { i64, i32 }* %12 to i8*
  %47 = bitcast %struct.TYPE_10__* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %46, i8* align 4 %47, i64 12, i1 false)
  %48 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %12, i32 0, i32 0
  %49 = load i64, i64* %48, align 4
  %50 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %12, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call { i64, i32 } @get_image_layer(i64 %49, i32 %51, i32 %45)
  store { i64, i32 } %52, { i64, i32 }* %13, align 8
  %53 = bitcast { i64, i32 }* %13 to i8*
  %54 = bitcast %struct.TYPE_10__* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %54, i8* align 8 %53, i64 12, i1 false)
  %55 = load i32, i32* %10, align 4
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %7, align 4
  %59 = add nsw i32 %57, %58
  %60 = mul nsw i32 %55, %59
  store i32 %60, i32* %14, align 4
  %61 = load i32, i32* %14, align 4
  %62 = bitcast { i64, i32 }* %15 to i8*
  %63 = bitcast %struct.TYPE_10__* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %62, i8* align 4 %63, i64 12, i1 false)
  %64 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %15, i32 0, i32 0
  %65 = load i64, i64* %64, align 4
  %66 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %15, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = bitcast { i64, i32 }* %16 to i8*
  %69 = bitcast %struct.TYPE_10__* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %68, i8* align 4 %69, i64 12, i1 false)
  %70 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %16, i32 0, i32 0
  %71 = load i64, i64* %70, align 4
  %72 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %16, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @embed_image(i64 %65, i32 %67, i64 %71, i32 %73, i32 0, i32 %61)
  %75 = bitcast { i64, i32 }* %17 to i8*
  %76 = bitcast %struct.TYPE_10__* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %75, i8* align 4 %76, i64 12, i1 false)
  %77 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %17, i32 0, i32 0
  %78 = load i64, i64* %77, align 4
  %79 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %17, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @free_image(i64 %78, i32 %80)
  br label %82

82:                                               ; preds = %44
  %83 = load i32, i32* %10, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %10, align 4
  br label %39

85:                                               ; preds = %39
  %86 = bitcast { i64, i32 }* %18 to i8*
  %87 = bitcast %struct.TYPE_10__* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %86, i8* align 4 %87, i64 12, i1 false)
  %88 = load { i64, i32 }, { i64, i32 }* %18, align 8
  ret { i64, i32 } %88
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local { i64, i32 } @make_image(i32, i32, i32) #2

declare dso_local { i64, i32 } @get_image_layer(i64, i32, i32) #2

declare dso_local i32 @embed_image(i64, i32, i64, i32, i32, i32) #2

declare dso_local i32 @free_image(i64, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
