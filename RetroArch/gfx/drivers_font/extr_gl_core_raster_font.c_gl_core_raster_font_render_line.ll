; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers_font/extr_gl_core_raster_font.c_gl_core_raster_font_render_line.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers_font/extr_gl_core_raster_font.c_gl_core_raster_font_render_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_13__*, i32, %struct.TYPE_12__*, %struct.TYPE_14__*, %struct.TYPE_10__* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { %struct.font_glyph* (i32, i8)* }
%struct.font_glyph = type { i32, i32, i32, i32, i32, i32, i64, i64 }
%struct.TYPE_14__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_10__ = type { float, float }
%struct.video_coords = type { i32*, i32*, i32*, i32, i32* }

@MAX_MSG_LEN_CHUNK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_15__*, i8*, i32, i32, i32*, i32, i32, i32, i32*)* @gl_core_raster_font_render_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gl_core_raster_font_render_line(%struct.TYPE_15__* %0, i8* %1, i32 %2, i32 %3, i32* %4, i32 %5, i32 %6, i32 %7, i32* %8) #0 {
  %10 = alloca %struct.TYPE_15__*, align 8
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
  %25 = alloca %struct.TYPE_14__*, align 8
  %26 = alloca i8*, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca float, align 4
  %32 = alloca float, align 4
  %33 = alloca float, align 4
  %34 = alloca float, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
  %42 = alloca %struct.font_glyph*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %10, align 8
  store i8* %1, i8** %11, align 8
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32* %4, i32** %14, align 8
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i32* %8, i32** %18, align 8
  %43 = load i32, i32* @MAX_MSG_LEN_CHUNK, align 4
  %44 = mul nsw i32 12, %43
  %45 = zext i32 %44 to i64
  %46 = call i8* @llvm.stacksave()
  store i8* %46, i8** %21, align 8
  %47 = alloca i32, i64 %45, align 16
  store i64 %45, i64* %22, align 8
  %48 = load i32, i32* @MAX_MSG_LEN_CHUNK, align 4
  %49 = mul nsw i32 12, %48
  %50 = zext i32 %49 to i64
  %51 = alloca i32, i64 %50, align 16
  store i64 %50, i64* %23, align 8
  %52 = load i32, i32* @MAX_MSG_LEN_CHUNK, align 4
  %53 = mul nsw i32 24, %52
  %54 = zext i32 %53 to i64
  %55 = alloca i32, i64 %54, align 16
  store i64 %54, i64* %24, align 8
  %56 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %57 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %56, i32 0, i32 3
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %57, align 8
  store %struct.TYPE_14__* %58, %struct.TYPE_14__** %25, align 8
  %59 = load i8*, i8** %11, align 8
  %60 = load i32, i32* %12, align 4
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds i8, i8* %59, i64 %61
  store i8* %62, i8** %26, align 8
  %63 = load i32, i32* %15, align 4
  %64 = load %struct.TYPE_14__*, %struct.TYPE_14__** %25, align 8
  %65 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = mul nsw i32 %63, %67
  %69 = call i32 @roundf(i32 %68)
  store i32 %69, i32* %27, align 4
  %70 = load i32, i32* %16, align 4
  %71 = load %struct.TYPE_14__*, %struct.TYPE_14__** %25, align 8
  %72 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = mul nsw i32 %70, %74
  %76 = call i32 @roundf(i32 %75)
  store i32 %76, i32* %28, align 4
  store i32 0, i32* %29, align 4
  store i32 0, i32* %30, align 4
  %77 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %78 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %77, i32 0, i32 4
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 0
  %81 = load float, float* %80, align 4
  %82 = fdiv float 1.000000e+00, %81
  store float %82, float* %31, align 4
  %83 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %84 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %83, i32 0, i32 4
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 1
  %87 = load float, float* %86, align 4
  %88 = fdiv float 1.000000e+00, %87
  store float %88, float* %32, align 4
  %89 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %90 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %89, i32 0, i32 3
  %91 = load %struct.TYPE_14__*, %struct.TYPE_14__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = sitofp i32 %94 to float
  %96 = fdiv float 1.000000e+00, %95
  store float %96, float* %33, align 4
  %97 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %98 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %97, i32 0, i32 3
  %99 = load %struct.TYPE_14__*, %struct.TYPE_14__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = sitofp i32 %102 to float
  %104 = fdiv float 1.000000e+00, %103
  store float %104, float* %34, align 4
  %105 = load i32, i32* %17, align 4
  switch i32 %105, label %127 [
    i32 128, label %106
    i32 129, label %116
  ]

