; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers_font/extr_d3d12_font.c_d3d12_font_render_line.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers_font/extr_d3d12_font.c_d3d12_font_render_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i32, i32, i64 }
%struct.TYPE_28__ = type { %struct.TYPE_30__, %struct.TYPE_34__*, i32, %struct.TYPE_37__* }
%struct.TYPE_30__ = type { i64, %struct.TYPE_32__ }
%struct.TYPE_32__ = type { i64, i64 }
%struct.TYPE_34__ = type { i32, i32, i32, i32 }
%struct.TYPE_37__ = type { %struct.font_glyph* (i32, i8)* }
%struct.font_glyph = type { float, float, float, float, float, float, float, float }
%struct.TYPE_27__ = type { i32*, %struct.TYPE_33__, %struct.TYPE_31__, %struct.TYPE_24__ }
%struct.TYPE_33__ = type { i32, i64 }
%struct.TYPE_31__ = type { float, float, float, float }
%struct.TYPE_24__ = type { i32, i32, float, float }
%struct.TYPE_26__ = type { %struct.TYPE_36__, %struct.TYPE_35__, %struct.TYPE_39__ }
%struct.TYPE_36__ = type { i32, i32, i32, i32, i64, i32 }
%struct.TYPE_35__ = type { i32 }
%struct.TYPE_39__ = type { %struct.TYPE_38__ }
%struct.TYPE_38__ = type { i64, i64 }
%struct.TYPE_29__ = type { i64, i64, i32, i32 }

@DXGI_FORMAT_A8_UNORM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_25__*, %struct.TYPE_28__*, i8*, i32, float, i32, float, float, i32)* @d3d12_font_render_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @d3d12_font_render_line(%struct.TYPE_25__* %0, %struct.TYPE_28__* %1, i8* %2, i32 %3, float %4, i32 %5, float %6, float %7, i32 %8) #0 {
  %10 = alloca %struct.TYPE_25__*, align 8
  %11 = alloca %struct.TYPE_28__*, align 8
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
  %22 = alloca %struct.TYPE_27__*, align 8
  %23 = alloca %struct.TYPE_27__*, align 8
  %24 = alloca %struct.TYPE_26__*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca %struct.TYPE_29__, align 8
  %30 = alloca %struct.font_glyph*, align 8
  %31 = alloca i8*, align 8
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %10, align 8
  store %struct.TYPE_28__* %1, %struct.TYPE_28__** %11, align 8
  store i8* %2, i8** %12, align 8
  store i32 %3, i32* %13, align 4
  store float %4, float* %14, align 4
  store i32 %5, i32* %15, align 4
  store float %6, float* %16, align 4
  store float %7, float* %17, align 4
  store i32 %8, i32* %18, align 4
  store i8* null, i8** %21, align 8
  store %struct.TYPE_27__* null, %struct.TYPE_27__** %22, align 8
  store %struct.TYPE_27__* null, %struct.TYPE_27__** %23, align 8
  %34 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %35 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = inttoptr i64 %36 to %struct.TYPE_26__*
  store %struct.TYPE_26__* %37, %struct.TYPE_26__** %24, align 8
  %38 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %39 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  store i32 %40, i32* %25, align 4
  %41 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %42 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %26, align 4
  %44 = load float, float* %16, align 4
  %45 = load i32, i32* %25, align 4
  %46 = uitofp i32 %45 to float
  %47 = fmul float %44, %46
  %48 = fpext float %47 to double
  %49 = call i32 @roundf(double %48)
  store i32 %49, i32* %27, align 4
  %50 = load float, float* %17, align 4
  %51 = fpext float %50 to double
  %52 = fsub double 1.000000e+00, %51
  %53 = load i32, i32* %26, align 4
  %54 = uitofp i32 %53 to double
  %55 = fmul double %52, %54
  %56 = call i32 @roundf(double %55)
  store i32 %56, i32* %28, align 4
  %57 = bitcast %struct.TYPE_29__* %29 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %57, i8 0, i64 24, i1 false)
  %58 = load %struct.TYPE_26__*, %struct.TYPE_26__** %24, align 8
  %59 = icmp ne %struct.TYPE_26__* %58, null
  br i1 %59, label %60, label %74

