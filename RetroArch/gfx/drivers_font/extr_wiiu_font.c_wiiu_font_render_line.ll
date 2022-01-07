; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers_font/extr_wiiu_font.c_wiiu_font_render_line.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers_font/extr_wiiu_font.c_wiiu_font_render_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_27__ = type { %struct.TYPE_37__, %struct.TYPE_36__ }
%struct.TYPE_37__ = type { %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i32, i32 }
%struct.TYPE_36__ = type { %struct.TYPE_35__* }
%struct.TYPE_35__ = type { i32 }
%struct.TYPE_25__ = type { i32, i32, i64 }
%struct.TYPE_24__ = type { i32, %struct.TYPE_29__, %struct.TYPE_34__*, i32, %struct.TYPE_28__* }
%struct.TYPE_29__ = type { %struct.TYPE_33__ }
%struct.TYPE_33__ = type { i32, i32, i32, %struct.TYPE_26__* }
%struct.TYPE_26__ = type { i32, %struct.TYPE_31__, %struct.TYPE_30__ }
%struct.TYPE_31__ = type { float, float, i32, i32 }
%struct.TYPE_30__ = type { i32, i32, float, float }
%struct.TYPE_34__ = type { i32, i32, i32, i64 }
%struct.TYPE_28__ = type { %struct.font_glyph* (i32, i8)* }
%struct.font_glyph = type { float, float, float, float, float, float, i32, i32 }
%struct.TYPE_23__ = type { %struct.TYPE_32__, i32 }
%struct.TYPE_32__ = type { i32, i32, %struct.TYPE_26__* }

@GX2_INVALIDATE_MODE_CPU_ATTRIBUTE_BUFFER = common dso_local global i32 0, align 4
@GX2_INVALIDATE_MODE_CPU_TEXTURE = common dso_local global i32 0, align 4
@sprite_shader = common dso_local global %struct.TYPE_27__ zeroinitializer, align 8
@GX2_PRIMITIVE_MODE_POINTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_25__*, %struct.TYPE_24__*, i8*, i32, float, i32, float, float, i32)* @wiiu_font_render_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wiiu_font_render_line(%struct.TYPE_25__* %0, %struct.TYPE_24__* %1, i8* %2, i32 %3, float %4, i32 %5, float %6, float %7, i32 %8) #0 {
  %10 = alloca %struct.TYPE_25__*, align 8
  %11 = alloca %struct.TYPE_24__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca float, align 4
  %15 = alloca i32, align 4
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.TYPE_23__*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca %struct.TYPE_26__*, align 8
  %26 = alloca i8*, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca %struct.font_glyph*, align 8
  %30 = alloca i32, align 4
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %10, align 8
  store %struct.TYPE_24__* %1, %struct.TYPE_24__** %11, align 8
  store i8* %2, i8** %12, align 8
  store i32 %3, i32* %13, align 4
  store float %4, float* %14, align 4
  store i32 %5, i32* %15, align 4
  store float %6, float* %16, align 4
  store float %7, float* %17, align 4
  store i32 %8, i32* %18, align 4
  %31 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %32 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = inttoptr i64 %33 to %struct.TYPE_23__*
  store %struct.TYPE_23__* %34, %struct.TYPE_23__** %20, align 8
  %35 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %36 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  store i32 %37, i32* %21, align 4
  %38 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %39 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %22, align 4
  %41 = load float, float* %16, align 4
  %42 = load i32, i32* %21, align 4
  %43 = uitofp i32 %42 to float
  %44 = fmul float %41, %43
  %45 = fpext float %44 to double
  %46 = call i32 @roundf(double %45)
  store i32 %46, i32* %23, align 4
  %47 = load float, float* %17, align 4
  %48 = fpext float %47 to double
  %49 = fsub double 1.000000e+00, %48
  %50 = load i32, i32* %22, align 4
  %51 = uitofp i32 %50 to double
  %52 = fmul double %49, %51
  %53 = call i32 @roundf(double %52)
  store i32 %53, i32* %24, align 4
  %54 = load %struct.TYPE_23__*, %struct.TYPE_23__** %20, align 8
  %55 = icmp ne %struct.TYPE_23__* %54, null
  br i1 %55, label %56, label %69

56:                                               ; preds = %9
  %57 = load %struct.TYPE_23__*, %struct.TYPE_23__** %20, align 8
  %58 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* %13, align 4
  %62 = mul i32 %61, 4
  %63 = add i32 %60, %62
  %64 = load %struct.TYPE_23__*, %struct.TYPE_23__** %20, align 8
  %65 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = icmp ugt i32 %63, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %56, %9
  br label %414

