; ModuleID = '/home/carl/AnghaBench/Cinder/src/freetype/base/extr_ftstroke.c_ft_stroke_border_close.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/freetype/base/extr_ftstroke.c_ft_stroke_border_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32*, i32* }

@FT_STROKE_TAG_BEGIN = common dso_local global i32 0, align 4
@FT_STROKE_TAG_END = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i64)* @ft_stroke_border_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ft_stroke_border_close(%struct.TYPE_3__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i64 %1, i64* %4, align 8
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %5, align 4
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %6, align 4
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp sge i32 %21, 0
  %23 = zext i1 %22 to i32
  %24 = call i32 @FT_ASSERT(i32 %23)
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* %5, align 4
  %27 = add i32 %26, 1
  %28 = icmp ule i32 %25, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %2
  %30 = load i32, i32* %5, align 4
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  br label %138

33:                                               ; preds = %2
  %34 = load i32, i32* %6, align 4
  %35 = add i32 %34, -1
  store i32 %35, i32* %6, align 4
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 4
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* %6, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 4
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %5, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  store i32 %44, i32* %50, align 4
  %51 = load i64, i64* %4, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %118

53:                                               ; preds = %33
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 4
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %5, align 4
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = getelementptr inbounds i32, i32* %59, i64 1
  store i32* %60, i32** %7, align 8
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 4
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* %6, align 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = getelementptr inbounds i32, i32* %66, i64 -1
  store i32* %67, i32** %8, align 8
  br label %68

68:                                               ; preds = %80, %53
  %69 = load i32*, i32** %7, align 8
  %70 = load i32*, i32** %8, align 8
  %71 = icmp ult i32* %69, %70
  br i1 %71, label %72, label %85

72:                                               ; preds = %68
  %73 = load i32*, i32** %7, align 8
  %74 = load i32, i32* %73, align 4
  store i32 %74, i32* %9, align 4
  %75 = load i32*, i32** %8, align 8
  %76 = load i32, i32* %75, align 4
  %77 = load i32*, i32** %7, align 8
  store i32 %76, i32* %77, align 4
  %78 = load i32, i32* %9, align 4
  %79 = load i32*, i32** %8, align 8
  store i32 %78, i32* %79, align 4
  br label %80

80:                                               ; preds = %72
  %81 = load i32*, i32** %7, align 8
  %82 = getelementptr inbounds i32, i32* %81, i32 1
  store i32* %82, i32** %7, align 8
  %83 = load i32*, i32** %8, align 8
  %84 = getelementptr inbounds i32, i32* %83, i32 -1
  store i32* %84, i32** %8, align 8
  br label %68

85:                                               ; preds = %68
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 3
  %88 = load i32*, i32** %87, align 8
  %89 = load i32, i32* %5, align 4
  %90 = zext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  %92 = getelementptr inbounds i32, i32* %91, i64 1
  store i32* %92, i32** %10, align 8
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 3
  %95 = load i32*, i32** %94, align 8
  %96 = load i32, i32* %6, align 4
  %97 = zext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  %99 = getelementptr inbounds i32, i32* %98, i64 -1
  store i32* %99, i32** %11, align 8
  br label %100

100:                                              ; preds = %112, %85
  %101 = load i32*, i32** %10, align 8
  %102 = load i32*, i32** %11, align 8
  %103 = icmp ult i32* %101, %102
  br i1 %103, label %104, label %117

104:                                              ; preds = %100
  %105 = load i32*, i32** %10, align 8
  %106 = load i32, i32* %105, align 4
  store i32 %106, i32* %12, align 4
  %107 = load i32*, i32** %11, align 8
  %108 = load i32, i32* %107, align 4
  %109 = load i32*, i32** %10, align 8
  store i32 %108, i32* %109, align 4
  %110 = load i32, i32* %12, align 4
  %111 = load i32*, i32** %11, align 8
  store i32 %110, i32* %111, align 4
  br label %112

112:                                              ; preds = %104
  %113 = load i32*, i32** %10, align 8
  %114 = getelementptr inbounds i32, i32* %113, i32 1
  store i32* %114, i32** %10, align 8
  %115 = load i32*, i32** %11, align 8
  %116 = getelementptr inbounds i32, i32* %115, i32 -1
  store i32* %116, i32** %11, align 8
  br label %100

117:                                              ; preds = %100
  br label %118

118:                                              ; preds = %117, %33
  %119 = load i32, i32* @FT_STROKE_TAG_BEGIN, align 4
  %120 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 3
  %122 = load i32*, i32** %121, align 8
  %123 = load i32, i32* %5, align 4
  %124 = zext i32 %123 to i64
  %125 = getelementptr inbounds i32, i32* %122, i64 %124
  %126 = load i32, i32* %125, align 4
  %127 = or i32 %126, %119
  store i32 %127, i32* %125, align 4
  %128 = load i32, i32* @FT_STROKE_TAG_END, align 4
  %129 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %129, i32 0, i32 3
  %131 = load i32*, i32** %130, align 8
  %132 = load i32, i32* %6, align 4
  %133 = sub i32 %132, 1
  %134 = zext i32 %133 to i64
  %135 = getelementptr inbounds i32, i32* %131, i64 %134
  %136 = load i32, i32* %135, align 4
  %137 = or i32 %136, %128
  store i32 %137, i32* %135, align 4
  br label %138

138:                                              ; preds = %118, %29
  %139 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %140 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %139, i32 0, i32 0
  store i32 -1, i32* %140, align 8
  %141 = load i32, i32* @FALSE, align 4
  %142 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %143 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %142, i32 0, i32 2
  store i32 %141, i32* %143, align 8
  ret void
}

declare dso_local i32 @FT_ASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
