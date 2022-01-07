; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_sdl2_gfx.c_sdl2_init_font.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_sdl2_gfx.c_sdl2_init_font.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i32, i32, %struct.TYPE_13__, i32, i32, %struct.TYPE_17__* }
%struct.TYPE_13__ = type { i32, i32, i32, i32 }
%struct.TYPE_17__ = type { %struct.font_atlas* (i32)* }
%struct.font_atlas = type { i32, i32, i32 }
%struct.TYPE_16__ = type { i32, i32, i32, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_12__, %struct.TYPE_11__ }
%struct.TYPE_12__ = type { i32, i32, i32 }
%struct.TYPE_11__ = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"[SDL]: Could not initialize fonts.\0A\00", align 1
@SDL_TRUE = common dso_local global i32 0, align 4
@SDL_BLENDMODE_ADD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"[SDL]: Failed to initialize font texture: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_15__*, i8*, i32)* @sdl2_init_font to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sdl2_init_font(%struct.TYPE_15__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [256 x %struct.TYPE_16__], align 16
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.font_atlas*, align 8
  %15 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32* null, i32** %12, align 8
  store i32* null, i32** %13, align 8
  store %struct.font_atlas* null, %struct.font_atlas** %14, align 8
  %16 = call %struct.TYPE_14__* (...) @config_get_ptr()
  store %struct.TYPE_14__* %16, %struct.TYPE_14__** %15, align 8
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %18 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %3
  br label %206

23:                                               ; preds = %3
  %24 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %24, i32 0, i32 6
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %26, i32 0, i32 5
  %28 = load i8*, i8** %5, align 8
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %23
  %33 = load i8*, i8** %5, align 8
  br label %35

34:                                               ; preds = %23
  br label %35