70:                                               ; preds = %56
  %71 = load i32, i32* %18, align 4
  switch i32 %71, label %89 [
    i32 128, label %72
    i32 129, label %80
  ]

72:                                               ; preds = %70
  %73 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %74 = load i8*, i8** %12, align 8
  %75 = load i32, i32* %13, align 4
  %76 = load float, float* %14, align 4
  %77 = call i32 @wiiu_font_get_message_width(%struct.TYPE_24__* %73, i8* %74, i32 %75, float %76)
  %78 = load i32, i32* %23, align 4
  %79 = sub nsw i32 %78, %77
  store i32 %79, i32* %23, align 4
  br label %89

80:                                               ; preds = %70
  %81 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %82 = load i8*, i8** %12, align 8
  %83 = load i32, i32* %13, align 4
  %84 = load float, float* %14, align 4
  %85 = call i32 @wiiu_font_get_message_width(%struct.TYPE_24__* %81, i8* %82, i32 %83, float %84)
  %86 = sdiv i32 %85, 2
  %87 = load i32, i32* %23, align 4
  %88 = sub nsw i32 %87, %86
  store i32 %88, i32* %23, align 4
  br label %89

89:                                               ; preds = %70, %80, %72
  %90 = load %struct.TYPE_23__*, %struct.TYPE_23__** %20, align 8
  %91 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %91, i32 0, i32 2
  %93 = load %struct.TYPE_26__*, %struct.TYPE_26__** %92, align 8
  %94 = load %struct.TYPE_23__*, %struct.TYPE_23__** %20, align 8
  %95 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = zext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %93, i64 %98
  store %struct.TYPE_26__* %99, %struct.TYPE_26__** %25, align 8
  store i32 0, i32* %19, align 4
  br label %100

100:                                              ; preds = %242, %89
  %101 = load i32, i32* %19, align 4
  %102 = load i32, i32* %13, align 4
  %103 = icmp ult i32 %101, %102
  br i1 %103, label %104, label %245

104:                                              ; preds = %100
  %105 = load i8*, i8** %12, align 8
  %106 = load i32, i32* %19, align 4
  %107 = zext i32 %106 to i64
  %108 = getelementptr inbounds i8, i8* %105, i64 %107
  store i8* %108, i8** %26, align 8
  %109 = call i32 @utf8_walk(i8** %26)
  store i32 %109, i32* %27, align 4
  %110 = load i8*, i8** %26, align 8
  %111 = load i8*, i8** %12, align 8
  %112 = load i32, i32* %19, align 4
  %113 = zext i32 %112 to i64
  %114 = getelementptr inbounds i8, i8* %111, i64 %113
  %115 = ptrtoint i8* %110 to i64
  %116 = ptrtoint i8* %114 to i64
  %117 = sub i64 %115, %116
  %118 = trunc i64 %117 to i32
  store i32 %118, i32* %28, align 4
  %119 = load i32, i32* %28, align 4
  %120 = icmp ugt i32 %119, 1
  br i1 %120, label %121, label %126

121:                                              ; preds = %104
  %122 = load i32, i32* %28, align 4
  %123 = sub i32 %122, 1
  %124 = load i32, i32* %19, align 4
  %125 = add i32 %124, %123
  store i32 %125, i32* %19, align 4
  br label %126

126:                                              ; preds = %121, %104
  %127 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %128 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %127, i32 0, i32 4
  %129 = load %struct.TYPE_28__*, %struct.TYPE_28__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %129, i32 0, i32 0
  %131 = load %struct.font_glyph* (i32, i8)*, %struct.font_glyph* (i32, i8)** %130, align 8
  %132 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %133 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %132, i32 0, i32 3
  %134 = load i32, i32* %133, align 8
  %135 = load i32, i32* %27, align 4
  %136 = trunc i32 %135 to i8
  %137 = call %struct.font_glyph* %131(i32 %134, i8 signext %136)
  store %struct.font_glyph* %137, %struct.font_glyph** %29, align 8
  %138 = load %struct.font_glyph*, %struct.font_glyph** %29, align 8
  %139 = icmp ne %struct.font_glyph* %138, null
  br i1 %139, label %150, label %140

