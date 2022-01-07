; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/drivers_display/extr_menu_display_d3d11.c_menu_display_d3d11_draw.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/drivers_display/extr_menu_display_d3d11.c_menu_display_d3d11_draw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_29__ = type { float, float, float, float, float, i64, %struct.TYPE_26__*, i32, %struct.TYPE_25__ }
%struct.TYPE_26__ = type { i32, float*, float*, float* }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_28__ = type { i64 }
%struct.TYPE_17__ = type { i32, %struct.TYPE_27__, i32*, %struct.TYPE_22__, i32 }
%struct.TYPE_27__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_22__ = type { float, i64 }
%struct.TYPE_20__ = type { i64 }
%struct.TYPE_19__ = type { i8**, %struct.TYPE_24__, %struct.TYPE_23__, %struct.TYPE_21__ }
%struct.TYPE_24__ = type { float, i32 }
%struct.TYPE_23__ = type { float, float, float, float }
%struct.TYPE_21__ = type { float, float, float, float }
%struct.TYPE_18__ = type { i32*, i32*, i32* }

@D3D11_DEFAULT_SAMPLE_MASK = common dso_local global i32 0, align 4
@D3D11_PRIMITIVE_TOPOLOGY_POINTLIST = common dso_local global i32 0, align 4
@D3D11_MAP_WRITE_NO_OVERWRITE = common dso_local global i32 0, align 4
@VIDEO_SHADER_STOCK_BLEND = common dso_local global i64 0, align 8
@D3D11_PRIMITIVE_TOPOLOGY_TRIANGLESTRIP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_29__*, %struct.TYPE_28__*)* @menu_display_d3d11_draw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @menu_display_d3d11_draw(%struct.TYPE_29__* %0, %struct.TYPE_28__* %1) #0 {
  %3 = alloca %struct.TYPE_29__*, align 8
  %4 = alloca %struct.TYPE_28__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca %struct.TYPE_20__, align 8
  %8 = alloca %struct.TYPE_19__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca float*, align 8
  %11 = alloca float*, align 8
  %12 = alloca float*, align 8
  %13 = alloca %struct.TYPE_18__*, align 8
  store %struct.TYPE_29__* %0, %struct.TYPE_29__** %3, align 8
  store %struct.TYPE_28__* %1, %struct.TYPE_28__** %4, align 8
  %14 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %17, %struct.TYPE_17__** %6, align 8
  %18 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %19 = icmp ne %struct.TYPE_17__* %18, null
  br i1 %19, label %20, label %28

20:                                               ; preds = %2
  %21 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %22 = icmp ne %struct.TYPE_29__* %21, null
  br i1 %22, label %23, label %28

23:                                               ; preds = %20
  %24 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %24, i32 0, i32 5
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %23, %20, %2
  br label %573

29:                                               ; preds = %23
  %30 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %30, i32 0, i32 8
  %32 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  switch i32 %33, label %85 [
    i32 133, label %34
    i32 132, label %34
    i32 131, label %34
    i32 130, label %34
    i32 129, label %34
    i32 128, label %34
  ]

34:                                               ; preds = %29, %29, %29, %29, %29, %29
  %35 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %38, i32 0, i32 2
  %40 = load i32*, i32** %39, align 8
  %41 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %41, i32 0, i32 8
  %43 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %40, i64 %45
  %47 = call i32 @d3d11_set_shader(i32 %37, i32* %46)
  %48 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %51, i32 0, i32 6
  %53 = load %struct.TYPE_26__*, %struct.TYPE_26__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @D3D11Draw(i32 %50, i32 %55, i32 0)
  %57 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @D3D11_DEFAULT_SAMPLE_MASK, align 4
  %64 = call i32 @D3D11SetBlendState(i32 %59, i32 %62, i32* null, i32 %63)
  %65 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %69, i32 0, i32 2
  %71 = call i32 @d3d11_set_shader(i32 %67, i32* %70)
  %72 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @D3D11SetVertexBuffer(i32 %74, i32 0, i32 %78, i32 48, i32 0)
  %80 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @D3D11_PRIMITIVE_TOPOLOGY_POINTLIST, align 4
  %84 = call i32 @D3D11SetPrimitiveTopology(i32 %82, i32 %83)
  br label %573

