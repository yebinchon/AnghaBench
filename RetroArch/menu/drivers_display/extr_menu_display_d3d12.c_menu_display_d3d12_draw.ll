; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/drivers_display/extr_menu_display_d3d12.c_menu_display_d3d12_draw.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/drivers_display/extr_menu_display_d3d12.c_menu_display_d3d12_draw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { float, float, float, float, float, i64, %struct.TYPE_36__*, i32, %struct.TYPE_35__ }
%struct.TYPE_36__ = type { i32, float*, float*, i32* }
%struct.TYPE_35__ = type { i32 }
%struct.TYPE_23__ = type { i64 }
%struct.TYPE_25__ = type { %struct.TYPE_38__, %struct.TYPE_37__, i32*, %struct.TYPE_32__ }
%struct.TYPE_38__ = type { i32 }
%struct.TYPE_37__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_32__ = type { %struct.TYPE_31__ }
%struct.TYPE_31__ = type { float, i64 }
%struct.TYPE_28__ = type { i8**, %struct.TYPE_34__, %struct.TYPE_33__, %struct.TYPE_30__ }
%struct.TYPE_34__ = type { float, i32 }
%struct.TYPE_33__ = type { float, float, float, float }
%struct.TYPE_30__ = type { float, float, float, float }
%struct.TYPE_29__ = type { i32, i32, i32, i32 }
%struct.TYPE_26__ = type { i32*, i32*, i32* }
%struct.TYPE_27__ = type { i64 }

@D3D_PRIMITIVE_TOPOLOGY_POINTLIST = common dso_local global i32 0, align 4
@VIDEO_SHADER_STOCK_BLEND = common dso_local global i64 0, align 8
@D3D_PRIMITIVE_TOPOLOGY_TRIANGLESTRIP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_24__*, %struct.TYPE_23__*)* @menu_display_d3d12_draw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @menu_display_d3d12_draw(%struct.TYPE_24__* %0, %struct.TYPE_23__* %1) #0 {
  %3 = alloca %struct.TYPE_24__*, align 8
  %4 = alloca %struct.TYPE_23__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_25__*, align 8
  %7 = alloca %struct.TYPE_28__*, align 8
  %8 = alloca %struct.TYPE_29__, align 4
  %9 = alloca i32, align 4
  %10 = alloca float*, align 8
  %11 = alloca float*, align 8
  %12 = alloca float*, align 8
  %13 = alloca %struct.TYPE_26__*, align 8
  %14 = alloca %struct.TYPE_27__*, align 8
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %3, align 8
  store %struct.TYPE_23__* %1, %struct.TYPE_23__** %4, align 8
  %15 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.TYPE_25__*
  store %struct.TYPE_25__* %18, %struct.TYPE_25__** %6, align 8
  %19 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %20 = icmp ne %struct.TYPE_25__* %19, null
  br i1 %20, label %21, label %29

21:                                               ; preds = %2
  %22 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %23 = icmp ne %struct.TYPE_24__* %22, null
  br i1 %23, label %24, label %29

24:                                               ; preds = %21
  %25 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %25, i32 0, i32 5
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %24, %21, %2
  br label %622

30:                                               ; preds = %24
  %31 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %31, i32 0, i32 8
  %33 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  switch i32 %34, label %84 [
    i32 133, label %35
    i32 132, label %35
    i32 131, label %35
    i32 130, label %35
    i32 129, label %35
    i32 128, label %35
  ]

35:                                               ; preds = %30, %30, %30, %30, %30, %30
  %36 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %40, i32 0, i32 2
  %42 = load i32*, i32** %41, align 8
  %43 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %43, i32 0, i32 8
  %45 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %42, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @D3D12SetPipelineState(i32 %39, i32 %49)
  %51 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %55, i32 0, i32 6
  %57 = load %struct.TYPE_36__*, %struct.TYPE_36__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @D3D12DrawInstanced(i32 %54, i32 %59, i32 1, i32 0, i32 0)
  %61 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @D3D12SetPipelineState(i32 %64, i32 %68)
  %70 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @D3D_PRIMITIVE_TOPOLOGY_POINTLIST, align 4
  %75 = call i32 @D3D12IASetPrimitiveTopology(i32 %73, i32 %74)
  %76 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %81, i32 0, i32 5
  %83 = call i32 @D3D12IASetVertexBuffers(i32 %79, i32 0, i32 1, i32* %82)
  br label %622

