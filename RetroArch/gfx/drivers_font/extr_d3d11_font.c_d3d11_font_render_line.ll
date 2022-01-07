; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers_font/extr_d3d11_font.c_d3d11_font_render_line.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers_font/extr_d3d11_font.c_d3d11_font_render_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i32, i32, i64 }
%struct.TYPE_26__ = type { %struct.TYPE_28__, %struct.TYPE_30__*, i32, %struct.TYPE_34__* }
%struct.TYPE_28__ = type { %struct.TYPE_22__ }
%struct.TYPE_22__ = type { i64, i64 }
%struct.TYPE_30__ = type { i32, i32, i32, i32 }
%struct.TYPE_34__ = type { %struct.font_glyph* (i32, i8)* }
%struct.font_glyph = type { float, float, float, float, float, float, float, float }
%struct.TYPE_27__ = type { i64 }
%struct.TYPE_25__ = type { i32*, %struct.TYPE_29__, %struct.TYPE_37__, %struct.TYPE_35__ }
%struct.TYPE_29__ = type { i32, i64 }
%struct.TYPE_37__ = type { float, float, float, float }
%struct.TYPE_35__ = type { i32, i32, float, float }
%struct.TYPE_24__ = type { %struct.TYPE_33__, i32, i32, %struct.TYPE_36__ }
%struct.TYPE_33__ = type { i32, %struct.TYPE_32__, %struct.TYPE_31__, i32, i64, i32 }
%struct.TYPE_32__ = type { i32 }
%struct.TYPE_31__ = type { i32 }
%struct.TYPE_36__ = type { i64, i64 }

@D3D11_MAP_WRITE_NO_OVERWRITE = common dso_local global i32 0, align 4
@DXGI_FORMAT_A8_UNORM = common dso_local global i32 0, align 4
@D3D11_DEFAULT_SAMPLE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_23__*, %struct.TYPE_26__*, i8*, i32, float, i32, float, float, i32)* @d3d11_font_render_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @d3d11_font_render_line(%struct.TYPE_23__* %0, %struct.TYPE_26__* %1, i8* %2, i32 %3, float %4, i32 %5, float %6, float %7, i32 %8) #0 {
  %10 = alloca %struct.TYPE_23__*, align 8
  %11 = alloca %struct.TYPE_26__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca float, align 4
  %15 = alloca i32, align 4
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.TYPE_27__, align 8
  %22 = alloca %struct.TYPE_25__*, align 8
  %23 = alloca %struct.TYPE_24__*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca %struct.font_glyph*, align 8
  %29 = alloca i8*, align 8
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %10, align 8
  store %struct.TYPE_26__* %1, %struct.TYPE_26__** %11, align 8
  store i8* %2, i8** %12, align 8
  store i32 %3, i32* %13, align 4
  store float %4, float* %14, align 4
  store i32 %5, i32* %15, align 4
  store float %6, float* %16, align 4
  store float %7, float* %17, align 4
  store i32 %8, i32* %18, align 4
  %32 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %33 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = inttoptr i64 %34 to %struct.TYPE_24__*
  store %struct.TYPE_24__* %35, %struct.TYPE_24__** %23, align 8
  %36 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  store i32 %38, i32* %24, align 4
  %39 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %40 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %39, i32 0, i32 1
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
  %55 = load %struct.TYPE_24__*, %struct.TYPE_24__** %23, align 8
  %56 = icmp ne %struct.TYPE_24__* %55, null
  br i1 %56, label %57, label %71

57:                                               ; preds = %9
  %58 = load %struct.TYPE_24__*, %struct.TYPE_24__** %23, align 8
  %59 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %59, i32 0, i32 5
  %61 = load i32, i32* %60, align 8
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %71

63:                                               ; preds = %57
  %64 = load i32, i32* %13, align 4
  %65 = load %struct.TYPE_24__*, %struct.TYPE_24__** %23, align 8
  %66 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %66, i32 0, i32 4
  %68 = load i64, i64* %67, align 8
  %69 = trunc i64 %68 to i32
  %70 = icmp ugt i32 %64, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %63, %57, %9
  br label %461

