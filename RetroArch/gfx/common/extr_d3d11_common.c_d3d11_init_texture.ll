; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/common/extr_d3d11_common.c_d3d11_init_texture.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/common/extr_d3d11_common.c_d3d11_init_texture.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_15__, %struct.TYPE_13__, i32, i32, i32, i32 }
%struct.TYPE_15__ = type { i32, i32, i32, i64, i32, i32, i32, i8*, i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i64 }
%struct.TYPE_13__ = type { i32, i32, float, float }
%struct.TYPE_16__ = type { %struct.TYPE_12__, i32, i32, i32 }
%struct.TYPE_12__ = type { i32, i64 }

@D3D11_BIND_RENDER_TARGET = common dso_local global i32 0, align 4
@D3D11_FORMAT_SUPPORT_TEXTURE2D = common dso_local global i32 0, align 4
@D3D11_FORMAT_SUPPORT_SHADER_SAMPLE = common dso_local global i32 0, align 4
@D3D11_BIND_SHADER_RESOURCE = common dso_local global i32 0, align 4
@D3D11_USAGE_DYNAMIC = common dso_local global i64 0, align 8
@D3D11_CPU_ACCESS_WRITE = common dso_local global i8* null, align 8
@D3D11_RESOURCE_MISC_GENERATE_MIPS = common dso_local global i32 0, align 4
@D3D11_FORMAT_SUPPORT_RENDER_TARGET = common dso_local global i32 0, align 4
@DXGI_FORMAT_UNKNOWN = common dso_local global i32 0, align 4
@D3D_SRV_DIMENSION_TEXTURE2D = common dso_local global i32 0, align 4
@D3D11_USAGE_STAGING = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @d3d11_init_texture(i32 %0, %struct.TYPE_14__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_16__, align 8
  %10 = alloca %struct.TYPE_15__, align 8
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %4, align 8
  %11 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @D3D11_BIND_RENDER_TARGET, align 4
  %16 = and i32 %14, %15
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* @D3D11_FORMAT_SUPPORT_TEXTURE2D, align 4
  %18 = load i32, i32* @D3D11_FORMAT_SUPPORT_SHADER_SAMPLE, align 4
  %19 = or i32 %17, %18
  store i32 %19, i32* %6, align 4
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %21 = call i32 @d3d11_release_texture(%struct.TYPE_14__* %20)
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %23, i32 0, i32 1
  store i32 1, i32* %24, align 4
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %26, i32 0, i32 2
  store i32 1, i32* %27, align 8
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %29, i32 0, i32 9
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 0
  store i32 1, i32* %31, align 8
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %33, i32 0, i32 9
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 1
  store i64 0, i64* %35, align 8
  %36 = load i32, i32* @D3D11_BIND_SHADER_RESOURCE, align 4
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = or i32 %40, %36
  store i32 %41, i32* %39, align 8
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %43, i32 0, i32 3
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @D3D11_USAGE_DYNAMIC, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %2
  %49 = load i8*, i8** @D3D11_CPU_ACCESS_WRITE, align 8
  br label %51

50:                                               ; preds = %2
  br label %51

51:                                               ; preds = %50, %48
  %52 = phi i8* [ %49, %48 ], [ null, %50 ]
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %54, i32 0, i32 7
  store i8* %52, i8** %55, align 8
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %57, i32 0, i32 4
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @D3D11_RESOURCE_MISC_GENERATE_MIPS, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %99

63:                                               ; preds = %51
  %64 = load i32, i32* @D3D11_BIND_RENDER_TARGET, align 4
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = or i32 %68, %64
  store i32 %69, i32* %67, align 8
  %70 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %71, i32 0, i32 5
  %73 = load i32, i32* %72, align 4
  %74 = ashr i32 %73, 5
  store i32 %74, i32* %7, align 4
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %76, i32 0, i32 6
  %78 = load i32, i32* %77, align 8
  %79 = ashr i32 %78, 5
  store i32 %79, i32* %8, align 4
  br label %80

80:                                               ; preds = %88, %63
  %81 = load i32, i32* %7, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %80
  %84 = load i32, i32* %8, align 4
  %85 = icmp ne i32 %84, 0
  br label %86

86:                                               ; preds = %83, %80
  %87 = phi i1 [ false, %80 ], [ %85, %83 ]
  br i1 %87, label %88, label %98

88:                                               ; preds = %86
  %89 = load i32, i32* %7, align 4
  %90 = lshr i32 %89, 1
  store i32 %90, i32* %7, align 4
  %91 = load i32, i32* %8, align 4
  %92 = lshr i32 %91, 1
  store i32 %92, i32* %8, align 4
  %93 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %95, align 4
  br label %80

98:                                               ; preds = %86
  br label %99

99:                                               ; preds = %98, %51
  %100 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* @D3D11_BIND_RENDER_TARGET, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %99
  %108 = load i32, i32* @D3D11_FORMAT_SUPPORT_RENDER_TARGET, align 4
  %109 = load i32, i32* %6, align 4
  %110 = or i32 %109, %108
  store i32 %110, i32* %6, align 4
  br label %111

111:                                              ; preds = %107, %99
  %112 = load i32, i32* %3, align 4
  %113 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %114, i32 0, i32 8
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* %6, align 4
  %118 = call i32 @d3d11_get_closest_match(i32 %112, i32 %116, i32 %117)
  %119 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %120, i32 0, i32 8
  store i32 %118, i32* %121, align 8
  %122 = load i32, i32* %3, align 4
  %123 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %123, i32 0, i32 0
  %125 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %126 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %125, i32 0, i32 4
  %127 = call i32 @D3D11CreateTexture2D(i32 %122, %struct.TYPE_15__* %124, i32* null, i32* %126)
  %128 = bitcast %struct.TYPE_16__* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %128, i8 0, i64 32, i1 false)
  %129 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %9, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %129, i32 0, i32 0
  %131 = load i32, i32* @DXGI_FORMAT_UNKNOWN, align 4
  store i32 %131, i32* %130, align 8
  %132 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %133, i32 0, i32 8
  %135 = load i32, i32* %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %9, i32 0, i32 2
  store i32 %135, i32* %136, align 4
  %137 = load i32, i32* @D3D_SRV_DIMENSION_TEXTURE2D, align 4
  %138 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %9, i32 0, i32 1
  store i32 %137, i32* %138, align 8
  %139 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %9, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %139, i32 0, i32 1
  store i64 0, i64* %140, align 8
  %141 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %9, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %141, i32 0, i32 0
  store i32 -1, i32* %142, align 8
  %143 = load i32, i32* %3, align 4
  %144 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %145 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %144, i32 0, i32 4
  %146 = load i32, i32* %145, align 8
  %147 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %148 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %147, i32 0, i32 5
  %149 = call i32 @D3D11CreateTexture2DShaderResourceView(i32 %143, i32 %146, %struct.TYPE_16__* %9, i32* %148)
  %150 = load i32, i32* %5, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %160

