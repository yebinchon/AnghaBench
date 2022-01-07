; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/drivers_display/extr_menu_display_gl_core.c_menu_display_gl_core_draw.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/drivers_display/extr_menu_display_gl_core.c_menu_display_gl_core_draw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i64, %struct.TYPE_18__*, i64, %struct.TYPE_15__, i64 }
%struct.TYPE_18__ = type { float*, float*, float*, i32 }
%struct.TYPE_15__ = type { i32, i32, i64 }
%struct.TYPE_19__ = type { i64 }
%struct.TYPE_22__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { %struct.TYPE_16__, i32, %struct.gl_core_buffer_locations, i32, %struct.gl_core_buffer_locations, i32, %struct.gl_core_buffer_locations, i32, %struct.gl_core_buffer_locations, i32, %struct.gl_core_buffer_locations, i32 }
%struct.TYPE_16__ = type { i64 }
%struct.gl_core_buffer_locations = type { i64, i64 }
%struct.TYPE_21__ = type { i32* }

@GL_TEXTURE1 = common dso_local global i32 0, align 4
@GL_TEXTURE_2D = common dso_local global i32 0, align 4
@GL_ONE = common dso_local global i32 0, align 4
@GL_SRC_ALPHA = common dso_local global i32 0, align 4
@GL_ONE_MINUS_SRC_ALPHA = common dso_local global i32 0, align 4
@GL_FLOAT = common dso_local global i32 0, align 4
@GL_FALSE = common dso_local global i32 0, align 4
@MENU_DISPLAY_PRIM_TRIANGLESTRIP = common dso_local global i64 0, align 8
@GL_TRIANGLE_STRIP = common dso_local global i32 0, align 4
@MENU_DISPLAY_PRIM_TRIANGLES = common dso_local global i64 0, align 8
@GL_TRIANGLES = common dso_local global i32 0, align 4
@GL_ARRAY_BUFFER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_20__*, %struct.TYPE_19__*)* @menu_display_gl_core_draw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @menu_display_gl_core_draw(%struct.TYPE_20__* %0, %struct.TYPE_19__* %1) #0 {
  %3 = alloca %struct.TYPE_20__*, align 8
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca float*, align 8
  %6 = alloca float*, align 8
  %7 = alloca float*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_22__*, align 8
  %10 = alloca %struct.gl_core_buffer_locations*, align 8
  %11 = alloca %struct.TYPE_21__*, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %3, align 8
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %4, align 8
  store float* null, float** %5, align 8
  store float* null, float** %6, align 8
  store float* null, float** %7, align 8
  store i64 0, i64* %8, align 8
  %12 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.TYPE_22__*
  store %struct.TYPE_22__* %15, %struct.TYPE_22__** %9, align 8
  store %struct.gl_core_buffer_locations* null, %struct.gl_core_buffer_locations** %10, align 8
  %16 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %17 = icmp ne %struct.TYPE_22__* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %20 = icmp ne %struct.TYPE_20__* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %18, %2
  br label %253

22:                                               ; preds = %18
  %23 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %23, i32 0, i32 4
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %8, align 8
  %26 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %26, i32 0, i32 1
  %28 = load %struct.TYPE_18__*, %struct.TYPE_18__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %28, i32 0, i32 0
  %30 = load float*, float** %29, align 8
  store float* %30, float** %5, align 8
  %31 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %31, i32 0, i32 1
  %33 = load %struct.TYPE_18__*, %struct.TYPE_18__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %33, i32 0, i32 1
  %35 = load float*, float** %34, align 8
  store float* %35, float** %6, align 8
  %36 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %36, i32 0, i32 1
  %38 = load %struct.TYPE_18__*, %struct.TYPE_18__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %38, i32 0, i32 2
  %40 = load float*, float** %39, align 8
  store float* %40, float** %7, align 8
  %41 = load float*, float** %5, align 8
  %42 = icmp ne float* %41, null
  br i1 %42, label %45, label %43

43:                                               ; preds = %22
  %44 = call float* (...) @menu_display_gl_core_get_default_vertices()
  store float* %44, float** %5, align 8
  br label %45

45:                                               ; preds = %43, %22
  %46 = load float*, float** %6, align 8
  %47 = icmp ne float* %46, null
  br i1 %47, label %50, label %48