72:                                               ; preds = %63
  %73 = load %struct.TYPE_24__*, %struct.TYPE_24__** %23, align 8
  %74 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* %13, align 4
  %78 = add i32 %76, %77
  %79 = load %struct.TYPE_24__*, %struct.TYPE_24__** %23, align 8
  %80 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %80, i32 0, i32 4
  %82 = load i64, i64* %81, align 8
  %83 = trunc i64 %82 to i32
  %84 = icmp ugt i32 %78, %83
  br i1 %84, label %85, label %89

85:                                               ; preds = %72
  %86 = load %struct.TYPE_24__*, %struct.TYPE_24__** %23, align 8
  %87 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %87, i32 0, i32 0
  store i32 0, i32* %88, align 8
  br label %89

89:                                               ; preds = %85, %72
  %90 = load i32, i32* %18, align 4
  switch i32 %90, label %108 [
    i32 128, label %91
    i32 129, label %99
  ]

91:                                               ; preds = %89
  %92 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %93 = load i8*, i8** %12, align 8
  %94 = load i32, i32* %13, align 4
  %95 = load float, float* %14, align 4
  %96 = call i32 @d3d11_font_get_message_width(%struct.TYPE_26__* %92, i8* %93, i32 %94, float %95)
  %97 = load i32, i32* %26, align 4
  %98 = sub nsw i32 %97, %96
  store i32 %98, i32* %26, align 4
  br label %108

99:                                               ; preds = %89
  %100 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %101 = load i8*, i8** %12, align 8
  %102 = load i32, i32* %13, align 4
  %103 = load float, float* %14, align 4
  %104 = call i32 @d3d11_font_get_message_width(%struct.TYPE_26__* %100, i8* %101, i32 %102, float %103)
  %105 = sdiv i32 %104, 2
  %106 = load i32, i32* %26, align 4
  %107 = sub nsw i32 %106, %105
  store i32 %107, i32* %26, align 4
  br label %108

108:                                              ; preds = %89, %99, %91
  %109 = load %struct.TYPE_24__*, %struct.TYPE_24__** %23, align 8
  %110 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.TYPE_24__*, %struct.TYPE_24__** %23, align 8
  %113 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* @D3D11_MAP_WRITE_NO_OVERWRITE, align 4
  %117 = call i32 @D3D11MapBuffer(i32 %111, i32 %115, i32 0, i32 %116, i32 0, %struct.TYPE_27__* %21)
  %118 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %21, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = inttoptr i64 %119 to %struct.TYPE_25__*
  %121 = load %struct.TYPE_24__*, %struct.TYPE_24__** %23, align 8
  %122 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = zext i32 %124 to i64
  %126 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %120, i64 %125
  store %struct.TYPE_25__* %126, %struct.TYPE_25__** %22, align 8
  store i32 0, i32* %19, align 4
  br label %127

127:                                              ; preds = %344, %108
  %128 = load i32, i32* %19, align 4
  %129 = load i32, i32* %13, align 4
  %130 = icmp ult i32 %128, %129
  br i1 %130, label %131, label %347

131:                                              ; preds = %127
  %132 = load i8*, i8** %12, align 8
  %133 = load i32, i32* %19, align 4
  %134 = zext i32 %133 to i64
  %135 = getelementptr inbounds i8, i8* %132, i64 %134
  store i8* %135, i8** %29, align 8
  %136 = call i32 @utf8_walk(i8** %29)
  store i32 %136, i32* %30, align 4
  %137 = load i8*, i8** %29, align 8
  %138 = load i8*, i8** %12, align 8
  %139 = load i32, i32* %19, align 4
  %140 = zext i32 %139 to i64
  %141 = getelementptr inbounds i8, i8* %138, i64 %140
  %142 = ptrtoint i8* %137 to i64
  %143 = ptrtoint i8* %141 to i64
  %144 = sub i64 %142, %143
  %145 = trunc i64 %144 to i32
  store i32 %145, i32* %31, align 4
  %146 = load i32, i32* %31, align 4
  %147 = icmp ugt i32 %146, 1
  br i1 %147, label %148, label %153