140:                                              ; preds = %126
  %141 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %142 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %141, i32 0, i32 4
  %143 = load %struct.TYPE_28__*, %struct.TYPE_28__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %143, i32 0, i32 0
  %145 = load %struct.font_glyph* (i32, i8)*, %struct.font_glyph* (i32, i8)** %144, align 8
  %146 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %147 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %146, i32 0, i32 3
  %148 = load i32, i32* %147, align 8
  %149 = call %struct.font_glyph* %145(i32 %148, i8 signext 63)
  store %struct.font_glyph* %149, %struct.font_glyph** %29, align 8
  br label %150

150:                                              ; preds = %140, %126
  %151 = load %struct.font_glyph*, %struct.font_glyph** %29, align 8
  %152 = icmp ne %struct.font_glyph* %151, null
  br i1 %152, label %154, label %153

153:                                              ; preds = %150
  br label %242

154:                                              ; preds = %150
  %155 = load i32, i32* %23, align 4
  %156 = sitofp i32 %155 to float
  %157 = load %struct.font_glyph*, %struct.font_glyph** %29, align 8
  %158 = getelementptr inbounds %struct.font_glyph, %struct.font_glyph* %157, i32 0, i32 0
  %159 = load float, float* %158, align 4
  %160 = load float, float* %14, align 4
  %161 = fmul float %159, %160
  %162 = fadd float %156, %161
  %163 = fptosi float %162 to i32
  %164 = load %struct.TYPE_26__*, %struct.TYPE_26__** %25, align 8
  %165 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %164, i32 0, i32 2
  %166 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %165, i32 0, i32 0
  store i32 %163, i32* %166, align 4
  %167 = load i32, i32* %24, align 4
  %168 = sitofp i32 %167 to float
  %169 = load %struct.font_glyph*, %struct.font_glyph** %29, align 8
  %170 = getelementptr inbounds %struct.font_glyph, %struct.font_glyph* %169, i32 0, i32 1
  %171 = load float, float* %170, align 4
  %172 = load float, float* %14, align 4
  %173 = fmul float %171, %172
  %174 = fadd float %168, %173
  %175 = fptosi float %174 to i32
  %176 = load %struct.TYPE_26__*, %struct.TYPE_26__** %25, align 8
  %177 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %176, i32 0, i32 2
  %178 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %177, i32 0, i32 1
  store i32 %175, i32* %178, align 4
  %179 = load %struct.font_glyph*, %struct.font_glyph** %29, align 8
  %180 = getelementptr inbounds %struct.font_glyph, %struct.font_glyph* %179, i32 0, i32 2
  %181 = load float, float* %180, align 4
  %182 = load float, float* %14, align 4
  %183 = fmul float %181, %182
  %184 = load %struct.TYPE_26__*, %struct.TYPE_26__** %25, align 8
  %185 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %184, i32 0, i32 2
  %186 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %185, i32 0, i32 2
  store float %183, float* %186, align 4
  %187 = load %struct.font_glyph*, %struct.font_glyph** %29, align 8
  %188 = getelementptr inbounds %struct.font_glyph, %struct.font_glyph* %187, i32 0, i32 3
  %189 = load float, float* %188, align 4
  %190 = load float, float* %14, align 4
  %191 = fmul float %189, %190
  %192 = load %struct.TYPE_26__*, %struct.TYPE_26__** %25, align 8
  %193 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %192, i32 0, i32 2
  %194 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %193, i32 0, i32 3
  store float %191, float* %194, align 4
  %195 = load %struct.font_glyph*, %struct.font_glyph** %29, align 8
  %196 = getelementptr inbounds %struct.font_glyph, %struct.font_glyph* %195, i32 0, i32 7
  %197 = load i32, i32* %196, align 4
  %198 = load %struct.TYPE_26__*, %struct.TYPE_26__** %25, align 8
  %199 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %198, i32 0, i32 1
  %200 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %199, i32 0, i32 3
  store i32 %197, i32* %200, align 4
  %201 = load %struct.font_glyph*, %struct.font_glyph** %29, align 8
  %202 = getelementptr inbounds %struct.font_glyph, %struct.font_glyph* %201, i32 0, i32 6
  %203 = load i32, i32* %202, align 4
  %204 = load %struct.TYPE_26__*, %struct.TYPE_26__** %25, align 8
  %205 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %204, i32 0, i32 1
  %206 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %205, i32 0, i32 2
  store i32 %203, i32* %206, align 4
  %207 = load %struct.font_glyph*, %struct.font_glyph** %29, align 8
  %208 = getelementptr inbounds %struct.font_glyph, %struct.font_glyph* %207, i32 0, i32 2
  %209 = load float, float* %208, align 4
  %210 = load %struct.TYPE_26__*, %struct.TYPE_26__** %25, align 8
  %211 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %210, i32 0, i32 1
  %212 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %211, i32 0, i32 0
  store float %209, float* %212, align 4
  %213 = load %struct.font_glyph*, %struct.font_glyph** %29, align 8
  %214 = getelementptr inbounds %struct.font_glyph, %struct.font_glyph* %213, i32 0, i32 3
  %215 = load float, float* %214, align 4
  %216 = load %struct.TYPE_26__*, %struct.TYPE_26__** %25, align 8
  %217 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %216, i32 0, i32 1
  %218 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %217, i32 0, i32 1
  store float %215, float* %218, align 4
  %219 = load i32, i32* %15, align 4
  %220 = load %struct.TYPE_26__*, %struct.TYPE_26__** %25, align 8
  %221 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %220, i32 0, i32 0
  store i32 %219, i32* %221, align 4
  %222 = load %struct.TYPE_26__*, %struct.TYPE_26__** %25, align 8
  %223 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %222, i32 1
  store %struct.TYPE_26__* %223, %struct.TYPE_26__** %25, align 8
  %224 = load %struct.font_glyph*, %struct.font_glyph** %29, align 8
  %225 = getelementptr inbounds %struct.font_glyph, %struct.font_glyph* %224, i32 0, i32 4
  %226 = load float, float* %225, align 4
  %227 = load float, float* %14, align 4
  %228 = fmul float %226, %227
  %229 = load i32, i32* %23, align 4
  %230 = sitofp i32 %229 to float
  %231 = fadd float %230, %228
  %232 = fptosi float %231 to i32
  store i32 %232, i32* %23, align 4
  %233 = load %struct.font_glyph*, %struct.font_glyph** %29, align 8
  %234 = getelementptr inbounds %struct.font_glyph, %struct.font_glyph* %233, i32 0, i32 5
  %235 = load float, float* %234, align 4
  %236 = load float, float* %14, align 4
  %237 = fmul float %235, %236
  %238 = load i32, i32* %24, align 4
  %239 = sitofp i32 %238 to float
  %240 = fadd float %239, %237
  %241 = fptosi float %240 to i32
  store i32 %241, i32* %24, align 4
  br label %242