60:                                               ; preds = %9
  %61 = load %struct.TYPE_26__*, %struct.TYPE_26__** %24, align 8
  %62 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %62, i32 0, i32 5
  %64 = load i32, i32* %63, align 8
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %74

66:                                               ; preds = %60
  %67 = load i32, i32* %13, align 4
  %68 = load %struct.TYPE_26__*, %struct.TYPE_26__** %24, align 8
  %69 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %69, i32 0, i32 4
  %71 = load i64, i64* %70, align 8
  %72 = trunc i64 %71 to i32
  %73 = icmp ugt i32 %67, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %66, %60, %9
  br label %478

75:                                               ; preds = %66
  %76 = load %struct.TYPE_26__*, %struct.TYPE_26__** %24, align 8
  %77 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* %13, align 4
  %81 = add i32 %79, %80
  %82 = load %struct.TYPE_26__*, %struct.TYPE_26__** %24, align 8
  %83 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %83, i32 0, i32 4
  %85 = load i64, i64* %84, align 8
  %86 = trunc i64 %85 to i32
  %87 = icmp ugt i32 %81, %86
  br i1 %87, label %88, label %92

88:                                               ; preds = %75
  %89 = load %struct.TYPE_26__*, %struct.TYPE_26__** %24, align 8
  %90 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %90, i32 0, i32 0
  store i32 0, i32* %91, align 8
  br label %92

92:                                               ; preds = %88, %75
  %93 = load i32, i32* %18, align 4
  switch i32 %93, label %111 [
    i32 128, label %94
    i32 129, label %102
  ]

94:                                               ; preds = %92
  %95 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %96 = load i8*, i8** %12, align 8
  %97 = load i32, i32* %13, align 4
  %98 = load float, float* %14, align 4
  %99 = call i32 @d3d12_font_get_message_width(%struct.TYPE_28__* %95, i8* %96, i32 %97, float %98)
  %100 = load i32, i32* %27, align 4
  %101 = sub nsw i32 %100, %99
  store i32 %101, i32* %27, align 4
  br label %111

102:                                              ; preds = %92
  %103 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %104 = load i8*, i8** %12, align 8
  %105 = load i32, i32* %13, align 4
  %106 = load float, float* %14, align 4
  %107 = call i32 @d3d12_font_get_message_width(%struct.TYPE_28__* %103, i8* %104, i32 %105, float %106)
  %108 = sdiv i32 %107, 2
  %109 = load i32, i32* %27, align 4
  %110 = sub nsw i32 %109, %108
  store i32 %110, i32* %27, align 4
  br label %111

111:                                              ; preds = %92, %102, %94
  %112 = load %struct.TYPE_26__*, %struct.TYPE_26__** %24, align 8
  %113 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 4
  %116 = bitcast %struct.TYPE_27__** %23 to i8**
  %117 = call i32 @D3D12Map(i32 %115, i32 0, %struct.TYPE_29__* %29, i8** %116)
  %118 = load %struct.TYPE_27__*, %struct.TYPE_27__** %23, align 8
  %119 = load %struct.TYPE_26__*, %struct.TYPE_26__** %24, align 8
  %120 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = zext i32 %122 to i64
  %124 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %118, i64 %123
  store %struct.TYPE_27__* %124, %struct.TYPE_27__** %22, align 8
  %125 = load %struct.TYPE_27__*, %struct.TYPE_27__** %22, align 8
  %126 = ptrtoint %struct.TYPE_27__* %125 to i64
  %127 = load %struct.TYPE_27__*, %struct.TYPE_27__** %23, align 8
  %128 = ptrtoint %struct.TYPE_27__* %127 to i64
  %129 = sub i64 %126, %128
  %130 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %29, i32 0, i32 0
  store i64 %129, i64* %130, align 8
  store i32 0, i32* %19, align 4
  br label %131

131:                                              ; preds = %352, %111
  %132 = load i32, i32* %19, align 4
  %133 = load i32, i32* %13, align 4
  %134 = icmp ult i32 %132, %133
  br i1 %134, label %135, label %355