106:                                              ; preds = %9
  %107 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %108 = load i8*, i8** %11, align 8
  %109 = load i32, i32* %12, align 4
  %110 = load i32, i32* %13, align 4
  %111 = call double @gl_core_get_message_width(%struct.TYPE_15__* %107, i8* %108, i32 %109, i32 %110)
  %112 = load i32, i32* %27, align 4
  %113 = sitofp i32 %112 to double
  %114 = fsub double %113, %111
  %115 = fptosi double %114 to i32
  store i32 %115, i32* %27, align 4
  br label %127

116:                                              ; preds = %9
  %117 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %118 = load i8*, i8** %11, align 8
  %119 = load i32, i32* %12, align 4
  %120 = load i32, i32* %13, align 4
  %121 = call double @gl_core_get_message_width(%struct.TYPE_15__* %117, i8* %118, i32 %119, i32 %120)
  %122 = fdiv double %121, 2.000000e+00
  %123 = load i32, i32* %27, align 4
  %124 = sitofp i32 %123 to double
  %125 = fsub double %124, %122
  %126 = fptosi double %125 to i32
  store i32 %126, i32* %27, align 4
  br label %127

127:                                              ; preds = %9, %116, %106
  br label %128

128:                                              ; preds = %237, %127
  %129 = load i8*, i8** %11, align 8
  %130 = load i8*, i8** %26, align 8
  %131 = icmp ult i8* %129, %130
  br i1 %131, label %132, label %238

132:                                              ; preds = %128
  store i32 0, i32* %19, align 4
  br label %133

133:                                              ; preds = %172, %171, %132
  %134 = load i32, i32* %19, align 4
  %135 = load i32, i32* @MAX_MSG_LEN_CHUNK, align 4
  %136 = icmp ult i32 %134, %135
  br i1 %136, label %137, label %141

137:                                              ; preds = %133
  %138 = load i8*, i8** %11, align 8
  %139 = load i8*, i8** %26, align 8
  %140 = icmp ult i8* %138, %139
  br label %141

141:                                              ; preds = %137, %133
  %142 = phi i1 [ false, %133 ], [ %140, %137 ]
  br i1 %142, label %143, label %213

143:                                              ; preds = %141
  %144 = call i32 @utf8_walk(i8** %11)
  store i32 %144, i32* %41, align 4
  %145 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %146 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %145, i32 0, i32 2
  %147 = load %struct.TYPE_12__*, %struct.TYPE_12__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %147, i32 0, i32 0
  %149 = load %struct.font_glyph* (i32, i8)*, %struct.font_glyph* (i32, i8)** %148, align 8
  %150 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %151 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 8
  %153 = load i32, i32* %41, align 4
  %154 = trunc i32 %153 to i8
  %155 = call %struct.font_glyph* %149(i32 %152, i8 signext %154)
  store %struct.font_glyph* %155, %struct.font_glyph** %42, align 8
  %156 = load %struct.font_glyph*, %struct.font_glyph** %42, align 8
  %157 = icmp ne %struct.font_glyph* %156, null
  br i1 %157, label %168, label %158

158:                                              ; preds = %143
  %159 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %160 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %159, i32 0, i32 2
  %161 = load %struct.TYPE_12__*, %struct.TYPE_12__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %161, i32 0, i32 0
  %163 = load %struct.font_glyph* (i32, i8)*, %struct.font_glyph* (i32, i8)** %162, align 8
  %164 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %165 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 8
  %167 = call %struct.font_glyph* %163(i32 %166, i8 signext 63)
  store %struct.font_glyph* %167, %struct.font_glyph** %42, align 8
  br label %168

168:                                              ; preds = %158, %143
  %169 = load %struct.font_glyph*, %struct.font_glyph** %42, align 8
  %170 = icmp ne %struct.font_glyph* %169, null
  br i1 %170, label %172, label %171

171:                                              ; preds = %168
  br label %133

