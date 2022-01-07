; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers_font/extr_gl_raster_font.c_gl_raster_font_render_line.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers_font/extr_gl_raster_font.c_gl_raster_font_render_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { float, float, %struct.TYPE_11__*, i32, %struct.TYPE_10__*, %struct.TYPE_12__* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { %struct.font_glyph* (i32, i8)* }
%struct.font_glyph = type { i32, i32, i32, i32, i32, i32, i64, i64 }
%struct.TYPE_12__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32 }
%struct.video_coords = type { i32*, i32*, i32*, i32, i32* }

@MAX_MSG_LEN_CHUNK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_13__*, i8*, i32, i32, i32*, i32, i32, i32, i32*)* @gl_raster_font_render_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gl_raster_font_render_line(%struct.TYPE_13__* %0, i8* %1, i32 %2, i32 %3, i32* %4, i32 %5, i32 %6, i32 %7, i32* %8) #0 {
  %10 = alloca %struct.TYPE_13__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.video_coords, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca %struct.TYPE_12__*, align 8
  %27 = alloca i8*, align 8
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca float, align 4
  %33 = alloca float, align 4
  %34 = alloca float, align 4
  %35 = alloca float, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
  %42 = alloca i32, align 4
  %43 = alloca %struct.font_glyph*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %10, align 8
  store i8* %1, i8** %11, align 8
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32* %4, i32** %14, align 8
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i32* %8, i32** %18, align 8
  %44 = load i32, i32* @MAX_MSG_LEN_CHUNK, align 4
  %45 = mul nsw i32 12, %44
  %46 = zext i32 %45 to i64
  %47 = call i8* @llvm.stacksave()
  store i8* %47, i8** %21, align 8
  %48 = alloca i32, i64 %46, align 16
  store i64 %46, i64* %22, align 8
  %49 = load i32, i32* @MAX_MSG_LEN_CHUNK, align 4
  %50 = mul nsw i32 12, %49
  %51 = zext i32 %50 to i64
  %52 = alloca i32, i64 %51, align 16
  store i64 %51, i64* %23, align 8
  %53 = load i32, i32* @MAX_MSG_LEN_CHUNK, align 4
  %54 = mul nsw i32 24, %53
  %55 = zext i32 %54 to i64
  %56 = alloca i32, i64 %55, align 16
  store i64 %55, i64* %24, align 8
  %57 = load i32, i32* @MAX_MSG_LEN_CHUNK, align 4
  %58 = mul nsw i32 12, %57
  %59 = zext i32 %58 to i64
  %60 = alloca i32, i64 %59, align 16
  store i64 %59, i64* %25, align 8
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 5
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %62, align 8
  store %struct.TYPE_12__* %63, %struct.TYPE_12__** %26, align 8
  %64 = load i8*, i8** %11, align 8
  %65 = load i32, i32* %12, align 4
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds i8, i8* %64, i64 %66
  store i8* %67, i8** %27, align 8
  %68 = load i32, i32* %15, align 4
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %26, align 8
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = mul nsw i32 %68, %72
  %74 = call i32 @roundf(i32 %73)
  store i32 %74, i32* %28, align 4
  %75 = load i32, i32* %16, align 4
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** %26, align 8
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = mul nsw i32 %75, %79
  %81 = call i32 @roundf(i32 %80)
  store i32 %81, i32* %29, align 4
  store i32 0, i32* %30, align 4
  store i32 0, i32* %31, align 4
  %82 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %82, i32 0, i32 0
  %84 = load float, float* %83, align 8
  %85 = fdiv float 1.000000e+00, %84
  store float %85, float* %32, align 4
  %86 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %87 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %86, i32 0, i32 1
  %88 = load float, float* %87, align 4
  %89 = fdiv float 1.000000e+00, %88
  store float %89, float* %33, align 4
  %90 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %91 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %90, i32 0, i32 5
  %92 = load %struct.TYPE_12__*, %struct.TYPE_12__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = sitofp i32 %95 to float
  %97 = fdiv float 1.000000e+00, %96
  store float %97, float* %34, align 4
  %98 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %99 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %98, i32 0, i32 5
  %100 = load %struct.TYPE_12__*, %struct.TYPE_12__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = sitofp i32 %103 to float
  %105 = fdiv float 1.000000e+00, %104
  store float %105, float* %35, align 4
  %106 = load i32, i32* %17, align 4
  switch i32 %106, label %128 [
    i32 128, label %107
    i32 129, label %117
  ]

107:                                              ; preds = %9
  %108 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %109 = load i8*, i8** %11, align 8
  %110 = load i32, i32* %12, align 4
  %111 = load i32, i32* %13, align 4
  %112 = call double @gl_get_message_width(%struct.TYPE_13__* %108, i8* %109, i32 %110, i32 %111)
  %113 = load i32, i32* %28, align 4
  %114 = sitofp i32 %113 to double
  %115 = fsub double %114, %112
  %116 = fptosi double %115 to i32
  store i32 %116, i32* %28, align 4
  br label %128