135:                                              ; preds = %131
  %136 = load i8*, i8** %12, align 8
  %137 = load i32, i32* %19, align 4
  %138 = zext i32 %137 to i64
  %139 = getelementptr inbounds i8, i8* %136, i64 %138
  store i8* %139, i8** %31, align 8
  %140 = call i32 @utf8_walk(i8** %31)
  store i32 %140, i32* %32, align 4
  %141 = load i8*, i8** %31, align 8
  %142 = load i8*, i8** %12, align 8
  %143 = load i32, i32* %19, align 4
  %144 = zext i32 %143 to i64
  %145 = getelementptr inbounds i8, i8* %142, i64 %144
  %146 = ptrtoint i8* %141 to i64
  %147 = ptrtoint i8* %145 to i64
  %148 = sub i64 %146, %147
  %149 = trunc i64 %148 to i32
  store i32 %149, i32* %33, align 4
  %150 = load i32, i32* %33, align 4
  %151 = icmp ugt i32 %150, 1
  br i1 %151, label %152, label %157

152:                                              ; preds = %135
  %153 = load i32, i32* %33, align 4
  %154 = sub i32 %153, 1
  %155 = load i32, i32* %19, align 4
  %156 = add i32 %155, %154
  store i32 %156, i32* %19, align 4
  br label %157

157:                                              ; preds = %152, %135
  %158 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %159 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %158, i32 0, i32 3
  %160 = load %struct.TYPE_37__*, %struct.TYPE_37__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %160, i32 0, i32 0
  %162 = load %struct.font_glyph* (i32, i8)*, %struct.font_glyph* (i32, i8)** %161, align 8
  %163 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %164 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %163, i32 0, i32 2
  %165 = load i32, i32* %164, align 8
  %166 = load i32, i32* %32, align 4
  %167 = trunc i32 %166 to i8
  %168 = call %struct.font_glyph* %162(i32 %165, i8 signext %167)
  store %struct.font_glyph* %168, %struct.font_glyph** %30, align 8
  %169 = load %struct.font_glyph*, %struct.font_glyph** %30, align 8
  %170 = icmp ne %struct.font_glyph* %169, null
  br i1 %170, label %181, label %171

171:                                              ; preds = %157
  %172 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %173 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %172, i32 0, i32 3
  %174 = load %struct.TYPE_37__*, %struct.TYPE_37__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %174, i32 0, i32 0
  %176 = load %struct.font_glyph* (i32, i8)*, %struct.font_glyph* (i32, i8)** %175, align 8
  %177 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %178 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %177, i32 0, i32 2
  %179 = load i32, i32* %178, align 8
  %180 = call %struct.font_glyph* %176(i32 %179, i8 signext 63)
  store %struct.font_glyph* %180, %struct.font_glyph** %30, align 8
  br label %181

181:                                              ; preds = %171, %157
  %182 = load %struct.font_glyph*, %struct.font_glyph** %30, align 8
  %183 = icmp ne %struct.font_glyph* %182, null
  br i1 %183, label %185, label %184

184:                                              ; preds = %181
  br label %352

