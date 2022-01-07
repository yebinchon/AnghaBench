; ModuleID = '/home/carl/AnghaBench/darknet/src/extr_data.c_load_image_paths_gray.c'
source_filename = "/home/carl/AnghaBench/darknet/src/extr_data.c_load_image_paths_gray.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32* }
%struct.TYPE_9__ = type { i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i32* } @load_image_paths_gray(i8** %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_8__, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_9__, align 4
  %12 = alloca %struct.TYPE_9__, align 4
  store i8** %0, i8*** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load i32, i32* %7, align 4
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  store i32 %13, i32* %14, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i32* @calloc(i32 %16, i32 8)
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 2
  store i32* %17, i32** %18, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 1
  store i32 0, i32* %19, align 4
  store i32 0, i32* %10, align 4
  br label %20

20:                                               ; preds = %73, %4
  %21 = load i32, i32* %10, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %76

24:                                               ; preds = %20
  %25 = load i8**, i8*** %6, align 8
  %26 = load i32, i32* %10, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8*, i8** %25, i64 %27
  %29 = load i8*, i8** %28, align 8
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* %9, align 4
  %32 = call { i64, i64 } @load_image(i8* %29, i32 %30, i32 %31, i32 3)
  %33 = bitcast %struct.TYPE_9__* %11 to { i64, i64 }*
  %34 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %33, i32 0, i32 0
  %35 = extractvalue { i64, i64 } %32, 0
  store i64 %35, i64* %34, align 4
  %36 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %33, i32 0, i32 1
  %37 = extractvalue { i64, i64 } %32, 1
  store i64 %37, i64* %36, align 4
  %38 = bitcast %struct.TYPE_9__* %11 to { i64, i64 }*
  %39 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 4
  %41 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %38, i32 0, i32 1
  %42 = load i64, i64* %41, align 4
  %43 = call { i64, i64 } @grayscale_image(i64 %40, i64 %42)
  %44 = bitcast %struct.TYPE_9__* %12 to { i64, i64 }*
  %45 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %44, i32 0, i32 0
  %46 = extractvalue { i64, i64 } %43, 0
  store i64 %46, i64* %45, align 4
  %47 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %44, i32 0, i32 1
  %48 = extractvalue { i64, i64 } %43, 1
  store i64 %48, i64* %47, align 4
  %49 = bitcast %struct.TYPE_9__* %11 to { i64, i64 }*
  %50 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 4
  %52 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %49, i32 0, i32 1
  %53 = load i64, i64* %52, align 4
  %54 = call i32 @free_image(i64 %51, i64 %53)
  %55 = bitcast %struct.TYPE_9__* %11 to i8*
  %56 = bitcast %struct.TYPE_9__* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %55, i8* align 4 %56, i64 16, i1 false)
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 2
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* %10, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  store i32 %58, i32* %63, align 4
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = mul nsw i32 %65, %67
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = mul nsw i32 %68, %70
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 1
  store i32 %71, i32* %72, align 4
  br label %73

73:                                               ; preds = %24
  %74 = load i32, i32* %10, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %10, align 4
  br label %20

76:                                               ; preds = %20
  %77 = bitcast %struct.TYPE_8__* %5 to { i64, i32* }*
  %78 = load { i64, i32* }, { i64, i32* }* %77, align 8
  ret { i64, i32* } %78
}

declare dso_local i32* @calloc(i32, i32) #1

declare dso_local { i64, i64 } @load_image(i8*, i32, i32, i32) #1

declare dso_local { i64, i64 } @grayscale_image(i64, i64) #1

declare dso_local i32 @free_image(i64, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