242:                                              ; preds = %154, %153
  %243 = load i32, i32* %19, align 4
  %244 = add i32 %243, 1
  store i32 %244, i32* %19, align 4
  br label %100

245:                                              ; preds = %100
  %246 = load %struct.TYPE_26__*, %struct.TYPE_26__** %25, align 8
  %247 = load %struct.TYPE_23__*, %struct.TYPE_23__** %20, align 8
  %248 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %247, i32 0, i32 0
  %249 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %248, i32 0, i32 2
  %250 = load %struct.TYPE_26__*, %struct.TYPE_26__** %249, align 8
  %251 = ptrtoint %struct.TYPE_26__* %246 to i64
  %252 = ptrtoint %struct.TYPE_26__* %250 to i64
  %253 = sub i64 %251, %252
  %254 = sdiv exact i64 %253, 36
  %255 = load %struct.TYPE_23__*, %struct.TYPE_23__** %20, align 8
  %256 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %255, i32 0, i32 0
  %257 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %256, i32 0, i32 0
  %258 = load i32, i32* %257, align 8
  %259 = zext i32 %258 to i64
  %260 = sub nsw i64 %254, %259
  %261 = trunc i64 %260 to i32
  store i32 %261, i32* %30, align 4
  %262 = load i32, i32* %30, align 4
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %265, label %264

264:                                              ; preds = %245
  br label %414

265:                                              ; preds = %245
  %266 = load i32, i32* @GX2_INVALIDATE_MODE_CPU_ATTRIBUTE_BUFFER, align 4
  %267 = load %struct.TYPE_23__*, %struct.TYPE_23__** %20, align 8
  %268 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %267, i32 0, i32 0
  %269 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %268, i32 0, i32 2
  %270 = load %struct.TYPE_26__*, %struct.TYPE_26__** %269, align 8
  %271 = load %struct.TYPE_23__*, %struct.TYPE_23__** %20, align 8
  %272 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %271, i32 0, i32 0
  %273 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %272, i32 0, i32 0
  %274 = load i32, i32* %273, align 8
  %275 = zext i32 %274 to i64
  %276 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %270, i64 %275
  %277 = load i32, i32* %30, align 4
  %278 = sext i32 %277 to i64
  %279 = mul i64 %278, 8
  %280 = trunc i64 %279 to i32
  %281 = call i32 @GX2Invalidate(i32 %266, %struct.TYPE_26__* %276, i32 %280)
  %282 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %283 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %282, i32 0, i32 2
  %284 = load %struct.TYPE_34__*, %struct.TYPE_34__** %283, align 8
  %285 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %284, i32 0, i32 0
  %286 = load i32, i32* %285, align 8
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %288, label %362