172:                                              ; preds = %168
  %173 = load %struct.font_glyph*, %struct.font_glyph** %42, align 8
  %174 = getelementptr inbounds %struct.font_glyph, %struct.font_glyph* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  store i32 %175, i32* %35, align 4
  %176 = load %struct.font_glyph*, %struct.font_glyph** %42, align 8
  %177 = getelementptr inbounds %struct.font_glyph, %struct.font_glyph* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  store i32 %178, i32* %36, align 4
  %179 = load %struct.font_glyph*, %struct.font_glyph** %42, align 8
  %180 = getelementptr inbounds %struct.font_glyph, %struct.font_glyph* %179, i32 0, i32 2
  %181 = load i32, i32* %180, align 8
  store i32 %181, i32* %37, align 4
  %182 = load %struct.font_glyph*, %struct.font_glyph** %42, align 8
  %183 = getelementptr inbounds %struct.font_glyph, %struct.font_glyph* %182, i32 0, i32 3
  %184 = load i32, i32* %183, align 4
  store i32 %184, i32* %38, align 4
  %185 = load %struct.font_glyph*, %struct.font_glyph** %42, align 8
  %186 = getelementptr inbounds %struct.font_glyph, %struct.font_glyph* %185, i32 0, i32 4
  %187 = load i32, i32* %186, align 8
  store i32 %187, i32* %39, align 4
  %188 = load %struct.font_glyph*, %struct.font_glyph** %42, align 8
  %189 = getelementptr inbounds %struct.font_glyph, %struct.font_glyph* %188, i32 0, i32 5
  %190 = load i32, i32* %189, align 4
  store i32 %190, i32* %40, align 4
  %191 = call i32 @gl_core_raster_font_emit(i32 0, i32 0, i32 1)
  %192 = call i32 @gl_core_raster_font_emit(i32 1, i32 1, i32 1)
  %193 = call i32 @gl_core_raster_font_emit(i32 2, i32 0, i32 0)
  %194 = call i32 @gl_core_raster_font_emit(i32 3, i32 1, i32 0)
  %195 = call i32 @gl_core_raster_font_emit(i32 4, i32 0, i32 0)
  %196 = call i32 @gl_core_raster_font_emit(i32 5, i32 1, i32 1)
  %197 = load i32, i32* %19, align 4
  %198 = add i32 %197, 1
  store i32 %198, i32* %19, align 4
  %199 = load %struct.font_glyph*, %struct.font_glyph** %42, align 8
  %200 = getelementptr inbounds %struct.font_glyph, %struct.font_glyph* %199, i32 0, i32 7
  %201 = load i64, i64* %200, align 8
  %202 = load i32, i32* %29, align 4
  %203 = sext i32 %202 to i64
  %204 = add nsw i64 %203, %201
  %205 = trunc i64 %204 to i32
  store i32 %205, i32* %29, align 4
  %206 = load %struct.font_glyph*, %struct.font_glyph** %42, align 8
  %207 = getelementptr inbounds %struct.font_glyph, %struct.font_glyph* %206, i32 0, i32 6
  %208 = load i64, i64* %207, align 8
  %209 = load i32, i32* %30, align 4
  %210 = sext i32 %209 to i64
  %211 = sub nsw i64 %210, %208
  %212 = trunc i64 %211 to i32
  store i32 %212, i32* %30, align 4
  br label %133

213:                                              ; preds = %141
  %214 = getelementptr inbounds %struct.video_coords, %struct.video_coords* %20, i32 0, i32 0
  store i32* %47, i32** %214, align 8
  %215 = getelementptr inbounds %struct.video_coords, %struct.video_coords* %20, i32 0, i32 1
  store i32* %51, i32** %215, align 8
  %216 = getelementptr inbounds %struct.video_coords, %struct.video_coords* %20, i32 0, i32 2
  store i32* %55, i32** %216, align 8
  %217 = load i32, i32* %19, align 4
  %218 = mul i32 %217, 6
  %219 = getelementptr inbounds %struct.video_coords, %struct.video_coords* %20, i32 0, i32 3
  store i32 %218, i32* %219, align 8
  %220 = getelementptr inbounds %struct.video_coords, %struct.video_coords* %20, i32 0, i32 4
  store i32* %47, i32** %220, align 8
  %221 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %222 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %221, i32 0, i32 0
  %223 = load %struct.TYPE_13__*, %struct.TYPE_13__** %222, align 8
  %224 = icmp ne %struct.TYPE_13__* %223, null
  br i1 %224, label %225, label %233

225:                                              ; preds = %213
  %226 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %227 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %226, i32 0, i32 0
  %228 = load %struct.TYPE_13__*, %struct.TYPE_13__** %227, align 8
  %229 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %228, i32 0, i32 0
  %230 = getelementptr inbounds %struct.video_coords, %struct.video_coords* %20, i32 0, i32 3
  %231 = load i32, i32* %230, align 8
  %232 = call i32 @video_coord_array_append(i32* %229, %struct.video_coords* %20, i32 %231)
  br label %237

233:                                              ; preds = %213
  %234 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %235 = load i32*, i32** %18, align 8
  %236 = call i32 @gl_core_raster_font_draw_vertices(%struct.TYPE_15__* %234, %struct.video_coords* %20, i32* %235)
  br label %237

237:                                              ; preds = %233, %225
  br label %128

238:                                              ; preds = %128
  %239 = load i8*, i8** %21, align 8
  call void @llvm.stackrestore(i8* %239)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @roundf(i32) #2

declare dso_local double @gl_core_get_message_width(%struct.TYPE_15__*, i8*, i32, i32) #2

declare dso_local i32 @utf8_walk(i8**) #2

declare dso_local i32 @gl_core_raster_font_emit(i32, i32, i32) #2

declare dso_local i32 @video_coord_array_append(i32*, %struct.video_coords*, i32) #2

declare dso_local i32 @gl_core_raster_font_draw_vertices(%struct.TYPE_15__*, %struct.video_coords*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