84:                                               ; preds = %30
  %85 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %85, i32 0, i32 6
  %87 = load %struct.TYPE_36__*, %struct.TYPE_36__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %87, i32 0, i32 1
  %89 = load float*, float** %88, align 8
  %90 = icmp ne float* %89, null
  br i1 %90, label %91, label %111

91:                                               ; preds = %84
  %92 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %92, i32 0, i32 6
  %94 = load %struct.TYPE_36__*, %struct.TYPE_36__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %94, i32 0, i32 2
  %96 = load float*, float** %95, align 8
  %97 = icmp ne float* %96, null
  br i1 %97, label %98, label %111

98:                                               ; preds = %91
  %99 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %99, i32 0, i32 6
  %101 = load %struct.TYPE_36__*, %struct.TYPE_36__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %101, i32 0, i32 3
  %103 = load i32*, i32** %102, align 8
  %104 = icmp ne i32* %103, null
  br i1 %104, label %105, label %111

105:                                              ; preds = %98
  %106 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %107 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %106, i32 0, i32 6
  %108 = load %struct.TYPE_36__*, %struct.TYPE_36__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  store i32 %110, i32* %5, align 4
  br label %112

111:                                              ; preds = %98, %91, %84
  store i32 1, i32* %5, align 4
  br label %112

112:                                              ; preds = %111, %105
  %113 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %114 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %114, i32 0, i32 4
  %116 = load i32, i32* %115, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %125

118:                                              ; preds = %112
  %119 = load i32, i32* %5, align 4
  %120 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %121 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = icmp sgt i32 %119, %123
  br i1 %124, label %125, label %126

125:                                              ; preds = %118, %112
  br label %622

126:                                              ; preds = %118
  %127 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %128 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* %5, align 4
  %132 = add nsw i32 %130, %131
  %133 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %134 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %133, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = icmp sgt i32 %132, %136
  br i1 %137, label %138, label %142

138:                                              ; preds = %126
  %139 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %140 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %140, i32 0, i32 1
  store i32 0, i32* %141, align 4
  br label %142

142:                                              ; preds = %138, %126
  %143 = bitcast %struct.TYPE_29__* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %143, i8 0, i64 16, i1 false)
  %144 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %145 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %144, i32 0, i32 1
  %146 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %145, i32 0, i32 3
  %147 = load i32, i32* %146, align 4
  %148 = bitcast %struct.TYPE_28__** %7 to i8**
  %149 = call i32 @D3D12Map(i32 %147, i32 0, %struct.TYPE_29__* %8, i8** %148)
  %150 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %151 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %150, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %155 = sext i32 %153 to i64
  %156 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %154, i64 %155
  store %struct.TYPE_28__* %156, %struct.TYPE_28__** %7, align 8
  %157 = load i32, i32* %5, align 4
  %158 = icmp eq i32 %157, 1
  br i1 %158, label %159, label %402

