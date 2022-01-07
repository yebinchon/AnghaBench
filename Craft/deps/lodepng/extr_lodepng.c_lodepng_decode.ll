; ModuleID = '/home/carl/AnghaBench/Craft/deps/lodepng/extr_lodepng.c_lodepng_decode.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/lodepng/extr_lodepng.c_lodepng_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_13__ }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_13__ = type { i64, i32 }

@LCT_RGB = common dso_local global i64 0, align 8
@LCT_RGBA = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lodepng_decode(i8** %0, i32* %1, i32* %2, %struct.TYPE_12__* %3, i8* %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_12__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  store i8** %0, i8*** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32* %2, i32** %10, align 8
  store %struct.TYPE_12__* %3, %struct.TYPE_12__** %11, align 8
  store i8* %4, i8** %12, align 8
  store i64 %5, i64* %13, align 8
  %16 = load i8**, i8*** %8, align 8
  store i8* null, i8** %16, align 8
  %17 = load i8**, i8*** %8, align 8
  %18 = load i32*, i32** %9, align 8
  %19 = load i32*, i32** %10, align 8
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %21 = load i8*, i8** %12, align 8
  %22 = load i64, i64* %13, align 8
  %23 = call i32 @decodeGeneric(i8** %17, i32* %18, i32* %19, %struct.TYPE_12__* %20, i8* %21, i64 %22)
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %6
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %7, align 4
  br label %139

32:                                               ; preds = %6
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %32
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 3
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 0
  %44 = call i64 @lodepng_color_mode_equal(%struct.TYPE_13__* %40, i32* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %71

46:                                               ; preds = %38, %32
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %70, label %52

52:                                               ; preds = %46
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 3
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 0
  %58 = call i32 @lodepng_color_mode_copy(%struct.TYPE_13__* %54, i32* %57)
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 8
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %52
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  store i32 %68, i32* %7, align 4
  br label %139

69:                                               ; preds = %52
  br label %70

70:                                               ; preds = %69, %46
  br label %135

71:                                               ; preds = %38
  %72 = load i8**, i8*** %8, align 8
  %73 = load i8*, i8** %72, align 8
  store i8* %73, i8** %14, align 8
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 3
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @LCT_RGB, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %94, label %80

80:                                               ; preds = %71
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 3
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @LCT_RGBA, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %94, label %87

87:                                               ; preds = %80
  %88 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 3
  %90 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = icmp eq i32 %91, 8
  br i1 %92, label %94, label %93

93:                                               ; preds = %87
  store i32 56, i32* %7, align 4
  br label %139

94:                                               ; preds = %87, %80, %71
  %95 = load i32*, i32** %9, align 8
  %96 = load i32, i32* %95, align 4
  %97 = load i32*, i32** %10, align 8
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %99, i32 0, i32 3
  %101 = call i64 @lodepng_get_raw_size(i32 %96, i32 %98, %struct.TYPE_13__* %100)
  store i64 %101, i64* %15, align 8
  %102 = load i64, i64* %15, align 8
  %103 = call i64 @lodepng_malloc(i64 %102)
  %104 = inttoptr i64 %103 to i8*
  %105 = load i8**, i8*** %8, align 8
  store i8* %104, i8** %105, align 8
  %106 = load i8**, i8*** %8, align 8
  %107 = load i8*, i8** %106, align 8
  %108 = icmp ne i8* %107, null
  br i1 %108, label %112, label %109

109:                                              ; preds = %94
  %110 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %111 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %110, i32 0, i32 0
  store i32 83, i32* %111, align 8
  br label %132

112:                                              ; preds = %94
  %113 = load i8**, i8*** %8, align 8
  %114 = load i8*, i8** %113, align 8
  %115 = load i8*, i8** %14, align 8
  %116 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %117 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %116, i32 0, i32 3
  %118 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %119 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %118, i32 0, i32 2
  %120 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %119, i32 0, i32 0
  %121 = load i32*, i32** %9, align 8
  %122 = load i32, i32* %121, align 4
  %123 = load i32*, i32** %10, align 8
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %126 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @lodepng_convert(i8* %114, i8* %115, %struct.TYPE_13__* %117, i32* %120, i32 %122, i32 %124, i32 %128)
  %130 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %131 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %130, i32 0, i32 0
  store i32 %129, i32* %131, align 8
  br label %132

132:                                              ; preds = %112, %109
  %133 = load i8*, i8** %14, align 8
  %134 = call i32 @lodepng_free(i8* %133)
  br label %135

135:                                              ; preds = %132, %70
  %136 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %137 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  store i32 %138, i32* %7, align 4
  br label %139

139:                                              ; preds = %135, %93, %65, %28
  %140 = load i32, i32* %7, align 4
  ret i32 %140
}

declare dso_local i32 @decodeGeneric(i8**, i32*, i32*, %struct.TYPE_12__*, i8*, i64) #1

declare dso_local i64 @lodepng_color_mode_equal(%struct.TYPE_13__*, i32*) #1

declare dso_local i32 @lodepng_color_mode_copy(%struct.TYPE_13__*, i32*) #1

declare dso_local i64 @lodepng_get_raw_size(i32, i32, %struct.TYPE_13__*) #1

declare dso_local i64 @lodepng_malloc(i64) #1

declare dso_local i32 @lodepng_convert(i8*, i8*, %struct.TYPE_13__*, i32*, i32, i32, i32) #1

declare dso_local i32 @lodepng_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
