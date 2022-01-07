; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/gx/gui/extr_legal.c_legal.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/gx/gui/extr_legal.c_legal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32, %struct.TYPE_7__* }

@Key_A_gcn_png = common dso_local global i32 0, align 4
@Bg_intro_c4_png = common dso_local global i32 0, align 4
@BLACK = common dso_local global i64 0, align 8
@m_input = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@.str = private unnamed_addr constant [29 x i8] c"Press    button to continue.\00", align 1
@SKY_BLUE = common dso_local global i64 0, align 8
@VOICE_MONO_16BIT = common dso_local global i32 0, align 4
@button_select_pcm = common dso_local global i64 0, align 8
@button_select_pcm_size = common dso_local global i32 0, align 4
@Bg_intro_c1_png = common dso_local global i32 0, align 4
@WHITE = common dso_local global i64 0, align 8
@Bg_intro_c2_png = common dso_local global i32 0, align 4
@Bg_intro_c3_png = common dso_local global i32 0, align 4
@intro_pcm = common dso_local global i64 0, align 8
@intro_pcm_size = common dso_local global i32 0, align 4
@Key_A_wii_png = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @legal() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32, align 4
  store i32 2000, i32* %1, align 4
  store i32 0, i32* %2, align 4
  %8 = load i32, i32* @Key_A_gcn_png, align 4
  %9 = call %struct.TYPE_7__* @gxTextureOpenPNG(i32 %8, i32 0)
  store %struct.TYPE_7__* %9, %struct.TYPE_7__** %3, align 8
  %10 = load i32, i32* @Bg_intro_c4_png, align 4
  %11 = call %struct.TYPE_7__* @gxTextureOpenPNG(i32 %10, i32 0)
  store %struct.TYPE_7__* %11, %struct.TYPE_7__** %4, align 8
  %12 = load i64, i64* @BLACK, align 8
  %13 = trunc i64 %12 to i32
  %14 = call i32 @gxClearScreen(i32 %13)
  %15 = call i32 @show_disclaimer(i32 56)
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = sub nsw i32 640, %19
  %21 = sdiv i32 %20, 2
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = sub nsw i32 456, %24
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @gxDrawTexture(%struct.TYPE_7__* %16, i32 %21, i32 %25, i32 %28, i32 %31, i32 255)
  %33 = call i32 (...) @gxSetScreen()
  %34 = call i32 @sleep(i32 1)
  br label %35

35:                                               ; preds = %75, %0
  %36 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @m_input, i32 0, i32 0), align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %35
  %39 = load i32, i32* %1, align 4
  %40 = icmp ne i32 %39, 0
  br label %41

41:                                               ; preds = %38, %35
  %42 = phi i1 [ false, %35 ], [ %40, %38 ]
  br i1 %42, label %43, label %96

43:                                               ; preds = %41
  %44 = load i64, i64* @BLACK, align 8
  %45 = trunc i64 %44 to i32
  %46 = call i32 @gxClearScreen(i32 %45)
  %47 = call i32 @show_disclaimer(i32 56)
  %48 = load i32, i32* %1, align 4
  %49 = srem i32 %48, 25
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %43
  %52 = load i32, i32* %2, align 4
  %53 = xor i32 %52, 1
  store i32 %53, i32* %2, align 4
  br label %54

54:                                               ; preds = %51, %43
  %55 = load i32, i32* %2, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %75

57:                                               ; preds = %54
  %58 = load i64, i64* @SKY_BLUE, align 8
  %59 = trunc i64 %58 to i32
  %60 = call i32 @FONT_writeCenter(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 24, i32 0, i32 640, i32 366, i32 %59)
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = sub nsw i32 24, %64
  %66 = sdiv i32 %65, 2
  %67 = add nsw i32 342, %66
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @gxDrawTexture(%struct.TYPE_7__* %61, i32 220, i32 %67, i32 %70, i32 %73, i32 255)
  br label %75

75:                                               ; preds = %57, %54
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = sub nsw i32 640, %79
  %81 = sdiv i32 %80, 2
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = sub nsw i32 456, %84
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @gxDrawTexture(%struct.TYPE_7__* %76, i32 %81, i32 %85, i32 %88, i32 %91, i32 255)
  %93 = call i32 (...) @gxSetScreen()
  %94 = load i32, i32* %1, align 4
  %95 = add nsw i32 %94, -1
  store i32 %95, i32* %1, align 4
  br label %35