159:                                              ; preds = %142
  %160 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %161 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %160, i32 0, i32 0
  %162 = load float, float* %161, align 8
  %163 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %164 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %163, i32 0, i32 3
  %165 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %165, i32 0, i32 1
  %167 = load i64, i64* %166, align 8
  %168 = sitofp i64 %167 to float
  %169 = fdiv float %162, %168
  %170 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %171 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %170, i32 0, i32 3
  %172 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %171, i32 0, i32 0
  store float %169, float* %172, align 8
  %173 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %174 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %173, i32 0, i32 3
  %175 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %175, i32 0, i32 0
  %177 = load float, float* %176, align 8
  %178 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %179 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %178, i32 0, i32 1
  %180 = load float, float* %179, align 4
  %181 = fsub float %177, %180
  %182 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %183 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %182, i32 0, i32 2
  %184 = load float, float* %183, align 8
  %185 = fsub float %181, %184
  %186 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %187 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %186, i32 0, i32 3
  %188 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %188, i32 0, i32 0
  %190 = load float, float* %189, align 8
  %191 = fdiv float %185, %190
  %192 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %193 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %192, i32 0, i32 3
  %194 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %193, i32 0, i32 1
  store float %191, float* %194, align 4
  %195 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %196 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %195, i32 0, i32 3
  %197 = load float, float* %196, align 4
  %198 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %199 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %198, i32 0, i32 3
  %200 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %199, i32 0, i32 0
  %201 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %200, i32 0, i32 1
  %202 = load i64, i64* %201, align 8
  %203 = sitofp i64 %202 to float
  %204 = fdiv float %197, %203
  %205 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %206 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %205, i32 0, i32 3
  %207 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %206, i32 0, i32 2
  store float %204, float* %207, align 8
  %208 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %209 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %208, i32 0, i32 2
  %210 = load float, float* %209, align 8
  %211 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %212 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %211, i32 0, i32 3
  %213 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %212, i32 0, i32 0
  %214 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %213, i32 0, i32 0
  %215 = load float, float* %214, align 8
  %216 = fdiv float %210, %215
  %217 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %218 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %217, i32 0, i32 3
  %219 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %218, i32 0, i32 3
  store float %216, float* %219, align 4
  %220 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %221 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %220, i32 0, i32 2
  %222 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %221, i32 0, i32 0
  store float 0.000000e+00, float* %222, align 8
  %223 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %224 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %223, i32 0, i32 2
  %225 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %224, i32 0, i32 1
  store float 0.000000e+00, float* %225, align 4
  %226 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %227 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %226, i32 0, i32 2
  %228 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %227, i32 0, i32 2
  store float 1.000000e+00, float* %228, align 8
  %229 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %230 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %229, i32 0, i32 2
  %231 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %230, i32 0, i32 3
  store float 1.000000e+00, float* %231, align 4
  %232 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %233 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %232, i32 0, i32 4
  %234 = load float, float* %233, align 8
  %235 = fcmp une float %234, 0.000000e+00
  br i1 %235, label %236, label %243

236:                                              ; preds = %159
  %237 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %238 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %237, i32 0, i32 4
  %239 = load float, float* %238, align 8
  %240 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %241 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %240, i32 0, i32 1
  %242 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %241, i32 0, i32 0
  store float %239, float* %242, align 8
  br label %247

243:                                              ; preds = %159
  %244 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %245 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %244, i32 0, i32 1
  %246 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %245, i32 0, i32 0
  store float 1.000000e+00, float* %246, align 8
  br label %247

