; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavutil/extr_hwcontext_d3d11va.c_d3d11va_transfer_data.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavutil/extr_hwcontext_d3d11va.c_d3d11va_transfer_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i64, %struct.TYPE_15__*, %struct.TYPE_14__* }
%struct.TYPE_15__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i64 }
%struct.TYPE_14__ = type { %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i32, i32 (i32)*, i32, i32 (i32)* }
%struct.TYPE_19__ = type { i64, i32*, i32**, %struct.TYPE_16__*, i32, i32 }
%struct.TYPE_16__ = type { i32* }

@AV_PIX_FMT_D3D11 = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@D3D11_MAP_READ = common dso_local global i32 0, align 4
@D3D11_MAP_WRITE = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Unable to lock D3D11VA surface (%lx)\0A\00", align 1
@AVERROR_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_18__*, %struct.TYPE_19__*, %struct.TYPE_19__*)* @d3d11va_transfer_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @d3d11va_transfer_data(%struct.TYPE_18__* %0, %struct.TYPE_19__* %1, %struct.TYPE_19__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca %struct.TYPE_19__*, align 8
  %7 = alloca %struct.TYPE_19__*, align 8
  %8 = alloca %struct.TYPE_20__*, align 8
  %9 = alloca %struct.TYPE_17__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_19__*, align 8
  %12 = alloca %struct.TYPE_19__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca [4 x i32*], align 16
  %19 = alloca [4 x i32], align 16
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %5, align 8
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %6, align 8
  store %struct.TYPE_19__* %2, %struct.TYPE_19__** %7, align 8
  %24 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %24, i32 0, i32 2
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_20__*, %struct.TYPE_20__** %27, align 8
  store %struct.TYPE_20__* %28, %struct.TYPE_20__** %8, align 8
  %29 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_15__*, %struct.TYPE_15__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_17__*, %struct.TYPE_17__** %32, align 8
  store %struct.TYPE_17__* %33, %struct.TYPE_17__** %9, align 8
  %34 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @AV_PIX_FMT_D3D11, align 8
  %38 = icmp eq i64 %36, %37
  %39 = zext i1 %38 to i32
  store i32 %39, i32* %10, align 4
  %40 = load i32, i32* %10, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %3
  %43 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  br label %46

44:                                               ; preds = %3
  %45 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  br label %46

46:                                               ; preds = %44, %42
  %47 = phi %struct.TYPE_19__* [ %43, %42 ], [ %45, %44 ]
  store %struct.TYPE_19__* %47, %struct.TYPE_19__** %11, align 8
  %48 = load i32, i32* %10, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %46
  %51 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  br label %54

52:                                               ; preds = %46
  %53 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  br label %54

54:                                               ; preds = %52, %50
  %55 = phi %struct.TYPE_19__* [ %51, %50 ], [ %53, %52 ]
  store %struct.TYPE_19__* %55, %struct.TYPE_19__** %12, align 8
  %56 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %57 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %56, i32 0, i32 2
  %58 = load i32**, i32*** %57, align 8
  %59 = getelementptr inbounds i32*, i32** %58, i64 0
  %60 = load i32*, i32** %59, align 8
  store i32* %60, i32** %13, align 8
  %61 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %62 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %61, i32 0, i32 2
  %63 = load i32**, i32*** %62, align 8
  %64 = getelementptr inbounds i32*, i32** %63, i64 1
  %65 = load i32*, i32** %64, align 8
  %66 = ptrtoint i32* %65 to i64
  %67 = trunc i64 %66 to i32
  store i32 %67, i32* %14, align 4
  %68 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %68, i32 0, i32 5
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %71, i32 0, i32 5
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @FFMIN(i32 %70, i32 %73)
  store i32 %74, i32* %16, align 4
  %75 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %75, i32 0, i32 4
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %78, i32 0, i32 4
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @FFMIN(i32 %77, i32 %80)
  store i32 %81, i32* %17, align 4
  %82 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %83 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %82, i32 0, i32 3
  %84 = load %struct.TYPE_16__*, %struct.TYPE_16__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %84, i32 0, i32 0
  %86 = load i32*, i32** %85, align 8
  %87 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %88 = bitcast %struct.TYPE_18__* %87 to i32*
  %89 = icmp ne i32* %86, %88
  br i1 %89, label %98, label %90

90:                                               ; preds = %54
  %91 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %92 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %93, %96
  br i1 %97, label %98, label %101

98:                                               ; preds = %90, %54
  %99 = load i32, i32* @EINVAL, align 4
  %100 = call i32 @AVERROR(i32 %99)
  store i32 %100, i32* %4, align 4
  br label %237

101:                                              ; preds = %90
  %102 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %103 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %102, i32 0, i32 3
  %104 = load i32 (i32)*, i32 (i32)** %103, align 8
  %105 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %106 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = call i32 %104(i32 %107)
  %109 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %110 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %121, label %113

113:                                              ; preds = %101
  %114 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %115 = call i32 @d3d11va_create_staging_texture(%struct.TYPE_18__* %114)
  store i32 %115, i32* %23, align 4
  %116 = load i32, i32* %23, align 4
  %117 = icmp slt i32 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %113
  %119 = load i32, i32* %23, align 4
  store i32 %119, i32* %4, align 4
  br label %237

120:                                              ; preds = %113
  br label %121

121:                                              ; preds = %120, %101
  %122 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %123 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = inttoptr i64 %124 to i32*
  store i32* %125, i32** %15, align 8
  %126 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %127 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = call i32 @ID3D11Texture2D_GetDesc(i64 %128, i32* %20)
  %130 = load i32, i32* %10, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %174

132:                                              ; preds = %121
  %133 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %134 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 8
  %136 = load i32*, i32** %15, align 8
  %137 = load i32*, i32** %13, align 8
  %138 = load i32, i32* %14, align 4
  %139 = call i32 @ID3D11DeviceContext_CopySubresourceRegion(i32 %135, i32* %136, i32 0, i32 0, i32 0, i32 0, i32* %137, i32 %138, i32* null)
  %140 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %141 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 8
  %143 = load i32*, i32** %15, align 8
  %144 = load i32, i32* @D3D11_MAP_READ, align 4
  %145 = call i64 @ID3D11DeviceContext_Map(i32 %142, i32* %143, i32 0, i32 %144, i32 0, i32* %21)
  store i64 %145, i64* %22, align 8
  %146 = load i64, i64* %22, align 8
  %147 = call i64 @FAILED(i64 %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %150

149:                                              ; preds = %132
  br label %224

150:                                              ; preds = %132
  %151 = getelementptr inbounds [4 x i32*], [4 x i32*]* %18, i64 0, i64 0
  %152 = getelementptr inbounds [4 x i32], [4 x i32]* %19, i64 0, i64 0
  %153 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %154 = call i32 @fill_texture_ptrs(i32** %151, i32* %152, %struct.TYPE_18__* %153, i32* %20, i32* %21)
  %155 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %156 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %155, i32 0, i32 2
  %157 = load i32**, i32*** %156, align 8
  %158 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %159 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %158, i32 0, i32 1
  %160 = load i32*, i32** %159, align 8
  %161 = getelementptr inbounds [4 x i32*], [4 x i32*]* %18, i64 0, i64 0
  %162 = getelementptr inbounds [4 x i32], [4 x i32]* %19, i64 0, i64 0
  %163 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %164 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = load i32, i32* %16, align 4
  %167 = load i32, i32* %17, align 4
  %168 = call i32 @av_image_copy(i32** %157, i32* %160, i32** %161, i32* %162, i64 %165, i32 %166, i32 %167)
  %169 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %170 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %169, i32 0, i32 2
  %171 = load i32, i32* %170, align 8
  %172 = load i32*, i32** %15, align 8
  %173 = call i32 @ID3D11DeviceContext_Unmap(i32 %171, i32* %172, i32 0)
  br label %216

174:                                              ; preds = %121
  %175 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %176 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %175, i32 0, i32 2
  %177 = load i32, i32* %176, align 8
  %178 = load i32*, i32** %15, align 8
  %179 = load i32, i32* @D3D11_MAP_WRITE, align 4
  %180 = call i64 @ID3D11DeviceContext_Map(i32 %177, i32* %178, i32 0, i32 %179, i32 0, i32* %21)
  store i64 %180, i64* %22, align 8
  %181 = load i64, i64* %22, align 8
  %182 = call i64 @FAILED(i64 %181)
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %185

184:                                              ; preds = %174
  br label %224

185:                                              ; preds = %174
  %186 = getelementptr inbounds [4 x i32*], [4 x i32*]* %18, i64 0, i64 0
  %187 = getelementptr inbounds [4 x i32], [4 x i32]* %19, i64 0, i64 0
  %188 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %189 = call i32 @fill_texture_ptrs(i32** %186, i32* %187, %struct.TYPE_18__* %188, i32* %20, i32* %21)
  %190 = getelementptr inbounds [4 x i32*], [4 x i32*]* %18, i64 0, i64 0
  %191 = getelementptr inbounds [4 x i32], [4 x i32]* %19, i64 0, i64 0
  %192 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %193 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %192, i32 0, i32 2
  %194 = load i32**, i32*** %193, align 8
  %195 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %196 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %195, i32 0, i32 1
  %197 = load i32*, i32** %196, align 8
  %198 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %199 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %198, i32 0, i32 0
  %200 = load i64, i64* %199, align 8
  %201 = load i32, i32* %16, align 4
  %202 = load i32, i32* %17, align 4
  %203 = call i32 @av_image_copy(i32** %190, i32* %191, i32** %194, i32* %197, i64 %200, i32 %201, i32 %202)
  %204 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %205 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %204, i32 0, i32 2
  %206 = load i32, i32* %205, align 8
  %207 = load i32*, i32** %15, align 8
  %208 = call i32 @ID3D11DeviceContext_Unmap(i32 %206, i32* %207, i32 0)
  %209 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %210 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %209, i32 0, i32 2
  %211 = load i32, i32* %210, align 8
  %212 = load i32*, i32** %13, align 8
  %213 = load i32, i32* %14, align 4
  %214 = load i32*, i32** %15, align 8
  %215 = call i32 @ID3D11DeviceContext_CopySubresourceRegion(i32 %211, i32* %212, i32 %213, i32 0, i32 0, i32 0, i32* %214, i32 0, i32* null)
  br label %216

216:                                              ; preds = %185, %150
  %217 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %218 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %217, i32 0, i32 1
  %219 = load i32 (i32)*, i32 (i32)** %218, align 8
  %220 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %221 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 8
  %223 = call i32 %219(i32 %222)
  store i32 0, i32* %4, align 4
  br label %237

224:                                              ; preds = %184, %149
  %225 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %226 = load i32, i32* @AV_LOG_ERROR, align 4
  %227 = load i64, i64* %22, align 8
  %228 = call i32 @av_log(%struct.TYPE_18__* %225, i32 %226, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i64 %227)
  %229 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %230 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %229, i32 0, i32 1
  %231 = load i32 (i32)*, i32 (i32)** %230, align 8
  %232 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %233 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 8
  %235 = call i32 %231(i32 %234)
  %236 = load i32, i32* @AVERROR_UNKNOWN, align 4
  store i32 %236, i32* %4, align 4
  br label %237

237:                                              ; preds = %224, %216, %118, %98
  %238 = load i32, i32* %4, align 4
  ret i32 %238
}

declare dso_local i32 @FFMIN(i32, i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @d3d11va_create_staging_texture(%struct.TYPE_18__*) #1

declare dso_local i32 @ID3D11Texture2D_GetDesc(i64, i32*) #1

declare dso_local i32 @ID3D11DeviceContext_CopySubresourceRegion(i32, i32*, i32, i32, i32, i32, i32*, i32, i32*) #1

declare dso_local i64 @ID3D11DeviceContext_Map(i32, i32*, i32, i32, i32, i32*) #1

declare dso_local i64 @FAILED(i64) #1

declare dso_local i32 @fill_texture_ptrs(i32**, i32*, %struct.TYPE_18__*, i32*, i32*) #1

declare dso_local i32 @av_image_copy(i32**, i32*, i32**, i32*, i64, i32, i32) #1

declare dso_local i32 @ID3D11DeviceContext_Unmap(i32, i32*, i32) #1

declare dso_local i32 @av_log(%struct.TYPE_18__*, i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
