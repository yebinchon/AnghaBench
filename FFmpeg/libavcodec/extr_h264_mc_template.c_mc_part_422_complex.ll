; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_h264_mc_template.c_mc_part_422_complex.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_h264_mc_template.c_mc_part_422_complex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64**, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32*** }

@scan8 = common dso_local global i64* null, align 8
@PIXEL_SHIFT = common dso_local global i32 0, align 4
@CHROMA_IDC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_7__*, i32, i32, i32, i32, i32*, i32*, i32*, i32, i32, i32*, i32, i32*, i32, i32*, i32*, i32, i32)* @mc_part to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mc_part(i32* %0, %struct.TYPE_7__* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32* %6, i32* %7, i32* %8, i32 %9, i32 %10, i32* %11, i32 %12, i32* %13, i32 %14, i32* %15, i32* %16, i32 %17, i32 %18) #0 {
  %20 = alloca i32*, align 8
  %21 = alloca %struct.TYPE_7__*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32*, align 8
  %27 = alloca i32*, align 8
  %28 = alloca i32*, align 8
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32*, align 8
  %32 = alloca i32, align 4
  %33 = alloca i32*, align 8
  %34 = alloca i32, align 4
  %35 = alloca i32*, align 8
  %36 = alloca i32*, align 8
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  store i32* %0, i32** %20, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %21, align 8
  store i32 %2, i32* %22, align 4
  store i32 %3, i32* %23, align 4
  store i32 %4, i32* %24, align 4
  store i32 %5, i32* %25, align 4
  store i32* %6, i32** %26, align 8
  store i32* %7, i32** %27, align 8
  store i32* %8, i32** %28, align 8
  store i32 %9, i32* %29, align 4
  store i32 %10, i32* %30, align 4
  store i32* %11, i32** %31, align 8
  store i32 %12, i32* %32, align 4
  store i32* %13, i32** %33, align 8
  store i32 %14, i32* %34, align 4
  store i32* %15, i32** %35, align 8
  store i32* %16, i32** %36, align 8
  store i32 %17, i32* %37, align 4
  store i32 %18, i32* %38, align 4
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp eq i32 %42, 2
  br i1 %43, label %44, label %91

44:                                               ; preds = %19
  %45 = load i32, i32* %37, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %91

47:                                               ; preds = %44
  %48 = load i32, i32* %38, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %91

50:                                               ; preds = %47
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 1
  %54 = load i32***, i32**** %53, align 8
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = load i64**, i64*** %56, align 8
  %58 = getelementptr inbounds i64*, i64** %57, i64 0
  %59 = load i64*, i64** %58, align 8
  %60 = load i64*, i64** @scan8, align 8
  %61 = load i32, i32* %22, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i64, i64* %60, i64 %62
  %64 = load i64, i64* %63, align 8
  %65 = getelementptr inbounds i64, i64* %59, i64 %64
  %66 = load i64, i64* %65, align 8
  %67 = getelementptr inbounds i32**, i32*** %54, i64 %66
  %68 = load i32**, i32*** %67, align 8
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  %71 = load i64**, i64*** %70, align 8
  %72 = getelementptr inbounds i64*, i64** %71, i64 1
  %73 = load i64*, i64** %72, align 8
  %74 = load i64*, i64** @scan8, align 8
  %75 = load i32, i32* %22, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i64, i64* %74, i64 %76
  %78 = load i64, i64* %77, align 8
  %79 = getelementptr inbounds i64, i64* %73, i64 %78
  %80 = load i64, i64* %79, align 8
  %81 = getelementptr inbounds i32*, i32** %68, i64 %80
  %82 = load i32*, i32** %81, align 8
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = and i32 %85, 1
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %82, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = icmp ne i32 %89, 32
  br i1 %90, label %97, label %91

91:                                               ; preds = %50, %47, %44, %19
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 2
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = icmp eq i32 %95, 1
  br i1 %96, label %97, label %128

97:                                               ; preds = %91, %50
  %98 = load i32*, i32** %20, align 8
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %100 = load i32, i32* %22, align 4
  %101 = load i32, i32* %23, align 4
  %102 = load i32, i32* %24, align 4
  %103 = load i32, i32* %25, align 4
  %104 = load i32*, i32** %26, align 8
  %105 = load i32*, i32** %27, align 8
  %106 = load i32*, i32** %28, align 8
  %107 = load i32, i32* %29, align 4
  %108 = load i32, i32* %30, align 4
  %109 = load i32*, i32** %31, align 8
  %110 = load i32, i32* %32, align 4
  %111 = load i32*, i32** %35, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 0
  %113 = load i32, i32* %112, align 4
  %114 = load i32*, i32** %35, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 1
  %116 = load i32, i32* %115, align 4
  %117 = load i32*, i32** %36, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 0
  %119 = load i32, i32* %118, align 4
  %120 = load i32*, i32** %36, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 1
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* %37, align 4
  %124 = load i32, i32* %38, align 4
  %125 = load i32, i32* @PIXEL_SHIFT, align 4
  %126 = load i32, i32* @CHROMA_IDC, align 4
  %127 = call i32 @mc_part_weighted(i32* %98, %struct.TYPE_7__* %99, i32 %100, i32 %101, i32 %102, i32 %103, i32* %104, i32* %105, i32* %106, i32 %107, i32 %108, i32* %109, i32 %110, i32 %113, i32 %116, i32 %119, i32 %122, i32 %123, i32 %124, i32 %125, i32 %126)
  br label %149

128:                                              ; preds = %91
  %129 = load i32*, i32** %20, align 8
  %130 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %131 = load i32, i32* %22, align 4
  %132 = load i32, i32* %23, align 4
  %133 = load i32, i32* %24, align 4
  %134 = load i32, i32* %25, align 4
  %135 = load i32*, i32** %26, align 8
  %136 = load i32*, i32** %27, align 8
  %137 = load i32*, i32** %28, align 8
  %138 = load i32, i32* %29, align 4
  %139 = load i32, i32* %30, align 4
  %140 = load i32*, i32** %31, align 8
  %141 = load i32, i32* %32, align 4
  %142 = load i32*, i32** %33, align 8
  %143 = load i32, i32* %34, align 4
  %144 = load i32, i32* %37, align 4
  %145 = load i32, i32* %38, align 4
  %146 = load i32, i32* @PIXEL_SHIFT, align 4
  %147 = load i32, i32* @CHROMA_IDC, align 4
  %148 = call i32 @mc_part_std(i32* %129, %struct.TYPE_7__* %130, i32 %131, i32 %132, i32 %133, i32 %134, i32* %135, i32* %136, i32* %137, i32 %138, i32 %139, i32* %140, i32 %141, i32* %142, i32 %143, i32 %144, i32 %145, i32 %146, i32 %147)
  br label %149

149:                                              ; preds = %128, %97
  ret void
}

declare dso_local i32 @mc_part_weighted(i32*, %struct.TYPE_7__*, i32, i32, i32, i32, i32*, i32*, i32*, i32, i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @mc_part_std(i32*, %struct.TYPE_7__*, i32, i32, i32, i32, i32*, i32*, i32*, i32, i32, i32*, i32, i32*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