185:                                              ; preds = %181
  %186 = load i32, i32* %27, align 4
  %187 = sitofp i32 %186 to float
  %188 = load %struct.font_glyph*, %struct.font_glyph** %30, align 8
  %189 = getelementptr inbounds %struct.font_glyph, %struct.font_glyph* %188, i32 0, i32 0
  %190 = load float, float* %189, align 4
  %191 = load float, float* %14, align 4
  %192 = fmul float %190, %191
  %193 = fadd float %187, %192
  %194 = load %struct.TYPE_26__*, %struct.TYPE_26__** %24, align 8
  %195 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %194, i32 0, i32 2
  %196 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %195, i32 0, i32 0
  %197 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %196, i32 0, i32 1
  %198 = load i64, i64* %197, align 8
  %199 = sitofp i64 %198 to float
  %200 = fdiv float %193, %199
  %201 = fptosi float %200 to i32
  %202 = load %struct.TYPE_27__*, %struct.TYPE_27__** %22, align 8
  %203 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %202, i32 0, i32 3
  %204 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %203, i32 0, i32 0
  store i32 %201, i32* %204, align 8
  %205 = load i32, i32* %28, align 4
  %206 = sitofp i32 %205 to float
  %207 = load %struct.font_glyph*, %struct.font_glyph** %30, align 8
  %208 = getelementptr inbounds %struct.font_glyph, %struct.font_glyph* %207, i32 0, i32 1
  %209 = load float, float* %208, align 4
  %210 = load float, float* %14, align 4
  %211 = fmul float %209, %210
  %212 = fadd float %206, %211
  %213 = load %struct.TYPE_26__*, %struct.TYPE_26__** %24, align 8
  %214 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %213, i32 0, i32 2
  %215 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %214, i32 0, i32 0
  %216 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %215, i32 0, i32 0
  %217 = load i64, i64* %216, align 8
  %218 = sitofp i64 %217 to float
  %219 = fdiv float %212, %218
  %220 = fptosi float %219 to i32
  %221 = load %struct.TYPE_27__*, %struct.TYPE_27__** %22, align 8
  %222 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %221, i32 0, i32 3
  %223 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %222, i32 0, i32 1
  store i32 %220, i32* %223, align 4
  %224 = load %struct.font_glyph*, %struct.font_glyph** %30, align 8
  %225 = getelementptr inbounds %struct.font_glyph, %struct.font_glyph* %224, i32 0, i32 2
  %226 = load float, float* %225, align 4
  %227 = load float, float* %14, align 4
  %228 = fmul float %226, %227
  %229 = load %struct.TYPE_26__*, %struct.TYPE_26__** %24, align 8
  %230 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %229, i32 0, i32 2
  %231 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %230, i32 0, i32 0
  %232 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %231, i32 0, i32 1
  %233 = load i64, i64* %232, align 8
  %234 = sitofp i64 %233 to float
  %235 = fdiv float %228, %234
  %236 = load %struct.TYPE_27__*, %struct.TYPE_27__** %22, align 8
  %237 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %236, i32 0, i32 3
  %238 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %237, i32 0, i32 2
  store float %235, float* %238, align 8
  %239 = load %struct.font_glyph*, %struct.font_glyph** %30, align 8
  %240 = getelementptr inbounds %struct.font_glyph, %struct.font_glyph* %239, i32 0, i32 3
  %241 = load float, float* %240, align 4
  %242 = load float, float* %14, align 4
  %243 = fmul float %241, %242
  %244 = load %struct.TYPE_26__*, %struct.TYPE_26__** %24, align 8
  %245 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %244, i32 0, i32 2
  %246 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %245, i32 0, i32 0
  %247 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %246, i32 0, i32 0
  %248 = load i64, i64* %247, align 8
  %249 = sitofp i64 %248 to float
  %250 = fdiv float %243, %249
  %251 = load %struct.TYPE_27__*, %struct.TYPE_27__** %22, align 8
  %252 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %251, i32 0, i32 3
  %253 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %252, i32 0, i32 3
  store float %250, float* %253, align 4
  %254 = load %struct.font_glyph*, %struct.font_glyph** %30, align 8
  %255 = getelementptr inbounds %struct.font_glyph, %struct.font_glyph* %254, i32 0, i32 4
  %256 = load float, float* %255, align 4
  %257 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %258 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %257, i32 0, i32 0
  %259 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %258, i32 0, i32 1
  %260 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %259, i32 0, i32 1
  %261 = load i64, i64* %260, align 8
  %262 = sitofp i64 %261 to float
  %263 = fdiv float %256, %262
  %264 = load %struct.TYPE_27__*, %struct.TYPE_27__** %22, align 8
  %265 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %264, i32 0, i32 2
  %266 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %265, i32 0, i32 0
  store float %263, float* %266, align 8
  %267 = load %struct.font_glyph*, %struct.font_glyph** %30, align 8
  %268 = getelementptr inbounds %struct.font_glyph, %struct.font_glyph* %267, i32 0, i32 5
  %269 = load float, float* %268, align 4
  %270 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %271 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %270, i32 0, i32 0
  %272 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %271, i32 0, i32 1
  %273 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %272, i32 0, i32 0
  %274 = load i64, i64* %273, align 8
  %275 = sitofp i64 %274 to float
  %276 = fdiv float %269, %275
  %277 = load %struct.TYPE_27__*, %struct.TYPE_27__** %22, align 8
  %278 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %277, i32 0, i32 2
  %279 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %278, i32 0, i32 1
  store float %276, float* %279, align 4
  %280 = load %struct.font_glyph*, %struct.font_glyph** %30, align 8
  %281 = getelementptr inbounds %struct.font_glyph, %struct.font_glyph* %280, i32 0, i32 2
  %282 = load float, float* %281, align 4
  %283 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %284 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %283, i32 0, i32 0
  %285 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %284, i32 0, i32 1
  %286 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %285, i32 0, i32 1
  %287 = load i64, i64* %286, align 8
  %288 = sitofp i64 %287 to float
  %289 = fdiv float %282, %288
  %290 = load %struct.TYPE_27__*, %struct.TYPE_27__** %22, align 8
  %291 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %290, i32 0, i32 2
  %292 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %291, i32 0, i32 2
  store float %289, float* %292, align 8
  %293 = load %struct.font_glyph*, %struct.font_glyph** %30, align 8
  %294 = getelementptr inbounds %struct.font_glyph, %struct.font_glyph* %293, i32 0, i32 3
  %295 = load float, float* %294, align 4
  %296 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %297 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %296, i32 0, i32 0
  %298 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %297, i32 0, i32 1
  %299 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %298, i32 0, i32 0
  %300 = load i64, i64* %299, align 8
  %301 = sitofp i64 %300 to float
  %302 = fdiv float %295, %301
  %303 = load %struct.TYPE_27__*, %struct.TYPE_27__** %22, align 8
  %304 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %303, i32 0, i32 2
  %305 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %304, i32 0, i32 3
  store float %302, float* %305, align 4
  %306 = load %struct.TYPE_27__*, %struct.TYPE_27__** %22, align 8
  %307 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %306, i32 0, i32 1
  %308 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %307, i32 0, i32 0
  store i32 1, i32* %308, align 8
  %309 = load %struct.TYPE_27__*, %struct.TYPE_27__** %22, align 8
  %310 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %309, i32 0, i32 1
  %311 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %310, i32 0, i32 1
  store i64 0, i64* %311, align 8
  %312 = load i32, i32* %15, align 4
  %313 = load %struct.TYPE_27__*, %struct.TYPE_27__** %22, align 8
  %314 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %313, i32 0, i32 0
  %315 = load i32*, i32** %314, align 8
  %316 = getelementptr inbounds i32, i32* %315, i64 0
  store i32 %312, i32* %316, align 4
  %317 = load i32, i32* %15, align 4
  %318 = load %struct.TYPE_27__*, %struct.TYPE_27__** %22, align 8
  %319 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %318, i32 0, i32 0
  %320 = load i32*, i32** %319, align 8
  %321 = getelementptr inbounds i32, i32* %320, i64 1
  store i32 %317, i32* %321, align 4
  %322 = load i32, i32* %15, align 4
  %323 = load %struct.TYPE_27__*, %struct.TYPE_27__** %22, align 8
  %324 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %323, i32 0, i32 0
  %325 = load i32*, i32** %324, align 8
  %326 = getelementptr inbounds i32, i32* %325, i64 2
  store i32 %322, i32* %326, align 4
  %327 = load i32, i32* %15, align 4
  %328 = load %struct.TYPE_27__*, %struct.TYPE_27__** %22, align 8
  %329 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %328, i32 0, i32 0
  %330 = load i32*, i32** %329, align 8
  %331 = getelementptr inbounds i32, i32* %330, i64 3
  store i32 %327, i32* %331, align 4
  %332 = load %struct.TYPE_27__*, %struct.TYPE_27__** %22, align 8
  %333 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %332, i32 1
  store %struct.TYPE_27__* %333, %struct.TYPE_27__** %22, align 8
  %334 = load %struct.font_glyph*, %struct.font_glyph** %30, align 8
  %335 = getelementptr inbounds %struct.font_glyph, %struct.font_glyph* %334, i32 0, i32 6
  %336 = load float, float* %335, align 4
  %337 = load float, float* %14, align 4
  %338 = fmul float %336, %337
  %339 = load i32, i32* %27, align 4
  %340 = sitofp i32 %339 to float
  %341 = fadd float %340, %338
  %342 = fptosi float %341 to i32
  store i32 %342, i32* %27, align 4
  %343 = load %struct.font_glyph*, %struct.font_glyph** %30, align 8
  %344 = getelementptr inbounds %struct.font_glyph, %struct.font_glyph* %343, i32 0, i32 7
  %345 = load float, float* %344, align 4
  %346 = load float, float* %14, align 4
  %347 = fmul float %345, %346
  %348 = load i32, i32* %28, align 4
  %349 = sitofp i32 %348 to float
  %350 = fadd float %349, %347
  %351 = fptosi float %350 to i32
  store i32 %351, i32* %28, align 4
  br label %352

