; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers_font/extr_d3d10_font.c_d3d10_font_render_line.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers_font/extr_d3d10_font.c_d3d10_font_render_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32, i32, i64 }
%struct.TYPE_24__ = type { %struct.TYPE_25__, %struct.TYPE_27__*, i32, %struct.TYPE_31__* }
%struct.TYPE_25__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i64, i64 }
%struct.TYPE_27__ = type { i32, i32, i32, i32 }
%struct.TYPE_31__ = type { %struct.font_glyph* (i32, i8)* }
%struct.font_glyph = type { float, float, float, float, float, float, float, float }
%struct.TYPE_23__ = type { i32*, %struct.TYPE_26__, %struct.TYPE_34__, %struct.TYPE_32__ }
%struct.TYPE_26__ = type { i32, i64 }
%struct.TYPE_34__ = type { float, float, float, float }
%struct.TYPE_32__ = type { i32, i32, float, float }
%struct.TYPE_22__ = type { %struct.TYPE_30__, i32, i32, %struct.TYPE_33__ }
%struct.TYPE_30__ = type { i32, %struct.TYPE_29__, %struct.TYPE_28__, i32, i64, i32 }
%struct.TYPE_29__ = type { i32 }
%struct.TYPE_28__ = type { i32 }
%struct.TYPE_33__ = type { i64, i64 }

@D3D10_MAP_WRITE_NO_OVERWRITE = common dso_local global i32 0, align 4
@DXGI_FORMAT_A8_UNORM = common dso_local global i32 0, align 4
@D3D10_DEFAULT_SAMPLE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_21__*, %struct.TYPE_24__*, i8*, i32, float, i32, float, float, i32)* @d3d10_font_render_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @d3d10_font_render_line(%struct.TYPE_21__* %0, %struct.TYPE_24__* %1, i8* %2, i32 %3, float %4, i32 %5, float %6, float %7, i32 %8) #0 {
  %10 = alloca %struct.TYPE_21__*, align 8
  %11 = alloca %struct.TYPE_24__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca float, align 4
  %15 = alloca i32, align 4
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca %struct.TYPE_23__*, align 8
  %23 = alloca %struct.TYPE_22__*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca %struct.font_glyph*, align 8
  %29 = alloca i8*, align 8
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %10, align 8
  store %struct.TYPE_24__* %1, %struct.TYPE_24__** %11, align 8
  store i8* %2, i8** %12, align 8
  store i32 %3, i32* %13, align 4
  store float %4, float* %14, align 4
  store i32 %5, i32* %15, align 4
  store float %6, float* %16, align 4
  store float %7, float* %17, align 4
  store i32 %8, i32* %18, align 4
  %32 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %33 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = inttoptr i64 %34 to %struct.TYPE_22__*
  store %struct.TYPE_22__* %35, %struct.TYPE_22__** %23, align 8
  %36 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  store i32 %38, i32* %24, align 4
  %39 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %40 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %25, align 4
  %42 = load float, float* %16, align 4
  %43 = load i32, i32* %24, align 4
  %44 = uitofp i32 %43 to float
  %45 = fmul float %42, %44
  %46 = fpext float %45 to double
  %47 = call i32 @roundf(double %46)
  store i32 %47, i32* %26, align 4
  %48 = load float, float* %17, align 4
  %49 = fpext float %48 to double
  %50 = fsub double 1.000000e+00, %49
  %51 = load i32, i32* %25, align 4
  %52 = uitofp i32 %51 to double
  %53 = fmul double %50, %52
  %54 = call i32 @roundf(double %53)
  store i32 %54, i32* %27, align 4
  %55 = load %struct.TYPE_22__*, %struct.TYPE_22__** %23, align 8
  %56 = icmp ne %struct.TYPE_22__* %55, null
  br i1 %56, label %57, label %71

57:                                               ; preds = %9
  %58 = load %struct.TYPE_22__*, %struct.TYPE_22__** %23, align 8
  %59 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %59, i32 0, i32 5
  %61 = load i32, i32* %60, align 8
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %71

