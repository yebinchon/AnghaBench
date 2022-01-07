; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers_font/extr_vita2d_font.c_vita2d_font_render_line.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers_font/extr_vita2d_font.c_vita2d_font_render_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32, %struct.TYPE_9__*, i32, %struct.TYPE_8__* }
%struct.TYPE_9__ = type { i32, i32, i32, i32* }
%struct.TYPE_8__ = type { %struct.font_glyph* (i32, i8)* }
%struct.font_glyph = type { i32, i32, i32, i32, i32, i32, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*, %struct.TYPE_10__*, i8*, i32, float, i32, float, float, i32)* @vita2d_font_render_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vita2d_font_render_line(%struct.TYPE_11__* %0, %struct.TYPE_10__* %1, i8* %2, i32 %3, float %4, i32 %5, float %6, float %7, i32 %8) #0 {
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca %struct.TYPE_10__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca float, align 4
  %15 = alloca i32, align 4
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca %struct.font_glyph*, align 8
  %37 = alloca i32*, align 8
  %38 = alloca i32*, align 8
  %39 = alloca i8*, align 8
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %10, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %11, align 8
  store i8* %2, i8** %12, align 8
  store i32 %3, i32* %13, align 4
  store float %4, float* %14, align 4
  store i32 %5, i32* %15, align 4
  store float %6, float* %16, align 4
  store float %7, float* %17, align 4
  store i32 %8, i32* %18, align 4
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %20, align 4
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %21, align 4
  %48 = load float, float* %16, align 4
  %49 = load i32, i32* %20, align 4
  %50 = uitofp i32 %49 to float
  %51 = fmul float %48, %50
  %52 = call i32 @roundf(float %51)
  store i32 %52, i32* %22, align 4
  %53 = load float, float* %17, align 4
  %54 = fsub float 1.000000e+00, %53
  %55 = load i32, i32* %21, align 4
  %56 = uitofp i32 %55 to float
  %57 = fmul float %54, %56
  %58 = call i32 @roundf(float %57)
  store i32 %58, i32* %23, align 4
  store i32 0, i32* %24, align 4
  store i32 0, i32* %25, align 4
  %59 = load i32, i32* %18, align 4
  switch i32 %59, label %77 [
    i32 128, label %60
    i32 129, label %68
  ]

60:                                               ; preds = %9
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %62 = load i8*, i8** %12, align 8
  %63 = load i32, i32* %13, align 4
  %64 = load float, float* %14, align 4
  %65 = call i32 @vita2d_font_get_message_width(%struct.TYPE_10__* %61, i8* %62, i32 %63, float %64)
  %66 = load i32, i32* %22, align 4
  %67 = sub nsw i32 %66, %65
  store i32 %67, i32* %22, align 4
  br label %77

68:                                               ; preds = %9
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %70 = load i8*, i8** %12, align 8
  %71 = load i32, i32* %13, align 4
  %72 = load float, float* %14, align 4
  %73 = call i32 @vita2d_font_get_message_width(%struct.TYPE_10__* %69, i8* %70, i32 %71, float %72)
  %74 = sdiv i32 %73, 2
  %75 = load i32, i32* %22, align 4
  %76 = sub nsw i32 %75, %74
  store i32 %76, i32* %22, align 4
  br label %77

77:                                               ; preds = %9, %68, %60
  store i32 0, i32* %19, align 4
  br label %78

78:                                               ; preds = %269, %77
  %79 = load i32, i32* %19, align 4
  %80 = load i32, i32* %13, align 4
  %81 = icmp ult i32 %79, %80
  br i1 %81, label %82, label %272

82:                                               ; preds = %78
  store %struct.font_glyph* null, %struct.font_glyph** %36, align 8
  store i32* null, i32** %37, align 8
  store i32* null, i32** %38, align 8
  %83 = load i8*, i8** %12, align 8
  %84 = load i32, i32* %19, align 4
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds i8, i8* %83, i64 %85
  store i8* %86, i8** %39, align 8
  %87 = call i32 @utf8_walk(i8** %39)
  store i32 %87, i32* %40, align 4
  %88 = load i8*, i8** %39, align 8
  %89 = load i8*, i8** %12, align 8
  %90 = load i32, i32* %19, align 4
  %91 = zext i32 %90 to i64
  %92 = getelementptr inbounds i8, i8* %89, i64 %91
  %93 = ptrtoint i8* %88 to i64
  %94 = ptrtoint i8* %92 to i64
  %95 = sub i64 %93, %94
  %96 = trunc i64 %95 to i32
  store i32 %96, i32* %41, align 4
  %97 = load i32, i32* %41, align 4
  %98 = icmp ugt i32 %97, 1
  br i1 %98, label %99, label %104