96:                                               ; preds = %41
  %97 = call i32 @gxTextureClose(%struct.TYPE_7__** %3)
  %98 = call i32 @gxTextureClose(%struct.TYPE_7__** %4)
  %99 = load i32, i32* %1, align 4
  %100 = icmp sgt i32 %99, 0
  br i1 %100, label %101, label %112

101:                                              ; preds = %96
  %102 = call i32 @ASND_Pause(i32 0)
  %103 = call i32 (...) @ASND_GetFirstUnusedVoice()
  store i32 %103, i32* %5, align 4
  %104 = load i32, i32* %5, align 4
  %105 = load i32, i32* @VOICE_MONO_16BIT, align 4
  %106 = load i64, i64* @button_select_pcm, align 8
  %107 = inttoptr i64 %106 to i32*
  %108 = load i32, i32* @button_select_pcm_size, align 4
  %109 = call i32 @ASND_SetVoice(i32 %104, i32 %105, i32 44100, i32 0, i32* %107, i32 %108, i32 200, i32 200, i32* null)
  %110 = call i32 (...) @GUI_FadeOut()
  %111 = call i32 @ASND_Pause(i32 1)
  br label %245

112:                                              ; preds = %96
  %113 = load i64, i64* @BLACK, align 8
  %114 = trunc i64 %113 to i32
  %115 = call i32 @gxClearScreen(i32 %114)
  %116 = load i32, i32* @Bg_intro_c1_png, align 4
  %117 = call %struct.TYPE_7__* @gxTextureOpenPNG(i32 %116, i32 0)
  store %struct.TYPE_7__* %117, %struct.TYPE_7__** %6, align 8
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %119 = icmp ne %struct.TYPE_7__* %118, null
  br i1 %119, label %120, label %151

120:                                              ; preds = %112
  %121 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %122 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = sub nsw i32 640, %124
  %126 = sdiv i32 %125, 2
  %127 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = sub nsw i32 480, %129
  %131 = sdiv i32 %130, 2
  %132 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @gxDrawTexture(%struct.TYPE_7__* %121, i32 %126, i32 %131, i32 %134, i32 %137, i32 255)
  %139 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %140 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %139, i32 0, i32 2
  %141 = load %struct.TYPE_7__*, %struct.TYPE_7__** %140, align 8
  %142 = icmp ne %struct.TYPE_7__* %141, null
  br i1 %142, label %143, label %148

143:                                              ; preds = %120
  %144 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %145 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %144, i32 0, i32 2
  %146 = load %struct.TYPE_7__*, %struct.TYPE_7__** %145, align 8
  %147 = call i32 @free(%struct.TYPE_7__* %146)
  br label %148

148:                                              ; preds = %143, %120
  %149 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %150 = call i32 @free(%struct.TYPE_7__* %149)
  br label %151

151:                                              ; preds = %148, %112
  %152 = call i32 (...) @gxSetScreen()
  %153 = call i32 @sleep(i32 1)
  %154 = load i64, i64* @WHITE, align 8
  %155 = trunc i64 %154 to i32
  %156 = call i32 @gxClearScreen(i32 %155)
  %157 = load i32, i32* @Bg_intro_c2_png, align 4
  %158 = call %struct.TYPE_7__* @gxTextureOpenPNG(i32 %157, i32 0)
  store %struct.TYPE_7__* %158, %struct.TYPE_7__** %6, align 8
  %159 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %160 = icmp ne %struct.TYPE_7__* %159, null
  br i1 %160, label %161, label %192

161:                                              ; preds = %151
  %162 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %163 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %164 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = sub nsw i32 640, %165
  %167 = sdiv i32 %166, 2
  %168 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %169 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = sub nsw i32 480, %170
  %172 = sdiv i32 %171, 2
  %173 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %174 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %177 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  %179 = call i32 @gxDrawTexture(%struct.TYPE_7__* %162, i32 %167, i32 %172, i32 %175, i32 %178, i32 255)
  %180 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %181 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %180, i32 0, i32 2
  %182 = load %struct.TYPE_7__*, %struct.TYPE_7__** %181, align 8
  %183 = icmp ne %struct.TYPE_7__* %182, null
  br i1 %183, label %184, label %189

