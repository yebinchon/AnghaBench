; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/openmaxil/extr_mmalomx_parameters.c_mmalomx_parameter_get_xlat.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/openmaxil/extr_mmalomx_parameters.c_mmalomx_parameter_get_xlat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_31__ = type { i64, %struct.TYPE_25__*, %struct.TYPE_24__* }
%struct.TYPE_25__ = type { i32* }
%struct.TYPE_24__ = type { i32* }
%struct.TYPE_28__ = type { i32, i64, i32, i32, %struct.TYPE_26__, i64, i32, i64 }
%struct.TYPE_26__ = type { i64 (i32, %struct.TYPE_28__*, %struct.TYPE_27__*, i64, i32*)*, i64 (i32, %struct.TYPE_28__*, i32, %struct.TYPE_27__*, i64, i32*)*, i64 (i32, %struct.TYPE_28__*, %struct.TYPE_27__*, i64, i32*)*, i64 (i32, %struct.TYPE_27__*, i64)* }
%struct.TYPE_27__ = type { i32, i32 }
%struct.TYPE_29__ = type { i32, i64 }
%struct.TYPE_30__ = type { %struct.TYPE_27__ }

@MMAL_SUCCESS = common dso_local global i64 0, align 8
@OMX_ErrorNotImplemented = common dso_local global i32 0, align 4
@OMX_ErrorBadParameter = common dso_local global i32 0, align 4
@OMX_ErrorBadPortIndex = common dso_local global i32 0, align 4
@MMALOMX_PARAM_TRANSLATION_TYPE_DIRECT = common dso_local global i64 0, align 8
@MMALOMX_PARAM_MAPPING_TO_OMX = common dso_local global i32 0, align 4
@OMX_ErrorInsufficientResources = common dso_local global i32 0, align 4
@OMX_ErrorNoMore = common dso_local global i32 0, align 4
@MMALOMX_PARAM_MAPPING_TO_MMAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_31__*, i32, i64)* @mmalomx_parameter_get_xlat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmalomx_parameter_get_xlat(%struct.TYPE_31__* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_31__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_28__*, align 8
  %9 = alloca %struct.TYPE_29__*, align 8
  %10 = alloca %struct.TYPE_30__, align 4
  %11 = alloca %struct.TYPE_27__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_31__* %0, %struct.TYPE_31__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %17 = load i32, i32* %6, align 4
  %18 = call %struct.TYPE_28__* @mmalomx_find_parameter_from_omx_id(i32 %17)
  store %struct.TYPE_28__* %18, %struct.TYPE_28__** %8, align 8
  %19 = load i64, i64* %7, align 8
  %20 = inttoptr i64 %19 to %struct.TYPE_29__*
  store %struct.TYPE_29__* %20, %struct.TYPE_29__** %9, align 8
  %21 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %10, i32 0, i32 0
  store %struct.TYPE_27__* %21, %struct.TYPE_27__** %11, align 8
  %22 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %22, i32 0, i32 2
  %24 = load %struct.TYPE_24__*, %struct.TYPE_24__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  store i32* %26, i32** %12, align 8
  %27 = load i64, i64* @MMAL_SUCCESS, align 8
  store i64 %27, i64* %13, align 8
  %28 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %29 = icmp ne %struct.TYPE_28__* %28, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %3
  %31 = load i32, i32* @OMX_ErrorNotImplemented, align 4
  store i32 %31, i32* %4, align 4
  br label %325

32:                                               ; preds = %3
  %33 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %33, i32 0, i32 7
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %65, label %37

37:                                               ; preds = %32
  %38 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %39 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = sext i32 %40 to i64
  %42 = icmp ult i64 %41, 16
  br i1 %42, label %43, label %45

43:                                               ; preds = %37
  %44 = load i32, i32* @OMX_ErrorBadParameter, align 4
  store i32 %44, i32* %4, align 4
  br label %325

45:                                               ; preds = %37
  %46 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %47 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp uge i64 %48, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %45
  %54 = load i32, i32* @OMX_ErrorBadPortIndex, align 4
  store i32 %54, i32* %4, align 4
  br label %325

55:                                               ; preds = %45
  %56 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %56, i32 0, i32 1
  %58 = load %struct.TYPE_25__*, %struct.TYPE_25__** %57, align 8
  %59 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %60 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %58, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  store i32* %64, i32** %12, align 8
  br label %65

65:                                               ; preds = %55, %32
  %66 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %67 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = icmp slt i32 %68, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %65
  %74 = load i32, i32* @OMX_ErrorBadParameter, align 4
  store i32 %74, i32* %4, align 4
  br label %325

75:                                               ; preds = %65
  %76 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @MMALOMX_PARAM_TRANSLATION_TYPE_DIRECT, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %136

81:                                               ; preds = %75
  %82 = load i64, i64* %7, align 8
  %83 = inttoptr i64 %82 to i32*
  %84 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %84, i32 0, i32 7
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  %88 = zext i1 %87 to i64
  %89 = select i1 %87, i32 0, i32 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %83, i64 %90
  %92 = bitcast i32* %91 to %struct.TYPE_27__*
  store %struct.TYPE_27__* %92, %struct.TYPE_27__** %11, align 8
  %93 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %10, i32 0, i32 0
  %94 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %95 = bitcast %struct.TYPE_27__* %93 to i8*
  %96 = bitcast %struct.TYPE_27__* %94 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %95, i8* align 4 %96, i64 8, i1 false)
  %97 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %98 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %101 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %100, i32 0, i32 7
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %102, 0
  %104 = zext i1 %103 to i64
  %105 = select i1 %103, i32 0, i32 4
  %106 = sub nsw i32 %99, %105
  %107 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %108 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %107, i32 0, i32 0
  store i32 %106, i32* %108, align 4
  %109 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %110 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %109, i32 0, i32 6
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %113 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %112, i32 0, i32 1
  store i32 %111, i32* %113, align 4
  %114 = load i32*, i32** %12, align 8
  %115 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %116 = call i64 @mmal_port_parameter_get(i32* %114, %struct.TYPE_27__* %115)
  store i64 %116, i64* %13, align 8
  %117 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %118 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %10, i32 0, i32 0
  %119 = bitcast %struct.TYPE_27__* %117 to i8*
  %120 = bitcast %struct.TYPE_27__* %118 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %119, i8* align 4 %120, i64 8, i1 false)
  %121 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %122 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %125 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %124, i32 0, i32 7
  %126 = load i64, i64* %125, align 8
  %127 = icmp ne i64 %126, 0
  %128 = zext i1 %127 to i64
  %129 = select i1 %127, i32 0, i32 4
  %130 = add nsw i32 %123, %129
  store i32 %130, i32* %14, align 4
  %131 = load i32, i32* %14, align 4
  %132 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %133 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %132, i32 0, i32 0
  store i32 %131, i32* %133, align 8
  %134 = load i64, i64* %13, align 8
  %135 = call i32 @mmalil_error_to_omx(i64 %134)
  store i32 %135, i32* %4, align 4
  br label %325

