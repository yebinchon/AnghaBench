; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_sdl2_gfx.c_sdl2_render_msg.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_sdl2_gfx.c_sdl2_render_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_15__, i32, i32, %struct.TYPE_14__*, i32, i32, i32, %struct.TYPE_12__ }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { %struct.font_glyph* (i32, i8)* }
%struct.font_glyph = type { i32, i32, i32, i32, i64, i64, i64, i64 }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_16__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, float }
%struct.TYPE_18__ = type { i32, i32, i32, i32 }

@SDL_FLIP_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_17__*, i8*)* @sdl2_render_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sdl2_render_msg(%struct.TYPE_17__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_17__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_16__*, align 8
  %12 = alloca %struct.TYPE_18__, align 4
  %13 = alloca %struct.TYPE_18__, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.font_glyph*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %3, align 8
  store i8* %1, i8** %4, align 8
  %19 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %19, i32 0, i32 7
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %9, align 4
  %23 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %23, i32 0, i32 7
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %10, align 4
  %27 = call %struct.TYPE_16__* (...) @config_get_ptr()
  store %struct.TYPE_16__* %27, %struct.TYPE_16__** %11, align 8
  %28 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %2
  br label %170

33:                                               ; preds = %2
  %34 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %35 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %9, align 4
  %39 = mul i32 %37, %38
  store i32 %39, i32* %5, align 4
  %40 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %41 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i32 0, i32 1
  %43 = load float, float* %42, align 4
  %44 = fsub float 1.000000e+00, %43
  %45 = load i32, i32* %10, align 4
  %46 = uitofp i32 %45 to float
  %47 = fmul float %44, %46
  %48 = fptosi float %47 to i32
  store i32 %48, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %49 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %53, i32 0, i32 6
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %56, i32 0, i32 5
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %59, i32 0, i32 4
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @SDL_SetTextureColorMod(i32 %52, i32 %55, i32 %58, i32 %61)
  br label %63

63:                                               ; preds = %167, %33
  %64 = load i8*, i8** %4, align 8
  %65 = load i8, i8* %64, align 1
  %66 = icmp ne i8 %65, 0
  br i1 %66, label %67, label %170

67:                                               ; preds = %63
  %68 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %68, i32 0, i32 3
  %70 = load %struct.TYPE_14__*, %struct.TYPE_14__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %70, i32 0, i32 0
  %72 = load %struct.font_glyph* (i32, i8)*, %struct.font_glyph* (i32, i8)** %71, align 8
  %73 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = load i8*, i8** %4, align 8
  %77 = load i8, i8* %76, align 1
  %78 = call %struct.font_glyph* %72(i32 %75, i8 signext %77)
  store %struct.font_glyph* %78, %struct.font_glyph** %18, align 8
  %79 = load %struct.font_glyph*, %struct.font_glyph** %18, align 8
  %80 = icmp ne %struct.font_glyph* %79, null
  br i1 %80, label %91, label %81

81:                                               ; preds = %67
  %82 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %82, i32 0, i32 3
  %84 = load %struct.TYPE_14__*, %struct.TYPE_14__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %84, i32 0, i32 0
  %86 = load %struct.font_glyph* (i32, i8)*, %struct.font_glyph* (i32, i8)** %85, align 8
  %87 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = call %struct.font_glyph* %86(i32 %89, i8 signext 63)
  store %struct.font_glyph* %90, %struct.font_glyph** %18, align 8
  br label %91

91:                                               ; preds = %81, %67
  %92 = load %struct.font_glyph*, %struct.font_glyph** %18, align 8
  %93 = icmp ne %struct.font_glyph* %92, null
  br i1 %93, label %95, label %94

94:                                               ; preds = %91
  br label %167

95:                                               ; preds = %91
  %96 = load %struct.font_glyph*, %struct.font_glyph** %18, align 8
  %97 = getelementptr inbounds %struct.font_glyph, %struct.font_glyph* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  store i32 %98, i32* %14, align 4
  %99 = load %struct.font_glyph*, %struct.font_glyph** %18, align 8
  %100 = getelementptr inbounds %struct.font_glyph, %struct.font_glyph* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  store i32 %101, i32* %15, align 4
  %102 = load %struct.font_glyph*, %struct.font_glyph** %18, align 8
  %103 = getelementptr inbounds %struct.font_glyph, %struct.font_glyph* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  store i32 %104, i32* %16, align 4
  %105 = load %struct.font_glyph*, %struct.font_glyph** %18, align 8
  %106 = getelementptr inbounds %struct.font_glyph, %struct.font_glyph* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 4
  store i32 %107, i32* %17, align 4
  %108 = load i32, i32* %16, align 4
  %109 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %12, i32 0, i32 0
  store i32 %108, i32* %109, align 4
  %110 = load i32, i32* %17, align 4
  %111 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %12, i32 0, i32 1
  store i32 %110, i32* %111, align 4
  %112 = load %struct.font_glyph*, %struct.font_glyph** %18, align 8
  %113 = getelementptr inbounds %struct.font_glyph, %struct.font_glyph* %112, i32 0, i32 7
  %114 = load i64, i64* %113, align 8
  %115 = trunc i64 %114 to i32
  %116 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %12, i32 0, i32 2
  store i32 %115, i32* %116, align 4
  %117 = load %struct.font_glyph*, %struct.font_glyph** %18, align 8
  %118 = getelementptr inbounds %struct.font_glyph, %struct.font_glyph* %117, i32 0, i32 6
  %119 = load i64, i64* %118, align 8
  %120 = trunc i64 %119 to i32
  %121 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %12, i32 0, i32 3
  store i32 %120, i32* %121, align 4
  %122 = load i32, i32* %5, align 4
  %123 = load i32, i32* %7, align 4
  %124 = add nsw i32 %122, %123
  %125 = load i32, i32* %14, align 4
  %126 = add nsw i32 %124, %125
  %127 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 0
  store i32 %126, i32* %127, align 4
  %128 = load i32, i32* %6, align 4
  %129 = load i32, i32* %8, align 4
  %130 = add nsw i32 %128, %129
  %131 = load i32, i32* %15, align 4
  %132 = add nsw i32 %130, %131
  %133 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 1
  store i32 %132, i32* %133, align 4
  %134 = load %struct.font_glyph*, %struct.font_glyph** %18, align 8
  %135 = getelementptr inbounds %struct.font_glyph, %struct.font_glyph* %134, i32 0, i32 7
  %136 = load i64, i64* %135, align 8
  %137 = trunc i64 %136 to i32
  %138 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 2
  store i32 %137, i32* %138, align 4
  %139 = load %struct.font_glyph*, %struct.font_glyph** %18, align 8
  %140 = getelementptr inbounds %struct.font_glyph, %struct.font_glyph* %139, i32 0, i32 6
  %141 = load i64, i64* %140, align 8
  %142 = trunc i64 %141 to i32
  %143 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 3
  store i32 %142, i32* %143, align 4
  %144 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %145 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %148 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = load i32, i32* @SDL_FLIP_NONE, align 4
  %152 = call i32 @SDL_RenderCopyEx(i32 %146, i32 %150, %struct.TYPE_18__* %12, %struct.TYPE_18__* %13, i32 0, i32* null, i32 %151)
  %153 = load %struct.font_glyph*, %struct.font_glyph** %18, align 8
  %154 = getelementptr inbounds %struct.font_glyph, %struct.font_glyph* %153, i32 0, i32 5
  %155 = load i64, i64* %154, align 8
  %156 = load i32, i32* %7, align 4
  %157 = sext i32 %156 to i64
  %158 = add nsw i64 %157, %155
  %159 = trunc i64 %158 to i32
  store i32 %159, i32* %7, align 4
  %160 = load %struct.font_glyph*, %struct.font_glyph** %18, align 8
  %161 = getelementptr inbounds %struct.font_glyph, %struct.font_glyph* %160, i32 0, i32 4
  %162 = load i64, i64* %161, align 8
  %163 = load i32, i32* %8, align 4
  %164 = sext i32 %163 to i64
  %165 = sub nsw i64 %164, %162
  %166 = trunc i64 %165 to i32
  store i32 %166, i32* %8, align 4
  br label %167

167:                                              ; preds = %95, %94
  %168 = load i8*, i8** %4, align 8
  %169 = getelementptr inbounds i8, i8* %168, i32 1
  store i8* %169, i8** %4, align 8
  br label %63

170:                                              ; preds = %32, %63
  ret void
}

declare dso_local %struct.TYPE_16__* @config_get_ptr(...) #1

declare dso_local i32 @SDL_SetTextureColorMod(i32, i32, i32, i32) #1

declare dso_local i32 @SDL_RenderCopyEx(i32, i32, %struct.TYPE_18__*, %struct.TYPE_18__*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