85:                                               ; preds = %29
  %86 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %86, i32 0, i32 6
  %88 = load %struct.TYPE_26__*, %struct.TYPE_26__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %88, i32 0, i32 1
  %90 = load float*, float** %89, align 8
  %91 = icmp ne float* %90, null
  br i1 %91, label %92, label %112

92:                                               ; preds = %85
  %93 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %93, i32 0, i32 6
  %95 = load %struct.TYPE_26__*, %struct.TYPE_26__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %95, i32 0, i32 2
  %97 = load float*, float** %96, align 8
  %98 = icmp ne float* %97, null
  br i1 %98, label %99, label %112

99:                                               ; preds = %92
  %100 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %100, i32 0, i32 6
  %102 = load %struct.TYPE_26__*, %struct.TYPE_26__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %102, i32 0, i32 3
  %104 = load float*, float** %103, align 8
  %105 = icmp ne float* %104, null
  br i1 %105, label %106, label %112

106:                                              ; preds = %99
  %107 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %107, i32 0, i32 6
  %109 = load %struct.TYPE_26__*, %struct.TYPE_26__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  store i32 %111, i32* %5, align 4
  br label %113

112:                                              ; preds = %99, %92, %85
  store i32 1, i32* %5, align 4
  br label %113

113:                                              ; preds = %112, %106
  %114 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %115 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %115, i32 0, i32 4
  %117 = load i32, i32* %116, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %126

119:                                              ; preds = %113
  %120 = load i32, i32* %5, align 4
  %121 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %122 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = icmp sgt i32 %120, %124
  br i1 %125, label %126, label %127

126:                                              ; preds = %119, %113
  br label %573

127:                                              ; preds = %119
  %128 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %129 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* %5, align 4
  %133 = add nsw i32 %131, %132
  %134 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %135 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = icmp sgt i32 %133, %137
  br i1 %138, label %139, label %143

139:                                              ; preds = %127
  %140 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %141 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %141, i32 0, i32 1
  store i32 0, i32* %142, align 4
  br label %143

143:                                              ; preds = %139, %127
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %8, align 8
  %144 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %145 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %148 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %147, i32 0, i32 1
  %149 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %148, i32 0, i32 3
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* @D3D11_MAP_WRITE_NO_OVERWRITE, align 4
  %152 = call i32 @D3D11MapBuffer(i32 %146, i32 %150, i32 0, i32 %151, i32 0, %struct.TYPE_20__* %7)
  %153 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = inttoptr i64 %154 to %struct.TYPE_19__*
  %156 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %157 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %156, i32 0, i32 1
  %158 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %155, i64 %160
  store %struct.TYPE_19__* %161, %struct.TYPE_19__** %8, align 8
  %162 = load i32, i32* %5, align 4
  %163 = icmp eq i32 %162, 1
  br i1 %163, label %164, label %418