63:                                               ; preds = %57
  %64 = load i32, i32* %13, align 4
  %65 = load %struct.TYPE_22__*, %struct.TYPE_22__** %23, align 8
  %66 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %66, i32 0, i32 4
  %68 = load i64, i64* %67, align 8
  %69 = trunc i64 %68 to i32
  %70 = icmp ugt i32 %64, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %63, %57, %9
  br label %453

72:                                               ; preds = %63
  %73 = load %struct.TYPE_22__*, %struct.TYPE_22__** %23, align 8
  %74 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* %13, align 4
  %78 = add i32 %76, %77
  %79 = load %struct.TYPE_22__*, %struct.TYPE_22__** %23, align 8
  %80 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %80, i32 0, i32 4
  %82 = load i64, i64* %81, align 8
  %83 = trunc i64 %82 to i32
  %84 = icmp ugt i32 %78, %83
  br i1 %84, label %85, label %89

85:                                               ; preds = %72
  %86 = load %struct.TYPE_22__*, %struct.TYPE_22__** %23, align 8
  %87 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %87, i32 0, i32 0
  store i32 0, i32* %88, align 8
  br label %89

89:                                               ; preds = %85, %72
  %90 = load i32, i32* %18, align 4
  switch i32 %90, label %108 [
    i32 128, label %91
    i32 129, label %99
  ]

91:                                               ; preds = %89
  %92 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %93 = load i8*, i8** %12, align 8
  %94 = load i32, i32* %13, align 4
  %95 = load float, float* %14, align 4
  %96 = call i32 @d3d10_font_get_message_width(%struct.TYPE_24__* %92, i8* %93, i32 %94, float %95)
  %97 = load i32, i32* %26, align 4
  %98 = sub nsw i32 %97, %96
  store i32 %98, i32* %26, align 4
  br label %108

99:                                               ; preds = %89
  %100 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %101 = load i8*, i8** %12, align 8
  %102 = load i32, i32* %13, align 4
  %103 = load float, float* %14, align 4
  %104 = call i32 @d3d10_font_get_message_width(%struct.TYPE_24__* %100, i8* %101, i32 %102, float %103)
  %105 = sdiv i32 %104, 2
  %106 = load i32, i32* %26, align 4
  %107 = sub nsw i32 %106, %105
  store i32 %107, i32* %26, align 4
  br label %108

108:                                              ; preds = %89, %99, %91
  %109 = load %struct.TYPE_22__*, %struct.TYPE_22__** %23, align 8
  %110 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @D3D10_MAP_WRITE_NO_OVERWRITE, align 4
  %114 = call i32 @D3D10MapBuffer(i32 %112, i32 %113, i32 0, i8** %21)
  %115 = load i8*, i8** %21, align 8
  %116 = bitcast i8* %115 to %struct.TYPE_23__*
  %117 = load %struct.TYPE_22__*, %struct.TYPE_22__** %23, align 8
  %118 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = zext i32 %120 to i64
  %122 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %116, i64 %121
  store %struct.TYPE_23__* %122, %struct.TYPE_23__** %22, align 8
  store i32 0, i32* %19, align 4
  br label %123

123:                                              ; preds = %340, %108
  %124 = load i32, i32* %19, align 4
  %125 = load i32, i32* %13, align 4
  %126 = icmp ult i32 %124, %125
  br i1 %126, label %127, label %343

127:                                              ; preds = %123
  %128 = load i8*, i8** %12, align 8
  %129 = load i32, i32* %19, align 4
  %130 = zext i32 %129 to i64
  %131 = getelementptr inbounds i8, i8* %128, i64 %130
  store i8* %131, i8** %29, align 8
  %132 = call i32 @utf8_walk(i8** %29)
  store i32 %132, i32* %30, align 4
  %133 = load i8*, i8** %29, align 8
  %134 = load i8*, i8** %12, align 8
  %135 = load i32, i32* %19, align 4
  %136 = zext i32 %135 to i64
  %137 = getelementptr inbounds i8, i8* %134, i64 %136
  %138 = ptrtoint i8* %133 to i64
  %139 = ptrtoint i8* %137 to i64
  %140 = sub i64 %138, %139
  %141 = trunc i64 %140 to i32
  store i32 %141, i32* %31, align 4
  %142 = load i32, i32* %31, align 4
  %143 = icmp ugt i32 %142, 1
  br i1 %143, label %144, label %149