136:                                              ; preds = %75
  %137 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %138 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %137, i32 0, i32 4
  %139 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %138, i32 0, i32 0
  %140 = load i64 (i32, %struct.TYPE_28__*, %struct.TYPE_27__*, i64, i32*)*, i64 (i32, %struct.TYPE_28__*, %struct.TYPE_27__*, i64, i32*)** %139, align 8
  %141 = icmp ne i64 (i32, %struct.TYPE_28__*, %struct.TYPE_27__*, i64, i32*)* %140, null
  br i1 %141, label %142, label %154

142:                                              ; preds = %136
  %143 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %144 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %143, i32 0, i32 4
  %145 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %144, i32 0, i32 0
  %146 = load i64 (i32, %struct.TYPE_28__*, %struct.TYPE_27__*, i64, i32*)*, i64 (i32, %struct.TYPE_28__*, %struct.TYPE_27__*, i64, i32*)** %145, align 8
  %147 = load i32, i32* @MMALOMX_PARAM_MAPPING_TO_OMX, align 4
  %148 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %149 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %150 = load i64, i64* %7, align 8
  %151 = load i32*, i32** %12, align 8
  %152 = call i64 %146(i32 %147, %struct.TYPE_28__* %148, %struct.TYPE_27__* %149, i64 %150, i32* %151)
  %153 = call i32 @mmalil_error_to_omx(i64 %152)
  store i32 %153, i32* %4, align 4
  br label %325

