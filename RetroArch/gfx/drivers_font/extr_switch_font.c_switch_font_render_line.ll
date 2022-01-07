; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers_font/extr_switch_font.c_switch_font_render_line.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers_font/extr_switch_font.c_switch_font_render_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64 }
%struct.TYPE_15__ = type { %struct.TYPE_12__*, i32, %struct.TYPE_11__* }
%struct.TYPE_12__ = type { i32, i32* }
%struct.TYPE_11__ = type { %struct.font_glyph* (i32, i8)* }
%struct.font_glyph = type { i32, i32, i32, i32, i32, i32, i64, i64 }
%struct.TYPE_14__ = type { i32*, i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_13__*, %struct.TYPE_15__*, i8*, i32, float, i32, float, float, i32)* @switch_font_render_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @switch_font_render_line(%struct.TYPE_13__* %0, %struct.TYPE_15__* %1, i8* %2, i32 %3, float %4, i32 %5, float %6, float %7, i32 %8) #0 {
  %10 = alloca %struct.TYPE_13__*, align 8
  %11 = alloca %struct.TYPE_15__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca float, align 4
  %15 = alloca i32, align 4
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_14__*, align 8
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
  %33 = alloca i8*, align 8
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca %struct.font_glyph*, align 8
  %37 = alloca i32, align 4
  %38 = alloca i32*, align 8
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %10, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %11, align 8
  store i8* %2, i8** %12, align 8
  store i32 %3, i32* %13, align 4
  store float %4, float* %14, align 4
  store i32 %5, i32* %15, align 4
  store float %6, float* %16, align 4
  store float %7, float* %17, align 4
  store i32 %8, i32* %18, align 4
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = inttoptr i64 %44 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %45, %struct.TYPE_14__** %19, align 8
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  %47 = icmp ne %struct.TYPE_14__* %46, null
  br i1 %47, label %49, label %48

48:                                               ; preds = %9
  br label %272

49:                                               ; preds = %9
  store i32 0, i32* %20, align 4
  store i32 0, i32* %21, align 4
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %22, align 4
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %23, align 4
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = icmp ne i32* %60, null
  br i1 %61, label %62, label %272

62:                                               ; preds = %49
  %63 = load float, float* %16, align 4
  %64 = load i32, i32* %22, align 4
  %65 = uitofp i32 %64 to float
  %66 = fmul float %63, %65
  %67 = call i32 @roundf(float %66)
  store i32 %67, i32* %24, align 4
  %68 = load float, float* %17, align 4
  %69 = fsub float 1.000000e+00, %68
  %70 = load i32, i32* %23, align 4
  %71 = uitofp i32 %70 to float
  %72 = fmul float %69, %71
  %73 = call i32 @roundf(float %72)
  store i32 %73, i32* %25, align 4
  %74 = load i32, i32* %18, align 4
  switch i32 %74, label %92 [
    i32 128, label %75
    i32 129, label %83
  ]

75:                                               ; preds = %62
  %76 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %77 = load i8*, i8** %12, align 8
  %78 = load i32, i32* %13, align 4
  %79 = load float, float* %14, align 4
  %80 = call i32 @switch_font_get_message_width(%struct.TYPE_15__* %76, i8* %77, i32 %78, float %79)
  %81 = load i32, i32* %24, align 4
  %82 = sub nsw i32 %81, %80
  store i32 %82, i32* %24, align 4
  br label %92

83:                                               ; preds = %62
  %84 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %85 = load i8*, i8** %12, align 8
  %86 = load i32, i32* %13, align 4
  %87 = load float, float* %14, align 4
  %88 = call i32 @switch_font_get_message_width(%struct.TYPE_15__* %84, i8* %85, i32 %86, float %87)
  %89 = sdiv i32 %88, 2
  %90 = load i32, i32* %24, align 4
  %91 = sub nsw i32 %90, %89
  store i32 %91, i32* %24, align 4
  br label %92

92:                                               ; preds = %62, %83, %75
  store i32 0, i32* %26, align 4
  br label %93

93:                                               ; preds = %268, %92
  %94 = load i32, i32* %26, align 4
  %95 = load i32, i32* %13, align 4
  %96 = icmp ult i32 %94, %95
  br i1 %96, label %97, label %271

97:                                               ; preds = %93
  %98 = load i8*, i8** %12, align 8
  %99 = load i32, i32* %26, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i8, i8* %98, i64 %100
  store i8* %101, i8** %33, align 8
  %102 = call i32 @utf8_walk(i8** %33)
  store i32 %102, i32* %34, align 4
  %103 = load i8*, i8** %33, align 8
  %104 = load i8*, i8** %12, align 8
  %105 = load i32, i32* %26, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i8, i8* %104, i64 %106
  %108 = ptrtoint i8* %103 to i64
  %109 = ptrtoint i8* %107 to i64
  %110 = sub i64 %108, %109
  %111 = trunc i64 %110 to i32
  store i32 %111, i32* %35, align 4
  %112 = load i32, i32* %35, align 4
  %113 = icmp ugt i32 %112, 1
  br i1 %113, label %114, label %119

