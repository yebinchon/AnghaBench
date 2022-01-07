; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_webp.c_parse_transform_color_indexing.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_webp.c_parse_transform_color_indexing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, %struct.TYPE_8__*, i32 }
%struct.TYPE_8__ = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i64** }

@IMAGE_ROLE_COLOR_INDEXING = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*)* @parse_transform_color_indexing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_transform_color_indexing(%struct.TYPE_7__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 3
  %12 = call i32 @get_bits(i32* %11, i32 8)
  %13 = add nsw i32 %12, 1
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp sle i32 %14, 2
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  store i32 3, i32* %5, align 4
  br label %28

17:                                               ; preds = %1
  %18 = load i32, i32* %6, align 4
  %19 = icmp sle i32 %18, 4
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  store i32 2, i32* %5, align 4
  br label %27

21:                                               ; preds = %17
  %22 = load i32, i32* %6, align 4
  %23 = icmp sle i32 %22, 16
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  store i32 1, i32* %5, align 4
  br label %26

25:                                               ; preds = %21
  store i32 0, i32* %5, align 4
  br label %26

26:                                               ; preds = %25, %24
  br label %27

27:                                               ; preds = %26, %20
  br label %28

28:                                               ; preds = %27, %16
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %30 = load i64, i64* @IMAGE_ROLE_COLOR_INDEXING, align 8
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @decode_entropy_coded_image(%struct.TYPE_7__* %29, i64 %30, i32 %31, i32 1)
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %28
  %36 = load i32, i32* %7, align 4
  store i32 %36, i32* %2, align 4
  br label %92

37:                                               ; preds = %28
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 2
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %39, align 8
  %41 = load i64, i64* @IMAGE_ROLE_COLOR_INDEXING, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i64 %41
  store %struct.TYPE_8__* %42, %struct.TYPE_8__** %4, align 8
  %43 = load i32, i32* %5, align 4
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  %46 = load i32, i32* %5, align 4
  %47 = icmp sgt i32 %46, 0
  br i1 %47, label %48, label %60

48:                                               ; preds = %37
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %5, align 4
  %53 = shl i32 1, %52
  %54 = sub nsw i32 %53, 1
  %55 = add nsw i32 %51, %54
  %56 = load i32, i32* %5, align 4
  %57 = ashr i32 %55, %56
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 8
  br label %60

60:                                               ; preds = %48, %37
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 1
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 1
  %65 = load i64**, i64*** %64, align 8
  %66 = getelementptr inbounds i64*, i64** %65, i64 0
  %67 = load i64*, i64** %66, align 8
  %68 = getelementptr inbounds i64, i64* %67, i64 4
  store i64* %68, i64** %9, align 8
  store i32 4, i32* %8, align 4
  br label %69

69:                                               ; preds = %86, %60
  %70 = load i32, i32* %8, align 4
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 1
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = mul nsw i32 %75, 4
  %77 = icmp slt i32 %70, %76
  br i1 %77, label %78, label %91

78:                                               ; preds = %69
  %79 = load i64*, i64** %9, align 8
  %80 = getelementptr inbounds i64, i64* %79, i64 -4
  %81 = load i64, i64* %80, align 8
  %82 = load i64*, i64** %9, align 8
  %83 = getelementptr inbounds i64, i64* %82, i64 0
  %84 = load i64, i64* %83, align 8
  %85 = add nsw i64 %84, %81
  store i64 %85, i64* %83, align 8
  br label %86

86:                                               ; preds = %78
  %87 = load i32, i32* %8, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %8, align 4
  %89 = load i64*, i64** %9, align 8
  %90 = getelementptr inbounds i64, i64* %89, i32 1
  store i64* %90, i64** %9, align 8
  br label %69

91:                                               ; preds = %69
  store i32 0, i32* %2, align 4
  br label %92

92:                                               ; preds = %91, %35
  %93 = load i32, i32* %2, align 4
  ret i32 %93
}

declare dso_local i32 @get_bits(i32*, i32) #1

declare dso_local i32 @decode_entropy_coded_image(%struct.TYPE_7__*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