154:                                              ; preds = %136
  %155 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %156 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %155, i32 0, i32 4
  %157 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %156, i32 0, i32 1
  %158 = load i64 (i32, %struct.TYPE_28__*, i32, %struct.TYPE_27__*, i64, i32*)*, i64 (i32, %struct.TYPE_28__*, i32, %struct.TYPE_27__*, i64, i32*)** %157, align 8
  %159 = icmp ne i64 (i32, %struct.TYPE_28__*, i32, %struct.TYPE_27__*, i64, i32*)* %158, null
  br i1 %159, label %160, label %218

160:                                              ; preds = %154
  %161 = load i32*, i32** %12, align 8
  %162 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %163 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %162, i32 0, i32 6
  %164 = load i32, i32* %163, align 8
  %165 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %166 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 8
  %168 = mul nsw i32 10, %167
  %169 = call %struct.TYPE_27__* @mmal_port_parameter_alloc_get(i32* %161, i32 %164, i32 %168, i64* %13)
  store %struct.TYPE_27__* %169, %struct.TYPE_27__** %11, align 8
  %170 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %171 = icmp ne %struct.TYPE_27__* %170, null
  br i1 %171, label %174, label %172

172:                                              ; preds = %160
  %173 = load i32, i32* @OMX_ErrorInsufficientResources, align 4
  store i32 %173, i32* %4, align 4
  br label %325

174:                                              ; preds = %160
  %175 = load i64, i64* %7, align 8
  %176 = inttoptr i64 %175 to i32*
  %177 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %178 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %177, i32 0, i32 3
  %179 = load i32, i32* %178, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i32, i32* %176, i64 %180
  %182 = load i32, i32* %181, align 4
  store i32 %182, i32* %15, align 4
  %183 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %184 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 4
  %186 = sext i32 %185 to i64
  %187 = sub i64 %186, 8
  %188 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %189 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %188, i32 0, i32 2
  %190 = load i32, i32* %189, align 8
  %191 = sext i32 %190 to i64
  %192 = sub i64 %191, 8
  %193 = udiv i64 %187, %192
  %194 = trunc i64 %193 to i32
  store i32 %194, i32* %16, align 4
  %195 = load i32, i32* %15, align 4
  %196 = load i32, i32* %16, align 4
  %197 = icmp sge i32 %195, %196
  br i1 %197, label %198, label %202

198:                                              ; preds = %174
  %199 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %200 = call i32 @vcos_free(%struct.TYPE_27__* %199)
  %201 = load i32, i32* @OMX_ErrorNoMore, align 4
  store i32 %201, i32* %4, align 4
  br label %325

202:                                              ; preds = %174
  %203 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %204 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %203, i32 0, i32 4
  %205 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %204, i32 0, i32 1
  %206 = load i64 (i32, %struct.TYPE_28__*, i32, %struct.TYPE_27__*, i64, i32*)*, i64 (i32, %struct.TYPE_28__*, i32, %struct.TYPE_27__*, i64, i32*)** %205, align 8
  %207 = load i32, i32* @MMALOMX_PARAM_MAPPING_TO_OMX, align 4
  %208 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %209 = load i32, i32* %15, align 4
  %210 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %211 = load i64, i64* %7, align 8
  %212 = load i32*, i32** %12, align 8
  %213 = call i64 %206(i32 %207, %struct.TYPE_28__* %208, i32 %209, %struct.TYPE_27__* %210, i64 %211, i32* %212)
  store i64 %213, i64* %13, align 8
  %214 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %215 = call i32 @vcos_free(%struct.TYPE_27__* %214)
  %216 = load i64, i64* %13, align 8
  %217 = call i32 @mmalil_error_to_omx(i64 %216)
  store i32 %217, i32* %4, align 4
  br label %325