152:                                              ; preds = %111
  %153 = load i32, i32* %3, align 4
  %154 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %155 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %154, i32 0, i32 4
  %156 = load i32, i32* %155, align 8
  %157 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %158 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %157, i32 0, i32 3
  %159 = call i32 @D3D11CreateTexture2DRenderTargetView(i32 %153, i32 %156, i32* null, i32* %158)
  br label %176

160:                                              ; preds = %111
  %161 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %162 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %161, i32 0, i32 0
  %163 = bitcast %struct.TYPE_15__* %10 to i8*
  %164 = bitcast %struct.TYPE_15__* %162 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %163, i8* align 8 %164, i64 72, i1 false)
  %165 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 1
  store i32 1, i32* %165, align 4
  %166 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 0
  store i32 0, i32* %166, align 8
  %167 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 4
  store i32 0, i32* %167, align 8
  %168 = load i64, i64* @D3D11_USAGE_STAGING, align 8
  %169 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 3
  store i64 %168, i64* %169, align 8
  %170 = load i8*, i8** @D3D11_CPU_ACCESS_WRITE, align 8
  %171 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 7
  store i8* %170, i8** %171, align 8
  %172 = load i32, i32* %3, align 4
  %173 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %174 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %173, i32 0, i32 2
  %175 = call i32 @D3D11CreateTexture2D(i32 %172, %struct.TYPE_15__* %10, i32* null, i32* %174)
  br label %176

176:                                              ; preds = %160, %152
  %177 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %178 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %178, i32 0, i32 5
  %180 = load i32, i32* %179, align 4
  %181 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %182 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %181, i32 0, i32 1
  %183 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %182, i32 0, i32 0
  store i32 %180, i32* %183, align 8
  %184 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %185 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %184, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %185, i32 0, i32 6
  %187 = load i32, i32* %186, align 8
  %188 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %189 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %188, i32 0, i32 1
  %190 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %189, i32 0, i32 1
  store i32 %187, i32* %190, align 4
  %191 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %192 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %191, i32 0, i32 0
  %193 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %192, i32 0, i32 5
  %194 = load i32, i32* %193, align 4
  %195 = sitofp i32 %194 to float
  %196 = fdiv float 1.000000e+00, %195
  %197 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %198 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %197, i32 0, i32 1
  %199 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %198, i32 0, i32 2
  store float %196, float* %199, align 8
  %200 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %201 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %200, i32 0, i32 0
  %202 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %201, i32 0, i32 6
  %203 = load i32, i32* %202, align 8
  %204 = sitofp i32 %203 to float
  %205 = fdiv float 1.000000e+00, %204
  %206 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %207 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %206, i32 0, i32 1
  %208 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %207, i32 0, i32 3
  store float %205, float* %208, align 4
  ret void
}

declare dso_local i32 @d3d11_release_texture(%struct.TYPE_14__*) #1

declare dso_local i32 @d3d11_get_closest_match(i32, i32, i32) #1

declare dso_local i32 @D3D11CreateTexture2D(i32, %struct.TYPE_15__*, i32*, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @D3D11CreateTexture2DShaderResourceView(i32, i32, %struct.TYPE_16__*, i32*) #1

declare dso_local i32 @D3D11CreateTexture2DRenderTargetView(i32, i32, i32*, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