352:                                              ; preds = %185, %184
  %353 = load i32, i32* %19, align 4
  %354 = add i32 %353, 1
  store i32 %354, i32* %19, align 4
  br label %131

355:                                              ; preds = %131
  %356 = load %struct.TYPE_27__*, %struct.TYPE_27__** %22, align 8
  %357 = ptrtoint %struct.TYPE_27__* %356 to i64
  %358 = load %struct.TYPE_27__*, %struct.TYPE_27__** %23, align 8
  %359 = ptrtoint %struct.TYPE_27__* %358 to i64
  %360 = sub i64 %357, %359
  %361 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %29, i32 0, i32 1
  store i64 %360, i64* %361, align 8
  %362 = load %struct.TYPE_26__*, %struct.TYPE_26__** %24, align 8
  %363 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %362, i32 0, i32 0
  %364 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %363, i32 0, i32 3
  %365 = load i32, i32* %364, align 4
  %366 = call i32 @D3D12Unmap(i32 %365, i32 0, %struct.TYPE_29__* %29)
  %367 = load %struct.TYPE_27__*, %struct.TYPE_27__** %22, align 8
  %368 = load %struct.TYPE_27__*, %struct.TYPE_27__** %23, align 8
  %369 = ptrtoint %struct.TYPE_27__* %367 to i64
  %370 = ptrtoint %struct.TYPE_27__* %368 to i64
  %371 = sub i64 %369, %370
  %372 = sdiv exact i64 %371, 56
  %373 = load %struct.TYPE_26__*, %struct.TYPE_26__** %24, align 8
  %374 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %373, i32 0, i32 0
  %375 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %374, i32 0, i32 0
  %376 = load i32, i32* %375, align 8
  %377 = zext i32 %376 to i64
  %378 = sub nsw i64 %372, %377
  %379 = trunc i64 %378 to i32
  store i32 %379, i32* %20, align 4
  %380 = load i32, i32* %20, align 4
  %381 = icmp ne i32 %380, 0
  br i1 %381, label %383, label %382