117:                                              ; preds = %9
  %118 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %119 = load i8*, i8** %11, align 8
  %120 = load i32, i32* %12, align 4
  %121 = load i32, i32* %13, align 4
  %122 = call double @gl_get_message_width(%struct.TYPE_13__* %118, i8* %119, i32 %120, i32 %121)
  %123 = fdiv double %122, 2.000000e+00
  %124 = load i32, i32* %28, align 4
  %125 = sitofp i32 %124 to double
  %126 = fsub double %125, %123
  %127 = fptosi double %126 to i32
  store i32 %127, i32* %28, align 4
  br label %128

128:                                              ; preds = %9, %117, %107
  br label %129

129:                                              ; preds = %238, %128
  %130 = load i8*, i8** %11, align 8
  %131 = load i8*, i8** %27, align 8
  %132 = icmp ult i8* %130, %131
  br i1 %132, label %133, label %239

133:                                              ; preds = %129
  store i32 0, i32* %19, align 4
  br label %134

134:                                              ; preds = %173, %172, %133
  %135 = load i32, i32* %19, align 4
  %136 = load i32, i32* @MAX_MSG_LEN_CHUNK, align 4
  %137 = icmp ult i32 %135, %136
  br i1 %137, label %138, label %142

138:                                              ; preds = %134
  %139 = load i8*, i8** %11, align 8
  %140 = load i8*, i8** %27, align 8
  %141 = icmp ult i8* %139, %140
  br label %142

142:                                              ; preds = %138, %134
  %143 = phi i1 [ false, %134 ], [ %141, %138 ]
  br i1 %143, label %144, label %214

144:                                              ; preds = %142
  %145 = call i32 @utf8_walk(i8** %11)
  store i32 %145, i32* %42, align 4
  %146 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %147 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %146, i32 0, i32 4
  %148 = load %struct.TYPE_10__*, %struct.TYPE_10__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %148, i32 0, i32 0
  %150 = load %struct.font_glyph* (i32, i8)*, %struct.font_glyph* (i32, i8)** %149, align 8
  %151 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %152 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %151, i32 0, i32 3
  %153 = load i32, i32* %152, align 8
  %154 = load i32, i32* %42, align 4
  %155 = trunc i32 %154 to i8
  %156 = call %struct.font_glyph* %150(i32 %153, i8 signext %155)
  store %struct.font_glyph* %156, %struct.font_glyph** %43, align 8
  %157 = load %struct.font_glyph*, %struct.font_glyph** %43, align 8
  %158 = icmp ne %struct.font_glyph* %157, null
  br i1 %158, label %169, label %159

159:                                              ; preds = %144
  %160 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %161 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %160, i32 0, i32 4
  %162 = load %struct.TYPE_10__*, %struct.TYPE_10__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %162, i32 0, i32 0
  %164 = load %struct.font_glyph* (i32, i8)*, %struct.font_glyph* (i32, i8)** %163, align 8
  %165 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %166 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %165, i32 0, i32 3
  %167 = load i32, i32* %166, align 8
  %168 = call %struct.font_glyph* %164(i32 %167, i8 signext 63)
  store %struct.font_glyph* %168, %struct.font_glyph** %43, align 8
  br label %169

169:                                              ; preds = %159, %144
  %170 = load %struct.font_glyph*, %struct.font_glyph** %43, align 8
  %171 = icmp ne %struct.font_glyph* %170, null
  br i1 %171, label %173, label %172

172:                                              ; preds = %169
  br label %134

