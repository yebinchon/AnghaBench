; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_libaomdec.c_image_copy_16_to_8.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_libaomdec.c_image_copy_16_to_8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32*, i32**, i32 }
%struct.aom_image = type { i32, i32, i32, i32, i32*, i64* }
%struct.TYPE_5__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, %struct.aom_image*)* @image_copy_16_to_8 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @image_copy_16_to_8(%struct.TYPE_6__* %0, %struct.aom_image* %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca %struct.aom_image*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store %struct.aom_image* %1, %struct.aom_image** %4, align 8
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = call %struct.TYPE_5__* @av_pix_fmt_desc_get(i32 %15)
  store %struct.TYPE_5__* %16, %struct.TYPE_5__** %5, align 8
  store i32 0, i32* %6, align 4
  br label %17

17:                                               ; preds = %112, %2
  %18 = load i32, i32* %6, align 4
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp slt i32 %18, %21
  br i1 %22, label %23, label %115

23:                                               ; preds = %17
  %24 = load %struct.aom_image*, %struct.aom_image** %4, align 8
  %25 = getelementptr inbounds %struct.aom_image, %struct.aom_image* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %7, align 4
  %27 = load %struct.aom_image*, %struct.aom_image** %4, align 8
  %28 = getelementptr inbounds %struct.aom_image, %struct.aom_image* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %51

32:                                               ; preds = %23
  %33 = load i32, i32* %7, align 4
  %34 = load %struct.aom_image*, %struct.aom_image** %4, align 8
  %35 = getelementptr inbounds %struct.aom_image, %struct.aom_image* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = add nsw i32 %33, %36
  %38 = load %struct.aom_image*, %struct.aom_image** %4, align 8
  %39 = getelementptr inbounds %struct.aom_image, %struct.aom_image* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = ashr i32 %37, %40
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %8, align 4
  %43 = load %struct.aom_image*, %struct.aom_image** %4, align 8
  %44 = getelementptr inbounds %struct.aom_image, %struct.aom_image* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = add nsw i32 %42, %45
  %47 = load %struct.aom_image*, %struct.aom_image** %4, align 8
  %48 = getelementptr inbounds %struct.aom_image, %struct.aom_image* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = ashr i32 %46, %49
  store i32 %50, i32* %8, align 4
  br label %51

51:                                               ; preds = %32, %23
  store i32 0, i32* %10, align 4
  br label %52

52:                                               ; preds = %108, %51
  %53 = load i32, i32* %10, align 4
  %54 = load i32, i32* %8, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %111

56:                                               ; preds = %52
  %57 = load %struct.aom_image*, %struct.aom_image** %4, align 8
  %58 = getelementptr inbounds %struct.aom_image, %struct.aom_image* %57, i32 0, i32 5
  %59 = load i64*, i64** %58, align 8
  %60 = load i32, i32* %6, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i64, i64* %59, i64 %61
  %63 = load i64, i64* %62, align 8
  %64 = load i32, i32* %10, align 4
  %65 = load %struct.aom_image*, %struct.aom_image** %4, align 8
  %66 = getelementptr inbounds %struct.aom_image, %struct.aom_image* %65, i32 0, i32 4
  %67 = load i32*, i32** %66, align 8
  %68 = load i32, i32* %6, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = mul nsw i32 %64, %71
  %73 = sext i32 %72 to i64
  %74 = add nsw i64 %63, %73
  %75 = inttoptr i64 %74 to i32*
  store i32* %75, i32** %11, align 8
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 1
  %78 = load i32**, i32*** %77, align 8
  %79 = load i32, i32* %6, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32*, i32** %78, i64 %80
  %82 = load i32*, i32** %81, align 8
  %83 = load i32, i32* %10, align 4
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  %86 = load i32*, i32** %85, align 8
  %87 = load i32, i32* %6, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = mul nsw i32 %83, %90
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %82, i64 %92
  store i32* %93, i32** %12, align 8
  store i32 0, i32* %9, align 4
  br label %94

94:                                               ; preds = %104, %56
  %95 = load i32, i32* %9, align 4
  %96 = load i32, i32* %7, align 4
  %97 = icmp slt i32 %95, %96
  br i1 %97, label %98, label %107

98:                                               ; preds = %94
  %99 = load i32*, i32** %11, align 8
  %100 = getelementptr inbounds i32, i32* %99, i32 1
  store i32* %100, i32** %11, align 8
  %101 = load i32, i32* %99, align 4
  %102 = load i32*, i32** %12, align 8
  %103 = getelementptr inbounds i32, i32* %102, i32 1
  store i32* %103, i32** %12, align 8
  store i32 %101, i32* %102, align 4
  br label %104

104:                                              ; preds = %98
  %105 = load i32, i32* %9, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %9, align 4
  br label %94

107:                                              ; preds = %94
  br label %108

108:                                              ; preds = %107
  %109 = load i32, i32* %10, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %10, align 4
  br label %52

111:                                              ; preds = %52
  br label %112

112:                                              ; preds = %111
  %113 = load i32, i32* %6, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %6, align 4
  br label %17

115:                                              ; preds = %17
  ret void
}

declare dso_local %struct.TYPE_5__* @av_pix_fmt_desc_get(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
