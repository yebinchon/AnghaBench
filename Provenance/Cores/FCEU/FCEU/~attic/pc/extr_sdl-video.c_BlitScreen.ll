; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/FCEU/FCEU/~attic/pc/extr_sdl-video.c_BlitScreen.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/FCEU/FCEU/~attic/pc/extr_sdl-video.c_BlitScreen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32, i32, i32, i64 }
%struct.TYPE_15__ = type { i32, i32, i64, i64 }

@screen = common dso_local global %struct.TYPE_14__* null, align 8
@paletterefresh = common dso_local global i64 0, align 8
@srendline = common dso_local global i32 0, align 4
@BlitBuf = common dso_local global %struct.TYPE_14__* null, align 8
@_fullscreen = common dso_local global i64 0, align 8
@NWIDTH = common dso_local global i32 0, align 4
@exs = common dso_local global i32 0, align 4
@curbpp = common dso_local global i32 0, align 4
@tlines = common dso_local global i32 0, align 4
@eys = common dso_local global i32 0, align 4
@NOFFSET = common dso_local global i32 0, align 4
@sponge = common dso_local global i32 0, align 4
@eefx = common dso_local global i32 0, align 4
@SDL_DOUBLEBUF = common dso_local global i32 0, align 4
@usingogl = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @BlitScreen(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_15__, align 8
  %8 = alloca %struct.TYPE_15__, align 8
  store i32* %0, i32** %2, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %9 = load %struct.TYPE_14__*, %struct.TYPE_14__** @screen, align 8
  %10 = icmp ne %struct.TYPE_14__* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %203

12:                                               ; preds = %1
  %13 = load i64, i64* @paletterefresh, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %12
  %16 = call i32 (...) @RedoPalette()
  store i64 0, i64* @paletterefresh, align 8
  br label %17

17:                                               ; preds = %15, %12
  %18 = load i32, i32* @srendline, align 4
  %19 = mul nsw i32 %18, 256
  %20 = load i32*, i32** %2, align 8
  %21 = sext i32 %19 to i64
  %22 = getelementptr inbounds i32, i32* %20, i64 %21
  store i32* %22, i32** %2, align 8
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** @BlitBuf, align 8
  %24 = icmp ne %struct.TYPE_14__* %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %17
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** @BlitBuf, align 8
  store %struct.TYPE_14__* %26, %struct.TYPE_14__** %3, align 8
  br label %29

27:                                               ; preds = %17
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** @screen, align 8
  store %struct.TYPE_14__* %28, %struct.TYPE_14__** %3, align 8
  br label %29

29:                                               ; preds = %27, %25
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %31 = call i64 @SDL_MUSTLOCK(%struct.TYPE_14__* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %29
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %35 = call i64 @SDL_LockSurface(%struct.TYPE_14__* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  br label %203

38:                                               ; preds = %33
  br label %39

39:                                               ; preds = %38, %29
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 4
  %42 = load i64, i64* %41, align 8
  %43 = inttoptr i64 %42 to i32*
  store i32* %43, i32** %4, align 8
  %44 = load i64, i64* @_fullscreen, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %87

46:                                               ; preds = %39
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @NWIDTH, align 4
  %51 = load i32, i32* @exs, align 4
  %52 = mul nsw i32 %50, %51
  %53 = sub nsw i32 %49, %52
  %54 = sdiv i32 %53, 2
  store i32 %54, i32* %5, align 4
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* @curbpp, align 4
  %57 = ashr i32 %56, 3
  %58 = mul nsw i32 %55, %57
  %59 = load i32*, i32** %4, align 8
  %60 = sext i32 %58 to i64
  %61 = getelementptr inbounds i32, i32* %59, i64 %60
  store i32* %61, i32** %4, align 8
  %62 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @tlines, align 4
  %66 = load i32, i32* @eys, align 4
  %67 = mul nsw i32 %65, %66
  %68 = icmp sgt i32 %64, %67
  br i1 %68, label %69, label %86

69:                                               ; preds = %46
  %70 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @tlines, align 4
  %74 = load i32, i32* @eys, align 4
  %75 = mul nsw i32 %73, %74
  %76 = sub nsw i32 %72, %75
  %77 = sdiv i32 %76, 2
  store i32 %77, i32* %6, align 4
  %78 = load i32, i32* %6, align 4
  %79 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = mul nsw i32 %78, %81
  %83 = load i32*, i32** %4, align 8
  %84 = sext i32 %82 to i64
  %85 = getelementptr inbounds i32, i32* %83, i64 %84
  store i32* %85, i32** %4, align 8
  br label %86

86:                                               ; preds = %69, %46
  br label %87

87:                                               ; preds = %86, %39
  %88 = load i32, i32* @curbpp, align 4
  %89 = icmp sgt i32 %88, 8
  br i1 %89, label %90, label %120

90:                                               ; preds = %87
  %91 = load %struct.TYPE_14__*, %struct.TYPE_14__** @BlitBuf, align 8
  %92 = icmp ne %struct.TYPE_14__* %91, null
  br i1 %92, label %93, label %105

93:                                               ; preds = %90
  %94 = load i32*, i32** %2, align 8
  %95 = load i32, i32* @NOFFSET, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  %98 = load i32*, i32** %4, align 8
  %99 = load i32, i32* @NWIDTH, align 4
  %100 = load i32, i32* @tlines, align 4
  %101 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @Blit8ToHigh(i32* %97, i32* %98, i32 %99, i32 %100, i32 %103, i32 1, i32 1)
  br label %119

105:                                              ; preds = %90
  %106 = load i32*, i32** %2, align 8
  %107 = load i32, i32* @NOFFSET, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %106, i64 %108
  %110 = load i32*, i32** %4, align 8
  %111 = load i32, i32* @NWIDTH, align 4
  %112 = load i32, i32* @tlines, align 4
  %113 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %114 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* @exs, align 4
  %117 = load i32, i32* @eys, align 4
  %118 = call i32 @Blit8ToHigh(i32* %109, i32* %110, i32 %111, i32 %112, i32 %115, i32 %116, i32 %117)
  br label %119

119:                                              ; preds = %105, %93
  br label %153

120:                                              ; preds = %87
  %121 = load %struct.TYPE_14__*, %struct.TYPE_14__** @BlitBuf, align 8
  %122 = icmp ne %struct.TYPE_14__* %121, null
  br i1 %122, label %123, label %136

123:                                              ; preds = %120
  %124 = load i32*, i32** %2, align 8
  %125 = load i32, i32* @NOFFSET, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %124, i64 %126
  %128 = load i32*, i32** %4, align 8
  %129 = load i32, i32* @NWIDTH, align 4
  %130 = load i32, i32* @tlines, align 4
  %131 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %132 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 8
  %134 = load i32, i32* @sponge, align 4
  %135 = call i32 @Blit8To8(i32* %127, i32* %128, i32 %129, i32 %130, i32 %133, i32 1, i32 1, i32 0, i32 %134)
  br label %152

136:                                              ; preds = %120
  %137 = load i32*, i32** %2, align 8
  %138 = load i32, i32* @NOFFSET, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32, i32* %137, i64 %139
  %141 = load i32*, i32** %4, align 8
  %142 = load i32, i32* @NWIDTH, align 4
  %143 = load i32, i32* @tlines, align 4
  %144 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %145 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 8
  %147 = load i32, i32* @exs, align 4
  %148 = load i32, i32* @eys, align 4
  %149 = load i32, i32* @eefx, align 4
  %150 = load i32, i32* @sponge, align 4
  %151 = call i32 @Blit8To8(i32* %140, i32* %141, i32 %142, i32 %143, i32 %146, i32 %147, i32 %148, i32 %149, i32 %150)
  br label %152

152:                                              ; preds = %136, %123
  br label %153

153:                                              ; preds = %152, %119
  %154 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %155 = call i64 @SDL_MUSTLOCK(%struct.TYPE_14__* %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %160

157:                                              ; preds = %153
  %158 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %159 = call i32 @SDL_UnlockSurface(%struct.TYPE_14__* %158)
  br label %160

160:                                              ; preds = %157, %153
  %161 = load %struct.TYPE_14__*, %struct.TYPE_14__** @BlitBuf, align 8
  %162 = icmp ne %struct.TYPE_14__* %161, null
  br i1 %162, label %163, label %183

163:                                              ; preds = %160
  %164 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %7, i32 0, i32 3
  store i64 0, i64* %164, align 8
  %165 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %7, i32 0, i32 2
  store i64 0, i64* %165, align 8
  %166 = load i32, i32* @NWIDTH, align 4
  %167 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %7, i32 0, i32 0
  store i32 %166, i32* %167, align 8
  %168 = load i32, i32* @tlines, align 4
  %169 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %7, i32 0, i32 1
  store i32 %168, i32* %169, align 4
  %170 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 3
  store i64 0, i64* %170, align 8
  %171 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 2
  store i64 0, i64* %171, align 8
  %172 = load i32, i32* @exs, align 4
  %173 = load i32, i32* @NWIDTH, align 4
  %174 = mul nsw i32 %172, %173
  %175 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 0
  store i32 %174, i32* %175, align 8
  %176 = load i32, i32* @eys, align 4
  %177 = load i32, i32* @tlines, align 4
  %178 = mul nsw i32 %176, %177
  %179 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 1
  store i32 %178, i32* %179, align 4
  %180 = load %struct.TYPE_14__*, %struct.TYPE_14__** @BlitBuf, align 8
  %181 = load %struct.TYPE_14__*, %struct.TYPE_14__** @screen, align 8
  %182 = call i32 @SDL_BlitSurface(%struct.TYPE_14__* %180, %struct.TYPE_15__* %7, %struct.TYPE_14__* %181, %struct.TYPE_15__* %8)
  br label %183

183:                                              ; preds = %163, %160
  %184 = load %struct.TYPE_14__*, %struct.TYPE_14__** @screen, align 8
  %185 = load i32, i32* %5, align 4
  %186 = load i32, i32* %6, align 4
  %187 = load i32, i32* @NWIDTH, align 4
  %188 = load i32, i32* @exs, align 4
  %189 = mul nsw i32 %187, %188
  %190 = load i32, i32* @tlines, align 4
  %191 = load i32, i32* @eys, align 4
  %192 = mul nsw i32 %190, %191
  %193 = call i32 @SDL_UpdateRect(%struct.TYPE_14__* %184, i32 %185, i32 %186, i32 %189, i32 %192)
  %194 = load %struct.TYPE_14__*, %struct.TYPE_14__** @screen, align 8
  %195 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %194, i32 0, i32 3
  %196 = load i32, i32* %195, align 4
  %197 = load i32, i32* @SDL_DOUBLEBUF, align 4
  %198 = and i32 %196, %197
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %203

200:                                              ; preds = %183
  %201 = load %struct.TYPE_14__*, %struct.TYPE_14__** @screen, align 8
  %202 = call i32 @SDL_Flip(%struct.TYPE_14__* %201)
  br label %203

203:                                              ; preds = %11, %37, %200, %183
  ret void
}

declare dso_local i32 @RedoPalette(...) #1

declare dso_local i64 @SDL_MUSTLOCK(%struct.TYPE_14__*) #1

declare dso_local i64 @SDL_LockSurface(%struct.TYPE_14__*) #1

declare dso_local i32 @Blit8ToHigh(i32*, i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @Blit8To8(i32*, i32*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @SDL_UnlockSurface(%struct.TYPE_14__*) #1

declare dso_local i32 @SDL_BlitSurface(%struct.TYPE_14__*, %struct.TYPE_15__*, %struct.TYPE_14__*, %struct.TYPE_15__*) #1

declare dso_local i32 @SDL_UpdateRect(%struct.TYPE_14__*, i32, i32, i32, i32) #1

declare dso_local i32 @SDL_Flip(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