382:                                              ; preds = %355
  br label %478

383:                                              ; preds = %355
  %384 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %385 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %384, i32 0, i32 1
  %386 = load %struct.TYPE_34__*, %struct.TYPE_34__** %385, align 8
  %387 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %386, i32 0, i32 0
  %388 = load i32, i32* %387, align 4
  %389 = icmp ne i32 %388, 0
  br i1 %389, label %390, label %419

390:                                              ; preds = %383
  %391 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %392 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %391, i32 0, i32 1
  %393 = load %struct.TYPE_34__*, %struct.TYPE_34__** %392, align 8
  %394 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %393, i32 0, i32 2
  %395 = load i32, i32* %394, align 4
  %396 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %397 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %396, i32 0, i32 1
  %398 = load %struct.TYPE_34__*, %struct.TYPE_34__** %397, align 8
  %399 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %398, i32 0, i32 3
  %400 = load i32, i32* %399, align 4
  %401 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %402 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %401, i32 0, i32 1
  %403 = load %struct.TYPE_34__*, %struct.TYPE_34__** %402, align 8
  %404 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %403, i32 0, i32 2
  %405 = load i32, i32* %404, align 4
  %406 = load i32, i32* @DXGI_FORMAT_A8_UNORM, align 4
  %407 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %408 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %407, i32 0, i32 1
  %409 = load %struct.TYPE_34__*, %struct.TYPE_34__** %408, align 8
  %410 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %409, i32 0, i32 1
  %411 = load i32, i32* %410, align 4
  %412 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %413 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %412, i32 0, i32 0
  %414 = call i32 @d3d12_update_texture(i32 %395, i32 %400, i32 %405, i32 %406, i32 %411, %struct.TYPE_30__* %413)
  %415 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %416 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %415, i32 0, i32 1
  %417 = load %struct.TYPE_34__*, %struct.TYPE_34__** %416, align 8
  %418 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %417, i32 0, i32 0
  store i32 0, i32* %418, align 4
  br label %419