48:                                               ; preds = %45
  %49 = call float* (...) @menu_display_gl_core_get_default_tex_coords()
  store float* %49, float** %6, align 8
  br label %50

50:                                               ; preds = %48, %45
  %51 = load float*, float** %7, align 8
  %52 = icmp ne float* %51, null
  br i1 %52, label %55, label %53

53:                                               ; preds = %50
  %54 = call float* (...) @menu_display_gl_core_get_default_color()
  store float* %54, float** %7, align 8
  br label %55

55:                                               ; preds = %53, %50
  %56 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %57 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %58 = call i32 @menu_display_gl_core_viewport(%struct.TYPE_20__* %56, %struct.TYPE_19__* %57)
  %59 = load i32, i32* @GL_TEXTURE1, align 4
  %60 = call i32 @glActiveTexture(i32 %59)
  %61 = load i32, i32* @GL_TEXTURE_2D, align 4
  %62 = load i64, i64* %8, align 8
  %63 = call i32 @glBindTexture(i32 %61, i64 %62)
  %64 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %64, i32 0, i32 3
  %66 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  switch i32 %67, label %72 [
    i32 132, label %68
    i32 131, label %68
  ]

68:                                               ; preds = %55, %55
  %69 = load i32, i32* @GL_ONE, align 4
  %70 = load i32, i32* @GL_ONE, align 4
  %71 = call i32 @glBlendFunc(i32 %69, i32 %70)
  br label %76

72:                                               ; preds = %55
  %73 = load i32, i32* @GL_SRC_ALPHA, align 4
  %74 = load i32, i32* @GL_ONE_MINUS_SRC_ALPHA, align 4
  %75 = call i32 @glBlendFunc(i32 %73, i32 %74)
  br label %76

76:                                               ; preds = %72, %68
  %77 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %77, i32 0, i32 3
  %79 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  switch i32 %80, label %81 [
  ]

81:                                               ; preds = %76
  %82 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %83 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @glUseProgram(i32 %85)
  store %struct.gl_core_buffer_locations* null, %struct.gl_core_buffer_locations** %10, align 8
  br label %87

87:                                               ; preds = %81
  %88 = load %struct.gl_core_buffer_locations*, %struct.gl_core_buffer_locations** %10, align 8
  %89 = icmp ne %struct.gl_core_buffer_locations* %88, null
  br i1 %89, label %90, label %111

90:                                               ; preds = %87
  %91 = load %struct.gl_core_buffer_locations*, %struct.gl_core_buffer_locations** %10, align 8
  %92 = getelementptr inbounds %struct.gl_core_buffer_locations, %struct.gl_core_buffer_locations* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = icmp sge i64 %93, 0
  br i1 %94, label %95, label %111

95:                                               ; preds = %90
  %96 = load %struct.gl_core_buffer_locations*, %struct.gl_core_buffer_locations** %10, align 8
  %97 = getelementptr inbounds %struct.gl_core_buffer_locations, %struct.gl_core_buffer_locations* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %99, i32 0, i32 3
  %101 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = add nsw i32 %102, 15
  %104 = sdiv i32 %103, 16
  %105 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %106 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %105, i32 0, i32 3
  %107 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %106, i32 0, i32 2
  %108 = load i64, i64* %107, align 8
  %109 = inttoptr i64 %108 to i32*
  %110 = call i32 @glUniform4fv(i64 %98, i32 %104, i32* %109)
  br label %111

111:                                              ; preds = %95, %90, %87
  %112 = load %struct.gl_core_buffer_locations*, %struct.gl_core_buffer_locations** %10, align 8
  %113 = icmp ne %struct.gl_core_buffer_locations* %112, null
  br i1 %113, label %114, label %135

114:                                              ; preds = %111
  %115 = load %struct.gl_core_buffer_locations*, %struct.gl_core_buffer_locations** %10, align 8
  %116 = getelementptr inbounds %struct.gl_core_buffer_locations, %struct.gl_core_buffer_locations* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = icmp sge i64 %117, 0
  br i1 %118, label %119, label %135