144:                                              ; preds = %127
  %145 = load i32, i32* %31, align 4
  %146 = sub i32 %145, 1
  %147 = load i32, i32* %19, align 4
  %148 = add i32 %147, %146
  store i32 %148, i32* %19, align 4
  br label %149

149:                                              ; preds = %144, %127
  %150 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %151 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %150, i32 0, i32 3
  %152 = load %struct.TYPE_31__*, %struct.TYPE_31__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %152, i32 0, i32 0
  %154 = load %struct.font_glyph* (i32, i8)*, %struct.font_glyph* (i32, i8)** %153, align 8
  %155 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %156 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %155, i32 0, i32 2
  %157 = load i32, i32* %156, align 8
  %158 = load i32, i32* %30, align 4
  %159 = trunc i32 %158 to i8
  %160 = call %struct.font_glyph* %154(i32 %157, i8 signext %159)
  store %struct.font_glyph* %160, %struct.font_glyph** %28, align 8
  %161 = load %struct.font_glyph*, %struct.font_glyph** %28, align 8
  %162 = icmp ne %struct.font_glyph* %161, null
  br i1 %162, label %173, label %163

163:                                              ; preds = %149
  %164 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %165 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %164, i32 0, i32 3
  %166 = load %struct.TYPE_31__*, %struct.TYPE_31__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %166, i32 0, i32 0
  %168 = load %struct.font_glyph* (i32, i8)*, %struct.font_glyph* (i32, i8)** %167, align 8
  %169 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %170 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %169, i32 0, i32 2
  %171 = load i32, i32* %170, align 8
  %172 = call %struct.font_glyph* %168(i32 %171, i8 signext 63)
  store %struct.font_glyph* %172, %struct.font_glyph** %28, align 8
  br label %173

173:                                              ; preds = %163, %149
  %174 = load %struct.font_glyph*, %struct.font_glyph** %28, align 8
  %175 = icmp ne %struct.font_glyph* %174, null
  br i1 %175, label %177, label %176

176:                                              ; preds = %173
  br label %340

