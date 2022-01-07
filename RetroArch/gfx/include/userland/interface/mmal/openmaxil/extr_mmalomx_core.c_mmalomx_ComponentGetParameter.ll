; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/openmaxil/extr_mmalomx_core.c_mmalomx_ComponentGetParameter.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/openmaxil/extr_mmalomx_core.c_mmalomx_ComponentGetParameter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i64, i8*, i32, i32, i32, i32* }
%struct.TYPE_29__ = type { i32, i32*, %struct.TYPE_19__*, %struct.TYPE_20__ }
%struct.TYPE_19__ = type { %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_20__ = type { i32, i32 }
%struct.TYPE_24__ = type { i32, i32 }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_27__ = type { i32, i32 }
%struct.TYPE_23__ = type { i32, i32 }
%struct.TYPE_22__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_28__ = type { i32 }
%struct.TYPE_26__ = type { i64 }

@.str = private unnamed_addr constant [48 x i8] c"hComponent %p, nParamIndex 0x%x (%s), pParam %p\00", align 1
@OMX_ErrorInvalidComponent = common dso_local global i32 0, align 4
@OMX_ErrorBadParameter = common dso_local global i32 0, align 4
@OMX_StateInvalid = common dso_local global i64 0, align 8
@OMX_ErrorInvalidState = common dso_local global i32 0, align 4
@OMX_PortDomainAudio = common dso_local global i64 0, align 8
@OMX_ErrorNone = common dso_local global i32 0, align 4
@OMX_PortDomainVideo = common dso_local global i64 0, align 8
@OMX_PortDomainImage = common dso_local global i64 0, align 8
@OMX_PortDomainOther = common dso_local global i64 0, align 8
@OMX_BufferSupplyUnspecified = common dso_local global i32 0, align 4
@MMAL_PARAMETER_SUPPORTED_ENCODINGS = common dso_local global i32 0, align 4
@MMAL_SUCCESS = common dso_local global i32 0, align 4
@OMX_ErrorNoMore = common dso_local global i32 0, align 4
@OMX_COLOR_FormatUnused = common dso_local global i32 0, align 4
@OMX_VIDEO_CodingUnused = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@OMX_ErrorNotImplemented = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i32, i64)* @mmalomx_ComponentGetParameter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmalomx_ComponentGetParameter(i64 %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_18__*, align 8
  %9 = alloca %struct.TYPE_29__*, align 8
  %10 = alloca %struct.TYPE_24__*, align 8
  %11 = alloca %struct.TYPE_25__*, align 8
  %12 = alloca %struct.TYPE_27__*, align 8
  %13 = alloca %struct.TYPE_23__*, align 8
  %14 = alloca %struct.TYPE_22__*, align 8
  %15 = alloca %struct.TYPE_28__*, align 8
  %16 = alloca %struct.TYPE_26__*, align 8
  %17 = alloca i8*, align 8
  store i64 %0, i64* %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %18 = load i64, i64* %5, align 8
  %19 = inttoptr i64 %18 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %19, %struct.TYPE_18__** %8, align 8
  store %struct.TYPE_29__* null, %struct.TYPE_29__** %9, align 8
  %20 = load i64, i64* %5, align 8
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @mmalomx_param_to_string(i32 %22)
  %24 = load i64, i64* %7, align 8
  %25 = call i32 @LOG_TRACE(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i64 %20, i32 %21, i32 %23, i64 %24)
  %26 = load i64, i64* %5, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %3
  %29 = load i32, i32* @OMX_ErrorInvalidComponent, align 4
  store i32 %29, i32* %4, align 4
  br label %323

30:                                               ; preds = %3
  %31 = load i64, i64* %7, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %30
  %34 = load i32, i32* @OMX_ErrorBadParameter, align 4
  store i32 %34, i32* %4, align 4
  br label %323

35:                                               ; preds = %30
  %36 = load i64, i64* %7, align 8
  %37 = inttoptr i64 %36 to i32*
  %38 = load i32, i32* %37, align 4
  %39 = sext i32 %38 to i64
  %40 = icmp ult i64 %39, 8
  br i1 %40, label %41, label %43

41:                                               ; preds = %35
  %42 = load i32, i32* @OMX_ErrorBadParameter, align 4
  store i32 %42, i32* %4, align 4
  br label %323

43:                                               ; preds = %35
  %44 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @OMX_StateInvalid, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %43
  %50 = load i32, i32* @OMX_ErrorInvalidState, align 4
  store i32 %50, i32* %4, align 4
  br label %323

51:                                               ; preds = %43
  %52 = load i32, i32* %6, align 4
  switch i32 %52, label %316 [
    i32 139, label %53
    i32 129, label %53
    i32 136, label %53
    i32 134, label %53
    i32 132, label %127
    i32 137, label %140
    i32 131, label %153
    i32 128, label %167
    i32 138, label %167
    i32 135, label %294
    i32 133, label %294
    i32 130, label %295
  ]

53:                                               ; preds = %51, %51, %51, %51
  %54 = load i64, i64* %7, align 8
  %55 = inttoptr i64 %54 to %struct.TYPE_24__*
  store %struct.TYPE_24__* %55, %struct.TYPE_24__** %10, align 8
  %56 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %57 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %56, i32 0, i32 1
  store i32 0, i32* %57, align 4
  %58 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %58, i32 0, i32 5
  %60 = load i32*, i32** %59, align 8
  %61 = load i64, i64* @OMX_PortDomainAudio, align 8
  %62 = getelementptr inbounds i32, i32* %60, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %65 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 4
  %66 = load i32, i32* %6, align 4
  %67 = icmp eq i32 %66, 139
  br i1 %67, label %68, label %70

68:                                               ; preds = %53
  %69 = load i32, i32* @OMX_ErrorNone, align 4
  store i32 %69, i32* %4, align 4
  br label %323

70:                                               ; preds = %53
  %71 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %72 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %75 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = add nsw i32 %76, %73
  store i32 %77, i32* %75, align 4
  %78 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %78, i32 0, i32 5
  %80 = load i32*, i32** %79, align 8
  %81 = load i64, i64* @OMX_PortDomainVideo, align 8
  %82 = getelementptr inbounds i32, i32* %80, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %85 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %84, i32 0, i32 0
  store i32 %83, i32* %85, align 4
  %86 = load i32, i32* %6, align 4
  %87 = icmp eq i32 %86, 129
  br i1 %87, label %88, label %90

88:                                               ; preds = %70
  %89 = load i32, i32* @OMX_ErrorNone, align 4
  store i32 %89, i32* %4, align 4
  br label %323

90:                                               ; preds = %70
  %91 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %92 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %95 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = add nsw i32 %96, %93
  store i32 %97, i32* %95, align 4
  %98 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %99 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %98, i32 0, i32 5
  %100 = load i32*, i32** %99, align 8
  %101 = load i64, i64* @OMX_PortDomainImage, align 8
  %102 = getelementptr inbounds i32, i32* %100, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %105 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %104, i32 0, i32 0
  store i32 %103, i32* %105, align 4
  %106 = load i32, i32* %6, align 4
  %107 = icmp eq i32 %106, 136
  br i1 %107, label %108, label %110

108:                                              ; preds = %90
  %109 = load i32, i32* @OMX_ErrorNone, align 4
  store i32 %109, i32* %4, align 4
  br label %323

110:                                              ; preds = %90
  %111 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %112 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %115 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = add nsw i32 %116, %113
  store i32 %117, i32* %115, align 4
  %118 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %119 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %118, i32 0, i32 5
  %120 = load i32*, i32** %119, align 8
  %121 = load i64, i64* @OMX_PortDomainOther, align 8
  %122 = getelementptr inbounds i32, i32* %120, i64 %121
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %125 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %124, i32 0, i32 0
  store i32 %123, i32* %125, align 4
  %126 = load i32, i32* @OMX_ErrorNone, align 4
  store i32 %126, i32* %4, align 4
  br label %323

127:                                              ; preds = %51
  %128 = load i64, i64* %7, align 8
  %129 = inttoptr i64 %128 to %struct.TYPE_25__*
  store %struct.TYPE_25__* %129, %struct.TYPE_25__** %11, align 8
  %130 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %131 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %132 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %133 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @PARAM_GET_PORT(%struct.TYPE_29__* %130, %struct.TYPE_18__* %131, i32 %134)
  %136 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %137 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %138 = call i32 @mmalomx_get_port_settings(%struct.TYPE_29__* %136, %struct.TYPE_25__* %137)
  %139 = call i32 @mmalil_error_to_omx(i32 %138)
  store i32 %139, i32* %4, align 4
  br label %323

140:                                              ; preds = %51
  %141 = load i64, i64* %7, align 8
  %142 = inttoptr i64 %141 to %struct.TYPE_27__*
  store %struct.TYPE_27__* %142, %struct.TYPE_27__** %12, align 8
  %143 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %144 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %145 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %146 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = call i32 @PARAM_GET_PORT(%struct.TYPE_29__* %143, %struct.TYPE_18__* %144, i32 %147)
  %149 = load i32, i32* @OMX_BufferSupplyUnspecified, align 4
  %150 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %151 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %150, i32 0, i32 0
  store i32 %149, i32* %151, align 4
  %152 = load i32, i32* @OMX_ErrorNone, align 4
  store i32 %152, i32* %4, align 4
  br label %323

153:                                              ; preds = %51
  %154 = load i64, i64* %7, align 8
  %155 = inttoptr i64 %154 to %struct.TYPE_23__*
  store %struct.TYPE_23__* %155, %struct.TYPE_23__** %13, align 8
  %156 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %157 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %156, i32 0, i32 4
  %158 = load i32, i32* %157, align 8
  %159 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %160 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %159, i32 0, i32 1
  store i32 %158, i32* %160, align 4
  %161 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %162 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %161, i32 0, i32 3
  %163 = load i32, i32* %162, align 4
  %164 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %165 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %164, i32 0, i32 0
  store i32 %163, i32* %165, align 4
  %166 = load i32, i32* @OMX_ErrorNone, align 4
  store i32 %166, i32* %4, align 4
  br label %323

167:                                              ; preds = %51, %51
  %168 = load i64, i64* %7, align 8
  %169 = inttoptr i64 %168 to %struct.TYPE_22__*
  store %struct.TYPE_22__* %169, %struct.TYPE_22__** %14, align 8
  %170 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %171 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %172 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %173 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %172, i32 0, i32 4
  %174 = load i32, i32* %173, align 4
  %175 = call i32 @PARAM_GET_PORT(%struct.TYPE_29__* %170, %struct.TYPE_18__* %171, i32 %174)
  %176 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %177 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %227, label %180

180:                                              ; preds = %167
  %181 = load i32, i32* @MMAL_PARAMETER_SUPPORTED_ENCODINGS, align 4
  %182 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %183 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %182, i32 0, i32 3
  %184 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %183, i32 0, i32 1
  store i32 %181, i32* %184, align 4
  %185 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %186 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %185, i32 0, i32 3
  %187 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %186, i32 0, i32 0
  store i32 16, i32* %187, align 8
  %188 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %189 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %188, i32 0, i32 2
  %190 = load %struct.TYPE_19__*, %struct.TYPE_19__** %189, align 8
  %191 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %192 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %191, i32 0, i32 3
  %193 = call i32 @mmal_port_parameter_get(%struct.TYPE_19__* %190, %struct.TYPE_20__* %192)
  %194 = load i32, i32* @MMAL_SUCCESS, align 4
  %195 = icmp eq i32 %193, %194
  br i1 %195, label %196, label %207

196:                                              ; preds = %180
  %197 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %198 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %197, i32 0, i32 3
  %199 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  %201 = sext i32 %200 to i64
  %202 = sub i64 %201, 8
  %203 = udiv i64 %202, 4
  %204 = trunc i64 %203 to i32
  %205 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %206 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %205, i32 0, i32 0
  store i32 %204, i32* %206, align 8
  br label %207

207:                                              ; preds = %196, %180
  %208 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %209 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 8
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %226, label %212

212:                                              ; preds = %207
  %213 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %214 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %213, i32 0, i32 0
  store i32 1, i32* %214, align 8
  %215 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %216 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %215, i32 0, i32 2
  %217 = load %struct.TYPE_19__*, %struct.TYPE_19__** %216, align 8
  %218 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %217, i32 0, i32 0
  %219 = load %struct.TYPE_21__*, %struct.TYPE_21__** %218, align 8
  %220 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 4
  %222 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %223 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %222, i32 0, i32 1
  %224 = load i32*, i32** %223, align 8
  %225 = getelementptr inbounds i32, i32* %224, i64 0
  store i32 %221, i32* %225, align 4
  br label %226

226:                                              ; preds = %212, %207
  br label %227

227:                                              ; preds = %226, %167
  %228 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %229 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 4
  %231 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %232 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 8
  %234 = icmp sge i32 %230, %233
  br i1 %234, label %235, label %237

235:                                              ; preds = %227
  %236 = load i32, i32* @OMX_ErrorNoMore, align 4
  store i32 %236, i32* %4, align 4
  br label %323

237:                                              ; preds = %227
  %238 = load i32, i32* %6, align 4
  %239 = icmp eq i32 %238, 128
  br i1 %239, label %240, label %277

240:                                              ; preds = %237
  %241 = load i32, i32* @OMX_COLOR_FormatUnused, align 4
  %242 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %243 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %242, i32 0, i32 2
  store i32 %241, i32* %243, align 4
  %244 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %245 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %244, i32 0, i32 1
  %246 = load i32*, i32** %245, align 8
  %247 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %248 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds i32, i32* %246, i64 %250
  %252 = load i32, i32* %251, align 4
  %253 = call i32 @mmalil_encoding_to_omx_video_coding(i32 %252)
  %254 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %255 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %254, i32 0, i32 3
  store i32 %253, i32* %255, align 4
  %256 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %257 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %256, i32 0, i32 3
  %258 = load i32, i32* %257, align 4
  %259 = load i32, i32* @OMX_VIDEO_CodingUnused, align 4
  %260 = icmp eq i32 %258, %259
  br i1 %260, label %261, label %274

261:                                              ; preds = %240
  %262 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %263 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %262, i32 0, i32 1
  %264 = load i32*, i32** %263, align 8
  %265 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %266 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %265, i32 0, i32 0
  %267 = load i32, i32* %266, align 4
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds i32, i32* %264, i64 %268
  %270 = load i32, i32* %269, align 4
  %271 = call i32 @mmalil_encoding_to_omx_color_format(i32 %270)
  %272 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %273 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %272, i32 0, i32 2
  store i32 %271, i32* %273, align 4
  br label %274

274:                                              ; preds = %261, %240
  %275 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %276 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %275, i32 0, i32 1
  store i32 0, i32* %276, align 4
  br label %292

277:                                              ; preds = %237
  %278 = load i64, i64* %7, align 8
  %279 = inttoptr i64 %278 to %struct.TYPE_28__*
  store %struct.TYPE_28__* %279, %struct.TYPE_28__** %15, align 8
  %280 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %281 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %280, i32 0, i32 1
  %282 = load i32*, i32** %281, align 8
  %283 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %284 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %283, i32 0, i32 0
  %285 = load i32, i32* %284, align 4
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds i32, i32* %282, i64 %286
  %288 = load i32, i32* %287, align 4
  %289 = call i32 @mmalil_encoding_to_omx_audio_coding(i32 %288)
  %290 = load %struct.TYPE_28__*, %struct.TYPE_28__** %15, align 8
  %291 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %290, i32 0, i32 0
  store i32 %289, i32* %291, align 4
  br label %292

292:                                              ; preds = %277, %274
  %293 = load i32, i32* @OMX_ErrorNone, align 4
  store i32 %293, i32* %4, align 4
  br label %323

294:                                              ; preds = %51, %51
  br label %321

295:                                              ; preds = %51
  %296 = load i64, i64* %7, align 8
  %297 = inttoptr i64 %296 to %struct.TYPE_26__*
  store %struct.TYPE_26__* %297, %struct.TYPE_26__** %16, align 8
  %298 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %299 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %298, i32 0, i32 2
  %300 = load i32, i32* %299, align 8
  %301 = call i8* @mmalomx_role_to_name(i32 %300)
  store i8* %301, i8** %17, align 8
  %302 = load i8*, i8** %17, align 8
  %303 = icmp ne i8* %302, null
  br i1 %303, label %308, label %304

304:                                              ; preds = %295
  %305 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %306 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %305, i32 0, i32 1
  %307 = load i8*, i8** %306, align 8
  store i8* %307, i8** %17, align 8
  br label %308

308:                                              ; preds = %304, %295
  %309 = load %struct.TYPE_26__*, %struct.TYPE_26__** %16, align 8
  %310 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %309, i32 0, i32 0
  %311 = load i64, i64* %310, align 8
  %312 = inttoptr i64 %311 to i8*
  %313 = load i8*, i8** %17, align 8
  %314 = call i32 @snprintf(i8* %312, i32 8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %313)
  %315 = load i32, i32* @OMX_ErrorNone, align 4
  store i32 %315, i32* %4, align 4
  br label %323

316:                                              ; preds = %51
  %317 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %318 = load i32, i32* %6, align 4
  %319 = load i64, i64* %7, align 8
  %320 = call i32 @mmalomx_parameter_get(%struct.TYPE_18__* %317, i32 %318, i64 %319)
  store i32 %320, i32* %4, align 4
  br label %323

321:                                              ; preds = %294
  %322 = load i32, i32* @OMX_ErrorNotImplemented, align 4
  store i32 %322, i32* %4, align 4
  br label %323

323:                                              ; preds = %321, %316, %308, %292, %235, %153, %140, %127, %110, %108, %88, %68, %49, %41, %33, %28
  %324 = load i32, i32* %4, align 4
  ret i32 %324
}

declare dso_local i32 @LOG_TRACE(i8*, i64, i32, i32, i64) #1

declare dso_local i32 @mmalomx_param_to_string(i32) #1

declare dso_local i32 @PARAM_GET_PORT(%struct.TYPE_29__*, %struct.TYPE_18__*, i32) #1

declare dso_local i32 @mmalil_error_to_omx(i32) #1

declare dso_local i32 @mmalomx_get_port_settings(%struct.TYPE_29__*, %struct.TYPE_25__*) #1

declare dso_local i32 @mmal_port_parameter_get(%struct.TYPE_19__*, %struct.TYPE_20__*) #1

declare dso_local i32 @mmalil_encoding_to_omx_video_coding(i32) #1

declare dso_local i32 @mmalil_encoding_to_omx_color_format(i32) #1

declare dso_local i32 @mmalil_encoding_to_omx_audio_coding(i32) #1

declare dso_local i8* @mmalomx_role_to_name(i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i32 @mmalomx_parameter_get(%struct.TYPE_18__*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