114:                                              ; preds = %97
  %115 = load i32, i32* %35, align 4
  %116 = sub i32 %115, 1
  %117 = load i32, i32* %26, align 4
  %118 = add i32 %117, %116
  store i32 %118, i32* %26, align 4
  br label %119

119:                                              ; preds = %114, %97
  %120 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %121 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %120, i32 0, i32 2
  %122 = load %struct.TYPE_11__*, %struct.TYPE_11__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %122, i32 0, i32 0
  %124 = load %struct.font_glyph* (i32, i8)*, %struct.font_glyph* (i32, i8)** %123, align 8
  %125 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %126 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 8
  %128 = load i32, i32* %34, align 4
  %129 = trunc i32 %128 to i8
  %130 = call %struct.font_glyph* %124(i32 %127, i8 signext %129)
  store %struct.font_glyph* %130, %struct.font_glyph** %36, align 8
  %131 = load %struct.font_glyph*, %struct.font_glyph** %36, align 8
  %132 = icmp ne %struct.font_glyph* %131, null
  br i1 %132, label %143, label %133

133:                                              ; preds = %119
  %134 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %135 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %134, i32 0, i32 2
  %136 = load %struct.TYPE_11__*, %struct.TYPE_11__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %136, i32 0, i32 0
  %138 = load %struct.font_glyph* (i32, i8)*, %struct.font_glyph* (i32, i8)** %137, align 8
  %139 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %140 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 8
  %142 = call %struct.font_glyph* %138(i32 %141, i8 signext 63)
  store %struct.font_glyph* %142, %struct.font_glyph** %36, align 8
  br label %143

143:                                              ; preds = %133, %119
  %144 = load %struct.font_glyph*, %struct.font_glyph** %36, align 8
  %145 = icmp ne %struct.font_glyph* %144, null
  br i1 %145, label %147, label %146

146:                                              ; preds = %143
  br label %268

147:                                              ; preds = %143
  %148 = load i32, i32* %24, align 4
  %149 = load %struct.font_glyph*, %struct.font_glyph** %36, align 8
  %150 = getelementptr inbounds %struct.font_glyph, %struct.font_glyph* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = add nsw i32 %148, %151
  %153 = load i32, i32* %20, align 4
  %154 = add nsw i32 %152, %153
  store i32 %154, i32* %27, align 4
  %155 = load i32, i32* %25, align 4
  %156 = load %struct.font_glyph*, %struct.font_glyph** %36, align 8
  %157 = getelementptr inbounds %struct.font_glyph, %struct.font_glyph* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = add nsw i32 %155, %158
  %160 = load i32, i32* %21, align 4
  %161 = add nsw i32 %159, %160
  store i32 %161, i32* %28, align 4
  %162 = load %struct.font_glyph*, %struct.font_glyph** %36, align 8
  %163 = getelementptr inbounds %struct.font_glyph, %struct.font_glyph* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 8
  store i32 %164, i32* %31, align 4
  %165 = load %struct.font_glyph*, %struct.font_glyph** %36, align 8
  %166 = getelementptr inbounds %struct.font_glyph, %struct.font_glyph* %165, i32 0, i32 3
  %167 = load i32, i32* %166, align 4
  store i32 %167, i32* %32, align 4
  %168 = load %struct.font_glyph*, %struct.font_glyph** %36, align 8
  %169 = getelementptr inbounds %struct.font_glyph, %struct.font_glyph* %168, i32 0, i32 4
  %170 = load i32, i32* %169, align 8
  store i32 %170, i32* %29, align 4
  %171 = load %struct.font_glyph*, %struct.font_glyph** %36, align 8
  %172 = getelementptr inbounds %struct.font_glyph, %struct.font_glyph* %171, i32 0, i32 5
  %173 = load i32, i32* %172, align 4
  store i32 %173, i32* %30, align 4
  %174 = load i32, i32* %30, align 4
  store i32 %174, i32* %37, align 4
  br label %175

175:                                              ; preds = %250, %147
  %176 = load i32, i32* %37, align 4
  %177 = load i32, i32* %30, align 4
  %178 = load i32, i32* %32, align 4
  %179 = add nsw i32 %177, %178
  %180 = icmp slt i32 %176, %179
  br i1 %180, label %181, label %253