419:                                              ; preds = %390, %383
  %420 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %421 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %420, i32 0, i32 0
  %422 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %421, i32 0, i32 0
  %423 = load i64, i64* %422, align 8
  %424 = icmp ne i64 %423, 0
  br i1 %424, label %425, label %436

425:                                              ; preds = %419
  %426 = load %struct.TYPE_26__*, %struct.TYPE_26__** %24, align 8
  %427 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %426, i32 0, i32 1
  %428 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %427, i32 0, i32 0
  %429 = load i32, i32* %428, align 8
  %430 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %431 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %430, i32 0, i32 0
  %432 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %433 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %432, i32 0, i32 2
  %434 = load i64, i64* %433, align 8
  %435 = call i32 @d3d12_upload_texture(i32 %429, %struct.TYPE_30__* %431, i64 %434)
  br label %436

436:                                              ; preds = %425, %419
  %437 = load %struct.TYPE_26__*, %struct.TYPE_26__** %24, align 8
  %438 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %437, i32 0, i32 1
  %439 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %438, i32 0, i32 0
  %440 = load i32, i32* %439, align 8
  %441 = load %struct.TYPE_26__*, %struct.TYPE_26__** %24, align 8
  %442 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %441, i32 0, i32 0
  %443 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %442, i32 0, i32 2
  %444 = load i32, i32* %443, align 8
  %445 = call i32 @D3D12SetPipelineState(i32 %440, i32 %444)
  %446 = load %struct.TYPE_26__*, %struct.TYPE_26__** %24, align 8
  %447 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %446, i32 0, i32 1
  %448 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %447, i32 0, i32 0
  %449 = load i32, i32* %448, align 8
  %450 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %451 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %450, i32 0, i32 0
  %452 = call i32 @d3d12_set_texture_and_sampler(i32 %449, %struct.TYPE_30__* %451)
  %453 = load %struct.TYPE_26__*, %struct.TYPE_26__** %24, align 8
  %454 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %453, i32 0, i32 1
  %455 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %454, i32 0, i32 0
  %456 = load i32, i32* %455, align 8
  %457 = load i32, i32* %20, align 4
  %458 = load %struct.TYPE_26__*, %struct.TYPE_26__** %24, align 8
  %459 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %458, i32 0, i32 0
  %460 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %459, i32 0, i32 0
  %461 = load i32, i32* %460, align 8
  %462 = call i32 @D3D12DrawInstanced(i32 %456, i32 %457, i32 1, i32 %461, i32 0)
  %463 = load %struct.TYPE_26__*, %struct.TYPE_26__** %24, align 8
  %464 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %463, i32 0, i32 1
  %465 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %464, i32 0, i32 0
  %466 = load i32, i32* %465, align 8
  %467 = load %struct.TYPE_26__*, %struct.TYPE_26__** %24, align 8
  %468 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %467, i32 0, i32 0
  %469 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %468, i32 0, i32 1
  %470 = load i32, i32* %469, align 4
  %471 = call i32 @D3D12SetPipelineState(i32 %466, i32 %470)
  %472 = load i32, i32* %20, align 4
  %473 = load %struct.TYPE_26__*, %struct.TYPE_26__** %24, align 8
  %474 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %473, i32 0, i32 0
  %475 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %474, i32 0, i32 0
  %476 = load i32, i32* %475, align 8
  %477 = add i32 %476, %472
  store i32 %477, i32* %475, align 8
  br label %478

478:                                              ; preds = %436, %382, %74
  ret void
}

declare dso_local i32 @roundf(double) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @d3d12_font_get_message_width(%struct.TYPE_28__*, i8*, i32, float) #1

declare dso_local i32 @D3D12Map(i32, i32, %struct.TYPE_29__*, i8**) #1

declare dso_local i32 @utf8_walk(i8**) #1

declare dso_local i32 @D3D12Unmap(i32, i32, %struct.TYPE_29__*) #1

declare dso_local i32 @d3d12_update_texture(i32, i32, i32, i32, i32, %struct.TYPE_30__*) #1

declare dso_local i32 @d3d12_upload_texture(i32, %struct.TYPE_30__*, i64) #1

declare dso_local i32 @D3D12SetPipelineState(i32, i32) #1

declare dso_local i32 @d3d12_set_texture_and_sampler(i32, %struct.TYPE_30__*) #1

declare dso_local i32 @D3D12DrawInstanced(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