177:                                              ; preds = %173
  %178 = load i32, i32* %26, align 4
  %179 = sitofp i32 %178 to float
  %180 = load %struct.font_glyph*, %struct.font_glyph** %28, align 8
  %181 = getelementptr inbounds %struct.font_glyph, %struct.font_glyph* %180, i32 0, i32 0
  %182 = load float, float* %181, align 4
  %183 = load float, float* %14, align 4
  %184 = fmul float %182, %183
  %185 = fadd float %179, %184
  %186 = load %struct.TYPE_22__*, %struct.TYPE_22__** %23, align 8
  %187 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %186, i32 0, i32 3
  %188 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %187, i32 0, i32 1
  %189 = load i64, i64* %188, align 8
  %190 = sitofp i64 %189 to float
  %191 = fdiv float %185, %190
  %192 = fptosi float %191 to i32
  %193 = load %struct.TYPE_23__*, %struct.TYPE_23__** %22, align 8
  %194 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %193, i32 0, i32 3
  %195 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %194, i32 0, i32 0
  store i32 %192, i32* %195, align 8
  %196 = load i32, i32* %27, align 4
  %197 = sitofp i32 %196 to float
  %198 = load %struct.font_glyph*, %struct.font_glyph** %28, align 8
  %199 = getelementptr inbounds %struct.font_glyph, %struct.font_glyph* %198, i32 0, i32 1
  %200 = load float, float* %199, align 4
  %201 = load float, float* %14, align 4
  %202 = fmul float %200, %201
  %203 = fadd float %197, %202
  %204 = load %struct.TYPE_22__*, %struct.TYPE_22__** %23, align 8
  %205 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %204, i32 0, i32 3
  %206 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %205, i32 0, i32 0
  %207 = load i64, i64* %206, align 8
  %208 = sitofp i64 %207 to float
  %209 = fdiv float %203, %208
  %210 = fptosi float %209 to i32
  %211 = load %struct.TYPE_23__*, %struct.TYPE_23__** %22, align 8
  %212 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %211, i32 0, i32 3
  %213 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %212, i32 0, i32 1
  store i32 %210, i32* %213, align 4
  %214 = load %struct.font_glyph*, %struct.font_glyph** %28, align 8
  %215 = getelementptr inbounds %struct.font_glyph, %struct.font_glyph* %214, i32 0, i32 2
  %216 = load float, float* %215, align 4
  %217 = load float, float* %14, align 4
  %218 = fmul float %216, %217
  %219 = load %struct.TYPE_22__*, %struct.TYPE_22__** %23, align 8
  %220 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %219, i32 0, i32 3
  %221 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %220, i32 0, i32 1
  %222 = load i64, i64* %221, align 8
  %223 = sitofp i64 %222 to float
  %224 = fdiv float %218, %223
  %225 = load %struct.TYPE_23__*, %struct.TYPE_23__** %22, align 8
  %226 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %225, i32 0, i32 3
  %227 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %226, i32 0, i32 2
  store float %224, float* %227, align 8
  %228 = load %struct.font_glyph*, %struct.font_glyph** %28, align 8
  %229 = getelementptr inbounds %struct.font_glyph, %struct.font_glyph* %228, i32 0, i32 3
  %230 = load float, float* %229, align 4
  %231 = load float, float* %14, align 4
  %232 = fmul float %230, %231
  %233 = load %struct.TYPE_22__*, %struct.TYPE_22__** %23, align 8
  %234 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %233, i32 0, i32 3
  %235 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %234, i32 0, i32 0
  %236 = load i64, i64* %235, align 8
  %237 = sitofp i64 %236 to float
  %238 = fdiv float %232, %237
  %239 = load %struct.TYPE_23__*, %struct.TYPE_23__** %22, align 8
  %240 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %239, i32 0, i32 3
  %241 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %240, i32 0, i32 3
  store float %238, float* %241, align 4
  %242 = load %struct.font_glyph*, %struct.font_glyph** %28, align 8
  %243 = getelementptr inbounds %struct.font_glyph, %struct.font_glyph* %242, i32 0, i32 4
  %244 = load float, float* %243, align 4
  %245 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %246 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %245, i32 0, i32 0
  %247 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %246, i32 0, i32 0
  %248 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %247, i32 0, i32 1
  %249 = load i64, i64* %248, align 8
  %250 = sitofp i64 %249 to float
  %251 = fdiv float %244, %250
  %252 = load %struct.TYPE_23__*, %struct.TYPE_23__** %22, align 8
  %253 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %252, i32 0, i32 2
  %254 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %253, i32 0, i32 0
  store float %251, float* %254, align 8
  %255 = load %struct.font_glyph*, %struct.font_glyph** %28, align 8
  %256 = getelementptr inbounds %struct.font_glyph, %struct.font_glyph* %255, i32 0, i32 5
  %257 = load float, float* %256, align 4
  %258 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %259 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %258, i32 0, i32 0
  %260 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %259, i32 0, i32 0
  %261 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %260, i32 0, i32 0
  %262 = load i64, i64* %261, align 8
  %263 = sitofp i64 %262 to float
  %264 = fdiv float %257, %263
  %265 = load %struct.TYPE_23__*, %struct.TYPE_23__** %22, align 8
  %266 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %265, i32 0, i32 2
  %267 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %266, i32 0, i32 1
  store float %264, float* %267, align 4
  %268 = load %struct.font_glyph*, %struct.font_glyph** %28, align 8
  %269 = getelementptr inbounds %struct.font_glyph, %struct.font_glyph* %268, i32 0, i32 2
  %270 = load float, float* %269, align 4
  %271 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %272 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %271, i32 0, i32 0
  %273 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %272, i32 0, i32 0
  %274 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %273, i32 0, i32 1
  %275 = load i64, i64* %274, align 8
  %276 = sitofp i64 %275 to float
  %277 = fdiv float %270, %276
  %278 = load %struct.TYPE_23__*, %struct.TYPE_23__** %22, align 8
  %279 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %278, i32 0, i32 2
  %280 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %279, i32 0, i32 2
  store float %277, float* %280, align 8
  %281 = load %struct.font_glyph*, %struct.font_glyph** %28, align 8
  %282 = getelementptr inbounds %struct.font_glyph, %struct.font_glyph* %281, i32 0, i32 3
  %283 = load float, float* %282, align 4
  %284 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %285 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %284, i32 0, i32 0
  %286 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %285, i32 0, i32 0
  %287 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %286, i32 0, i32 0
  %288 = load i64, i64* %287, align 8
  %289 = sitofp i64 %288 to float
  %290 = fdiv float %283, %289
  %291 = load %struct.TYPE_23__*, %struct.TYPE_23__** %22, align 8
  %292 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %291, i32 0, i32 2
  %293 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %292, i32 0, i32 3
  store float %290, float* %293, align 4
  %294 = load %struct.TYPE_23__*, %struct.TYPE_23__** %22, align 8
  %295 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %294, i32 0, i32 1
  %296 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %295, i32 0, i32 0
  store i32 1, i32* %296, align 8
  %297 = load %struct.TYPE_23__*, %struct.TYPE_23__** %22, align 8
  %298 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %297, i32 0, i32 1
  %299 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %298, i32 0, i32 1
  store i64 0, i64* %299, align 8
  %300 = load i32, i32* %15, align 4
  %301 = load %struct.TYPE_23__*, %struct.TYPE_23__** %22, align 8
  %302 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %301, i32 0, i32 0
  %303 = load i32*, i32** %302, align 8
  %304 = getelementptr inbounds i32, i32* %303, i64 0
  store i32 %300, i32* %304, align 4
  %305 = load i32, i32* %15, align 4
  %306 = load %struct.TYPE_23__*, %struct.TYPE_23__** %22, align 8
  %307 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %306, i32 0, i32 0
  %308 = load i32*, i32** %307, align 8
  %309 = getelementptr inbounds i32, i32* %308, i64 1
  store i32 %305, i32* %309, align 4
  %310 = load i32, i32* %15, align 4
  %311 = load %struct.TYPE_23__*, %struct.TYPE_23__** %22, align 8
  %312 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %311, i32 0, i32 0
  %313 = load i32*, i32** %312, align 8
  %314 = getelementptr inbounds i32, i32* %313, i64 2
  store i32 %310, i32* %314, align 4
  %315 = load i32, i32* %15, align 4
  %316 = load %struct.TYPE_23__*, %struct.TYPE_23__** %22, align 8
  %317 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %316, i32 0, i32 0
  %318 = load i32*, i32** %317, align 8
  %319 = getelementptr inbounds i32, i32* %318, i64 3
  store i32 %315, i32* %319, align 4
  %320 = load %struct.TYPE_23__*, %struct.TYPE_23__** %22, align 8
  %321 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %320, i32 1
  store %struct.TYPE_23__* %321, %struct.TYPE_23__** %22, align 8
  %322 = load %struct.font_glyph*, %struct.font_glyph** %28, align 8
  %323 = getelementptr inbounds %struct.font_glyph, %struct.font_glyph* %322, i32 0, i32 6
  %324 = load float, float* %323, align 4
  %325 = load float, float* %14, align 4
  %326 = fmul float %324, %325
  %327 = load i32, i32* %26, align 4
  %328 = sitofp i32 %327 to float
  %329 = fadd float %328, %326
  %330 = fptosi float %329 to i32
  store i32 %330, i32* %26, align 4
  %331 = load %struct.font_glyph*, %struct.font_glyph** %28, align 8
  %332 = getelementptr inbounds %struct.font_glyph, %struct.font_glyph* %331, i32 0, i32 7
  %333 = load float, float* %332, align 4
  %334 = load float, float* %14, align 4
  %335 = fmul float %333, %334
  %336 = load i32, i32* %27, align 4
  %337 = sitofp i32 %336 to float
  %338 = fadd float %337, %335
  %339 = fptosi float %338 to i32
  store i32 %339, i32* %27, align 4
  br label %340