288:                                              ; preds = %265
  store i32 0, i32* %19, align 4
  br label %289

289:                                              ; preds = %342, %288
  %290 = load i32, i32* %19, align 4
  %291 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %292 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %291, i32 0, i32 2
  %293 = load %struct.TYPE_34__*, %struct.TYPE_34__** %292, align 8
  %294 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %293, i32 0, i32 1
  %295 = load i32, i32* %294, align 4
  %296 = icmp ult i32 %290, %295
  br i1 %296, label %297, label %305

297:                                              ; preds = %289
  %298 = load i32, i32* %19, align 4
  %299 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %300 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %299, i32 0, i32 1
  %301 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %300, i32 0, i32 0
  %302 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %301, i32 0, i32 0
  %303 = load i32, i32* %302, align 8
  %304 = icmp ult i32 %298, %303
  br label %305

305:                                              ; preds = %297, %289
  %306 = phi i1 [ false, %289 ], [ %304, %297 ]
  br i1 %306, label %307, label %345

307:                                              ; preds = %305
  %308 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %309 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %308, i32 0, i32 1
  %310 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %309, i32 0, i32 0
  %311 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %310, i32 0, i32 3
  %312 = load %struct.TYPE_26__*, %struct.TYPE_26__** %311, align 8
  %313 = load i32, i32* %19, align 4
  %314 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %315 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %314, i32 0, i32 1
  %316 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %315, i32 0, i32 0
  %317 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %316, i32 0, i32 1
  %318 = load i32, i32* %317, align 4
  %319 = mul i32 %313, %318
  %320 = zext i32 %319 to i64
  %321 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %312, i64 %320
  %322 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %323 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %322, i32 0, i32 2
  %324 = load %struct.TYPE_34__*, %struct.TYPE_34__** %323, align 8
  %325 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %324, i32 0, i32 3
  %326 = load i64, i64* %325, align 8
  %327 = load i32, i32* %19, align 4
  %328 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %329 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %328, i32 0, i32 2
  %330 = load %struct.TYPE_34__*, %struct.TYPE_34__** %329, align 8
  %331 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %330, i32 0, i32 2
  %332 = load i32, i32* %331, align 8
  %333 = mul i32 %327, %332
  %334 = zext i32 %333 to i64
  %335 = add nsw i64 %326, %334
  %336 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %337 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %336, i32 0, i32 2
  %338 = load %struct.TYPE_34__*, %struct.TYPE_34__** %337, align 8
  %339 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %338, i32 0, i32 2
  %340 = load i32, i32* %339, align 8
  %341 = call i32 @memcpy(%struct.TYPE_26__* %321, i64 %335, i32 %340)
  br label %342

342:                                              ; preds = %307
  %343 = load i32, i32* %19, align 4
  %344 = add i32 %343, 1
  store i32 %344, i32* %19, align 4
  br label %289

345:                                              ; preds = %305
  %346 = load i32, i32* @GX2_INVALIDATE_MODE_CPU_TEXTURE, align 4
  %347 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %348 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %347, i32 0, i32 1
  %349 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %348, i32 0, i32 0
  %350 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %349, i32 0, i32 3
  %351 = load %struct.TYPE_26__*, %struct.TYPE_26__** %350, align 8
  %352 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %353 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %352, i32 0, i32 1
  %354 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %353, i32 0, i32 0
  %355 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %354, i32 0, i32 2
  %356 = load i32, i32* %355, align 8
  %357 = call i32 @GX2Invalidate(i32 %346, %struct.TYPE_26__* %351, i32 %356)
  %358 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %359 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %358, i32 0, i32 2
  %360 = load %struct.TYPE_34__*, %struct.TYPE_34__** %359, align 8
  %361 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %360, i32 0, i32 0
  store i32 0, i32* %361, align 8
  br label %362