247:                                              ; preds = %243, %236
  %248 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %249 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %248, i32 0, i32 7
  %250 = load i32, i32* %249, align 8
  %251 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %252 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %251, i32 0, i32 1
  %253 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %252, i32 0, i32 1
  store i32 %250, i32* %253, align 4
  %254 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %255 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %254, i32 0, i32 6
  %256 = load %struct.TYPE_36__*, %struct.TYPE_36__** %255, align 8
  %257 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %256, i32 0, i32 3
  %258 = load i32*, i32** %257, align 8
  %259 = getelementptr inbounds i32, i32* %258, i64 0
  %260 = load i32, i32* %259, align 4
  %261 = mul nsw i32 255, %260
  %262 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %263 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %262, i32 0, i32 6
  %264 = load %struct.TYPE_36__*, %struct.TYPE_36__** %263, align 8
  %265 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %264, i32 0, i32 3
  %266 = load i32*, i32** %265, align 8
  %267 = getelementptr inbounds i32, i32* %266, i64 1
  %268 = load i32, i32* %267, align 4
  %269 = mul nsw i32 255, %268
  %270 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %271 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %270, i32 0, i32 6
  %272 = load %struct.TYPE_36__*, %struct.TYPE_36__** %271, align 8
  %273 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %272, i32 0, i32 3
  %274 = load i32*, i32** %273, align 8
  %275 = getelementptr inbounds i32, i32* %274, i64 2
  %276 = load i32, i32* %275, align 4
  %277 = mul nsw i32 255, %276
  %278 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %279 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %278, i32 0, i32 6
  %280 = load %struct.TYPE_36__*, %struct.TYPE_36__** %279, align 8
  %281 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %280, i32 0, i32 3
  %282 = load i32*, i32** %281, align 8
  %283 = getelementptr inbounds i32, i32* %282, i64 3
  %284 = load i32, i32* %283, align 4
  %285 = mul nsw i32 255, %284
  %286 = call i8* @DXGI_COLOR_RGBA(i32 %261, i32 %269, i32 %277, i32 %285)
  %287 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %288 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %287, i32 0, i32 0
  %289 = load i8**, i8*** %288, align 8
  %290 = getelementptr inbounds i8*, i8** %289, i64 3
  store i8* %286, i8** %290, align 8
  %291 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %292 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %291, i32 0, i32 6
  %293 = load %struct.TYPE_36__*, %struct.TYPE_36__** %292, align 8
  %294 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %293, i32 0, i32 3
  %295 = load i32*, i32** %294, align 8
  %296 = getelementptr inbounds i32, i32* %295, i64 4
  %297 = load i32, i32* %296, align 4
  %298 = mul nsw i32 255, %297
  %299 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %300 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %299, i32 0, i32 6
  %301 = load %struct.TYPE_36__*, %struct.TYPE_36__** %300, align 8
  %302 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %301, i32 0, i32 3
  %303 = load i32*, i32** %302, align 8
  %304 = getelementptr inbounds i32, i32* %303, i64 5
  %305 = load i32, i32* %304, align 4
  %306 = mul nsw i32 255, %305
  %307 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %308 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %307, i32 0, i32 6
  %309 = load %struct.TYPE_36__*, %struct.TYPE_36__** %308, align 8
  %310 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %309, i32 0, i32 3
  %311 = load i32*, i32** %310, align 8
  %312 = getelementptr inbounds i32, i32* %311, i64 6
  %313 = load i32, i32* %312, align 4
  %314 = mul nsw i32 255, %313
  %315 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %316 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %315, i32 0, i32 6
  %317 = load %struct.TYPE_36__*, %struct.TYPE_36__** %316, align 8
  %318 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %317, i32 0, i32 3
  %319 = load i32*, i32** %318, align 8
  %320 = getelementptr inbounds i32, i32* %319, i64 7
  %321 = load i32, i32* %320, align 4
  %322 = mul nsw i32 255, %321
  %323 = call i8* @DXGI_COLOR_RGBA(i32 %298, i32 %306, i32 %314, i32 %322)
  %324 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %325 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %324, i32 0, i32 0
  %326 = load i8**, i8*** %325, align 8
  %327 = getelementptr inbounds i8*, i8** %326, i64 2
  store i8* %323, i8** %327, align 8
  %328 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %329 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %328, i32 0, i32 6
  %330 = load %struct.TYPE_36__*, %struct.TYPE_36__** %329, align 8
  %331 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %330, i32 0, i32 3
  %332 = load i32*, i32** %331, align 8
  %333 = getelementptr inbounds i32, i32* %332, i64 8
  %334 = load i32, i32* %333, align 4
  %335 = mul nsw i32 255, %334
  %336 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %337 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %336, i32 0, i32 6
  %338 = load %struct.TYPE_36__*, %struct.TYPE_36__** %337, align 8
  %339 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %338, i32 0, i32 3
  %340 = load i32*, i32** %339, align 8
  %341 = getelementptr inbounds i32, i32* %340, i64 9
  %342 = load i32, i32* %341, align 4
  %343 = mul nsw i32 255, %342
  %344 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %345 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %344, i32 0, i32 6
  %346 = load %struct.TYPE_36__*, %struct.TYPE_36__** %345, align 8
  %347 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %346, i32 0, i32 3
  %348 = load i32*, i32** %347, align 8
  %349 = getelementptr inbounds i32, i32* %348, i64 10
  %350 = load i32, i32* %349, align 4
  %351 = mul nsw i32 255, %350
  %352 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %353 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %352, i32 0, i32 6
  %354 = load %struct.TYPE_36__*, %struct.TYPE_36__** %353, align 8
  %355 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %354, i32 0, i32 3
  %356 = load i32*, i32** %355, align 8
  %357 = getelementptr inbounds i32, i32* %356, i64 11
  %358 = load i32, i32* %357, align 4
  %359 = mul nsw i32 255, %358
  %360 = call i8* @DXGI_COLOR_RGBA(i32 %335, i32 %343, i32 %351, i32 %359)
  %361 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %362 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %361, i32 0, i32 0
  %363 = load i8**, i8*** %362, align 8
  %364 = getelementptr inbounds i8*, i8** %363, i64 1
  store i8* %360, i8** %364, align 8
  %365 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %366 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %365, i32 0, i32 6
  %367 = load %struct.TYPE_36__*, %struct.TYPE_36__** %366, align 8
  %368 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %367, i32 0, i32 3
  %369 = load i32*, i32** %368, align 8
  %370 = getelementptr inbounds i32, i32* %369, i64 12
  %371 = load i32, i32* %370, align 4
  %372 = mul nsw i32 255, %371
  %373 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %374 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %373, i32 0, i32 6
  %375 = load %struct.TYPE_36__*, %struct.TYPE_36__** %374, align 8
  %376 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %375, i32 0, i32 3
  %377 = load i32*, i32** %376, align 8
  %378 = getelementptr inbounds i32, i32* %377, i64 13
  %379 = load i32, i32* %378, align 4
  %380 = mul nsw i32 255, %379
  %381 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %382 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %381, i32 0, i32 6
  %383 = load %struct.TYPE_36__*, %struct.TYPE_36__** %382, align 8
  %384 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %383, i32 0, i32 3
  %385 = load i32*, i32** %384, align 8
  %386 = getelementptr inbounds i32, i32* %385, i64 14
  %387 = load i32, i32* %386, align 4
  %388 = mul nsw i32 255, %387
  %389 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %390 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %389, i32 0, i32 6
  %391 = load %struct.TYPE_36__*, %struct.TYPE_36__** %390, align 8
  %392 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %391, i32 0, i32 3
  %393 = load i32*, i32** %392, align 8
  %394 = getelementptr inbounds i32, i32* %393, i64 15
  %395 = load i32, i32* %394, align 4
  %396 = mul nsw i32 255, %395
  %397 = call i8* @DXGI_COLOR_RGBA(i32 %372, i32 %380, i32 %388, i32 %396)
  %398 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %399 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %398, i32 0, i32 0
  %400 = load i8**, i8*** %399, align 8
  %401 = getelementptr inbounds i8*, i8** %400, i64 0
  store i8* %397, i8** %401, align 8
  br label %513