164:                                              ; preds = %143
  %165 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %166 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %165, i32 0, i32 0
  %167 = load float, float* %166, align 8
  %168 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %169 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %168, i32 0, i32 3
  %170 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %169, i32 0, i32 1
  %171 = load i64, i64* %170, align 8
  %172 = sitofp i64 %171 to float
  %173 = fdiv float %167, %172
  %174 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %175 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %174, i32 0, i32 3
  %176 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %175, i32 0, i32 0
  store float %173, float* %176, align 8
  %177 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %178 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %177, i32 0, i32 3
  %179 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %178, i32 0, i32 0
  %180 = load float, float* %179, align 8
  %181 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %182 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %181, i32 0, i32 1
  %183 = load float, float* %182, align 4
  %184 = fsub float %180, %183
  %185 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %186 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %185, i32 0, i32 2
  %187 = load float, float* %186, align 8
  %188 = fsub float %184, %187
  %189 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %190 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %189, i32 0, i32 3
  %191 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %190, i32 0, i32 0
  %192 = load float, float* %191, align 8
  %193 = fdiv float %188, %192
  %194 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %195 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %194, i32 0, i32 3
  %196 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %195, i32 0, i32 1
  store float %193, float* %196, align 4
  %197 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %198 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %197, i32 0, i32 3
  %199 = load float, float* %198, align 4
  %200 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %201 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %200, i32 0, i32 3
  %202 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %201, i32 0, i32 1
  %203 = load i64, i64* %202, align 8
  %204 = sitofp i64 %203 to float
  %205 = fdiv float %199, %204
  %206 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %207 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %206, i32 0, i32 3
  %208 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %207, i32 0, i32 2
  store float %205, float* %208, align 8
  %209 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %210 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %209, i32 0, i32 2
  %211 = load float, float* %210, align 8
  %212 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %213 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %212, i32 0, i32 3
  %214 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %213, i32 0, i32 0
  %215 = load float, float* %214, align 8
  %216 = fdiv float %211, %215
  %217 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %218 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %217, i32 0, i32 3
  %219 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %218, i32 0, i32 3
  store float %216, float* %219, align 4
  %220 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %221 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %220, i32 0, i32 2
  %222 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %221, i32 0, i32 0
  store float 0.000000e+00, float* %222, align 8
  %223 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %224 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %223, i32 0, i32 2
  %225 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %224, i32 0, i32 1
  store float 0.000000e+00, float* %225, align 4
  %226 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %227 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %226, i32 0, i32 2
  %228 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %227, i32 0, i32 2
  store float 1.000000e+00, float* %228, align 8
  %229 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %230 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %229, i32 0, i32 2
  %231 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %230, i32 0, i32 3
  store float 1.000000e+00, float* %231, align 4
  %232 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %233 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %232, i32 0, i32 4
  %234 = load float, float* %233, align 8
  %235 = fcmp une float %234, 0.000000e+00
  br i1 %235, label %236, label %243

236:                                              ; preds = %164
  %237 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %238 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %237, i32 0, i32 4
  %239 = load float, float* %238, align 8
  %240 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %241 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %240, i32 0, i32 1
  %242 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %241, i32 0, i32 0
  store float %239, float* %242, align 8
  br label %247

243:                                              ; preds = %164
  %244 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %245 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %244, i32 0, i32 1
  %246 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %245, i32 0, i32 0
  store float 1.000000e+00, float* %246, align 8
  br label %247