35:                                               ; preds = %34, %32
  %36 = phi i8* [ %33, %32 ], [ null, %34 ]
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @font_renderer_create_default(%struct.TYPE_17__** %25, i32* %27, i8* %36, i32 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %35
  %41 = call i32 (i8*, ...) @RARCH_WARN(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %206

42:                                               ; preds = %35
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = mul nsw i32 %46, 255
  store i32 %47, i32* %8, align 4
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = mul nsw i32 %51, 255
  store i32 %52, i32* %9, align 4
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = mul nsw i32 %56, 255
  store i32 %57, i32* %10, align 4
  %58 = load i32, i32* %8, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %42
  br label %69

61:                                               ; preds = %42
  %62 = load i32, i32* %8, align 4
  %63 = icmp sgt i32 %62, 255
  br i1 %63, label %64, label %65

64:                                               ; preds = %61
  br label %67

65:                                               ; preds = %61
  %66 = load i32, i32* %8, align 4
  br label %67

67:                                               ; preds = %65, %64
  %68 = phi i32 [ 255, %64 ], [ %66, %65 ]
  br label %69

69:                                               ; preds = %67, %60
  %70 = phi i32 [ 0, %60 ], [ %68, %67 ]
  store i32 %70, i32* %8, align 4
  %71 = load i32, i32* %9, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %69
  br label %82

74:                                               ; preds = %69
  %75 = load i32, i32* %9, align 4
  %76 = icmp sgt i32 %75, 255
  br i1 %76, label %77, label %78

77:                                               ; preds = %74
  br label %80

78:                                               ; preds = %74
  %79 = load i32, i32* %9, align 4
  br label %80

80:                                               ; preds = %78, %77
  %81 = phi i32 [ 255, %77 ], [ %79, %78 ]
  br label %82

82:                                               ; preds = %80, %73
  %83 = phi i32 [ 0, %73 ], [ %81, %80 ]
  store i32 %83, i32* %9, align 4
  %84 = load i32, i32* %10, align 4
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %82
  br label %95

87:                                               ; preds = %82
  %88 = load i32, i32* %10, align 4
  %89 = icmp sgt i32 %88, 255
  br i1 %89, label %90, label %91

90:                                               ; preds = %87
  br label %93

91:                                               ; preds = %87
  %92 = load i32, i32* %10, align 4
  br label %93

93:                                               ; preds = %91, %90
  %94 = phi i32 [ 255, %90 ], [ %92, %91 ]
  br label %95

95:                                               ; preds = %93, %86
  %96 = phi i32 [ 0, %86 ], [ %94, %93 ]
  store i32 %96, i32* %10, align 4
  %97 = load i32, i32* %8, align 4
  %98 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %98, i32 0, i32 0
  store i32 %97, i32* %99, align 8
  %100 = load i32, i32* %9, align 4
  %101 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %101, i32 0, i32 1
  store i32 %100, i32* %102, align 4
  %103 = load i32, i32* %10, align 4
  %104 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %104, i32 0, i32 2
  store i32 %103, i32* %105, align 8
  %106 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %106, i32 0, i32 6
  %108 = load %struct.TYPE_17__*, %struct.TYPE_17__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %108, i32 0, i32 0
  %110 = load %struct.font_atlas* (i32)*, %struct.font_atlas* (i32)** %109, align 8
  %111 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %111, i32 0, i32 5
  %113 = load i32, i32* %112, align 8
  %114 = call %struct.font_atlas* %110(i32 %113)
  store %struct.font_atlas* %114, %struct.font_atlas** %14, align 8
  %115 = load %struct.font_atlas*, %struct.font_atlas** %14, align 8
  %116 = getelementptr inbounds %struct.font_atlas, %struct.font_atlas* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.font_atlas*, %struct.font_atlas** %14, align 8
  %119 = getelementptr inbounds %struct.font_atlas, %struct.font_atlas* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.font_atlas*, %struct.font_atlas** %14, align 8
  %122 = getelementptr inbounds %struct.font_atlas, %struct.font_atlas* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.font_atlas*, %struct.font_atlas** %14, align 8
  %125 = getelementptr inbounds %struct.font_atlas, %struct.font_atlas* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = call i32* @SDL_CreateRGBSurfaceFrom(i32 %117, i32 %120, i32 %123, i32 8, i32 %126, i32 0, i32 0, i32 0, i32 0)
  store i32* %127, i32** %12, align 8
  store i32 0, i32* %7, align 4
  br label %128

128:                                              ; preds = %149, %95
  %129 = load i32, i32* %7, align 4
  %130 = icmp slt i32 %129, 256
  br i1 %130, label %131, label %152

131:                                              ; preds = %128
  %132 = load i32, i32* %7, align 4
  %133 = load i32, i32* %7, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds [256 x %struct.TYPE_16__], [256 x %struct.TYPE_16__]* %11, i64 0, i64 %134
  %136 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %135, i32 0, i32 2
  store i32 %132, i32* %136, align 8
  %137 = load i32, i32* %7, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds [256 x %struct.TYPE_16__], [256 x %struct.TYPE_16__]* %11, i64 0, i64 %138
  %140 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %139, i32 0, i32 1
  store i32 %132, i32* %140, align 4
  %141 = load i32, i32* %7, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds [256 x %struct.TYPE_16__], [256 x %struct.TYPE_16__]* %11, i64 0, i64 %142
  %144 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %143, i32 0, i32 0
  store i32 %132, i32* %144, align 16
  %145 = load i32, i32* %7, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds [256 x %struct.TYPE_16__], [256 x %struct.TYPE_16__]* %11, i64 0, i64 %146
  %148 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %147, i32 0, i32 3
  store i32 255, i32* %148, align 4
  br label %149

149:                                              ; preds = %131
  %150 = load i32, i32* %7, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %7, align 4
  br label %128

152:                                              ; preds = %128
  %153 = call i32* @SDL_AllocPalette(i32 256)
  store i32* %153, i32** %13, align 8
  %154 = load i32*, i32** %13, align 8
  %155 = getelementptr inbounds [256 x %struct.TYPE_16__], [256 x %struct.TYPE_16__]* %11, i64 0, i64 0
  %156 = call i32 @SDL_SetPaletteColors(i32* %154, %struct.TYPE_16__* %155, i32 0, i32 256)
  %157 = load i32*, i32** %12, align 8
  %158 = load i32*, i32** %13, align 8
  %159 = call i32 @SDL_SetSurfacePalette(i32* %157, i32* %158)
  %160 = load i32*, i32** %12, align 8
  %161 = load i32, i32* @SDL_TRUE, align 4
  %162 = call i32 @SDL_SetColorKey(i32* %160, i32 %161, i32 0)
  %163 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %164 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %163, i32 0, i32 4
  %165 = load i32, i32* %164, align 4
  %166 = load i32*, i32** %12, align 8
  %167 = call i32 @SDL_CreateTextureFromSurface(i32 %165, i32* %166)
  %168 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %169 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %168, i32 0, i32 3
  %170 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %169, i32 0, i32 1
  store i32 %167, i32* %170, align 4
  %171 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %172 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %171, i32 0, i32 3
  %173 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %198

176:                                              ; preds = %152
  %177 = load %struct.font_atlas*, %struct.font_atlas** %14, align 8
  %178 = getelementptr inbounds %struct.font_atlas, %struct.font_atlas* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 4
  %180 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %181 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %180, i32 0, i32 3
  %182 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %181, i32 0, i32 3
  store i32 %179, i32* %182, align 4
  %183 = load %struct.font_atlas*, %struct.font_atlas** %14, align 8
  %184 = getelementptr inbounds %struct.font_atlas, %struct.font_atlas* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 4
  %186 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %187 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %186, i32 0, i32 3
  %188 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %187, i32 0, i32 2
  store i32 %185, i32* %188, align 4
  %189 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %190 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %189, i32 0, i32 3
  %191 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %190, i32 0, i32 0
  store i32 1, i32* %191, align 4
  %192 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %193 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %192, i32 0, i32 3
  %194 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 4
  %196 = load i32, i32* @SDL_BLENDMODE_ADD, align 4
  %197 = call i32 @SDL_SetTextureBlendMode(i32 %195, i32 %196)
  br label %201

198:                                              ; preds = %152
  %199 = call i32 (...) @SDL_GetError()
  %200 = call i32 (i8*, ...) @RARCH_WARN(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %199)
  br label %201

201:                                              ; preds = %198, %176
  %202 = load i32*, i32** %13, align 8
  %203 = call i32 @SDL_FreePalette(i32* %202)
  %204 = load i32*, i32** %12, align 8
  %205 = call i32 @SDL_FreeSurface(i32* %204)
  br label %206

206:                                              ; preds = %201, %40, %22
  ret void
}

declare dso_local %struct.TYPE_14__* @config_get_ptr(...) #1

declare dso_local i32 @font_renderer_create_default(%struct.TYPE_17__**, i32*, i8*, i32) #1

declare dso_local i32 @RARCH_WARN(i8*, ...) #1

declare dso_local i32* @SDL_CreateRGBSurfaceFrom(i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32* @SDL_AllocPalette(i32) #1

declare dso_local i32 @SDL_SetPaletteColors(i32*, %struct.TYPE_16__*, i32, i32) #1

declare dso_local i32 @SDL_SetSurfacePalette(i32*, i32*) #1

declare dso_local i32 @SDL_SetColorKey(i32*, i32, i32) #1

declare dso_local i32 @SDL_CreateTextureFromSurface(i32, i32*) #1

declare dso_local i32 @SDL_SetTextureBlendMode(i32, i32) #1

declare dso_local i32 @SDL_GetError(...) #1

declare dso_local i32 @SDL_FreePalette(i32*) #1

declare dso_local i32 @SDL_FreeSurface(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