402:                                              ; preds = %142
  %403 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %404 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %403, i32 0, i32 6
  %405 = load %struct.TYPE_36__*, %struct.TYPE_36__** %404, align 8
  %406 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %405, i32 0, i32 1
  %407 = load float*, float** %406, align 8
  store float* %407, float** %10, align 8
  %408 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %409 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %408, i32 0, i32 6
  %410 = load %struct.TYPE_36__*, %struct.TYPE_36__** %409, align 8
  %411 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %410, i32 0, i32 2
  %412 = load float*, float** %411, align 8
  store float* %412, float** %11, align 8
  %413 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %414 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %413, i32 0, i32 6
  %415 = load %struct.TYPE_36__*, %struct.TYPE_36__** %414, align 8
  %416 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %415, i32 0, i32 3
  %417 = load i32*, i32** %416, align 8
  %418 = bitcast i32* %417 to float*
  store float* %418, float** %12, align 8
  store i32 0, i32* %9, align 4
  br label %419

419:                                              ; preds = %492, %402
  %420 = load i32, i32* %9, align 4
  %421 = load i32, i32* %5, align 4
  %422 = icmp slt i32 %420, %421
  br i1 %422, label %423, label %495

423:                                              ; preds = %419
  %424 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %425 = bitcast %struct.TYPE_28__* %424 to %struct.TYPE_26__*
  store %struct.TYPE_26__* %425, %struct.TYPE_26__** %13, align 8
  %426 = load float*, float** %10, align 8
  %427 = getelementptr inbounds float, float* %426, i32 1
  store float* %427, float** %10, align 8
  %428 = load float, float* %426, align 4
  %429 = fptosi float %428 to i32
  %430 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %431 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %430, i32 0, i32 2
  %432 = load i32*, i32** %431, align 8
  %433 = getelementptr inbounds i32, i32* %432, i64 0
  store i32 %429, i32* %433, align 4
  %434 = load float*, float** %10, align 8
  %435 = getelementptr inbounds float, float* %434, i32 1
  store float* %435, float** %10, align 8
  %436 = load float, float* %434, align 4
  %437 = fptosi float %436 to i32
  %438 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %439 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %438, i32 0, i32 2
  %440 = load i32*, i32** %439, align 8
  %441 = getelementptr inbounds i32, i32* %440, i64 1
  store i32 %437, i32* %441, align 4
  %442 = load float*, float** %11, align 8
  %443 = getelementptr inbounds float, float* %442, i32 1
  store float* %443, float** %11, align 8
  %444 = load float, float* %442, align 4
  %445 = fptosi float %444 to i32
  %446 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %447 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %446, i32 0, i32 1
  %448 = load i32*, i32** %447, align 8
  %449 = getelementptr inbounds i32, i32* %448, i64 0
  store i32 %445, i32* %449, align 4
  %450 = load float*, float** %11, align 8
  %451 = getelementptr inbounds float, float* %450, i32 1
  store float* %451, float** %11, align 8
  %452 = load float, float* %450, align 4
  %453 = fptosi float %452 to i32
  %454 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %455 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %454, i32 0, i32 1
  %456 = load i32*, i32** %455, align 8
  %457 = getelementptr inbounds i32, i32* %456, i64 1
  store i32 %453, i32* %457, align 4
  %458 = load float*, float** %12, align 8
  %459 = getelementptr inbounds float, float* %458, i32 1
  store float* %459, float** %12, align 8
  %460 = load float, float* %458, align 4
  %461 = fptosi float %460 to i32
  %462 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %463 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %462, i32 0, i32 0
  %464 = load i32*, i32** %463, align 8
  %465 = getelementptr inbounds i32, i32* %464, i64 0
  store i32 %461, i32* %465, align 4
  %466 = load float*, float** %12, align 8
  %467 = getelementptr inbounds float, float* %466, i32 1
  store float* %467, float** %12, align 8
  %468 = load float, float* %466, align 4
  %469 = fptosi float %468 to i32
  %470 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %471 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %470, i32 0, i32 0
  %472 = load i32*, i32** %471, align 8
  %473 = getelementptr inbounds i32, i32* %472, i64 1
  store i32 %469, i32* %473, align 4
  %474 = load float*, float** %12, align 8
  %475 = getelementptr inbounds float, float* %474, i32 1
  store float* %475, float** %12, align 8
  %476 = load float, float* %474, align 4
  %477 = fptosi float %476 to i32
  %478 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %479 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %478, i32 0, i32 0
  %480 = load i32*, i32** %479, align 8
  %481 = getelementptr inbounds i32, i32* %480, i64 2
  store i32 %477, i32* %481, align 4
  %482 = load float*, float** %12, align 8
  %483 = getelementptr inbounds float, float* %482, i32 1
  store float* %483, float** %12, align 8
  %484 = load float, float* %482, align 4
  %485 = fptosi float %484 to i32
  %486 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %487 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %486, i32 0, i32 0
  %488 = load i32*, i32** %487, align 8
  %489 = getelementptr inbounds i32, i32* %488, i64 3
  store i32 %485, i32* %489, align 4
  %490 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %491 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %490, i32 1
  store %struct.TYPE_28__* %491, %struct.TYPE_28__** %7, align 8
  br label %492

