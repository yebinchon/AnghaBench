; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/openmaxil/extr_mmalomx_parameters.c_mmalomx_parameter_set.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/openmaxil/extr_mmalomx_parameters.c_mmalomx_parameter_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i32, %struct.TYPE_26__*, %struct.TYPE_28__ }
%struct.TYPE_26__ = type { %struct.TYPE_24__* }
%struct.TYPE_24__ = type { %struct.TYPE_31__* }
%struct.TYPE_31__ = type { %struct.TYPE_30__ }
%struct.TYPE_30__ = type { i32, %struct.TYPE_25__ }
%struct.TYPE_25__ = type { i32, i32 }
%struct.TYPE_28__ = type { %struct.TYPE_27__ }
%struct.TYPE_27__ = type { i32 }
%struct.TYPE_34__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_32__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_33__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_20__ = type { %struct.TYPE_29__ }
%struct.TYPE_29__ = type { i32, i32, i32 }
%struct.TYPE_22__ = type { i32, i32, i32 }
%struct.TYPE_35__ = type { i32, i32 }
%struct.TYPE_21__ = type { i32, i32 }

@OMX_ErrorBadParameter = common dso_local global i32 0, align 4
@OMX_PARAM_U32TYPE = common dso_local global i32 0, align 4
@nU32 = common dso_local global i32 0, align 4
@OMX_ErrorNone = common dso_local global i32 0, align 4
@OMX_ErrorNotImplemented = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mmalomx_parameter_set(i32* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_23__*, align 8
  %9 = alloca %struct.TYPE_34__*, align 8
  %10 = alloca %struct.TYPE_32__*, align 8
  %11 = alloca %struct.TYPE_33__*, align 8
  %12 = alloca %struct.TYPE_20__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_20__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_22__*, align 8
  %17 = alloca %struct.TYPE_35__*, align 8
  %18 = alloca %struct.TYPE_21__*, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store %struct.TYPE_23__* null, %struct.TYPE_23__** %8, align 8
  %19 = load i32, i32* %6, align 4
  switch i32 %19, label %300 [
    i32 133, label %20
    i32 130, label %49
    i32 132, label %78
    i32 131, label %107
    i32 128, label %107
    i32 129, label %107
    i32 137, label %151
    i32 140, label %151
    i32 138, label %151
    i32 139, label %151
    i32 136, label %208
    i32 134, label %258
    i32 135, label %285
  ]

20:                                               ; preds = %3
  %21 = load i64, i64* %7, align 8
  %22 = inttoptr i64 %21 to %struct.TYPE_34__*
  store %struct.TYPE_34__* %22, %struct.TYPE_34__** %9, align 8
  %23 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %24 = load i32*, i32** %5, align 8
  %25 = load %struct.TYPE_34__*, %struct.TYPE_34__** %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @PARAM_GET_PORT(%struct.TYPE_23__* %23, i32* %24, i32 %27)
  %29 = load %struct.TYPE_34__*, %struct.TYPE_34__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = sext i32 %31 to i64
  %33 = icmp ult i64 %32, 20
  br i1 %33, label %34, label %36

34:                                               ; preds = %20
  %35 = load i32, i32* @OMX_ErrorBadParameter, align 4
  store i32 %35, i32* %4, align 4
  br label %305

36:                                               ; preds = %20
  %37 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %38 = load %struct.TYPE_34__*, %struct.TYPE_34__** %9, align 8
  %39 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.TYPE_34__*, %struct.TYPE_34__** %9, align 8
  %42 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.TYPE_34__*, %struct.TYPE_34__** %9, align 8
  %45 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = add nsw i32 %46, 1
  %48 = call i32 @mmalomx_set_video_param(%struct.TYPE_23__* %37, i32 %40, i32 %43, i32 %47)
  store i32 %48, i32* %4, align 4
  br label %305

49:                                               ; preds = %3
  %50 = load i64, i64* %7, align 8
  %51 = inttoptr i64 %50 to %struct.TYPE_32__*
  store %struct.TYPE_32__* %51, %struct.TYPE_32__** %10, align 8
  %52 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %53 = load i32*, i32** %5, align 8
  %54 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %55 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @PARAM_GET_PORT(%struct.TYPE_23__* %52, i32* %53, i32 %56)
  %58 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %59 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = sext i32 %60 to i64
  %62 = icmp ult i64 %61, 20
  br i1 %62, label %63, label %65

63:                                               ; preds = %49
  %64 = load i32, i32* @OMX_ErrorBadParameter, align 4
  store i32 %64, i32* %4, align 4
  br label %305

65:                                               ; preds = %49
  %66 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %67 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %68 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %71 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %74 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = add nsw i32 %75, 1
  %77 = call i32 @mmalomx_set_video_param(%struct.TYPE_23__* %66, i32 %69, i32 %72, i32 %76)
  store i32 %77, i32* %4, align 4
  br label %305

78:                                               ; preds = %3
  %79 = load i64, i64* %7, align 8
  %80 = inttoptr i64 %79 to %struct.TYPE_33__*
  store %struct.TYPE_33__* %80, %struct.TYPE_33__** %11, align 8
  %81 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %82 = load i32*, i32** %5, align 8
  %83 = load %struct.TYPE_33__*, %struct.TYPE_33__** %11, align 8
  %84 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %83, i32 0, i32 4
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @PARAM_GET_PORT(%struct.TYPE_23__* %81, i32* %82, i32 %85)
  %87 = load %struct.TYPE_33__*, %struct.TYPE_33__** %11, align 8
  %88 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = sext i32 %89 to i64
  %91 = icmp ult i64 %90, 20
  br i1 %91, label %92, label %94

92:                                               ; preds = %78
  %93 = load i32, i32* @OMX_ErrorBadParameter, align 4
  store i32 %93, i32* %4, align 4
  br label %305

94:                                               ; preds = %78
  %95 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %96 = load %struct.TYPE_33__*, %struct.TYPE_33__** %11, align 8
  %97 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.TYPE_33__*, %struct.TYPE_33__** %11, align 8
  %100 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.TYPE_33__*, %struct.TYPE_33__** %11, align 8
  %103 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = add nsw i32 %104, 1
  %106 = call i32 @mmalomx_set_video_param(%struct.TYPE_23__* %95, i32 %98, i32 %101, i32 %105)
  store i32 %106, i32* %4, align 4
  br label %305

107:                                              ; preds = %3, %3, %3
  %108 = load i64, i64* %7, align 8
  %109 = inttoptr i64 %108 to %struct.TYPE_20__*
  store %struct.TYPE_20__* %109, %struct.TYPE_20__** %12, align 8
  %110 = load i32, i32* @OMX_PARAM_U32TYPE, align 4
  %111 = load i32, i32* @nU32, align 4
  %112 = call i32 @offsetof(i32 %110, i32 %111)
  store i32 %112, i32* %13, align 4
  %113 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %114 = load i32*, i32** %5, align 8
  %115 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %116 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @PARAM_GET_PORT(%struct.TYPE_23__* %113, i32* %114, i32 %118)
  %120 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %121 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = sext i32 %123 to i64
  %125 = icmp ugt i64 %124, 4
  br i1 %125, label %133, label %126

126:                                              ; preds = %107
  %127 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %128 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* %13, align 4
  %132 = icmp slt i32 %130, %131
  br i1 %132, label %133, label %135

133:                                              ; preds = %126, %107
  %134 = load i32, i32* @OMX_ErrorBadParameter, align 4
  store i32 %134, i32* %4, align 4
  br label %305

135:                                              ; preds = %126
  %136 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %137 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %136, i32 0, i32 2
  %138 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %138, i32 0, i32 0
  %140 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %141 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %141, i32 0, i32 1
  %143 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %144 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* %13, align 4
  %148 = sub nsw i32 %146, %147
  %149 = call i32 @memcpy(i32* %139, i32* %142, i32 %148)
  %150 = load i32, i32* @OMX_ErrorNone, align 4
  store i32 %150, i32* %4, align 4
  br label %305

151:                                              ; preds = %3, %3, %3, %3
  %152 = load i64, i64* %7, align 8
  %153 = inttoptr i64 %152 to %struct.TYPE_20__*
  store %struct.TYPE_20__* %153, %struct.TYPE_20__** %14, align 8
  %154 = load i32, i32* @OMX_PARAM_U32TYPE, align 4
  %155 = load i32, i32* @nU32, align 4
  %156 = call i32 @offsetof(i32 %154, i32 %155)
  store i32 %156, i32* %15, align 4
  %157 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %158 = load i32*, i32** %5, align 8
  %159 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %160 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 4
  %163 = call i32 @PARAM_GET_PORT(%struct.TYPE_23__* %157, i32* %158, i32 %162)
  %164 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %165 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = sext i32 %167 to i64
  %169 = icmp ugt i64 %168, 4
  br i1 %169, label %177, label %170

170:                                              ; preds = %151
  %171 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %172 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = load i32, i32* %15, align 4
  %176 = icmp slt i32 %174, %175
  br i1 %176, label %177, label %179

177:                                              ; preds = %170, %151
  %178 = load i32, i32* @OMX_ErrorBadParameter, align 4
  store i32 %178, i32* %4, align 4
  br label %305

179:                                              ; preds = %170
  %180 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %181 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %180, i32 0, i32 2
  %182 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %182, i32 0, i32 0
  %184 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %185 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %184, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %185, i32 0, i32 1
  %187 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %188 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  %191 = load i32, i32* %15, align 4
  %192 = sub nsw i32 %190, %191
  %193 = call i32 @memcpy(i32* %183, i32* %186, i32 %192)
  %194 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %195 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %194, i32 0, i32 1
  %196 = load %struct.TYPE_26__*, %struct.TYPE_26__** %195, align 8
  %197 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %196, i32 0, i32 0
  %198 = load %struct.TYPE_24__*, %struct.TYPE_24__** %197, align 8
  %199 = load i32, i32* %6, align 4
  %200 = call i32 @mmalil_omx_audio_param_index_to_coding(i32 %199)
  %201 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %202 = call i32 @mmalil_omx_audio_param_to_format(%struct.TYPE_24__* %198, i32 %200, %struct.TYPE_20__* %201)
  %203 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %204 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %203, i32 0, i32 1
  %205 = load %struct.TYPE_26__*, %struct.TYPE_26__** %204, align 8
  %206 = call i32 @mmal_port_format_commit(%struct.TYPE_26__* %205)
  %207 = load i32, i32* @OMX_ErrorNone, align 4
  store i32 %207, i32* %4, align 4
  br label %305

208:                                              ; preds = %3
  %209 = load i64, i64* %7, align 8
  %210 = inttoptr i64 %209 to %struct.TYPE_22__*
  store %struct.TYPE_22__* %210, %struct.TYPE_22__** %16, align 8
  %211 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %212 = load i32*, i32** %5, align 8
  %213 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %214 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %213, i32 0, i32 2
  %215 = load i32, i32* %214, align 4
  %216 = call i32 @PARAM_GET_PORT(%struct.TYPE_23__* %211, i32* %212, i32 %215)
  %217 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %218 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %217, i32 0, i32 1
  %219 = load i32, i32* %218, align 4
  %220 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %221 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %220, i32 0, i32 1
  %222 = load %struct.TYPE_26__*, %struct.TYPE_26__** %221, align 8
  %223 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %222, i32 0, i32 0
  %224 = load %struct.TYPE_24__*, %struct.TYPE_24__** %223, align 8
  %225 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %224, i32 0, i32 0
  %226 = load %struct.TYPE_31__*, %struct.TYPE_31__** %225, align 8
  %227 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %226, i32 0, i32 0
  %228 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %227, i32 0, i32 1
  %229 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %228, i32 0, i32 1
  store i32 %219, i32* %229, align 4
  %230 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %231 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 4
  %233 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %234 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %233, i32 0, i32 1
  %235 = load %struct.TYPE_26__*, %struct.TYPE_26__** %234, align 8
  %236 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %235, i32 0, i32 0
  %237 = load %struct.TYPE_24__*, %struct.TYPE_24__** %236, align 8
  %238 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %237, i32 0, i32 0
  %239 = load %struct.TYPE_31__*, %struct.TYPE_31__** %238, align 8
  %240 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %239, i32 0, i32 0
  %241 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %240, i32 0, i32 1
  %242 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %241, i32 0, i32 0
  store i32 %232, i32* %242, align 4
  %243 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %244 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %243, i32 0, i32 1
  %245 = load %struct.TYPE_26__*, %struct.TYPE_26__** %244, align 8
  %246 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %245, i32 0, i32 0
  %247 = load %struct.TYPE_24__*, %struct.TYPE_24__** %246, align 8
  %248 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %247, i32 0, i32 0
  %249 = load %struct.TYPE_31__*, %struct.TYPE_31__** %248, align 8
  %250 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %249, i32 0, i32 0
  %251 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %250, i32 0, i32 1
  %252 = call i32 @mmal_rational_simplify(%struct.TYPE_25__* %251)
  %253 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %254 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %253, i32 0, i32 1
  %255 = load %struct.TYPE_26__*, %struct.TYPE_26__** %254, align 8
  %256 = call i32 @mmal_port_format_commit(%struct.TYPE_26__* %255)
  %257 = call i32 @mmalil_error_to_omx(i32 %256)
  store i32 %257, i32* %4, align 4
  br label %305

258:                                              ; preds = %3
  %259 = load i64, i64* %7, align 8
  %260 = inttoptr i64 %259 to %struct.TYPE_35__*
  store %struct.TYPE_35__* %260, %struct.TYPE_35__** %17, align 8
  %261 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %262 = load i32*, i32** %5, align 8
  %263 = load %struct.TYPE_35__*, %struct.TYPE_35__** %17, align 8
  %264 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %263, i32 0, i32 1
  %265 = load i32, i32* %264, align 4
  %266 = call i32 @PARAM_GET_PORT(%struct.TYPE_23__* %261, i32* %262, i32 %265)
  %267 = load %struct.TYPE_35__*, %struct.TYPE_35__** %17, align 8
  %268 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 4
  %270 = call i32 @mmalil_omx_color_space_to_mmal(i32 %269)
  %271 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %272 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %271, i32 0, i32 1
  %273 = load %struct.TYPE_26__*, %struct.TYPE_26__** %272, align 8
  %274 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %273, i32 0, i32 0
  %275 = load %struct.TYPE_24__*, %struct.TYPE_24__** %274, align 8
  %276 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %275, i32 0, i32 0
  %277 = load %struct.TYPE_31__*, %struct.TYPE_31__** %276, align 8
  %278 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %277, i32 0, i32 0
  %279 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %278, i32 0, i32 0
  store i32 %270, i32* %279, align 4
  %280 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %281 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %280, i32 0, i32 1
  %282 = load %struct.TYPE_26__*, %struct.TYPE_26__** %281, align 8
  %283 = call i32 @mmal_port_format_commit(%struct.TYPE_26__* %282)
  %284 = call i32 @mmalil_error_to_omx(i32 %283)
  store i32 %284, i32* %4, align 4
  br label %305

285:                                              ; preds = %3
  %286 = load i64, i64* %7, align 8
  %287 = inttoptr i64 %286 to %struct.TYPE_21__*
  store %struct.TYPE_21__* %287, %struct.TYPE_21__** %18, align 8
  %288 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %289 = load i32*, i32** %5, align 8
  %290 = load %struct.TYPE_21__*, %struct.TYPE_21__** %18, align 8
  %291 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %290, i32 0, i32 1
  %292 = load i32, i32* %291, align 4
  %293 = call i32 @PARAM_GET_PORT(%struct.TYPE_23__* %288, i32* %289, i32 %292)
  %294 = load %struct.TYPE_21__*, %struct.TYPE_21__** %18, align 8
  %295 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %294, i32 0, i32 0
  %296 = load i32, i32* %295, align 4
  %297 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %298 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %297, i32 0, i32 0
  store i32 %296, i32* %298, align 8
  %299 = load i32, i32* @OMX_ErrorNone, align 4
  store i32 %299, i32* %4, align 4
  br label %305

300:                                              ; preds = %3
  %301 = load i32*, i32** %5, align 8
  %302 = load i32, i32* %6, align 4
  %303 = load i64, i64* %7, align 8
  %304 = call i32 @mmalomx_parameter_set_xlat(i32* %301, i32 %302, i64 %303)
  store i32 %304, i32* %4, align 4
  br label %305

305:                                              ; preds = %300, %285, %258, %208, %179, %177, %135, %133, %94, %92, %65, %63, %36, %34
  %306 = load i32, i32* %4, align 4
  ret i32 %306
}

declare dso_local i32 @PARAM_GET_PORT(%struct.TYPE_23__*, i32*, i32) #1

declare dso_local i32 @mmalomx_set_video_param(%struct.TYPE_23__*, i32, i32, i32) #1

declare dso_local i32 @offsetof(i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @mmalil_omx_audio_param_to_format(%struct.TYPE_24__*, i32, %struct.TYPE_20__*) #1

declare dso_local i32 @mmalil_omx_audio_param_index_to_coding(i32) #1

declare dso_local i32 @mmal_port_format_commit(%struct.TYPE_26__*) #1

declare dso_local i32 @mmal_rational_simplify(%struct.TYPE_25__*) #1

declare dso_local i32 @mmalil_error_to_omx(i32) #1

declare dso_local i32 @mmalil_omx_color_space_to_mmal(i32) #1

declare dso_local i32 @mmalomx_parameter_set_xlat(i32*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