148:                                              ; preds = %131
  %149 = load i32, i32* %31, align 4
  %150 = sub i32 %149, 1
  %151 = load i32, i32* %19, align 4
  %152 = add i32 %151, %150
  store i32 %152, i32* %19, align 4
  br label %153

153:                                              ; preds = %148, %131
  %154 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %155 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %154, i32 0, i32 3
  %156 = load %struct.TYPE_34__*, %struct.TYPE_34__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %156, i32 0, i32 0
  %158 = load %struct.font_glyph* (i32, i8)*, %struct.font_glyph* (i32, i8)** %157, align 8
  %159 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %160 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 8
  %162 = load i32, i32* %30, align 4
  %163 = trunc i32 %162 to i8
  %164 = call %struct.font_glyph* %158(i32 %161, i8 signext %163)
  store %struct.font_glyph* %164, %struct.font_glyph** %28, align 8
  %165 = load %struct.font_glyph*, %struct.font_glyph** %28, align 8
  %166 = icmp ne %struct.font_glyph* %165, null
  br i1 %166, label %177, label %167

167:                                              ; preds = %153
  %168 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %169 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %168, i32 0, i32 3
  %170 = load %struct.TYPE_34__*, %struct.TYPE_34__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %170, i32 0, i32 0
  %172 = load %struct.font_glyph* (i32, i8)*, %struct.font_glyph* (i32, i8)** %171, align 8
  %173 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %174 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %173, i32 0, i32 2
  %175 = load i32, i32* %174, align 8
  %176 = call %struct.font_glyph* %172(i32 %175, i8 signext 63)
  store %struct.font_glyph* %176, %struct.font_glyph** %28, align 8
  br label %177

177:                                              ; preds = %167, %153
  %178 = load %struct.font_glyph*, %struct.font_glyph** %28, align 8
  %179 = icmp ne %struct.font_glyph* %178, null
  br i1 %179, label %181, label %180

180:                                              ; preds = %177
  br label %344