492:                                              ; preds = %423
  %493 = load i32, i32* %9, align 4
  %494 = add nsw i32 %493, 1
  store i32 %494, i32* %9, align 4
  br label %419

495:                                              ; preds = %419
  %496 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %497 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %496, i32 0, i32 0
  %498 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %497, i32 0, i32 0
  %499 = load i32, i32* %498, align 8
  %500 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %501 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %500, i32 0, i32 2
  %502 = load i32*, i32** %501, align 8
  %503 = load i64, i64* @VIDEO_SHADER_STOCK_BLEND, align 8
  %504 = getelementptr inbounds i32, i32* %502, i64 %503
  %505 = load i32, i32* %504, align 4
  %506 = call i32 @D3D12SetPipelineState(i32 %499, i32 %505)
  %507 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %508 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %507, i32 0, i32 0
  %509 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %508, i32 0, i32 0
  %510 = load i32, i32* %509, align 8
  %511 = load i32, i32* @D3D_PRIMITIVE_TOPOLOGY_TRIANGLESTRIP, align 4
  %512 = call i32 @D3D12IASetPrimitiveTopology(i32 %510, i32 %511)
  br label %513

513:                                              ; preds = %495, %247
  %514 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %515 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %514, i32 0, i32 1
  %516 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %515, i32 0, i32 1
  %517 = load i32, i32* %516, align 4
  %518 = sext i32 %517 to i64
  %519 = mul i64 %518, 48
  %520 = trunc i64 %519 to i32
  %521 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %8, i32 0, i32 0
  store i32 %520, i32* %521, align 4
  %522 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %523 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %522, i32 0, i32 1
  %524 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %523, i32 0, i32 1
  %525 = load i32, i32* %524, align 4
  %526 = load i32, i32* %5, align 4
  %527 = add nsw i32 %525, %526
  %528 = sext i32 %527 to i64
  %529 = mul i64 %528, 48
  %530 = trunc i64 %529 to i32
  %531 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %8, i32 0, i32 1
  store i32 %530, i32* %531, align 4
  %532 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %533 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %532, i32 0, i32 1
  %534 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %533, i32 0, i32 3
  %535 = load i32, i32* %534, align 4
  %536 = call i32 @D3D12Unmap(i32 %535, i32 0, %struct.TYPE_29__* %8)
  %537 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %538 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %537, i32 0, i32 5
  %539 = load i64, i64* %538, align 8
  %540 = inttoptr i64 %539 to %struct.TYPE_27__*
  store %struct.TYPE_27__* %540, %struct.TYPE_27__** %14, align 8
  %541 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %542 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %541, i32 0, i32 0
  %543 = load i64, i64* %542, align 8
  %544 = icmp ne i64 %543, 0
  br i1 %544, label %545, label %580