362:                                              ; preds = %345, %265
  %363 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %364 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %363, i32 0, i32 1
  %365 = load %struct.TYPE_35__*, %struct.TYPE_35__** getelementptr inbounds (%struct.TYPE_27__, %struct.TYPE_27__* @sprite_shader, i32 0, i32 1, i32 0), align 8
  %366 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %365, i64 0
  %367 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %366, i32 0, i32 0
  %368 = load i32, i32* %367, align 4
  %369 = call i32 @GX2SetPixelTexture(%struct.TYPE_29__* %364, i32 %368)
  %370 = load %struct.TYPE_22__*, %struct.TYPE_22__** getelementptr inbounds (%struct.TYPE_27__, %struct.TYPE_27__* @sprite_shader, i32 0, i32 0, i32 0), align 8
  %371 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %370, i64 1
  %372 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %371, i32 0, i32 1
  %373 = load i32, i32* %372, align 4
  %374 = load %struct.TYPE_22__*, %struct.TYPE_22__** getelementptr inbounds (%struct.TYPE_27__, %struct.TYPE_27__* @sprite_shader, i32 0, i32 0, i32 0), align 8
  %375 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %374, i64 1
  %376 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %375, i32 0, i32 0
  %377 = load i32, i32* %376, align 4
  %378 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %379 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %378, i32 0, i32 0
  %380 = load i32, i32* %379, align 8
  %381 = call i32 @GX2SetVertexUniformBlock(i32 %373, i32 %377, i32 %380)
  %382 = load i32, i32* @GX2_PRIMITIVE_MODE_POINTS, align 4
  %383 = load i32, i32* %30, align 4
  %384 = load %struct.TYPE_23__*, %struct.TYPE_23__** %20, align 8
  %385 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %384, i32 0, i32 0
  %386 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %385, i32 0, i32 0
  %387 = load i32, i32* %386, align 8
  %388 = call i32 @GX2DrawEx(i32 %382, i32 %383, i32 %387, i32 1)
  %389 = load %struct.TYPE_22__*, %struct.TYPE_22__** getelementptr inbounds (%struct.TYPE_27__, %struct.TYPE_27__* @sprite_shader, i32 0, i32 0, i32 0), align 8
  %390 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %389, i64 1
  %391 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %390, i32 0, i32 1
  %392 = load i32, i32* %391, align 4
  %393 = load %struct.TYPE_22__*, %struct.TYPE_22__** getelementptr inbounds (%struct.TYPE_27__, %struct.TYPE_27__* @sprite_shader, i32 0, i32 0, i32 0), align 8
  %394 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %393, i64 1
  %395 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %394, i32 0, i32 0
  %396 = load i32, i32* %395, align 4
  %397 = load %struct.TYPE_23__*, %struct.TYPE_23__** %20, align 8
  %398 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %397, i32 0, i32 1
  %399 = load i32, i32* %398, align 8
  %400 = call i32 @GX2SetVertexUniformBlock(i32 %392, i32 %396, i32 %399)
  %401 = load %struct.TYPE_26__*, %struct.TYPE_26__** %25, align 8
  %402 = load %struct.TYPE_23__*, %struct.TYPE_23__** %20, align 8
  %403 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %402, i32 0, i32 0
  %404 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %403, i32 0, i32 2
  %405 = load %struct.TYPE_26__*, %struct.TYPE_26__** %404, align 8
  %406 = ptrtoint %struct.TYPE_26__* %401 to i64
  %407 = ptrtoint %struct.TYPE_26__* %405 to i64
  %408 = sub i64 %406, %407
  %409 = sdiv exact i64 %408, 36
  %410 = trunc i64 %409 to i32
  %411 = load %struct.TYPE_23__*, %struct.TYPE_23__** %20, align 8
  %412 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %411, i32 0, i32 0
  %413 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %412, i32 0, i32 0
  store i32 %410, i32* %413, align 8
  br label %414

414:                                              ; preds = %362, %264, %69
  ret void
}

declare dso_local i32 @roundf(double) #1

declare dso_local i32 @wiiu_font_get_message_width(%struct.TYPE_24__*, i8*, i32, float) #1

declare dso_local i32 @utf8_walk(i8**) #1

declare dso_local i32 @GX2Invalidate(i32, %struct.TYPE_26__*, i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_26__*, i64, i32) #1

declare dso_local i32 @GX2SetPixelTexture(%struct.TYPE_29__*, i32) #1

declare dso_local i32 @GX2SetVertexUniformBlock(i32, i32, i32) #1

declare dso_local i32 @GX2DrawEx(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