173:                                              ; preds = %169
  %174 = load %struct.font_glyph*, %struct.font_glyph** %43, align 8
  %175 = getelementptr inbounds %struct.font_glyph, %struct.font_glyph* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  store i32 %176, i32* %36, align 4
  %177 = load %struct.font_glyph*, %struct.font_glyph** %43, align 8
  %178 = getelementptr inbounds %struct.font_glyph, %struct.font_glyph* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 4
  store i32 %179, i32* %37, align 4
  %180 = load %struct.font_glyph*, %struct.font_glyph** %43, align 8
  %181 = getelementptr inbounds %struct.font_glyph, %struct.font_glyph* %180, i32 0, i32 2
  %182 = load i32, i32* %181, align 8
  store i32 %182, i32* %38, align 4
  %183 = load %struct.font_glyph*, %struct.font_glyph** %43, align 8
  %184 = getelementptr inbounds %struct.font_glyph, %struct.font_glyph* %183, i32 0, i32 3
  %185 = load i32, i32* %184, align 4
  store i32 %185, i32* %39, align 4
  %186 = load %struct.font_glyph*, %struct.font_glyph** %43, align 8
  %187 = getelementptr inbounds %struct.font_glyph, %struct.font_glyph* %186, i32 0, i32 4
  %188 = load i32, i32* %187, align 8
  store i32 %188, i32* %40, align 4
  %189 = load %struct.font_glyph*, %struct.font_glyph** %43, align 8
  %190 = getelementptr inbounds %struct.font_glyph, %struct.font_glyph* %189, i32 0, i32 5
  %191 = load i32, i32* %190, align 4
  store i32 %191, i32* %41, align 4
  %192 = call i32 @gl_raster_font_emit(i32 0, i32 0, i32 1)
  %193 = call i32 @gl_raster_font_emit(i32 1, i32 1, i32 1)
  %194 = call i32 @gl_raster_font_emit(i32 2, i32 0, i32 0)
  %195 = call i32 @gl_raster_font_emit(i32 3, i32 1, i32 0)
  %196 = call i32 @gl_raster_font_emit(i32 4, i32 0, i32 0)
  %197 = call i32 @gl_raster_font_emit(i32 5, i32 1, i32 1)
  %198 = load i32, i32* %19, align 4
  %199 = add i32 %198, 1
  store i32 %199, i32* %19, align 4
  %200 = load %struct.font_glyph*, %struct.font_glyph** %43, align 8
  %201 = getelementptr inbounds %struct.font_glyph, %struct.font_glyph* %200, i32 0, i32 7
  %202 = load i64, i64* %201, align 8
  %203 = load i32, i32* %30, align 4
  %204 = sext i32 %203 to i64
  %205 = add nsw i64 %204, %202
  %206 = trunc i64 %205 to i32
  store i32 %206, i32* %30, align 4
  %207 = load %struct.font_glyph*, %struct.font_glyph** %43, align 8
  %208 = getelementptr inbounds %struct.font_glyph, %struct.font_glyph* %207, i32 0, i32 6
  %209 = load i64, i64* %208, align 8
  %210 = load i32, i32* %31, align 4
  %211 = sext i32 %210 to i64
  %212 = sub nsw i64 %211, %209
  %213 = trunc i64 %212 to i32
  store i32 %213, i32* %31, align 4
  br label %134

214:                                              ; preds = %142
  %215 = getelementptr inbounds %struct.video_coords, %struct.video_coords* %20, i32 0, i32 0
  store i32* %48, i32** %215, align 8
  %216 = getelementptr inbounds %struct.video_coords, %struct.video_coords* %20, i32 0, i32 1
  store i32* %52, i32** %216, align 8
  %217 = getelementptr inbounds %struct.video_coords, %struct.video_coords* %20, i32 0, i32 2
  store i32* %56, i32** %217, align 8
  %218 = load i32, i32* %19, align 4
  %219 = mul i32 %218, 6
  %220 = getelementptr inbounds %struct.video_coords, %struct.video_coords* %20, i32 0, i32 3
  store i32 %219, i32* %220, align 8
  %221 = getelementptr inbounds %struct.video_coords, %struct.video_coords* %20, i32 0, i32 4
  store i32* %60, i32** %221, align 8
  %222 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %223 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %222, i32 0, i32 2
  %224 = load %struct.TYPE_11__*, %struct.TYPE_11__** %223, align 8
  %225 = icmp ne %struct.TYPE_11__* %224, null
  br i1 %225, label %226, label %234

226:                                              ; preds = %214
  %227 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %228 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %227, i32 0, i32 2
  %229 = load %struct.TYPE_11__*, %struct.TYPE_11__** %228, align 8
  %230 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %229, i32 0, i32 0
  %231 = getelementptr inbounds %struct.video_coords, %struct.video_coords* %20, i32 0, i32 3
  %232 = load i32, i32* %231, align 8
  %233 = call i32 @video_coord_array_append(i32* %230, %struct.video_coords* %20, i32 %232)
  br label %238

234:                                              ; preds = %214
  %235 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %236 = load i32*, i32** %18, align 8
  %237 = call i32 @gl_raster_font_draw_vertices(%struct.TYPE_13__* %235, %struct.video_coords* %20, i32* %236)
  br label %238

238:                                              ; preds = %234, %226
  br label %129

239:                                              ; preds = %129
  %240 = load i8*, i8** %21, align 8
  call void @llvm.stackrestore(i8* %240)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @roundf(i32) #2

declare dso_local double @gl_get_message_width(%struct.TYPE_13__*, i8*, i32, i32) #2

declare dso_local i32 @utf8_walk(i8**) #2

declare dso_local i32 @gl_raster_font_emit(i32, i32, i32) #2

declare dso_local i32 @video_coord_array_append(i32*, %struct.video_coords*, i32) #2

declare dso_local i32 @gl_raster_font_draw_vertices(%struct.TYPE_13__*, %struct.video_coords*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