181:                                              ; preds = %177
  %182 = load i32, i32* %26, align 4
  %183 = sitofp i32 %182 to float
  %184 = load %struct.font_glyph*, %struct.font_glyph** %28, align 8
  %185 = getelementptr inbounds %struct.font_glyph, %struct.font_glyph* %184, i32 0, i32 0
  %186 = load float, float* %185, align 4
  %187 = load float, float* %14, align 4
  %188 = fmul float %186, %187
  %189 = fadd float %183, %188
  %190 = load %struct.TYPE_24__*, %struct.TYPE_24__** %23, align 8
  %191 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %190, i32 0, i32 3
  %192 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %191, i32 0, i32 1
  %193 = load i64, i64* %192, align 8
  %194 = sitofp i64 %193 to float
  %195 = fdiv float %189, %194
  %196 = fptosi float %195 to i32
  %197 = load %struct.TYPE_25__*, %struct.TYPE_25__** %22, align 8
  %198 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %197, i32 0, i32 3
  %199 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %198, i32 0, i32 0
  store i32 %196, i32* %199, align 8
  %200 = load i32, i32* %27, align 4
  %201 = sitofp i32 %200 to float
  %202 = load %struct.font_glyph*, %struct.font_glyph** %28, align 8
  %203 = getelementptr inbounds %struct.font_glyph, %struct.font_glyph* %202, i32 0, i32 1
  %204 = load float, float* %203, align 4
  %205 = load float, float* %14, align 4
  %206 = fmul float %204, %205
  %207 = fadd float %201, %206
  %208 = load %struct.TYPE_24__*, %struct.TYPE_24__** %23, align 8
  %209 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %208, i32 0, i32 3
  %210 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %209, i32 0, i32 0
  %211 = load i64, i64* %210, align 8
  %212 = sitofp i64 %211 to float
  %213 = fdiv float %207, %212
  %214 = fptosi float %213 to i32
  %215 = load %struct.TYPE_25__*, %struct.TYPE_25__** %22, align 8
  %216 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %215, i32 0, i32 3
  %217 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %216, i32 0, i32 1
  store i32 %214, i32* %217, align 4
  %218 = load %struct.font_glyph*, %struct.font_glyph** %28, align 8
  %219 = getelementptr inbounds %struct.font_glyph, %struct.font_glyph* %218, i32 0, i32 2
  %220 = load float, float* %219, align 4
  %221 = load float, float* %14, align 4
  %222 = fmul float %220, %221
  %223 = load %struct.TYPE_24__*, %struct.TYPE_24__** %23, align 8
  %224 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %223, i32 0, i32 3
  %225 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %224, i32 0, i32 1
  %226 = load i64, i64* %225, align 8
  %227 = sitofp i64 %226 to float
  %228 = fdiv float %222, %227
  %229 = load %struct.TYPE_25__*, %struct.TYPE_25__** %22, align 8
  %230 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %229, i32 0, i32 3
  %231 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %230, i32 0, i32 2
  store float %228, float* %231, align 8
  %232 = load %struct.font_glyph*, %struct.font_glyph** %28, align 8
  %233 = getelementptr inbounds %struct.font_glyph, %struct.font_glyph* %232, i32 0, i32 3
  %234 = load float, float* %233, align 4
  %235 = load float, float* %14, align 4
  %236 = fmul float %234, %235
  %237 = load %struct.TYPE_24__*, %struct.TYPE_24__** %23, align 8
  %238 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %237, i32 0, i32 3
  %239 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %238, i32 0, i32 0
  %240 = load i64, i64* %239, align 8
  %241 = sitofp i64 %240 to float
  %242 = fdiv float %236, %241
  %243 = load %struct.TYPE_25__*, %struct.TYPE_25__** %22, align 8
  %244 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %243, i32 0, i32 3
  %245 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %244, i32 0, i32 3
  store float %242, float* %245, align 4
  %246 = load %struct.font_glyph*, %struct.font_glyph** %28, align 8
  %247 = getelementptr inbounds %struct.font_glyph, %struct.font_glyph* %246, i32 0, i32 4
  %248 = load float, float* %247, align 4
  %249 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %250 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %249, i32 0, i32 0
  %251 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %250, i32 0, i32 0
  %252 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %251, i32 0, i32 1
  %253 = load i64, i64* %252, align 8
  %254 = sitofp i64 %253 to float
  %255 = fdiv float %248, %254
  %256 = load %struct.TYPE_25__*, %struct.TYPE_25__** %22, align 8
  %257 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %256, i32 0, i32 2
  %258 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %257, i32 0, i32 0
  store float %255, float* %258, align 8
  %259 = load %struct.font_glyph*, %struct.font_glyph** %28, align 8
  %260 = getelementptr inbounds %struct.font_glyph, %struct.font_glyph* %259, i32 0, i32 5
  %261 = load float, float* %260, align 4
  %262 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %263 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %262, i32 0, i32 0
  %264 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %263, i32 0, i32 0
  %265 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %264, i32 0, i32 0
  %266 = load i64, i64* %265, align 8
  %267 = sitofp i64 %266 to float
  %268 = fdiv float %261, %267
  %269 = load %struct.TYPE_25__*, %struct.TYPE_25__** %22, align 8
  %270 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %269, i32 0, i32 2
  %271 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %270, i32 0, i32 1
  store float %268, float* %271, align 4
  %272 = load %struct.font_glyph*, %struct.font_glyph** %28, align 8
  %273 = getelementptr inbounds %struct.font_glyph, %struct.font_glyph* %272, i32 0, i32 2
  %274 = load float, float* %273, align 4
  %275 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %276 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %275, i32 0, i32 0
  %277 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %276, i32 0, i32 0
  %278 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %277, i32 0, i32 1
  %279 = load i64, i64* %278, align 8
  %280 = sitofp i64 %279 to float
  %281 = fdiv float %274, %280
  %282 = load %struct.TYPE_25__*, %struct.TYPE_25__** %22, align 8
  %283 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %282, i32 0, i32 2
  %284 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %283, i32 0, i32 2
  store float %281, float* %284, align 8
  %285 = load %struct.font_glyph*, %struct.font_glyph** %28, align 8
  %286 = getelementptr inbounds %struct.font_glyph, %struct.font_glyph* %285, i32 0, i32 3
  %287 = load float, float* %286, align 4
  %288 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %289 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %288, i32 0, i32 0
  %290 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %289, i32 0, i32 0
  %291 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %290, i32 0, i32 0
  %292 = load i64, i64* %291, align 8
  %293 = sitofp i64 %292 to float
  %294 = fdiv float %287, %293
  %295 = load %struct.TYPE_25__*, %struct.TYPE_25__** %22, align 8
  %296 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %295, i32 0, i32 2
  %297 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %296, i32 0, i32 3
  store float %294, float* %297, align 4
  %298 = load %struct.TYPE_25__*, %struct.TYPE_25__** %22, align 8
  %299 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %298, i32 0, i32 1
  %300 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %299, i32 0, i32 0
  store i32 1, i32* %300, align 8
  %301 = load %struct.TYPE_25__*, %struct.TYPE_25__** %22, align 8
  %302 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %301, i32 0, i32 1
  %303 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %302, i32 0, i32 1
  store i64 0, i64* %303, align 8
  %304 = load i32, i32* %15, align 4
  %305 = load %struct.TYPE_25__*, %struct.TYPE_25__** %22, align 8
  %306 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %305, i32 0, i32 0
  %307 = load i32*, i32** %306, align 8
  %308 = getelementptr inbounds i32, i32* %307, i64 0
  store i32 %304, i32* %308, align 4
  %309 = load i32, i32* %15, align 4
  %310 = load %struct.TYPE_25__*, %struct.TYPE_25__** %22, align 8
  %311 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %310, i32 0, i32 0
  %312 = load i32*, i32** %311, align 8
  %313 = getelementptr inbounds i32, i32* %312, i64 1
  store i32 %309, i32* %313, align 4
  %314 = load i32, i32* %15, align 4
  %315 = load %struct.TYPE_25__*, %struct.TYPE_25__** %22, align 8
  %316 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %315, i32 0, i32 0
  %317 = load i32*, i32** %316, align 8
  %318 = getelementptr inbounds i32, i32* %317, i64 2
  store i32 %314, i32* %318, align 4
  %319 = load i32, i32* %15, align 4
  %320 = load %struct.TYPE_25__*, %struct.TYPE_25__** %22, align 8
  %321 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %320, i32 0, i32 0
  %322 = load i32*, i32** %321, align 8
  %323 = getelementptr inbounds i32, i32* %322, i64 3
  store i32 %319, i32* %323, align 4
  %324 = load %struct.TYPE_25__*, %struct.TYPE_25__** %22, align 8
  %325 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %324, i32 1
  store %struct.TYPE_25__* %325, %struct.TYPE_25__** %22, align 8
  %326 = load %struct.font_glyph*, %struct.font_glyph** %28, align 8
  %327 = getelementptr inbounds %struct.font_glyph, %struct.font_glyph* %326, i32 0, i32 6
  %328 = load float, float* %327, align 4
  %329 = load float, float* %14, align 4
  %330 = fmul float %328, %329
  %331 = load i32, i32* %26, align 4
  %332 = sitofp i32 %331 to float
  %333 = fadd float %332, %330
  %334 = fptosi float %333 to i32
  store i32 %334, i32* %26, align 4
  %335 = load %struct.font_glyph*, %struct.font_glyph** %28, align 8
  %336 = getelementptr inbounds %struct.font_glyph, %struct.font_glyph* %335, i32 0, i32 7
  %337 = load float, float* %336, align 4
  %338 = load float, float* %14, align 4
  %339 = fmul float %337, %338
  %340 = load i32, i32* %27, align 4
  %341 = sitofp i32 %340 to float
  %342 = fadd float %341, %339
  %343 = fptosi float %342 to i32
  store i32 %343, i32* %27, align 4
  br label %344

