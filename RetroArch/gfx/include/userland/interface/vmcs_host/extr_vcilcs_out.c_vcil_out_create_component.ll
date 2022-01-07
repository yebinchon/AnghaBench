; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/vmcs_host/extr_vcilcs_out.c_vcil_out_create_component.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/vmcs_host/extr_vcilcs_out.c_vcil_out_create_component.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, %struct.TYPE_21__*, i32 }
%struct.TYPE_21__ = type { i32, %struct.TYPE_21__*, %struct.TYPE_20__*, i32, %struct.TYPE_23__* }
%struct.TYPE_20__ = type { i32, i32 }
%struct.TYPE_23__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_18__*, %struct.TYPE_21__* }
%struct.TYPE_25__ = type { i32, i32, i32, %struct.TYPE_23__*, i32 }
%struct.TYPE_24__ = type { i64, i32, i32, i32*, i32, i32 }
%struct.TYPE_22__ = type { i32, i32, i32, i32, %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i32 }

@OMX_ErrorInvalidComponent = common dso_local global i64 0, align 8
@IL_CREATE_COMPONENT = common dso_local global i32 0, align 4
@OMX_ErrorHardware = common dso_local global i64 0, align 8
@OMX_ErrorNone = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [15 x i8] c"ILCS Host Comp\00", align 1
@IL_COMPONENT_DEINIT = common dso_local global i32 0, align 4
@OMX_ErrorInsufficientResources = common dso_local global i64 0, align 8
@OMX_IndexParamPortSummary = common dso_local global i32 0, align 4
@OMX_VERSION = common dso_local global i32 0, align 4
@IL_GET_PARAMETER = common dso_local global i32 0, align 4
@IL_GET_EXECUTE_HEADER_SIZE = common dso_local global i32 0, align 4
@OMX_DirOutput = common dso_local global i32 0, align 4
@OMX_DirInput = common dso_local global i32 0, align 4
@vcil_out_GetComponentVersion = common dso_local global i32 0, align 4
@vcil_out_ComponentDeInit = common dso_local global i32 0, align 4
@vcil_out_SetCallbacks = common dso_local global i32 0, align 4
@vcil_out_GetState = common dso_local global i32 0, align 4
@vcil_out_GetParameter = common dso_local global i32 0, align 4
@vcil_out_SetParameter = common dso_local global i32 0, align 4
@vcil_out_GetConfig = common dso_local global i32 0, align 4
@vcil_out_SetConfig = common dso_local global i32 0, align 4
@vcil_out_SendCommand = common dso_local global i32 0, align 4
@vcil_out_UseBuffer = common dso_local global i32 0, align 4
@vcil_out_AllocateBuffer = common dso_local global i32 0, align 4
@vcil_out_FreeBuffer = common dso_local global i32 0, align 4
@vcil_out_EmptyThisBuffer = common dso_local global i32 0, align 4
@vcil_out_FillThisBuffer = common dso_local global i32 0, align 4
@vcil_out_ComponentTunnelRequest = common dso_local global i32 0, align 4
@vcil_out_GetExtensionIndex = common dso_local global i32 0, align 4
@vcil_out_UseEGLImage = common dso_local global i32 0, align 4
@vcil_out_ComponentRoleEnum = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @vcil_out_create_component(%struct.TYPE_18__* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_23__*, align 8
  %9 = alloca %struct.TYPE_25__, align 8
  %10 = alloca %struct.TYPE_24__, align 8
  %11 = alloca %struct.TYPE_21__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_25__, align 8
  %15 = alloca %struct.TYPE_24__, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_25__, align 8
  %18 = alloca %struct.TYPE_24__, align 8
  %19 = alloca %struct.TYPE_22__*, align 8
  %20 = alloca i32, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %21 = load i64, i64* %6, align 8
  %22 = inttoptr i64 %21 to %struct.TYPE_23__*
  store %struct.TYPE_23__* %22, %struct.TYPE_23__** %8, align 8
  store i32 32, i32* %13, align 4
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @strlen(i32 %23)
  %25 = sext i32 %24 to i64
  %26 = icmp uge i64 %25, 4
  br i1 %26, label %27, label %29

27:                                               ; preds = %3
  %28 = load i64, i64* @OMX_ErrorInvalidComponent, align 8
  store i64 %28, i64* %4, align 8
  br label %270

29:                                               ; preds = %3
  %30 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %9, i32 0, i32 4
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @strcpy(i32 %31, i32 %32)
  %34 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %9, i32 0, i32 3
  store %struct.TYPE_23__* %34, %struct.TYPE_23__** %35, align 8
  %36 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @IL_CREATE_COMPONENT, align 4
  %40 = call i64 @ilcs_execute_function(i32 %38, i32 %39, %struct.TYPE_25__* %9, i32 32, %struct.TYPE_24__* %10, i32* %13)
  %41 = icmp slt i64 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %29
  %43 = load i32, i32* %13, align 4
  %44 = sext i32 %43 to i64
  %45 = icmp ne i64 %44, 32
  br i1 %45, label %46, label %48

46:                                               ; preds = %42, %29
  %47 = load i64, i64* @OMX_ErrorHardware, align 8
  store i64 %47, i64* %4, align 8
  br label %270

48:                                               ; preds = %42
  %49 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %10, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @OMX_ErrorNone, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %48
  %54 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %10, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  store i64 %55, i64* %4, align 8
  br label %270

56:                                               ; preds = %48
  %57 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %10, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = sext i32 %58 to i64
  %60 = mul i64 8, %59
  %61 = add i64 40, %60
  %62 = trunc i64 %61 to i32
  %63 = call %struct.TYPE_21__* @vcos_malloc(i32 %62, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_21__* %63, %struct.TYPE_21__** %11, align 8
  %64 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %65 = icmp ne %struct.TYPE_21__* %64, null
  br i1 %65, label %76, label %66

66:                                               ; preds = %56
  store i32 32, i32* %16, align 4
  %67 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %10, i32 0, i32 5
  %68 = load i32, i32* %67, align 4
  %69 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %14, i32 0, i32 2
  store i32 %68, i32* %69, align 8
  %70 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @IL_COMPONENT_DEINIT, align 4
  %74 = call i64 @ilcs_execute_function(i32 %72, i32 %73, %struct.TYPE_25__* %14, i32 32, %struct.TYPE_24__* %15, i32* %16)
  %75 = load i64, i64* @OMX_ErrorInsufficientResources, align 8
  store i64 %75, i64* %4, align 8
  br label %270

76:                                               ; preds = %56
  %77 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %78 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %10, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = sext i32 %79 to i64
  %81 = mul i64 8, %80
  %82 = add i64 40, %81
  %83 = trunc i64 %82 to i32
  %84 = call i32 @memset(%struct.TYPE_21__* %77, i32 0, i32 %83)
  %85 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %10, i32 0, i32 5
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %88 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %87, i32 0, i32 3
  store i32 %86, i32* %88, align 8
  %89 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %90 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %91 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %90, i32 0, i32 4
  store %struct.TYPE_23__* %89, %struct.TYPE_23__** %91, align 8
  %92 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %10, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %95 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %94, i32 0, i32 0
  store i32 %93, i32* %95, align 8
  %96 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %97 = bitcast %struct.TYPE_21__* %96 to i8*
  %98 = getelementptr inbounds i8, i8* %97, i64 40
  %99 = bitcast i8* %98 to %struct.TYPE_20__*
  %100 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %101 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %100, i32 0, i32 2
  store %struct.TYPE_20__* %99, %struct.TYPE_20__** %101, align 8
  store i32 0, i32* %12, align 4
  br label %102

102:                                              ; preds = %190, %76
  %103 = load i32, i32* %12, align 4
  %104 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %105 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = icmp slt i32 %103, %106
  br i1 %107, label %108, label %193

108:                                              ; preds = %102
  %109 = load i32, i32* %12, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %155

111:                                              ; preds = %108
  %112 = load i32, i32* %12, align 4
  %113 = and i32 %112, 31
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %155, label %115

115:                                              ; preds = %111
  store i32 32, i32* %20, align 4
  %116 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %117 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %116, i32 0, i32 3
  %118 = load i32, i32* %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %17, i32 0, i32 2
  store i32 %118, i32* %119, align 8
  %120 = load i32, i32* @OMX_IndexParamPortSummary, align 4
  %121 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %17, i32 0, i32 1
  store i32 %120, i32* %121, align 4
  %122 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %17, i32 0, i32 0
  %123 = bitcast i32* %122 to %struct.TYPE_22__*
  store %struct.TYPE_22__* %123, %struct.TYPE_22__** %19, align 8
  %124 = load %struct.TYPE_22__*, %struct.TYPE_22__** %19, align 8
  %125 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %124, i32 0, i32 0
  store i32 20, i32* %125, align 4
  %126 = load i32, i32* @OMX_VERSION, align 4
  %127 = load %struct.TYPE_22__*, %struct.TYPE_22__** %19, align 8
  %128 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %127, i32 0, i32 4
  %129 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %128, i32 0, i32 0
  store i32 %126, i32* %129, align 4
  %130 = load i32, i32* %12, align 4
  %131 = ashr i32 %130, 5
  %132 = load %struct.TYPE_22__*, %struct.TYPE_22__** %19, align 8
  %133 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %132, i32 0, i32 1
  store i32 %131, i32* %133, align 4
  %134 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %135 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 8
  %137 = load i32, i32* @IL_GET_PARAMETER, align 4
  %138 = load i32, i32* @IL_GET_EXECUTE_HEADER_SIZE, align 4
  %139 = sext i32 %138 to i64
  %140 = add i64 20, %139
  %141 = trunc i64 %140 to i32
  %142 = call i64 @ilcs_execute_function(i32 %136, i32 %137, %struct.TYPE_25__* %17, i32 %141, %struct.TYPE_24__* %18, i32* %20)
  %143 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %18, i32 0, i32 4
  %144 = bitcast i32* %143 to %struct.TYPE_22__*
  store %struct.TYPE_22__* %144, %struct.TYPE_22__** %19, align 8
  %145 = load %struct.TYPE_22__*, %struct.TYPE_22__** %19, align 8
  %146 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 4
  %148 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %10, i32 0, i32 2
  store i32 %147, i32* %148, align 4
  %149 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %10, i32 0, i32 3
  %150 = load i32*, i32** %149, align 8
  %151 = load %struct.TYPE_22__*, %struct.TYPE_22__** %19, align 8
  %152 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %151, i32 0, i32 3
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @memcpy(i32* %150, i32 %153, i32 128)
  br label %155

155:                                              ; preds = %115, %111, %108
  %156 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %10, i32 0, i32 3
  %157 = load i32*, i32** %156, align 8
  %158 = load i32, i32* %12, align 4
  %159 = and i32 %158, 31
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i32, i32* %157, i64 %160
  %162 = load i32, i32* %161, align 4
  %163 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %164 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %163, i32 0, i32 2
  %165 = load %struct.TYPE_20__*, %struct.TYPE_20__** %164, align 8
  %166 = load i32, i32* %12, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %165, i64 %167
  %169 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %168, i32 0, i32 1
  store i32 %162, i32* %169, align 4
  %170 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %10, i32 0, i32 2
  %171 = load i32, i32* %170, align 4
  %172 = load i32, i32* %12, align 4
  %173 = and i32 %172, 31
  %174 = ashr i32 %171, %173
  %175 = and i32 %174, 1
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %179

177:                                              ; preds = %155
  %178 = load i32, i32* @OMX_DirOutput, align 4
  br label %181

179:                                              ; preds = %155
  %180 = load i32, i32* @OMX_DirInput, align 4
  br label %181

181:                                              ; preds = %179, %177
  %182 = phi i32 [ %178, %177 ], [ %180, %179 ]
  %183 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %184 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %183, i32 0, i32 2
  %185 = load %struct.TYPE_20__*, %struct.TYPE_20__** %184, align 8
  %186 = load i32, i32* %12, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %185, i64 %187
  %189 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %188, i32 0, i32 0
  store i32 %182, i32* %189, align 4
  br label %190

190:                                              ; preds = %181
  %191 = load i32, i32* %12, align 4
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %12, align 4
  br label %102

193:                                              ; preds = %102
  %194 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %195 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %194, i32 0, i32 0
  %196 = call i32 @vcos_semaphore_wait(i32* %195)
  %197 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %198 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %197, i32 0, i32 1
  %199 = load %struct.TYPE_21__*, %struct.TYPE_21__** %198, align 8
  %200 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %201 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %200, i32 0, i32 1
  store %struct.TYPE_21__* %199, %struct.TYPE_21__** %201, align 8
  %202 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %203 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %204 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %203, i32 0, i32 1
  store %struct.TYPE_21__* %202, %struct.TYPE_21__** %204, align 8
  %205 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %206 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %205, i32 0, i32 0
  %207 = call i32 @vcos_semaphore_post(i32* %206)
  %208 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %209 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %210 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %209, i32 0, i32 19
  store %struct.TYPE_21__* %208, %struct.TYPE_21__** %210, align 8
  %211 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %212 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %213 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %212, i32 0, i32 18
  store %struct.TYPE_18__* %211, %struct.TYPE_18__** %213, align 8
  %214 = load i32, i32* @vcil_out_GetComponentVersion, align 4
  %215 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %216 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %215, i32 0, i32 17
  store i32 %214, i32* %216, align 4
  %217 = load i32, i32* @vcil_out_ComponentDeInit, align 4
  %218 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %219 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %218, i32 0, i32 16
  store i32 %217, i32* %219, align 8
  %220 = load i32, i32* @vcil_out_SetCallbacks, align 4
  %221 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %222 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %221, i32 0, i32 15
  store i32 %220, i32* %222, align 4
  %223 = load i32, i32* @vcil_out_GetState, align 4
  %224 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %225 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %224, i32 0, i32 14
  store i32 %223, i32* %225, align 8
  %226 = load i32, i32* @vcil_out_GetParameter, align 4
  %227 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %228 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %227, i32 0, i32 13
  store i32 %226, i32* %228, align 4
  %229 = load i32, i32* @vcil_out_SetParameter, align 4
  %230 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %231 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %230, i32 0, i32 12
  store i32 %229, i32* %231, align 8
  %232 = load i32, i32* @vcil_out_GetConfig, align 4
  %233 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %234 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %233, i32 0, i32 11
  store i32 %232, i32* %234, align 4
  %235 = load i32, i32* @vcil_out_SetConfig, align 4
  %236 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %237 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %236, i32 0, i32 10
  store i32 %235, i32* %237, align 8
  %238 = load i32, i32* @vcil_out_SendCommand, align 4
  %239 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %240 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %239, i32 0, i32 9
  store i32 %238, i32* %240, align 4
  %241 = load i32, i32* @vcil_out_UseBuffer, align 4
  %242 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %243 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %242, i32 0, i32 8
  store i32 %241, i32* %243, align 8
  %244 = load i32, i32* @vcil_out_AllocateBuffer, align 4
  %245 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %246 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %245, i32 0, i32 7
  store i32 %244, i32* %246, align 4
  %247 = load i32, i32* @vcil_out_FreeBuffer, align 4
  %248 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %249 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %248, i32 0, i32 6
  store i32 %247, i32* %249, align 8
  %250 = load i32, i32* @vcil_out_EmptyThisBuffer, align 4
  %251 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %252 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %251, i32 0, i32 5
  store i32 %250, i32* %252, align 4
  %253 = load i32, i32* @vcil_out_FillThisBuffer, align 4
  %254 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %255 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %254, i32 0, i32 4
  store i32 %253, i32* %255, align 8
  %256 = load i32, i32* @vcil_out_ComponentTunnelRequest, align 4
  %257 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %258 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %257, i32 0, i32 3
  store i32 %256, i32* %258, align 4
  %259 = load i32, i32* @vcil_out_GetExtensionIndex, align 4
  %260 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %261 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %260, i32 0, i32 2
  store i32 %259, i32* %261, align 8
  %262 = load i32, i32* @vcil_out_UseEGLImage, align 4
  %263 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %264 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %263, i32 0, i32 1
  store i32 %262, i32* %264, align 4
  %265 = load i32, i32* @vcil_out_ComponentRoleEnum, align 4
  %266 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %267 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %266, i32 0, i32 0
  store i32 %265, i32* %267, align 8
  %268 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %10, i32 0, i32 0
  %269 = load i64, i64* %268, align 8
  store i64 %269, i64* %4, align 8
  br label %270

270:                                              ; preds = %193, %66, %53, %46, %27
  %271 = load i64, i64* %4, align 8
  ret i64 %271
}

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @strcpy(i32, i32) #1

declare dso_local i64 @ilcs_execute_function(i32, i32, %struct.TYPE_25__*, i32, %struct.TYPE_24__*, i32*) #1

declare dso_local %struct.TYPE_21__* @vcos_malloc(i32, i8*) #1

declare dso_local i32 @memset(%struct.TYPE_21__*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @vcos_semaphore_wait(i32*) #1

declare dso_local i32 @vcos_semaphore_post(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
