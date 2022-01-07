; ModuleID = '/home/carl/AnghaBench/darknet/src/extr_stb_image.h_stbi__expand_png_palette.c'
source_filename = "/home/carl/AnghaBench/darknet/src/extr_stb_image.h_stbi__expand_png_palette.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i64 }

@.str = private unnamed_addr constant [9 x i8] c"outofmem\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"Out of memory\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32*, i32, i32)* @stbi__expand_png_palette to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stbi__expand_png_palette(%struct.TYPE_5__* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = mul i64 %21, %26
  store i64 %27, i64* %11, align 8
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  store i32* %30, i32** %14, align 8
  %31 = load i64, i64* %11, align 8
  %32 = load i32, i32* %9, align 4
  %33 = call i64 @stbi__malloc_mad2(i64 %31, i32 %32, i32 0)
  %34 = inttoptr i64 %33 to i32*
  store i32* %34, i32** %12, align 8
  %35 = load i32*, i32** %12, align 8
  %36 = icmp eq i32* %35, null
  br i1 %36, label %37, label %39

37:                                               ; preds = %4
  %38 = call i32 @stbi__err(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  store i32 %38, i32* %5, align 4
  br label %141

39:                                               ; preds = %4
  %40 = load i32*, i32** %12, align 8
  store i32* %40, i32** %13, align 8
  %41 = load i32, i32* %9, align 4
  %42 = icmp eq i32 %41, 3
  br i1 %42, label %43, label %83

43:                                               ; preds = %39
  store i64 0, i64* %10, align 8
  br label %44

44:                                               ; preds = %79, %43
  %45 = load i64, i64* %10, align 8
  %46 = load i64, i64* %11, align 8
  %47 = icmp ult i64 %45, %46
  br i1 %47, label %48, label %82

48:                                               ; preds = %44
  %49 = load i32*, i32** %14, align 8
  %50 = load i64, i64* %10, align 8
  %51 = getelementptr inbounds i32, i32* %49, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = mul nsw i32 %52, 4
  store i32 %53, i32* %15, align 4
  %54 = load i32*, i32** %7, align 8
  %55 = load i32, i32* %15, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = load i32*, i32** %12, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 0
  store i32 %58, i32* %60, align 4
  %61 = load i32*, i32** %7, align 8
  %62 = load i32, i32* %15, align 4
  %63 = add nsw i32 %62, 1
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %61, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = load i32*, i32** %12, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 1
  store i32 %66, i32* %68, align 4
  %69 = load i32*, i32** %7, align 8
  %70 = load i32, i32* %15, align 4
  %71 = add nsw i32 %70, 2
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %69, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = load i32*, i32** %12, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 2
  store i32 %74, i32* %76, align 4
  %77 = load i32*, i32** %12, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 3
  store i32* %78, i32** %12, align 8
  br label %79

79:                                               ; preds = %48
  %80 = load i64, i64* %10, align 8
  %81 = add i64 %80, 1
  store i64 %81, i64* %10, align 8
  br label %44

82:                                               ; preds = %44
  br label %131

83:                                               ; preds = %39
  store i64 0, i64* %10, align 8
  br label %84

84:                                               ; preds = %127, %83
  %85 = load i64, i64* %10, align 8
  %86 = load i64, i64* %11, align 8
  %87 = icmp ult i64 %85, %86
  br i1 %87, label %88, label %130

88:                                               ; preds = %84
  %89 = load i32*, i32** %14, align 8
  %90 = load i64, i64* %10, align 8
  %91 = getelementptr inbounds i32, i32* %89, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = mul nsw i32 %92, 4
  store i32 %93, i32* %16, align 4
  %94 = load i32*, i32** %7, align 8
  %95 = load i32, i32* %16, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = load i32*, i32** %12, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 0
  store i32 %98, i32* %100, align 4
  %101 = load i32*, i32** %7, align 8
  %102 = load i32, i32* %16, align 4
  %103 = add nsw i32 %102, 1
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %101, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = load i32*, i32** %12, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 1
  store i32 %106, i32* %108, align 4
  %109 = load i32*, i32** %7, align 8
  %110 = load i32, i32* %16, align 4
  %111 = add nsw i32 %110, 2
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %109, i64 %112
  %114 = load i32, i32* %113, align 4
  %115 = load i32*, i32** %12, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 2
  store i32 %114, i32* %116, align 4
  %117 = load i32*, i32** %7, align 8
  %118 = load i32, i32* %16, align 4
  %119 = add nsw i32 %118, 3
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %117, i64 %120
  %122 = load i32, i32* %121, align 4
  %123 = load i32*, i32** %12, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 3
  store i32 %122, i32* %124, align 4
  %125 = load i32*, i32** %12, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 4
  store i32* %126, i32** %12, align 8
  br label %127

127:                                              ; preds = %88
  %128 = load i64, i64* %10, align 8
  %129 = add i64 %128, 1
  store i64 %129, i64* %10, align 8
  br label %84

130:                                              ; preds = %84
  br label %131

131:                                              ; preds = %130, %82
  %132 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i32 0, i32 0
  %134 = load i32*, i32** %133, align 8
  %135 = call i32 @STBI_FREE(i32* %134)
  %136 = load i32*, i32** %13, align 8
  %137 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %138 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %137, i32 0, i32 0
  store i32* %136, i32** %138, align 8
  %139 = load i32, i32* %8, align 4
  %140 = call i32 @STBI_NOTUSED(i32 %139)
  store i32 1, i32* %5, align 4
  br label %141

141:                                              ; preds = %131, %37
  %142 = load i32, i32* %5, align 4
  ret i32 %142
}

declare dso_local i64 @stbi__malloc_mad2(i64, i32, i32) #1

declare dso_local i32 @stbi__err(i8*, i8*) #1

declare dso_local i32 @STBI_FREE(i32*) #1

declare dso_local i32 @STBI_NOTUSED(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