344:                                              ; preds = %181, %180
  %345 = load i32, i32* %19, align 4
  %346 = add i32 %345, 1
  store i32 %346, i32* %19, align 4
  br label %127

347:                                              ; preds = %127
  %348 = load %struct.TYPE_25__*, %struct.TYPE_25__** %22, align 8
  %349 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %21, i32 0, i32 0
  %350 = load i64, i64* %349, align 8
  %351 = inttoptr i64 %350 to %struct.TYPE_25__*
  %352 = load %struct.TYPE_24__*, %struct.TYPE_24__** %23, align 8
  %353 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %352, i32 0, i32 0
  %354 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %353, i32 0, i32 0
  %355 = load i32, i32* %354, align 8
  %356 = zext i32 %355 to i64
  %357 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %351, i64 %356
  %358 = ptrtoint %struct.TYPE_25__* %348 to i64
  %359 = ptrtoint %struct.TYPE_25__* %357 to i64
  %360 = sub i64 %358, %359
  %361 = sdiv exact i64 %360, 56
  %362 = trunc i64 %361 to i32
  store i32 %362, i32* %20, align 4
  %363 = load %struct.TYPE_24__*, %struct.TYPE_24__** %23, align 8
  %364 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %363, i32 0, i32 1
  %365 = load i32, i32* %364, align 8
  %366 = load %struct.TYPE_24__*, %struct.TYPE_24__** %23, align 8
  %367 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %366, i32 0, i32 0
  %368 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %367, i32 0, i32 3
  %369 = load i32, i32* %368, align 4
  %370 = call i32 @D3D11UnmapBuffer(i32 %365, i32 %369, i32 0)
  %371 = load i32, i32* %20, align 4
  %372 = icmp ne i32 %371, 0
  br i1 %372, label %374, label %373