545:                                              ; preds = %513
  %546 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %547 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %546, i32 0, i32 0
  %548 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %547, i32 0, i32 0
  %549 = load i32, i32* %548, align 8
  %550 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %551 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %552 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %551, i32 0, i32 0
  %553 = load i64, i64* %552, align 8
  %554 = call i32 @d3d12_upload_texture(i32 %549, %struct.TYPE_27__* %550, i64 %553)
  %555 = load i32, i32* %5, align 4
  %556 = icmp sgt i32 %555, 1
  br i1 %556, label %557, label %569

557:                                              ; preds = %545
  %558 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %559 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %558, i32 0, i32 0
  %560 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %559, i32 0, i32 0
  %561 = load i32, i32* %560, align 8
  %562 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %563 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %562, i32 0, i32 2
  %564 = load i32*, i32** %563, align 8
  %565 = load i64, i64* @VIDEO_SHADER_STOCK_BLEND, align 8
  %566 = getelementptr inbounds i32, i32* %564, i64 %565
  %567 = load i32, i32* %566, align 4
  %568 = call i32 @D3D12SetPipelineState(i32 %561, i32 %567)
  br label %579

569:                                              ; preds = %545
  %570 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %571 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %570, i32 0, i32 0
  %572 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %571, i32 0, i32 0
  %573 = load i32, i32* %572, align 8
  %574 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %575 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %574, i32 0, i32 1
  %576 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %575, i32 0, i32 2
  %577 = load i32, i32* %576, align 4
  %578 = call i32 @D3D12SetPipelineState(i32 %573, i32 %577)
  br label %579