247:                                              ; preds = %243, %236
  %248 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %249 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %248, i32 0, i32 7
  %250 = load i32, i32* %249, align 8
  %251 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %252 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %251, i32 0, i32 1
  %253 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %252, i32 0, i32 1
  store i32 %250, i32* %253, align 4
  %254 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %255 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %254, i32 0, i32 6
  %256 = load %struct.TYPE_26__*, %struct.TYPE_26__** %255, align 8
  %257 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %256, i32 0, i32 3
  %258 = load float*, float** %257, align 8
  %259 = getelementptr inbounds float, float* %258, i64 0
  %260 = load float, float* %259, align 4
  %261 = fmul float 2.550000e+02, %260
  %262 = fptosi float %261 to i32
  %263 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %264 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %263, i32 0, i32 6
  %265 = load %struct.TYPE_26__*, %struct.TYPE_26__** %264, align 8
  %266 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %265, i32 0, i32 3
  %267 = load float*, float** %266, align 8
  %268 = getelementptr inbounds float, float* %267, i64 1
  %269 = load float, float* %268, align 4
  %270 = fmul float 2.550000e+02, %269
  %271 = fptosi float %270 to i32
  %272 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %273 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %272, i32 0, i32 6
  %274 = load %struct.TYPE_26__*, %struct.TYPE_26__** %273, align 8
  %275 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %274, i32 0, i32 3
  %276 = load float*, float** %275, align 8
  %277 = getelementptr inbounds float, float* %276, i64 2
  %278 = load float, float* %277, align 4
  %279 = fmul float 2.550000e+02, %278
  %280 = fptosi float %279 to i32
  %281 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %282 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %281, i32 0, i32 6
  %283 = load %struct.TYPE_26__*, %struct.TYPE_26__** %282, align 8
  %284 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %283, i32 0, i32 3
  %285 = load float*, float** %284, align 8
  %286 = getelementptr inbounds float, float* %285, i64 3
  %287 = load float, float* %286, align 4
  %288 = fmul float 2.550000e+02, %287
  %289 = fptosi float %288 to i32
  %290 = call i8* @DXGI_COLOR_RGBA(i32 %262, i32 %271, i32 %280, i32 %289)
  %291 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %292 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %291, i32 0, i32 0
  %293 = load i8**, i8*** %292, align 8
  %294 = getelementptr inbounds i8*, i8** %293, i64 3
  store i8* %290, i8** %294, align 8
  %295 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %296 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %295, i32 0, i32 6
  %297 = load %struct.TYPE_26__*, %struct.TYPE_26__** %296, align 8
  %298 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %297, i32 0, i32 3
  %299 = load float*, float** %298, align 8
  %300 = getelementptr inbounds float, float* %299, i64 4
  %301 = load float, float* %300, align 4
  %302 = fmul float 2.550000e+02, %301
  %303 = fptosi float %302 to i32
  %304 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %305 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %304, i32 0, i32 6
  %306 = load %struct.TYPE_26__*, %struct.TYPE_26__** %305, align 8
  %307 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %306, i32 0, i32 3
  %308 = load float*, float** %307, align 8
  %309 = getelementptr inbounds float, float* %308, i64 5
  %310 = load float, float* %309, align 4
  %311 = fmul float 2.550000e+02, %310
  %312 = fptosi float %311 to i32
  %313 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %314 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %313, i32 0, i32 6
  %315 = load %struct.TYPE_26__*, %struct.TYPE_26__** %314, align 8
  %316 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %315, i32 0, i32 3
  %317 = load float*, float** %316, align 8
  %318 = getelementptr inbounds float, float* %317, i64 6
  %319 = load float, float* %318, align 4
  %320 = fmul float 2.550000e+02, %319
  %321 = fptosi float %320 to i32
  %322 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %323 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %322, i32 0, i32 6
  %324 = load %struct.TYPE_26__*, %struct.TYPE_26__** %323, align 8
  %325 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %324, i32 0, i32 3
  %326 = load float*, float** %325, align 8
  %327 = getelementptr inbounds float, float* %326, i64 7
  %328 = load float, float* %327, align 4
  %329 = fmul float 2.550000e+02, %328
  %330 = fptosi float %329 to i32
  %331 = call i8* @DXGI_COLOR_RGBA(i32 %303, i32 %312, i32 %321, i32 %330)
  %332 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %333 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %332, i32 0, i32 0
  %334 = load i8**, i8*** %333, align 8
  %335 = getelementptr inbounds i8*, i8** %334, i64 2
  store i8* %331, i8** %335, align 8
  %336 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %337 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %336, i32 0, i32 6
  %338 = load %struct.TYPE_26__*, %struct.TYPE_26__** %337, align 8
  %339 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %338, i32 0, i32 3
  %340 = load float*, float** %339, align 8
  %341 = getelementptr inbounds float, float* %340, i64 8
  %342 = load float, float* %341, align 4
  %343 = fmul float 2.550000e+02, %342
  %344 = fptosi float %343 to i32
  %345 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %346 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %345, i32 0, i32 6
  %347 = load %struct.TYPE_26__*, %struct.TYPE_26__** %346, align 8
  %348 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %347, i32 0, i32 3
  %349 = load float*, float** %348, align 8
  %350 = getelementptr inbounds float, float* %349, i64 9
  %351 = load float, float* %350, align 4
  %352 = fmul float 2.550000e+02, %351
  %353 = fptosi float %352 to i32
  %354 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %355 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %354, i32 0, i32 6
  %356 = load %struct.TYPE_26__*, %struct.TYPE_26__** %355, align 8
  %357 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %356, i32 0, i32 3
  %358 = load float*, float** %357, align 8
  %359 = getelementptr inbounds float, float* %358, i64 10
  %360 = load float, float* %359, align 4
  %361 = fmul float 2.550000e+02, %360
  %362 = fptosi float %361 to i32
  %363 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %364 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %363, i32 0, i32 6
  %365 = load %struct.TYPE_26__*, %struct.TYPE_26__** %364, align 8
  %366 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %365, i32 0, i32 3
  %367 = load float*, float** %366, align 8
  %368 = getelementptr inbounds float, float* %367, i64 11
  %369 = load float, float* %368, align 4
  %370 = fmul float 2.550000e+02, %369
  %371 = fptosi float %370 to i32
  %372 = call i8* @DXGI_COLOR_RGBA(i32 %344, i32 %353, i32 %362, i32 %371)
  %373 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %374 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %373, i32 0, i32 0
  %375 = load i8**, i8*** %374, align 8
  %376 = getelementptr inbounds i8*, i8** %375, i64 1
  store i8* %372, i8** %376, align 8
  %377 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %378 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %377, i32 0, i32 6
  %379 = load %struct.TYPE_26__*, %struct.TYPE_26__** %378, align 8
  %380 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %379, i32 0, i32 3
  %381 = load float*, float** %380, align 8
  %382 = getelementptr inbounds float, float* %381, i64 12
  %383 = load float, float* %382, align 4
  %384 = fmul float 2.550000e+02, %383
  %385 = fptosi float %384 to i32
  %386 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %387 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %386, i32 0, i32 6
  %388 = load %struct.TYPE_26__*, %struct.TYPE_26__** %387, align 8
  %389 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %388, i32 0, i32 3
  %390 = load float*, float** %389, align 8
  %391 = getelementptr inbounds float, float* %390, i64 13
  %392 = load float, float* %391, align 4
  %393 = fmul float 2.550000e+02, %392
  %394 = fptosi float %393 to i32
  %395 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %396 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %395, i32 0, i32 6
  %397 = load %struct.TYPE_26__*, %struct.TYPE_26__** %396, align 8
  %398 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %397, i32 0, i32 3
  %399 = load float*, float** %398, align 8
  %400 = getelementptr inbounds float, float* %399, i64 14
  %401 = load float, float* %400, align 4
  %402 = fmul float 2.550000e+02, %401
  %403 = fptosi float %402 to i32
  %404 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %405 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %404, i32 0, i32 6
  %406 = load %struct.TYPE_26__*, %struct.TYPE_26__** %405, align 8
  %407 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %406, i32 0, i32 3
  %408 = load float*, float** %407, align 8
  %409 = getelementptr inbounds float, float* %408, i64 15
  %410 = load float, float* %409, align 4
  %411 = fmul float 2.550000e+02, %410
  %412 = fptosi float %411 to i32
  %413 = call i8* @DXGI_COLOR_RGBA(i32 %385, i32 %394, i32 %403, i32 %412)
  %414 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %415 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %414, i32 0, i32 0
  %416 = load i8**, i8*** %415, align 8
  %417 = getelementptr inbounds i8*, i8** %416, i64 0
  store i8* %413, i8** %417, align 8
  br label %525