373:                                              ; preds = %347
  br label %461

374:                                              ; preds = %347
  %375 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %376 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %375, i32 0, i32 1
  %377 = load %struct.TYPE_30__*, %struct.TYPE_30__** %376, align 8
  %378 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %377, i32 0, i32 0
  %379 = load i32, i32* %378, align 4
  %380 = icmp ne i32 %379, 0
  br i1 %380, label %381, label %413

381:                                              ; preds = %374
  %382 = load %struct.TYPE_24__*, %struct.TYPE_24__** %23, align 8
  %383 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %382, i32 0, i32 1
  %384 = load i32, i32* %383, align 8
  %385 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %386 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %385, i32 0, i32 1
  %387 = load %struct.TYPE_30__*, %struct.TYPE_30__** %386, align 8
  %388 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %387, i32 0, i32 2
  %389 = load i32, i32* %388, align 4
  %390 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %391 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %390, i32 0, i32 1
  %392 = load %struct.TYPE_30__*, %struct.TYPE_30__** %391, align 8
  %393 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %392, i32 0, i32 3
  %394 = load i32, i32* %393, align 4
  %395 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %396 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %395, i32 0, i32 1
  %397 = load %struct.TYPE_30__*, %struct.TYPE_30__** %396, align 8
  %398 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %397, i32 0, i32 2
  %399 = load i32, i32* %398, align 4
  %400 = load i32, i32* @DXGI_FORMAT_A8_UNORM, align 4
  %401 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %402 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %401, i32 0, i32 1
  %403 = load %struct.TYPE_30__*, %struct.TYPE_30__** %402, align 8
  %404 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %403, i32 0, i32 1
  %405 = load i32, i32* %404, align 4
  %406 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %407 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %406, i32 0, i32 0
  %408 = call i32 @d3d11_update_texture(i32 %384, i32 %389, i32 %394, i32 %399, i32 %400, i32 %405, %struct.TYPE_28__* %407)
  %409 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %410 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %409, i32 0, i32 1
  %411 = load %struct.TYPE_30__*, %struct.TYPE_30__** %410, align 8
  %412 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %411, i32 0, i32 0
  store i32 0, i32* %412, align 4
  br label %413