119:                                              ; preds = %114
  %120 = load %struct.gl_core_buffer_locations*, %struct.gl_core_buffer_locations** %10, align 8
  %121 = getelementptr inbounds %struct.gl_core_buffer_locations, %struct.gl_core_buffer_locations* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %124 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %123, i32 0, i32 3
  %125 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = add nsw i32 %126, 15
  %128 = sdiv i32 %127, 16
  %129 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %130 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %129, i32 0, i32 3
  %131 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %130, i32 0, i32 2
  %132 = load i64, i64* %131, align 8
  %133 = inttoptr i64 %132 to i32*
  %134 = call i32 @glUniform4fv(i64 %122, i32 %128, i32* %133)
  br label %135

135:                                              ; preds = %119, %114, %111
  %136 = load %struct.gl_core_buffer_locations*, %struct.gl_core_buffer_locations** %10, align 8
  %137 = icmp ne %struct.gl_core_buffer_locations* %136, null
  br i1 %137, label %171, label %138

138:                                              ; preds = %135
  %139 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %140 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %139, i32 0, i32 2
  %141 = load i64, i64* %140, align 8
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %148

143:                                              ; preds = %138
  %144 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %145 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %144, i32 0, i32 2
  %146 = load i64, i64* %145, align 8
  %147 = inttoptr i64 %146 to %struct.TYPE_21__*
  br label %152

148:                                              ; preds = %138
  %149 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %150 = call i64 @menu_display_gl_core_get_default_mvp(%struct.TYPE_19__* %149)
  %151 = inttoptr i64 %150 to %struct.TYPE_21__*
  br label %152

152:                                              ; preds = %148, %143
  %153 = phi %struct.TYPE_21__* [ %147, %143 ], [ %151, %148 ]
  store %struct.TYPE_21__* %153, %struct.TYPE_21__** %11, align 8
  %154 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %155 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = icmp sge i64 %158, 0
  br i1 %159, label %160, label %170

160:                                              ; preds = %152
  %161 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %162 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %167 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %166, i32 0, i32 0
  %168 = load i32*, i32** %167, align 8
  %169 = call i32 @glUniform4fv(i64 %165, i32 4, i32* %168)
  br label %170

170:                                              ; preds = %160, %152
  br label %171

171:                                              ; preds = %170, %135
  %172 = call i32 @glEnableVertexAttribArray(i32 0)
  %173 = call i32 @glEnableVertexAttribArray(i32 1)
  %174 = call i32 @glEnableVertexAttribArray(i32 2)
  %175 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %176 = load float*, float** %5, align 8
  %177 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %178 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %177, i32 0, i32 1
  %179 = load %struct.TYPE_18__*, %struct.TYPE_18__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %179, i32 0, i32 3
  %181 = load i32, i32* %180, align 8
  %182 = sext i32 %181 to i64
  %183 = mul i64 8, %182
  %184 = trunc i64 %183 to i32
  %185 = call i32 @gl_core_bind_scratch_vbo(%struct.TYPE_22__* %175, float* %176, i32 %184)
  %186 = load i32, i32* @GL_FLOAT, align 4
  %187 = load i32, i32* @GL_FALSE, align 4
  %188 = call i32 @glVertexAttribPointer(i32 0, i32 2, i32 %186, i32 %187, i32 8, i8* null)
  %189 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %190 = load float*, float** %6, align 8
  %191 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %192 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %191, i32 0, i32 1
  %193 = load %struct.TYPE_18__*, %struct.TYPE_18__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %193, i32 0, i32 3
  %195 = load i32, i32* %194, align 8
  %196 = sext i32 %195 to i64
  %197 = mul i64 8, %196
  %198 = trunc i64 %197 to i32
  %199 = call i32 @gl_core_bind_scratch_vbo(%struct.TYPE_22__* %189, float* %190, i32 %198)
  %200 = load i32, i32* @GL_FLOAT, align 4
  %201 = load i32, i32* @GL_FALSE, align 4
  %202 = call i32 @glVertexAttribPointer(i32 1, i32 2, i32 %200, i32 %201, i32 8, i8* null)
  %203 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %204 = load float*, float** %7, align 8
  %205 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %206 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %205, i32 0, i32 1
  %207 = load %struct.TYPE_18__*, %struct.TYPE_18__** %206, align 8
  %208 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %207, i32 0, i32 3
  %209 = load i32, i32* %208, align 8
  %210 = sext i32 %209 to i64
  %211 = mul i64 16, %210
  %212 = trunc i64 %211 to i32
  %213 = call i32 @gl_core_bind_scratch_vbo(%struct.TYPE_22__* %203, float* %204, i32 %212)
  %214 = load i32, i32* @GL_FLOAT, align 4
  %215 = load i32, i32* @GL_FALSE, align 4
  %216 = call i32 @glVertexAttribPointer(i32 2, i32 4, i32 %214, i32 %215, i32 16, i8* null)
  %217 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %218 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %217, i32 0, i32 0
  %219 = load i64, i64* %218, align 8
  %220 = load i64, i64* @MENU_DISPLAY_PRIM_TRIANGLESTRIP, align 8
  %221 = icmp eq i64 %219, %220
  br i1 %221, label %222, label %230