418:                                              ; preds = %143
  %419 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %420 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %419, i32 0, i32 6
  %421 = load %struct.TYPE_26__*, %struct.TYPE_26__** %420, align 8
  %422 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %421, i32 0, i32 1
  %423 = load float*, float** %422, align 8
  store float* %423, float** %10, align 8
  %424 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %425 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %424, i32 0, i32 6
  %426 = load %struct.TYPE_26__*, %struct.TYPE_26__** %425, align 8
  %427 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %426, i32 0, i32 2
  %428 = load float*, float** %427, align 8
  store float* %428, float** %11, align 8
  %429 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %430 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %429, i32 0, i32 6
  %431 = load %struct.TYPE_26__*, %struct.TYPE_26__** %430, align 8
  %432 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %431, i32 0, i32 3
  %433 = load float*, float** %432, align 8
  store float* %433, float** %12, align 8
  store i32 0, i32* %9, align 4
  br label %434

434:                                              ; preds = %507, %418
  %435 = load i32, i32* %9, align 4
  %436 = load i32, i32* %5, align 4
  %437 = icmp slt i32 %435, %436
  br i1 %437, label %438, label %510

438:                                              ; preds = %434
  %439 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %440 = bitcast %struct.TYPE_19__* %439 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %440, %struct.TYPE_18__** %13, align 8
  %441 = load float*, float** %10, align 8
  %442 = getelementptr inbounds float, float* %441, i32 1
  store float* %442, float** %10, align 8
  %443 = load float, float* %441, align 4
  %444 = fptosi float %443 to i32
  %445 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %446 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %445, i32 0, i32 2
  %447 = load i32*, i32** %446, align 8
  %448 = getelementptr inbounds i32, i32* %447, i64 0
  store i32 %444, i32* %448, align 4
  %449 = load float*, float** %10, align 8
  %450 = getelementptr inbounds float, float* %449, i32 1
  store float* %450, float** %10, align 8
  %451 = load float, float* %449, align 4
  %452 = fptosi float %451 to i32
  %453 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %454 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %453, i32 0, i32 2
  %455 = load i32*, i32** %454, align 8
  %456 = getelementptr inbounds i32, i32* %455, i64 1
  store i32 %452, i32* %456, align 4
  %457 = load float*, float** %11, align 8
  %458 = getelementptr inbounds float, float* %457, i32 1
  store float* %458, float** %11, align 8
  %459 = load float, float* %457, align 4
  %460 = fptosi float %459 to i32
  %461 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %462 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %461, i32 0, i32 1
  %463 = load i32*, i32** %462, align 8
  %464 = getelementptr inbounds i32, i32* %463, i64 0
  store i32 %460, i32* %464, align 4
  %465 = load float*, float** %11, align 8
  %466 = getelementptr inbounds float, float* %465, i32 1
  store float* %466, float** %11, align 8
  %467 = load float, float* %465, align 4
  %468 = fptosi float %467 to i32
  %469 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %470 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %469, i32 0, i32 1
  %471 = load i32*, i32** %470, align 8
  %472 = getelementptr inbounds i32, i32* %471, i64 1
  store i32 %468, i32* %472, align 4
  %473 = load float*, float** %12, align 8
  %474 = getelementptr inbounds float, float* %473, i32 1
  store float* %474, float** %12, align 8
  %475 = load float, float* %473, align 4
  %476 = fptosi float %475 to i32
  %477 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %478 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %477, i32 0, i32 0
  %479 = load i32*, i32** %478, align 8
  %480 = getelementptr inbounds i32, i32* %479, i64 0
  store i32 %476, i32* %480, align 4
  %481 = load float*, float** %12, align 8
  %482 = getelementptr inbounds float, float* %481, i32 1
  store float* %482, float** %12, align 8
  %483 = load float, float* %481, align 4
  %484 = fptosi float %483 to i32
  %485 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %486 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %485, i32 0, i32 0
  %487 = load i32*, i32** %486, align 8
  %488 = getelementptr inbounds i32, i32* %487, i64 1
  store i32 %484, i32* %488, align 4
  %489 = load float*, float** %12, align 8
  %490 = getelementptr inbounds float, float* %489, i32 1
  store float* %490, float** %12, align 8
  %491 = load float, float* %489, align 4
  %492 = fptosi float %491 to i32
  %493 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %494 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %493, i32 0, i32 0
  %495 = load i32*, i32** %494, align 8
  %496 = getelementptr inbounds i32, i32* %495, i64 2
  store i32 %492, i32* %496, align 4
  %497 = load float*, float** %12, align 8
  %498 = getelementptr inbounds float, float* %497, i32 1
  store float* %498, float** %12, align 8
  %499 = load float, float* %497, align 4
  %500 = fptosi float %499 to i32
  %501 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %502 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %501, i32 0, i32 0
  %503 = load i32*, i32** %502, align 8
  %504 = getelementptr inbounds i32, i32* %503, i64 3
  store i32 %500, i32* %504, align 4
  %505 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %506 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %505, i32 1
  store %struct.TYPE_19__* %506, %struct.TYPE_19__** %8, align 8
  br label %507