218:                                              ; preds = %154
  %219 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %220 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %219, i32 0, i32 4
  %221 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %220, i32 0, i32 2
  %222 = load i64 (i32, %struct.TYPE_28__*, %struct.TYPE_27__*, i64, i32*)*, i64 (i32, %struct.TYPE_28__*, %struct.TYPE_27__*, i64, i32*)** %221, align 8
  %223 = icmp ne i64 (i32, %struct.TYPE_28__*, %struct.TYPE_27__*, i64, i32*)* %222, null
  br i1 %223, label %232, label %224

224:                                              ; preds = %218
  %225 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %226 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %225, i32 0, i32 4
  %227 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %226, i32 0, i32 3
  %228 = load i64 (i32, %struct.TYPE_27__*, i64)*, i64 (i32, %struct.TYPE_27__*, i64)** %227, align 8
  %229 = icmp ne i64 (i32, %struct.TYPE_27__*, i64)* %228, null
  br i1 %229, label %232, label %230

230:                                              ; preds = %224
  %231 = load i32, i32* @OMX_ErrorNotImplemented, align 4
  store i32 %231, i32* %4, align 4
  br label %325

232:                                              ; preds = %224, %218
  %233 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %234 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %233, i32 0, i32 2
  %235 = load i32, i32* %234, align 8
  %236 = sext i32 %235 to i64
  %237 = icmp ult i64 8, %236
  br i1 %237, label %238, label %240

238:                                              ; preds = %232
  %239 = load i32, i32* @OMX_ErrorBadParameter, align 4
  store i32 %239, i32* %4, align 4
  br label %325

240:                                              ; preds = %232
  %241 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %242 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %241, i32 0, i32 2
  %243 = load i32, i32* %242, align 8
  %244 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %245 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %244, i32 0, i32 0
  store i32 %243, i32* %245, align 4
  %246 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %247 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %246, i32 0, i32 6
  %248 = load i32, i32* %247, align 8
  %249 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %250 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %249, i32 0, i32 1
  store i32 %248, i32* %250, align 4
  %251 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %252 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %251, i32 0, i32 5
  %253 = load i64, i64* %252, align 8
  %254 = icmp ne i64 %253, 0
  br i1 %254, label %255, label %282

255:                                              ; preds = %240
  %256 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %257 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %256, i32 0, i32 4
  %258 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %257, i32 0, i32 2
  %259 = load i64 (i32, %struct.TYPE_28__*, %struct.TYPE_27__*, i64, i32*)*, i64 (i32, %struct.TYPE_28__*, %struct.TYPE_27__*, i64, i32*)** %258, align 8
  %260 = icmp ne i64 (i32, %struct.TYPE_28__*, %struct.TYPE_27__*, i64, i32*)* %259, null
  br i1 %260, label %261, label %272

261:                                              ; preds = %255
  %262 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %263 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %262, i32 0, i32 4
  %264 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %263, i32 0, i32 2
  %265 = load i64 (i32, %struct.TYPE_28__*, %struct.TYPE_27__*, i64, i32*)*, i64 (i32, %struct.TYPE_28__*, %struct.TYPE_27__*, i64, i32*)** %264, align 8
  %266 = load i32, i32* @MMALOMX_PARAM_MAPPING_TO_MMAL, align 4
  %267 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %268 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %269 = load i64, i64* %7, align 8
  %270 = load i32*, i32** %12, align 8
  %271 = call i64 %265(i32 %266, %struct.TYPE_28__* %267, %struct.TYPE_27__* %268, i64 %269, i32* %270)
  store i64 %271, i64* %13, align 8
  br label %281

272:                                              ; preds = %255
  %273 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %274 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %273, i32 0, i32 4
  %275 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %274, i32 0, i32 3
  %276 = load i64 (i32, %struct.TYPE_27__*, i64)*, i64 (i32, %struct.TYPE_27__*, i64)** %275, align 8
  %277 = load i32, i32* @MMALOMX_PARAM_MAPPING_TO_MMAL, align 4
  %278 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %279 = load i64, i64* %7, align 8
  %280 = call i64 %276(i32 %277, %struct.TYPE_27__* %278, i64 %279)
  store i64 %280, i64* %13, align 8
  br label %281