99:                                               ; preds = %82
  %100 = load i32, i32* %41, align 4
  %101 = sub i32 %100, 1
  %102 = load i32, i32* %19, align 4
  %103 = add i32 %102, %101
  store i32 %103, i32* %19, align 4
  br label %104

104:                                              ; preds = %99, %82
  %105 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 3
  %107 = load %struct.TYPE_8__*, %struct.TYPE_8__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 0
  %109 = load %struct.font_glyph* (i32, i8)*, %struct.font_glyph* (i32, i8)** %108, align 8
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* %40, align 4
  %114 = trunc i32 %113 to i8
  %115 = call %struct.font_glyph* %109(i32 %112, i8 signext %114)
  store %struct.font_glyph* %115, %struct.font_glyph** %36, align 8
  %116 = load %struct.font_glyph*, %struct.font_glyph** %36, align 8
  %117 = icmp ne %struct.font_glyph* %116, null
  br i1 %117, label %128, label %118

118:                                              ; preds = %104
  %119 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %120 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %119, i32 0, i32 3
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 0
  %123 = load %struct.font_glyph* (i32, i8)*, %struct.font_glyph* (i32, i8)** %122, align 8
  %124 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %125 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 8
  %127 = call %struct.font_glyph* %123(i32 %126, i8 signext 63)
  store %struct.font_glyph* %127, %struct.font_glyph** %36, align 8
  br label %128

128:                                              ; preds = %118, %104
  %129 = load %struct.font_glyph*, %struct.font_glyph** %36, align 8
  %130 = icmp ne %struct.font_glyph* %129, null
  br i1 %130, label %132, label %131

131:                                              ; preds = %128
  br label %269

132:                                              ; preds = %128
  %133 = load %struct.font_glyph*, %struct.font_glyph** %36, align 8
  %134 = getelementptr inbounds %struct.font_glyph, %struct.font_glyph* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  store i32 %135, i32* %26, align 4
  %136 = load %struct.font_glyph*, %struct.font_glyph** %36, align 8
  %137 = getelementptr inbounds %struct.font_glyph, %struct.font_glyph* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  store i32 %138, i32* %27, align 4
  %139 = load %struct.font_glyph*, %struct.font_glyph** %36, align 8
  %140 = getelementptr inbounds %struct.font_glyph, %struct.font_glyph* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 8
  store i32 %141, i32* %28, align 4
  %142 = load %struct.font_glyph*, %struct.font_glyph** %36, align 8
  %143 = getelementptr inbounds %struct.font_glyph, %struct.font_glyph* %142, i32 0, i32 3
  %144 = load i32, i32* %143, align 4
  store i32 %144, i32* %29, align 4
  %145 = load %struct.font_glyph*, %struct.font_glyph** %36, align 8
  %146 = getelementptr inbounds %struct.font_glyph, %struct.font_glyph* %145, i32 0, i32 4
  %147 = load i32, i32* %146, align 8
  store i32 %147, i32* %30, align 4
  %148 = load %struct.font_glyph*, %struct.font_glyph** %36, align 8
  %149 = getelementptr inbounds %struct.font_glyph, %struct.font_glyph* %148, i32 0, i32 5
  %150 = load i32, i32* %149, align 4
  store i32 %150, i32* %31, align 4
  %151 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %152 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %151, i32 0, i32 1
  %153 = load %struct.TYPE_9__*, %struct.TYPE_9__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %223

157:                                              ; preds = %132
  %158 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %159 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = call i32 @vita2d_texture_get_stride(i32 %160)
  store i32 %161, i32* %32, align 4
  %162 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %163 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = call i32* @vita2d_texture_get_datap(i32 %164)
  store i32* %165, i32** %38, align 8
  %166 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %167 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %166, i32 0, i32 1
  %168 = load %struct.TYPE_9__*, %struct.TYPE_9__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %168, i32 0, i32 3
  %170 = load i32*, i32** %169, align 8
  store i32* %170, i32** %37, align 8
  %171 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %172 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %171, i32 0, i32 1
  %173 = load %struct.TYPE_9__*, %struct.TYPE_9__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  store i32 %175, i32* %33, align 4
  store i32 0, i32* %34, align 4
  br label %176

176:                                              ; preds = %215, %157
  %177 = load i32, i32* %34, align 4
  %178 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %179 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %178, i32 0, i32 1
  %180 = load %struct.TYPE_9__*, %struct.TYPE_9__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %180, i32 0, i32 2
  %182 = load i32, i32* %181, align 8
  %183 = icmp ult i32 %177, %182
  br i1 %183, label %184, label %218

184:                                              ; preds = %176
  store i32 0, i32* %35, align 4
  br label %185

185:                                              ; preds = %211, %184
  %186 = load i32, i32* %35, align 4
  %187 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %188 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %187, i32 0, i32 1
  %189 = load %struct.TYPE_9__*, %struct.TYPE_9__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 4
  %192 = icmp ult i32 %186, %191
  br i1 %192, label %193, label %214

