; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers_font/extr_gl1_raster_font.c_gl1_raster_font_upload_atlas.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers_font/extr_gl1_raster_font.c_gl1_raster_font_upload_atlas.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, i32* }

@GL_LUMINANCE_ALPHA = common dso_local global i8* null, align 8
@GL_TEXTURE_2D = common dso_local global i32 0, align 4
@GL_UNSIGNED_BYTE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*)* @gl1_raster_font_upload_atlas to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gl1_raster_font_upload_atlas(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %13 = load i8*, i8** @GL_LUMINANCE_ALPHA, align 8
  store i8* %13, i8** %5, align 8
  %14 = load i8*, i8** @GL_LUMINANCE_ALPHA, align 8
  store i8* %14, i8** %6, align 8
  store i64 2, i64* %7, align 8
  store i32* null, i32** %8, align 8
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* %7, align 8
  %22 = mul i64 %20, %21
  %23 = call i64 @calloc(i32 %17, i64 %22)
  %24 = inttoptr i64 %23 to i32*
  store i32* %24, i32** %8, align 8
  %25 = load i64, i64* %7, align 8
  switch i64 %25, label %130 [
    i64 1, label %26
    i64 2, label %72
  ]

26:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  br label %27

27:                                               ; preds = %68, %26
  %28 = load i32, i32* %3, align 4
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 2
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp ult i32 %28, %33
  br i1 %34, label %35, label %71

35:                                               ; preds = %27
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 2
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 2
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* %3, align 4
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 2
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = mul i32 %41, %46
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %40, i64 %48
  store i32* %49, i32** %9, align 8
  %50 = load i32*, i32** %8, align 8
  %51 = load i32, i32* %3, align 4
  %52 = zext i32 %51 to i64
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = mul i64 %52, %55
  %57 = load i64, i64* %7, align 8
  %58 = mul i64 %56, %57
  %59 = getelementptr inbounds i32, i32* %50, i64 %58
  store i32* %59, i32** %10, align 8
  %60 = load i32*, i32** %10, align 8
  %61 = load i32*, i32** %9, align 8
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 2
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @memcpy(i32* %60, i32* %61, i32 %66)
  br label %68

68:                                               ; preds = %35
  %69 = load i32, i32* %3, align 4
  %70 = add i32 %69, 1
  store i32 %70, i32* %3, align 4
  br label %27

71:                                               ; preds = %27
  br label %130

72:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  br label %73

73:                                               ; preds = %126, %72
  %74 = load i32, i32* %3, align 4
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 2
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = icmp ult i32 %74, %79
  br i1 %80, label %81, label %129

81:                                               ; preds = %73
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 2
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 2
  %86 = load i32*, i32** %85, align 8
  %87 = load i32, i32* %3, align 4
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 2
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = mul i32 %87, %92
  %94 = zext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %86, i64 %94
  store i32* %95, i32** %11, align 8
  %96 = load i32*, i32** %8, align 8
  %97 = load i32, i32* %3, align 4
  %98 = zext i32 %97 to i64
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = mul i64 %98, %101
  %103 = load i64, i64* %7, align 8
  %104 = mul i64 %102, %103
  %105 = getelementptr inbounds i32, i32* %96, i64 %104
  store i32* %105, i32** %12, align 8
  store i32 0, i32* %4, align 4
  br label %106

106:                                              ; preds = %122, %81
  %107 = load i32, i32* %4, align 4
  %108 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 2
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = icmp ult i32 %107, %112
  br i1 %113, label %114, label %125

114:                                              ; preds = %106
  %115 = load i32*, i32** %12, align 8
  %116 = getelementptr inbounds i32, i32* %115, i32 1
  store i32* %116, i32** %12, align 8
  store i32 255, i32* %115, align 4
  %117 = load i32*, i32** %11, align 8
  %118 = getelementptr inbounds i32, i32* %117, i32 1
  store i32* %118, i32** %11, align 8
  %119 = load i32, i32* %117, align 4
  %120 = load i32*, i32** %12, align 8
  %121 = getelementptr inbounds i32, i32* %120, i32 1
  store i32* %121, i32** %12, align 8
  store i32 %119, i32* %120, align 4
  br label %122

122:                                              ; preds = %114
  %123 = load i32, i32* %4, align 4
  %124 = add i32 %123, 1
  store i32 %124, i32* %4, align 4
  br label %106

125:                                              ; preds = %106
  br label %126

126:                                              ; preds = %125
  %127 = load i32, i32* %3, align 4
  %128 = add i32 %127, 1
  store i32 %128, i32* %3, align 4
  br label %73

129:                                              ; preds = %73
  br label %130

130:                                              ; preds = %1, %129, %71
  %131 = load i32, i32* @GL_TEXTURE_2D, align 4
  %132 = load i8*, i8** %5, align 8
  %133 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = trunc i64 %135 to i32
  %137 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %138 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 8
  %140 = load i8*, i8** %6, align 8
  %141 = load i32, i32* @GL_UNSIGNED_BYTE, align 4
  %142 = load i32*, i32** %8, align 8
  %143 = call i32 @glTexImage2D(i32 %131, i32 0, i8* %132, i32 %136, i32 %139, i32 0, i8* %140, i32 %141, i32* %142)
  %144 = load i32*, i32** %8, align 8
  %145 = call i32 @free(i32* %144)
  ret i32 1
}

declare dso_local i64 @calloc(i32, i64) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @glTexImage2D(i32, i32, i8*, i32, i32, i32, i8*, i32, i32*) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