579:                                              ; preds = %569, %557
  br label %580

580:                                              ; preds = %579, %513
  %581 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %582 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %581, i32 0, i32 0
  %583 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %582, i32 0, i32 0
  %584 = load i32, i32* %583, align 8
  %585 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %586 = call i32 @d3d12_set_texture_and_sampler(i32 %584, %struct.TYPE_27__* %585)
  %587 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %588 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %587, i32 0, i32 0
  %589 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %588, i32 0, i32 0
  %590 = load i32, i32* %589, align 8
  %591 = load i32, i32* %5, align 4
  %592 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %593 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %592, i32 0, i32 1
  %594 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %593, i32 0, i32 1
  %595 = load i32, i32* %594, align 4
  %596 = call i32 @D3D12DrawInstanced(i32 %590, i32 %591, i32 1, i32 %595, i32 0)
  %597 = load i32, i32* %5, align 4
  %598 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %599 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %598, i32 0, i32 1
  %600 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %599, i32 0, i32 1
  %601 = load i32, i32* %600, align 4
  %602 = add nsw i32 %601, %597
  store i32 %602, i32* %600, align 4
  %603 = load i32, i32* %5, align 4
  %604 = icmp sgt i32 %603, 1
  br i1 %604, label %605, label %621

605:                                              ; preds = %580
  %606 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %607 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %606, i32 0, i32 0
  %608 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %607, i32 0, i32 0
  %609 = load i32, i32* %608, align 8
  %610 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %611 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %610, i32 0, i32 1
  %612 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %611, i32 0, i32 2
  %613 = load i32, i32* %612, align 4
  %614 = call i32 @D3D12SetPipelineState(i32 %609, i32 %613)
  %615 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %616 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %615, i32 0, i32 0
  %617 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %616, i32 0, i32 0
  %618 = load i32, i32* %617, align 8
  %619 = load i32, i32* @D3D_PRIMITIVE_TOPOLOGY_POINTLIST, align 4
  %620 = call i32 @D3D12IASetPrimitiveTopology(i32 %618, i32 %619)
  br label %621

621:                                              ; preds = %605, %580
  br label %622

622:                                              ; preds = %621, %125, %35, %29
  ret void
}

declare dso_local i32 @D3D12SetPipelineState(i32, i32) #1

declare dso_local i32 @D3D12DrawInstanced(i32, i32, i32, i32, i32) #1

declare dso_local i32 @D3D12IASetPrimitiveTopology(i32, i32) #1

declare dso_local i32 @D3D12IASetVertexBuffers(i32, i32, i32, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @D3D12Map(i32, i32, %struct.TYPE_29__*, i8**) #1

declare dso_local i8* @DXGI_COLOR_RGBA(i32, i32, i32, i32) #1

declare dso_local i32 @D3D12Unmap(i32, i32, %struct.TYPE_29__*) #1

declare dso_local i32 @d3d12_upload_texture(i32, %struct.TYPE_27__*, i64) #1

declare dso_local i32 @d3d12_set_texture_and_sampler(i32, %struct.TYPE_27__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