181:                                              ; preds = %175
  %182 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %183 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %182, i32 0, i32 0
  %184 = load %struct.TYPE_12__*, %struct.TYPE_12__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %184, i32 0, i32 1
  %186 = load i32*, i32** %185, align 8
  %187 = load i32, i32* %37, align 4
  %188 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %189 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %188, i32 0, i32 0
  %190 = load %struct.TYPE_12__*, %struct.TYPE_12__** %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 8
  %193 = mul nsw i32 %187, %192
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i32, i32* %186, i64 %194
  store i32* %195, i32** %38, align 8
  %196 = load i32, i32* %29, align 4
  store i32 %196, i32* %39, align 4
  br label %197

197:                                              ; preds = %246, %181
  %198 = load i32, i32* %39, align 4
  %199 = load i32, i32* %29, align 4
  %200 = load i32, i32* %31, align 4
  %201 = add nsw i32 %199, %200
  %202 = icmp slt i32 %198, %201
  br i1 %202, label %203, label %249

203:                                              ; preds = %197
  %204 = load i32*, i32** %38, align 8
  %205 = load i32, i32* %39, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds i32, i32* %204, i64 %206
  %208 = load i32, i32* %207, align 4
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %211, label %210

210:                                              ; preds = %203
  br label %246

211:                                              ; preds = %203
  %212 = load i32, i32* %27, align 4
  %213 = load i32, i32* %39, align 4
  %214 = load i32, i32* %29, align 4
  %215 = sub nsw i32 %213, %214
  %216 = add nsw i32 %212, %215
  store i32 %216, i32* %40, align 4
  %217 = load i32, i32* %28, align 4
  %218 = load i32, i32* %37, align 4
  %219 = load i32, i32* %30, align 4
  %220 = sub nsw i32 %218, %219
  %221 = add nsw i32 %217, %220
  store i32 %221, i32* %41, align 4
  %222 = load i32, i32* %40, align 4
  %223 = load i32, i32* %22, align 4
  %224 = icmp ult i32 %222, %223
  br i1 %224, label %225, label %245

225:                                              ; preds = %211
  %226 = load i32, i32* %41, align 4
  %227 = load i32, i32* %23, align 4
  %228 = icmp ult i32 %226, %227
  br i1 %228, label %229, label %245

229:                                              ; preds = %225
  %230 = load i32, i32* %15, align 4
  %231 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  %232 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %231, i32 0, i32 0
  %233 = load i32*, i32** %232, align 8
  %234 = load i32, i32* %41, align 4
  %235 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  %236 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %235, i32 0, i32 1
  %237 = load i32, i32* %236, align 8
  %238 = mul nsw i32 %234, %237
  %239 = sext i32 %238 to i64
  %240 = udiv i64 %239, 4
  %241 = load i32, i32* %40, align 4
  %242 = sext i32 %241 to i64
  %243 = add i64 %240, %242
  %244 = getelementptr inbounds i32, i32* %233, i64 %243
  store i32 %230, i32* %244, align 4
  br label %245

245:                                              ; preds = %229, %225, %211
  br label %246

246:                                              ; preds = %245, %210
  %247 = load i32, i32* %39, align 4
  %248 = add nsw i32 %247, 1
  store i32 %248, i32* %39, align 4
  br label %197

249:                                              ; preds = %197
  br label %250

250:                                              ; preds = %249
  %251 = load i32, i32* %37, align 4
  %252 = add nsw i32 %251, 1
  store i32 %252, i32* %37, align 4
  br label %175

253:                                              ; preds = %175
  %254 = load %struct.font_glyph*, %struct.font_glyph** %36, align 8
  %255 = getelementptr inbounds %struct.font_glyph, %struct.font_glyph* %254, i32 0, i32 7
  %256 = load i64, i64* %255, align 8
  %257 = load i32, i32* %20, align 4
  %258 = sext i32 %257 to i64
  %259 = add nsw i64 %258, %256
  %260 = trunc i64 %259 to i32
  store i32 %260, i32* %20, align 4
  %261 = load %struct.font_glyph*, %struct.font_glyph** %36, align 8
  %262 = getelementptr inbounds %struct.font_glyph, %struct.font_glyph* %261, i32 0, i32 6
  %263 = load i64, i64* %262, align 8
  %264 = load i32, i32* %21, align 4
  %265 = sext i32 %264 to i64
  %266 = add nsw i64 %265, %263
  %267 = trunc i64 %266 to i32
  store i32 %267, i32* %21, align 4
  br label %268

268:                                              ; preds = %253, %146
  %269 = load i32, i32* %26, align 4
  %270 = add nsw i32 %269, 1
  store i32 %270, i32* %26, align 4
  br label %93

271:                                              ; preds = %93
  br label %272

272:                                              ; preds = %48, %271, %49
  ret void
}

declare dso_local i32 @roundf(float) #1

declare dso_local i32 @switch_font_get_message_width(%struct.TYPE_15__*, i8*, i32, float) #1

declare dso_local i32 @utf8_walk(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