340:                                              ; preds = %177, %176
  %341 = load i32, i32* %19, align 4
  %342 = add i32 %341, 1
  store i32 %342, i32* %19, align 4
  br label %123

343:                                              ; preds = %123
  %344 = load %struct.TYPE_23__*, %struct.TYPE_23__** %22, align 8
  %345 = load i8*, i8** %21, align 8
  %346 = bitcast i8* %345 to %struct.TYPE_23__*
  %347 = load %struct.TYPE_22__*, %struct.TYPE_22__** %23, align 8
  %348 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %347, i32 0, i32 0
  %349 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %348, i32 0, i32 0
  %350 = load i32, i32* %349, align 8
  %351 = zext i32 %350 to i64
  %352 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %346, i64 %351
  %353 = ptrtoint %struct.TYPE_23__* %344 to i64
  %354 = ptrtoint %struct.TYPE_23__* %352 to i64
  %355 = sub i64 %353, %354
  %356 = sdiv exact i64 %355, 56
  %357 = trunc i64 %356 to i32
  store i32 %357, i32* %20, align 4
  %358 = load %struct.TYPE_22__*, %struct.TYPE_22__** %23, align 8
  %359 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %358, i32 0, i32 0
  %360 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %359, i32 0, i32 3
  %361 = load i32, i32* %360, align 4
  %362 = call i32 @D3D10UnmapBuffer(i32 %361)
  %363 = load i32, i32* %20, align 4
  %364 = icmp ne i32 %363, 0
  br i1 %364, label %366, label %365