507:                                              ; preds = %438
  %508 = load i32, i32* %9, align 4
  %509 = add nsw i32 %508, 1
  store i32 %509, i32* %9, align 4
  br label %434

510:                                              ; preds = %434
  %511 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %512 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %511, i32 0, i32 0
  %513 = load i32, i32* %512, align 8
  %514 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %515 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %514, i32 0, i32 2
  %516 = load i32*, i32** %515, align 8
  %517 = load i64, i64* @VIDEO_SHADER_STOCK_BLEND, align 8
  %518 = getelementptr inbounds i32, i32* %516, i64 %517
  %519 = call i32 @d3d11_set_shader(i32 %513, i32* %518)
  %520 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %521 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %520, i32 0, i32 0
  %522 = load i32, i32* %521, align 8
  %523 = load i32, i32* @D3D11_PRIMITIVE_TOPOLOGY_TRIANGLESTRIP, align 4
  %524 = call i32 @D3D11SetPrimitiveTopology(i32 %522, i32 %523)
  br label %525

525:                                              ; preds = %510, %247
  %526 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %527 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %526, i32 0, i32 0
  %528 = load i32, i32* %527, align 8
  %529 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %530 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %529, i32 0, i32 1
  %531 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %530, i32 0, i32 3
  %532 = load i32, i32* %531, align 4
  %533 = call i32 @D3D11UnmapBuffer(i32 %528, i32 %532, i32 0)
  %534 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %535 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %534, i32 0, i32 0
  %536 = load i32, i32* %535, align 8
  %537 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %538 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %537, i32 0, i32 5
  %539 = load i64, i64* %538, align 8
  %540 = inttoptr i64 %539 to i32*
  %541 = call i32 @d3d11_set_texture_and_sampler(i32 %536, i32 0, i32* %540)
  %542 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %543 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %542, i32 0, i32 0
  %544 = load i32, i32* %543, align 8
  %545 = load i32, i32* %5, align 4
  %546 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %547 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %546, i32 0, i32 1
  %548 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %547, i32 0, i32 1
  %549 = load i32, i32* %548, align 4
  %550 = call i32 @D3D11Draw(i32 %544, i32 %545, i32 %549)
  %551 = load i32, i32* %5, align 4
  %552 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %553 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %552, i32 0, i32 1
  %554 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %553, i32 0, i32 1
  %555 = load i32, i32* %554, align 4
  %556 = add nsw i32 %555, %551
  store i32 %556, i32* %554, align 4
  %557 = load i32, i32* %5, align 4
  %558 = icmp sgt i32 %557, 1
  br i1 %558, label %559, label %572