281:                                              ; preds = %272, %261
  br label %282

282:                                              ; preds = %281, %240
  %283 = load i64, i64* %13, align 8
  %284 = load i64, i64* @MMAL_SUCCESS, align 8
  %285 = icmp ne i64 %283, %284
  br i1 %285, label %286, label %287

286:                                              ; preds = %282
  br label %322

287:                                              ; preds = %282
  %288 = load i32*, i32** %12, align 8
  %289 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %290 = call i64 @mmal_port_parameter_get(i32* %288, %struct.TYPE_27__* %289)
  store i64 %290, i64* %13, align 8
  %291 = load i64, i64* %13, align 8
  %292 = load i64, i64* @MMAL_SUCCESS, align 8
  %293 = icmp ne i64 %291, %292
  br i1 %293, label %294, label %295

294:                                              ; preds = %287
  br label %322

295:                                              ; preds = %287
  %296 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %297 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %296, i32 0, i32 4
  %298 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %297, i32 0, i32 2
  %299 = load i64 (i32, %struct.TYPE_28__*, %struct.TYPE_27__*, i64, i32*)*, i64 (i32, %struct.TYPE_28__*, %struct.TYPE_27__*, i64, i32*)** %298, align 8
  %300 = icmp ne i64 (i32, %struct.TYPE_28__*, %struct.TYPE_27__*, i64, i32*)* %299, null
  br i1 %300, label %301, label %312

301:                                              ; preds = %295
  %302 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %303 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %302, i32 0, i32 4
  %304 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %303, i32 0, i32 2
  %305 = load i64 (i32, %struct.TYPE_28__*, %struct.TYPE_27__*, i64, i32*)*, i64 (i32, %struct.TYPE_28__*, %struct.TYPE_27__*, i64, i32*)** %304, align 8
  %306 = load i32, i32* @MMALOMX_PARAM_MAPPING_TO_OMX, align 4
  %307 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %308 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %309 = load i64, i64* %7, align 8
  %310 = load i32*, i32** %12, align 8
  %311 = call i64 %305(i32 %306, %struct.TYPE_28__* %307, %struct.TYPE_27__* %308, i64 %309, i32* %310)
  store i64 %311, i64* %13, align 8
  br label %321

312:                                              ; preds = %295
  %313 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %314 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %313, i32 0, i32 4
  %315 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %314, i32 0, i32 3
  %316 = load i64 (i32, %struct.TYPE_27__*, i64)*, i64 (i32, %struct.TYPE_27__*, i64)** %315, align 8
  %317 = load i32, i32* @MMALOMX_PARAM_MAPPING_TO_OMX, align 4
  %318 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %319 = load i64, i64* %7, align 8
  %320 = call i64 %316(i32 %317, %struct.TYPE_27__* %318, i64 %319)
  store i64 %320, i64* %13, align 8
  br label %321

321:                                              ; preds = %312, %301
  br label %322

322:                                              ; preds = %321, %294, %286
  %323 = load i64, i64* %13, align 8
  %324 = call i32 @mmalil_error_to_omx(i64 %323)
  store i32 %324, i32* %4, align 4
  br label %325

325:                                              ; preds = %322, %238, %230, %202, %198, %172, %142, %81, %73, %53, %43, %30
  %326 = load i32, i32* %4, align 4
  ret i32 %326
}

declare dso_local %struct.TYPE_28__* @mmalomx_find_parameter_from_omx_id(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @mmal_port_parameter_get(i32*, %struct.TYPE_27__*) #1

declare dso_local i32 @mmalil_error_to_omx(i64) #1

declare dso_local %struct.TYPE_27__* @mmal_port_parameter_alloc_get(i32*, i32, i32, i64*) #1

declare dso_local i32 @vcos_free(%struct.TYPE_27__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