365:                                              ; preds = %343
  br label %453

366:                                              ; preds = %343
  %367 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %368 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %367, i32 0, i32 1
  %369 = load %struct.TYPE_27__*, %struct.TYPE_27__** %368, align 8
  %370 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %369, i32 0, i32 0
  %371 = load i32, i32* %370, align 4
  %372 = icmp ne i32 %371, 0
  br i1 %372, label %373, label %405

373:                                              ; preds = %366
  %374 = load %struct.TYPE_22__*, %struct.TYPE_22__** %23, align 8
  %375 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %374, i32 0, i32 1
  %376 = load i32, i32* %375, align 8
  %377 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %378 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %377, i32 0, i32 1
  %379 = load %struct.TYPE_27__*, %struct.TYPE_27__** %378, align 8
  %380 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %379, i32 0, i32 2
  %381 = load i32, i32* %380, align 4
  %382 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %383 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %382, i32 0, i32 1
  %384 = load %struct.TYPE_27__*, %struct.TYPE_27__** %383, align 8
  %385 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %384, i32 0, i32 3
  %386 = load i32, i32* %385, align 4
  %387 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %388 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %387, i32 0, i32 1
  %389 = load %struct.TYPE_27__*, %struct.TYPE_27__** %388, align 8
  %390 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %389, i32 0, i32 2
  %391 = load i32, i32* %390, align 4
  %392 = load i32, i32* @DXGI_FORMAT_A8_UNORM, align 4
  %393 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %394 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %393, i32 0, i32 1
  %395 = load %struct.TYPE_27__*, %struct.TYPE_27__** %394, align 8
  %396 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %395, i32 0, i32 1
  %397 = load i32, i32* %396, align 4
  %398 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %399 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %398, i32 0, i32 0
  %400 = call i32 @d3d10_update_texture(i32 %376, i32 %381, i32 %386, i32 %391, i32 %392, i32 %397, %struct.TYPE_25__* %399)
  %401 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %402 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %401, i32 0, i32 1
  %403 = load %struct.TYPE_27__*, %struct.TYPE_27__** %402, align 8
  %404 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %403, i32 0, i32 0
  store i32 0, i32* %404, align 4
  br label %405