184:                                              ; preds = %161
  %185 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %186 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %185, i32 0, i32 2
  %187 = load %struct.TYPE_7__*, %struct.TYPE_7__** %186, align 8
  %188 = call i32 @free(%struct.TYPE_7__* %187)
  br label %189

189:                                              ; preds = %184, %161
  %190 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %191 = call i32 @free(%struct.TYPE_7__* %190)
  br label %192

192:                                              ; preds = %189, %151
  %193 = call i32 (...) @gxSetScreen()
  %194 = call i32 @sleep(i32 1)
  %195 = load i64, i64* @BLACK, align 8
  %196 = trunc i64 %195 to i32
  %197 = call i32 @gxClearScreen(i32 %196)
  %198 = load i32, i32* @Bg_intro_c3_png, align 4
  %199 = call %struct.TYPE_7__* @gxTextureOpenPNG(i32 %198, i32 0)
  store %struct.TYPE_7__* %199, %struct.TYPE_7__** %6, align 8
  %200 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %201 = icmp ne %struct.TYPE_7__* %200, null
  br i1 %201, label %202, label %233

202:                                              ; preds = %192
  %203 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %204 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %205 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 8
  %207 = sub nsw i32 640, %206
  %208 = sdiv i32 %207, 2
  %209 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %210 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %209, i32 0, i32 1
  %211 = load i32, i32* %210, align 4
  %212 = sub nsw i32 480, %211
  %213 = sdiv i32 %212, 2
  %214 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %215 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 8
  %217 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %218 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %217, i32 0, i32 1
  %219 = load i32, i32* %218, align 4
  %220 = call i32 @gxDrawTexture(%struct.TYPE_7__* %203, i32 %208, i32 %213, i32 %216, i32 %219, i32 255)
  %221 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %222 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %221, i32 0, i32 2
  %223 = load %struct.TYPE_7__*, %struct.TYPE_7__** %222, align 8
  %224 = icmp ne %struct.TYPE_7__* %223, null
  br i1 %224, label %225, label %230

225:                                              ; preds = %202
  %226 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %227 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %226, i32 0, i32 2
  %228 = load %struct.TYPE_7__*, %struct.TYPE_7__** %227, align 8
  %229 = call i32 @free(%struct.TYPE_7__* %228)
  br label %230

230:                                              ; preds = %225, %202
  %231 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %232 = call i32 @free(%struct.TYPE_7__* %231)
  br label %233

233:                                              ; preds = %230, %192
  %234 = call i32 (...) @gxSetScreen()
  %235 = call i32 @ASND_Pause(i32 0)
  %236 = call i32 (...) @ASND_GetFirstUnusedVoice()
  store i32 %236, i32* %7, align 4
  %237 = load i32, i32* %7, align 4
  %238 = load i32, i32* @VOICE_MONO_16BIT, align 4
  %239 = load i64, i64* @intro_pcm, align 8
  %240 = inttoptr i64 %239 to i32*
  %241 = load i32, i32* @intro_pcm_size, align 4
  %242 = call i32 @ASND_SetVoice(i32 %237, i32 %238, i32 44100, i32 0, i32* %240, i32 %241, i32 200, i32 200, i32* null)
  %243 = call i32 @sleep(i32 2)
  %244 = call i32 @ASND_Pause(i32 1)
  br label %245

245:                                              ; preds = %233, %101
  ret void
}

declare dso_local %struct.TYPE_7__* @gxTextureOpenPNG(i32, i32) #1

declare dso_local i32 @gxClearScreen(i32) #1

declare dso_local i32 @show_disclaimer(i32) #1

declare dso_local i32 @gxDrawTexture(%struct.TYPE_7__*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @gxSetScreen(...) #1

declare dso_local i32 @sleep(i32) #1

declare dso_local i32 @FONT_writeCenter(i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @gxTextureClose(%struct.TYPE_7__**) #1

declare dso_local i32 @ASND_Pause(i32) #1

declare dso_local i32 @ASND_GetFirstUnusedVoice(...) #1

declare dso_local i32 @ASND_SetVoice(i32, i32, i32, i32, i32*, i32, i32, i32, i32*) #1

declare dso_local i32 @GUI_FadeOut(...) #1

declare dso_local i32 @free(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