222:                                              ; preds = %171
  %223 = load i32, i32* @GL_TRIANGLE_STRIP, align 4
  %224 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %225 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %224, i32 0, i32 1
  %226 = load %struct.TYPE_18__*, %struct.TYPE_18__** %225, align 8
  %227 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %226, i32 0, i32 3
  %228 = load i32, i32* %227, align 8
  %229 = call i32 @glDrawArrays(i32 %223, i32 0, i32 %228)
  br label %245

230:                                              ; preds = %171
  %231 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %232 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %231, i32 0, i32 0
  %233 = load i64, i64* %232, align 8
  %234 = load i64, i64* @MENU_DISPLAY_PRIM_TRIANGLES, align 8
  %235 = icmp eq i64 %233, %234
  br i1 %235, label %236, label %244

236:                                              ; preds = %230
  %237 = load i32, i32* @GL_TRIANGLES, align 4
  %238 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %239 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %238, i32 0, i32 1
  %240 = load %struct.TYPE_18__*, %struct.TYPE_18__** %239, align 8
  %241 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %240, i32 0, i32 3
  %242 = load i32, i32* %241, align 8
  %243 = call i32 @glDrawArrays(i32 %237, i32 0, i32 %242)
  br label %244

244:                                              ; preds = %236, %230
  br label %245

245:                                              ; preds = %244, %222
  %246 = call i32 @glDisableVertexAttribArray(i32 0)
  %247 = call i32 @glDisableVertexAttribArray(i32 1)
  %248 = call i32 @glDisableVertexAttribArray(i32 2)
  %249 = load i32, i32* @GL_ARRAY_BUFFER, align 4
  %250 = call i32 @glBindBuffer(i32 %249, i32 0)
  %251 = load i32, i32* @GL_TEXTURE_2D, align 4
  %252 = call i32 @glBindTexture(i32 %251, i64 0)
  br label %253

253:                                              ; preds = %245, %21
  ret void
}

declare dso_local float* @menu_display_gl_core_get_default_vertices(...) #1

declare dso_local float* @menu_display_gl_core_get_default_tex_coords(...) #1

declare dso_local float* @menu_display_gl_core_get_default_color(...) #1

declare dso_local i32 @menu_display_gl_core_viewport(%struct.TYPE_20__*, %struct.TYPE_19__*) #1

declare dso_local i32 @glActiveTexture(i32) #1

declare dso_local i32 @glBindTexture(i32, i64) #1

declare dso_local i32 @glBlendFunc(i32, i32) #1

declare dso_local i32 @glUseProgram(i32) #1

declare dso_local i32 @glUniform4fv(i64, i32, i32*) #1

declare dso_local i64 @menu_display_gl_core_get_default_mvp(%struct.TYPE_19__*) #1

declare dso_local i32 @glEnableVertexAttribArray(i32) #1

declare dso_local i32 @gl_core_bind_scratch_vbo(%struct.TYPE_22__*, float*, i32) #1

declare dso_local i32 @glVertexAttribPointer(i32, i32, i32, i32, i32, i8*) #1

declare dso_local i32 @glDrawArrays(i32, i32, i32) #1

declare dso_local i32 @glDisableVertexAttribArray(i32) #1

declare dso_local i32 @glBindBuffer(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