193:                                              ; preds = %185
  %194 = load i32*, i32** %37, align 8
  %195 = load i32, i32* %35, align 4
  %196 = load i32, i32* %34, align 4
  %197 = load i32, i32* %33, align 4
  %198 = mul i32 %196, %197
  %199 = add i32 %195, %198
  %200 = zext i32 %199 to i64
  %201 = getelementptr inbounds i32, i32* %194, i64 %200
  %202 = load i32, i32* %201, align 4
  %203 = load i32*, i32** %38, align 8
  %204 = load i32, i32* %35, align 4
  %205 = load i32, i32* %34, align 4
  %206 = load i32, i32* %32, align 4
  %207 = mul i32 %205, %206
  %208 = add i32 %204, %207
  %209 = zext i32 %208 to i64
  %210 = getelementptr inbounds i32, i32* %203, i64 %209
  store i32 %202, i32* %210, align 4
  br label %211

211:                                              ; preds = %193
  %212 = load i32, i32* %35, align 4
  %213 = add i32 %212, 1
  store i32 %213, i32* %35, align 4
  br label %185

214:                                              ; preds = %185
  br label %215

215:                                              ; preds = %214
  %216 = load i32, i32* %34, align 4
  %217 = add i32 %216, 1
  store i32 %217, i32* %34, align 4
  br label %176

218:                                              ; preds = %176
  %219 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %220 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %219, i32 0, i32 1
  %221 = load %struct.TYPE_9__*, %struct.TYPE_9__** %220, align 8
  %222 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %221, i32 0, i32 0
  store i32 0, i32* %222, align 8
  br label %223

223:                                              ; preds = %218, %132
  %224 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %225 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 8
  %227 = load i32, i32* %22, align 4
  %228 = sitofp i32 %227 to float
  %229 = load i32, i32* %26, align 4
  %230 = load i32, i32* %24, align 4
  %231 = add nsw i32 %229, %230
  %232 = sitofp i32 %231 to float
  %233 = load float, float* %14, align 4
  %234 = fmul float %232, %233
  %235 = fadd float %228, %234
  %236 = fptosi float %235 to i32
  %237 = load i32, i32* %23, align 4
  %238 = sitofp i32 %237 to float
  %239 = load i32, i32* %27, align 4
  %240 = load i32, i32* %25, align 4
  %241 = add nsw i32 %239, %240
  %242 = sitofp i32 %241 to float
  %243 = load float, float* %14, align 4
  %244 = fmul float %242, %243
  %245 = fadd float %238, %244
  %246 = fptosi float %245 to i32
  %247 = load i32, i32* %28, align 4
  %248 = load i32, i32* %29, align 4
  %249 = load i32, i32* %30, align 4
  %250 = load i32, i32* %31, align 4
  %251 = load float, float* %14, align 4
  %252 = load float, float* %14, align 4
  %253 = load i32, i32* %15, align 4
  %254 = call i32 @vita2d_draw_texture_tint_part_scale(i32 %226, i32 %236, i32 %246, i32 %247, i32 %248, i32 %249, i32 %250, float %251, float %252, i32 %253)
  %255 = load %struct.font_glyph*, %struct.font_glyph** %36, align 8
  %256 = getelementptr inbounds %struct.font_glyph, %struct.font_glyph* %255, i32 0, i32 7
  %257 = load i64, i64* %256, align 8
  %258 = load i32, i32* %24, align 4
  %259 = sext i32 %258 to i64
  %260 = add nsw i64 %259, %257
  %261 = trunc i64 %260 to i32
  store i32 %261, i32* %24, align 4
  %262 = load %struct.font_glyph*, %struct.font_glyph** %36, align 8
  %263 = getelementptr inbounds %struct.font_glyph, %struct.font_glyph* %262, i32 0, i32 6
  %264 = load i64, i64* %263, align 8
  %265 = load i32, i32* %25, align 4
  %266 = sext i32 %265 to i64
  %267 = add nsw i64 %266, %264
  %268 = trunc i64 %267 to i32
  store i32 %268, i32* %25, align 4
  br label %269

269:                                              ; preds = %223, %131
  %270 = load i32, i32* %19, align 4
  %271 = add i32 %270, 1
  store i32 %271, i32* %19, align 4
  br label %78

272:                                              ; preds = %78
  ret void
}

declare dso_local i32 @roundf(float) #1

declare dso_local i32 @vita2d_font_get_message_width(%struct.TYPE_10__*, i8*, i32, float) #1

declare dso_local i32 @utf8_walk(i8**) #1

declare dso_local i32 @vita2d_texture_get_stride(i32) #1

declare dso_local i32* @vita2d_texture_get_datap(i32) #1

declare dso_local i32 @vita2d_draw_texture_tint_part_scale(i32, i32, i32, i32, i32, i32, i32, float, float, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