405:                                              ; preds = %373, %366
  %406 = load %struct.TYPE_22__*, %struct.TYPE_22__** %23, align 8
  %407 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %406, i32 0, i32 1
  %408 = load i32, i32* %407, align 8
  %409 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %410 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %409, i32 0, i32 0
  %411 = call i32 @d3d10_set_texture_and_sampler(i32 %408, i32 0, %struct.TYPE_25__* %410)
  %412 = load %struct.TYPE_22__*, %struct.TYPE_22__** %23, align 8
  %413 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %412, i32 0, i32 1
  %414 = load i32, i32* %413, align 8
  %415 = load %struct.TYPE_22__*, %struct.TYPE_22__** %23, align 8
  %416 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %415, i32 0, i32 2
  %417 = load i32, i32* %416, align 4
  %418 = load i32, i32* @D3D10_DEFAULT_SAMPLE_MASK, align 4
  %419 = call i32 @D3D10SetBlendState(i32 %414, i32 %417, i32* null, i32 %418)
  %420 = load %struct.TYPE_22__*, %struct.TYPE_22__** %23, align 8
  %421 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %420, i32 0, i32 1
  %422 = load i32, i32* %421, align 8
  %423 = load %struct.TYPE_22__*, %struct.TYPE_22__** %23, align 8
  %424 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %423, i32 0, i32 0
  %425 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %424, i32 0, i32 2
  %426 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %425, i32 0, i32 0
  %427 = load i32, i32* %426, align 8
  %428 = call i32 @D3D10SetPShader(i32 %422, i32 %427)
  %429 = load %struct.TYPE_22__*, %struct.TYPE_22__** %23, align 8
  %430 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %429, i32 0, i32 1
  %431 = load i32, i32* %430, align 8
  %432 = load i32, i32* %20, align 4
  %433 = load %struct.TYPE_22__*, %struct.TYPE_22__** %23, align 8
  %434 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %433, i32 0, i32 0
  %435 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %434, i32 0, i32 0
  %436 = load i32, i32* %435, align 8
  %437 = call i32 @D3D10Draw(i32 %431, i32 %432, i32 %436)
  %438 = load %struct.TYPE_22__*, %struct.TYPE_22__** %23, align 8
  %439 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %438, i32 0, i32 1
  %440 = load i32, i32* %439, align 8
  %441 = load %struct.TYPE_22__*, %struct.TYPE_22__** %23, align 8
  %442 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %441, i32 0, i32 0
  %443 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %442, i32 0, i32 1
  %444 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %443, i32 0, i32 0
  %445 = load i32, i32* %444, align 4
  %446 = call i32 @D3D10SetPShader(i32 %440, i32 %445)
  %447 = load i32, i32* %20, align 4
  %448 = load %struct.TYPE_22__*, %struct.TYPE_22__** %23, align 8
  %449 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %448, i32 0, i32 0
  %450 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %449, i32 0, i32 0
  %451 = load i32, i32* %450, align 8
  %452 = add i32 %451, %447
  store i32 %452, i32* %450, align 8
  br label %453

453:                                              ; preds = %405, %365, %71
  ret void
}

declare dso_local i32 @roundf(double) #1

declare dso_local i32 @d3d10_font_get_message_width(%struct.TYPE_24__*, i8*, i32, float) #1

declare dso_local i32 @D3D10MapBuffer(i32, i32, i32, i8**) #1

declare dso_local i32 @utf8_walk(i8**) #1

declare dso_local i32 @D3D10UnmapBuffer(i32) #1

declare dso_local i32 @d3d10_update_texture(i32, i32, i32, i32, i32, i32, %struct.TYPE_25__*) #1

declare dso_local i32 @d3d10_set_texture_and_sampler(i32, i32, %struct.TYPE_25__*) #1

declare dso_local i32 @D3D10SetBlendState(i32, i32, i32*, i32) #1

declare dso_local i32 @D3D10SetPShader(i32, i32) #1

declare dso_local i32 @D3D10Draw(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