413:                                              ; preds = %381, %374
  %414 = load %struct.TYPE_24__*, %struct.TYPE_24__** %23, align 8
  %415 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %414, i32 0, i32 1
  %416 = load i32, i32* %415, align 8
  %417 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %418 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %417, i32 0, i32 0
  %419 = call i32 @d3d11_set_texture_and_sampler(i32 %416, i32 0, %struct.TYPE_28__* %418)
  %420 = load %struct.TYPE_24__*, %struct.TYPE_24__** %23, align 8
  %421 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %420, i32 0, i32 1
  %422 = load i32, i32* %421, align 8
  %423 = load %struct.TYPE_24__*, %struct.TYPE_24__** %23, align 8
  %424 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %423, i32 0, i32 2
  %425 = load i32, i32* %424, align 4
  %426 = load i32, i32* @D3D11_DEFAULT_SAMPLE_MASK, align 4
  %427 = call i32 @D3D11SetBlendState(i32 %422, i32 %425, i32* null, i32 %426)
  %428 = load %struct.TYPE_24__*, %struct.TYPE_24__** %23, align 8
  %429 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %428, i32 0, i32 1
  %430 = load i32, i32* %429, align 8
  %431 = load %struct.TYPE_24__*, %struct.TYPE_24__** %23, align 8
  %432 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %431, i32 0, i32 0
  %433 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %432, i32 0, i32 2
  %434 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %433, i32 0, i32 0
  %435 = load i32, i32* %434, align 8
  %436 = call i32 @D3D11SetPShader(i32 %430, i32 %435, i32* null, i32 0)
  %437 = load %struct.TYPE_24__*, %struct.TYPE_24__** %23, align 8
  %438 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %437, i32 0, i32 1
  %439 = load i32, i32* %438, align 8
  %440 = load i32, i32* %20, align 4
  %441 = load %struct.TYPE_24__*, %struct.TYPE_24__** %23, align 8
  %442 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %441, i32 0, i32 0
  %443 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %442, i32 0, i32 0
  %444 = load i32, i32* %443, align 8
  %445 = call i32 @D3D11Draw(i32 %439, i32 %440, i32 %444)
  %446 = load %struct.TYPE_24__*, %struct.TYPE_24__** %23, align 8
  %447 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %446, i32 0, i32 1
  %448 = load i32, i32* %447, align 8
  %449 = load %struct.TYPE_24__*, %struct.TYPE_24__** %23, align 8
  %450 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %449, i32 0, i32 0
  %451 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %450, i32 0, i32 1
  %452 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %451, i32 0, i32 0
  %453 = load i32, i32* %452, align 4
  %454 = call i32 @D3D11SetPShader(i32 %448, i32 %453, i32* null, i32 0)
  %455 = load i32, i32* %20, align 4
  %456 = load %struct.TYPE_24__*, %struct.TYPE_24__** %23, align 8
  %457 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %456, i32 0, i32 0
  %458 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %457, i32 0, i32 0
  %459 = load i32, i32* %458, align 8
  %460 = add i32 %459, %455
  store i32 %460, i32* %458, align 8
  br label %461

461:                                              ; preds = %413, %373, %71
  ret void
}

declare dso_local i32 @roundf(double) #1

declare dso_local i32 @d3d11_font_get_message_width(%struct.TYPE_26__*, i8*, i32, float) #1

declare dso_local i32 @D3D11MapBuffer(i32, i32, i32, i32, i32, %struct.TYPE_27__*) #1

declare dso_local i32 @utf8_walk(i8**) #1

declare dso_local i32 @D3D11UnmapBuffer(i32, i32, i32) #1

declare dso_local i32 @d3d11_update_texture(i32, i32, i32, i32, i32, i32, %struct.TYPE_28__*) #1

declare dso_local i32 @d3d11_set_texture_and_sampler(i32, i32, %struct.TYPE_28__*) #1

declare dso_local i32 @D3D11SetBlendState(i32, i32, i32*, i32) #1

declare dso_local i32 @D3D11SetPShader(i32, i32, i32*, i32) #1

declare dso_local i32 @D3D11Draw(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
