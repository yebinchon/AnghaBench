; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers_font_renderer/extr_freetype.c_font_renderer_create_atlas.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers_font_renderer/extr_freetype.c_font_renderer_create_atlas.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_14__*, %struct.TYPE_11__, %struct.TYPE_10__* }
%struct.TYPE_14__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32, i32, i32* }
%struct.TYPE_10__ = type { float, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { float, float, float, float }

@FT_ATLAS_COLS = common dso_local global i32 0, align 4
@FT_ATLAS_ROWS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, float)* @font_renderer_create_atlas to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @font_renderer_create_atlas(%struct.TYPE_13__* %0, float %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca float, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_14__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store float %1, float* %5, align 4
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %9, align 8
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 2
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %20 = load float, float* %19, align 4
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 2
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 1
  %26 = load float, float* %25, align 4
  %27 = fsub float %20, %26
  %28 = load float, float* %5, align 4
  %29 = fmul float %27, %28
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 2
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  %34 = load float, float* %33, align 4
  %35 = fdiv float %29, %34
  %36 = call i32 @round(float %35)
  store i32 %36, i32* %10, align 4
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %37, i32 0, i32 2
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 2
  %42 = load float, float* %41, align 4
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %43, i32 0, i32 2
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 3
  %48 = load float, float* %47, align 4
  %49 = fsub float %42, %48
  %50 = load float, float* %5, align 4
  %51 = fmul float %49, %50
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 2
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 0
  %56 = load float, float* %55, align 4
  %57 = fdiv float %51, %56
  %58 = call i32 @round(float %57)
  store i32 %58, i32* %11, align 4
  %59 = load i32, i32* %10, align 4
  %60 = load i32, i32* @FT_ATLAS_COLS, align 4
  %61 = mul i32 %59, %60
  store i32 %61, i32* %12, align 4
  %62 = load i32, i32* %11, align 4
  %63 = load i32, i32* @FT_ATLAS_ROWS, align 4
  %64 = mul i32 %62, %63
  store i32 %64, i32* %13, align 4
  %65 = load i32, i32* %12, align 4
  %66 = load i32, i32* %13, align 4
  %67 = mul i32 %65, %66
  %68 = call i64 @calloc(i32 %67, i32 1)
  %69 = inttoptr i64 %68 to i32*
  store i32* %69, i32** %14, align 8
  %70 = load i32*, i32** %14, align 8
  %71 = icmp ne i32* %70, null
  br i1 %71, label %73, label %72

72:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %148

73:                                               ; preds = %2
  %74 = load i32*, i32** %14, align 8
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 2
  store i32* %74, i32** %77, align 8
  %78 = load i32, i32* %12, align 4
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 0
  store i32 %78, i32* %81, align 8
  %82 = load i32, i32* %13, align 4
  %83 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 1
  store i32 %82, i32* %85, align 4
  %86 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %86, i32 0, i32 0
  %88 = load %struct.TYPE_14__*, %struct.TYPE_14__** %87, align 8
  store %struct.TYPE_14__* %88, %struct.TYPE_14__** %9, align 8
  store i32 0, i32* %8, align 4
  br label %89

89:                                               ; preds = %117, %73
  %90 = load i32, i32* %8, align 4
  %91 = load i32, i32* @FT_ATLAS_ROWS, align 4
  %92 = icmp ult i32 %90, %91
  br i1 %92, label %93, label %120

93:                                               ; preds = %89
  store i32 0, i32* %7, align 4
  br label %94

94:                                               ; preds = %113, %93
  %95 = load i32, i32* %7, align 4
  %96 = load i32, i32* @FT_ATLAS_COLS, align 4
  %97 = icmp ult i32 %95, %96
  br i1 %97, label %98, label %116

98:                                               ; preds = %94
  %99 = load i32, i32* %7, align 4
  %100 = load i32, i32* %10, align 4
  %101 = mul i32 %99, %100
  %102 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %103 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %103, i32 0, i32 0
  store i32 %101, i32* %104, align 4
  %105 = load i32, i32* %8, align 4
  %106 = load i32, i32* %11, align 4
  %107 = mul i32 %105, %106
  %108 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %109 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %109, i32 0, i32 1
  store i32 %107, i32* %110, align 4
  %111 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %112 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %111, i32 1
  store %struct.TYPE_14__* %112, %struct.TYPE_14__** %9, align 8
  br label %113

113:                                              ; preds = %98
  %114 = load i32, i32* %7, align 4
  %115 = add i32 %114, 1
  store i32 %115, i32* %7, align 4
  br label %94

116:                                              ; preds = %94
  br label %117

117:                                              ; preds = %116
  %118 = load i32, i32* %8, align 4
  %119 = add i32 %118, 1
  store i32 %119, i32* %8, align 4
  br label %89

120:                                              ; preds = %89
  store i32 0, i32* %6, align 4
  br label %121

121:                                              ; preds = %128, %120
  %122 = load i32, i32* %6, align 4
  %123 = icmp ult i32 %122, 256
  br i1 %123, label %124, label %131

124:                                              ; preds = %121
  %125 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %126 = load i32, i32* %6, align 4
  %127 = call i32 @font_renderer_ft_get_glyph(%struct.TYPE_13__* %125, i32 %126)
  br label %128

128:                                              ; preds = %124
  %129 = load i32, i32* %6, align 4
  %130 = add i32 %129, 1
  store i32 %130, i32* %6, align 4
  br label %121

131:                                              ; preds = %121
  store i32 0, i32* %6, align 4
  br label %132

132:                                              ; preds = %144, %131
  %133 = load i32, i32* %6, align 4
  %134 = icmp ult i32 %133, 256
  br i1 %134, label %135, label %147

135:                                              ; preds = %132
  %136 = load i32, i32* %6, align 4
  %137 = call i64 @isalnum(i32 %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %143

139:                                              ; preds = %135
  %140 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %141 = load i32, i32* %6, align 4
  %142 = call i32 @font_renderer_ft_get_glyph(%struct.TYPE_13__* %140, i32 %141)
  br label %143

143:                                              ; preds = %139, %135
  br label %144

144:                                              ; preds = %143
  %145 = load i32, i32* %6, align 4
  %146 = add i32 %145, 1
  store i32 %146, i32* %6, align 4
  br label %132

147:                                              ; preds = %132
  store i32 1, i32* %3, align 4
  br label %148

148:                                              ; preds = %147, %72
  %149 = load i32, i32* %3, align 4
  ret i32 %149
}

declare dso_local i32 @round(float) #1

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @font_renderer_ft_get_glyph(%struct.TYPE_13__*, i32) #1

declare dso_local i64 @isalnum(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