559:                                              ; preds = %525
  %560 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %561 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %560, i32 0, i32 0
  %562 = load i32, i32* %561, align 8
  %563 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %564 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %563, i32 0, i32 1
  %565 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %564, i32 0, i32 2
  %566 = call i32 @d3d11_set_shader(i32 %562, i32* %565)
  %567 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %568 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %567, i32 0, i32 0
  %569 = load i32, i32* %568, align 8
  %570 = load i32, i32* @D3D11_PRIMITIVE_TOPOLOGY_POINTLIST, align 4
  %571 = call i32 @D3D11SetPrimitiveTopology(i32 %569, i32 %570)
  br label %572

572:                                              ; preds = %559, %525
  br label %573

573:                                              ; preds = %572, %126, %34, %28
  ret void
}

declare dso_local i32 @d3d11_set_shader(i32, i32*) #1

declare dso_local i32 @D3D11Draw(i32, i32, i32) #1

declare dso_local i32 @D3D11SetBlendState(i32, i32, i32*, i32) #1

declare dso_local i32 @D3D11SetVertexBuffer(i32, i32, i32, i32, i32) #1

declare dso_local i32 @D3D11SetPrimitiveTopology(i32, i32) #1

declare dso_local i32 @D3D11MapBuffer(i32, i32, i32, i32, i32, %struct.TYPE_20__*) #1

declare dso_local i8* @DXGI_COLOR_RGBA(i32, i32, i32, i32) #1

declare dso_local i32 @D3D11UnmapBuffer(i32, i32, i32) #1

declare dso_local i32 @d3d11_set_texture_and_sampler(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
