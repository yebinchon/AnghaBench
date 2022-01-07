; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/openmaxil/extr_mmalomx_core.c_mmalomx_ComponentUseBuffer.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/openmaxil/extr_mmalomx_core.c_mmalomx_ComponentUseBuffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, i64, i64, i64, i8*, i8*, i8*, i32*, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_19__ = type { i64, i64, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32, i32, i64, i64, %struct.TYPE_16__*, i8* }
%struct.TYPE_16__ = type { i64, i64, i64 }

@OMX_ErrorNone = common dso_local global i64 0, align 8
@MMAL_FALSE = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [88 x i8] c"hComponent %p, ppBufferHdr %p, nPortIndex %i, pAppPrivate %p, nSizeBytes %i, pBuffer %p\00", align 1
@OMX_ErrorInvalidComponent = common dso_local global i64 0, align 8
@OMX_ErrorBadParameter = common dso_local global i64 0, align 8
@OMX_StateInvalid = common dso_local global i64 0, align 8
@OMX_ErrorInvalidState = common dso_local global i64 0, align 8
@OMX_ErrorBadPortIndex = common dso_local global i64 0, align 8
@MMALOMX_ACTION_CHECK_ALLOCATED = common dso_local global i32 0, align 4
@OMX_ErrorIncorrectStateOperation = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"buffer size too small (%i/%i)\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"buffer size too big (%i/%i)\00", align 1
@OMX_ErrorInsufficientResources = common dso_local global i64 0, align 8
@OMX_VERSION = common dso_local global i32 0, align 4
@OMX_DirInput = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [24 x i8] c"allocated %i/%i buffers\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, %struct.TYPE_17__**, i64, i8*, i64, i32*)* @mmalomx_ComponentUseBuffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @mmalomx_ComponentUseBuffer(i64 %0, %struct.TYPE_17__** %1, i64 %2, i8* %3, i64 %4, i32* %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_17__**, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_19__*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_17__*, align 8
  %18 = alloca %struct.TYPE_18__*, align 8
  store i64 %0, i64* %8, align 8
  store %struct.TYPE_17__** %1, %struct.TYPE_17__*** %9, align 8
  store i64 %2, i64* %10, align 8
  store i8* %3, i8** %11, align 8
  store i64 %4, i64* %12, align 8
  store i32* %5, i32** %13, align 8
  %19 = load i64, i64* %8, align 8
  %20 = inttoptr i64 %19 to %struct.TYPE_19__*
  store %struct.TYPE_19__* %20, %struct.TYPE_19__** %14, align 8
  %21 = load i64, i64* @OMX_ErrorNone, align 8
  store i64 %21, i64* %15, align 8
  %22 = load i8*, i8** @MMAL_FALSE, align 8
  %23 = ptrtoint i8* %22 to i32
  store i32 %23, i32* %16, align 4
  %24 = load i64, i64* %8, align 8
  %25 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %9, align 8
  %26 = load i64, i64* %10, align 8
  %27 = trunc i64 %26 to i32
  %28 = load i8*, i8** %11, align 8
  %29 = load i64, i64* %12, align 8
  %30 = trunc i64 %29 to i32
  %31 = load i32*, i32** %13, align 8
  %32 = call i32 @LOG_TRACE(i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str, i64 0, i64 0), i64 %24, %struct.TYPE_17__** %25, i32 %27, i8* %28, i32 %30, i32* %31)
  %33 = load i64, i64* %8, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %6
  %36 = load i64, i64* @OMX_ErrorInvalidComponent, align 8
  store i64 %36, i64* %7, align 8
  br label %237

37:                                               ; preds = %6
  %38 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %9, align 8
  %39 = icmp ne %struct.TYPE_17__** %38, null
  br i1 %39, label %42, label %40

40:                                               ; preds = %37
  %41 = load i64, i64* @OMX_ErrorBadParameter, align 8
  store i64 %41, i64* %7, align 8
  br label %237

42:                                               ; preds = %37
  %43 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %44 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @OMX_StateInvalid, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %42
  %49 = load i64, i64* @OMX_ErrorInvalidState, align 8
  store i64 %49, i64* %7, align 8
  br label %237

50:                                               ; preds = %42
  %51 = load i64, i64* %10, align 8
  %52 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %53 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp uge i64 %51, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %50
  %57 = load i64, i64* @OMX_ErrorBadPortIndex, align 8
  store i64 %57, i64* %7, align 8
  br label %237

58:                                               ; preds = %50
  %59 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %60 = call i32 @mmalomx_commands_actions_check(%struct.TYPE_19__* %59)
  %61 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %62 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %61, i32 0, i32 2
  %63 = load %struct.TYPE_18__*, %struct.TYPE_18__** %62, align 8
  %64 = load i64, i64* %10, align 8
  %65 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %63, i64 %64
  store %struct.TYPE_18__* %65, %struct.TYPE_18__** %18, align 8
  %66 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %67 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %68 = call i32 @MMALOMX_LOCK_PORT(%struct.TYPE_19__* %66, %struct.TYPE_18__* %67)
  %69 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %70 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @MMALOMX_ACTION_CHECK_ALLOCATED, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %77, label %75

75:                                               ; preds = %58
  %76 = load i64, i64* @OMX_ErrorIncorrectStateOperation, align 8
  store i64 %76, i64* %15, align 8
  br label %77

77:                                               ; preds = %75, %58
  %78 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %79 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %77
  %83 = load i64, i64* @OMX_ErrorIncorrectStateOperation, align 8
  store i64 %83, i64* %15, align 8
  br label %84

84:                                               ; preds = %82, %77
  %85 = load i64, i64* %15, align 8
  %86 = load i64, i64* @OMX_ErrorNone, align 8
  %87 = icmp ne i64 %85, %86
  br i1 %87, label %88, label %89

88:                                               ; preds = %84
  br label %232

89:                                               ; preds = %84
  %90 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %91 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %90, i32 0, i32 2
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %101

94:                                               ; preds = %89
  %95 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %96 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %95, i32 0, i32 5
  %97 = load i8*, i8** %96, align 8
  %98 = icmp ne i8* %97, null
  br i1 %98, label %99, label %101

99:                                               ; preds = %94
  %100 = load i64, i64* @OMX_ErrorBadParameter, align 8
  store i64 %100, i64* %15, align 8
  br label %232

101:                                              ; preds = %94, %89
  %102 = load i64, i64* %12, align 8
  %103 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %104 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %103, i32 0, i32 4
  %105 = load %struct.TYPE_16__*, %struct.TYPE_16__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = icmp ult i64 %102, %107
  br i1 %108, label %109, label %120

109:                                              ; preds = %101
  %110 = load i64, i64* %12, align 8
  %111 = trunc i64 %110 to i32
  %112 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %113 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %112, i32 0, i32 4
  %114 = load %struct.TYPE_16__*, %struct.TYPE_16__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = trunc i64 %116 to i32
  %118 = call i32 @LOG_ERROR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %111, i32 %117)
  %119 = load i64, i64* @OMX_ErrorBadParameter, align 8
  store i64 %119, i64* %15, align 8
  br label %232

120:                                              ; preds = %101
  %121 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %122 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %121, i32 0, i32 2
  %123 = load i64, i64* %122, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %131, label %125

125:                                              ; preds = %120
  %126 = load i64, i64* %12, align 8
  %127 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %128 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %127, i32 0, i32 4
  %129 = load %struct.TYPE_16__*, %struct.TYPE_16__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %129, i32 0, i32 1
  store i64 %126, i64* %130, align 8
  br label %131

131:                                              ; preds = %125, %120
  %132 = load i64, i64* %12, align 8
  %133 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %134 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %133, i32 0, i32 4
  %135 = load %struct.TYPE_16__*, %struct.TYPE_16__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %135, i32 0, i32 1
  %137 = load i64, i64* %136, align 8
  %138 = icmp ugt i64 %132, %137
  br i1 %138, label %139, label %150

139:                                              ; preds = %131
  %140 = load i64, i64* %12, align 8
  %141 = trunc i64 %140 to i32
  %142 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %143 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %142, i32 0, i32 4
  %144 = load %struct.TYPE_16__*, %struct.TYPE_16__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %144, i32 0, i32 1
  %146 = load i64, i64* %145, align 8
  %147 = trunc i64 %146 to i32
  %148 = call i32 @LOG_ERROR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %141, i32 %147)
  %149 = load i64, i64* @OMX_ErrorBadParameter, align 8
  store i64 %149, i64* %15, align 8
  br label %232

150:                                              ; preds = %131
  %151 = call %struct.TYPE_17__* @calloc(i32 1, i32 72)
  store %struct.TYPE_17__* %151, %struct.TYPE_17__** %17, align 8
  %152 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %153 = icmp ne %struct.TYPE_17__* %152, null
  br i1 %153, label %156, label %154

154:                                              ; preds = %150
  %155 = load i64, i64* @OMX_ErrorInsufficientResources, align 8
  store i64 %155, i64* %15, align 8
  br label %232

156:                                              ; preds = %150
  %157 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %158 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %157, i32 0, i32 0
  store i32 72, i32* %158, align 8
  %159 = load i32, i32* @OMX_VERSION, align 4
  %160 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %161 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %160, i32 0, i32 8
  %162 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %161, i32 0, i32 0
  store i32 %159, i32* %162, align 8
  %163 = load i64, i64* %12, align 8
  %164 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %165 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %164, i32 0, i32 1
  store i64 %163, i64* %165, align 8
  %166 = load i32*, i32** %13, align 8
  %167 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %168 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %167, i32 0, i32 7
  store i32* %166, i32** %168, align 8
  %169 = load i8*, i8** %11, align 8
  %170 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %171 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %170, i32 0, i32 6
  store i8* %169, i8** %171, align 8
  %172 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %173 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %172, i32 0, i32 3
  %174 = load i64, i64* %173, align 8
  %175 = load i64, i64* @OMX_DirInput, align 8
  %176 = icmp eq i64 %174, %175
  br i1 %176, label %177, label %184

177:                                              ; preds = %156
  %178 = load i64, i64* %10, align 8
  %179 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %180 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %179, i32 0, i32 2
  store i64 %178, i64* %180, align 8
  %181 = load i8*, i8** %11, align 8
  %182 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %183 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %182, i32 0, i32 5
  store i8* %181, i8** %183, align 8
  br label %191

184:                                              ; preds = %156
  %185 = load i64, i64* %10, align 8
  %186 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %187 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %186, i32 0, i32 3
  store i64 %185, i64* %187, align 8
  %188 = load i8*, i8** %11, align 8
  %189 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %190 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %189, i32 0, i32 4
  store i8* %188, i8** %190, align 8
  br label %191

191:                                              ; preds = %184, %177
  %192 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %193 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %9, align 8
  store %struct.TYPE_17__* %192, %struct.TYPE_17__** %193, align 8
  %194 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %195 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %194, i32 0, i32 2
  %196 = load i64, i64* %195, align 8
  %197 = add nsw i64 %196, 1
  store i64 %197, i64* %195, align 8
  %198 = load i8*, i8** @MMAL_FALSE, align 8
  %199 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %200 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %199, i32 0, i32 5
  store i8* %198, i8** %200, align 8
  %201 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %202 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %201, i32 0, i32 2
  %203 = load i64, i64* %202, align 8
  %204 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %205 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %204, i32 0, i32 4
  %206 = load %struct.TYPE_16__*, %struct.TYPE_16__** %205, align 8
  %207 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %206, i32 0, i32 2
  %208 = load i64, i64* %207, align 8
  %209 = icmp eq i64 %203, %208
  %210 = zext i1 %209 to i32
  store i32 %210, i32* %16, align 4
  %211 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %212 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %211, i32 0, i32 1
  store i32 %210, i32* %212, align 4
  %213 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %214 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %215 = call i32 @MMALOMX_UNLOCK_PORT(%struct.TYPE_19__* %213, %struct.TYPE_18__* %214)
  %216 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %217 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %216, i32 0, i32 2
  %218 = load i64, i64* %217, align 8
  %219 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %220 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %219, i32 0, i32 4
  %221 = load %struct.TYPE_16__*, %struct.TYPE_16__** %220, align 8
  %222 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %221, i32 0, i32 2
  %223 = load i64, i64* %222, align 8
  %224 = call i32 @LOG_DEBUG(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i64 %218, i64 %223)
  %225 = load i32, i32* %16, align 4
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %230

227:                                              ; preds = %191
  %228 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %229 = call i32 @mmalomx_commands_actions_signal(%struct.TYPE_19__* %228)
  br label %230

230:                                              ; preds = %227, %191
  %231 = load i64, i64* @OMX_ErrorNone, align 8
  store i64 %231, i64* %7, align 8
  br label %237

232:                                              ; preds = %154, %139, %109, %99, %88
  %233 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %234 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %235 = call i32 @MMALOMX_UNLOCK_PORT(%struct.TYPE_19__* %233, %struct.TYPE_18__* %234)
  %236 = load i64, i64* %15, align 8
  store i64 %236, i64* %7, align 8
  br label %237

237:                                              ; preds = %232, %230, %56, %48, %40, %35
  %238 = load i64, i64* %7, align 8
  ret i64 %238
}

declare dso_local i32 @LOG_TRACE(i8*, i64, %struct.TYPE_17__**, i32, i8*, i32, i32*) #1

declare dso_local i32 @mmalomx_commands_actions_check(%struct.TYPE_19__*) #1

declare dso_local i32 @MMALOMX_LOCK_PORT(%struct.TYPE_19__*, %struct.TYPE_18__*) #1

declare dso_local i32 @LOG_ERROR(i8*, i32, i32) #1

declare dso_local %struct.TYPE_17__* @calloc(i32, i32) #1

declare dso_local i32 @MMALOMX_UNLOCK_PORT(%struct.TYPE_19__*, %struct.TYPE_18__*) #1

declare dso_local i32 @LOG_DEBUG(i8*, i64, i64) #1

declare dso_local i32 @mmalomx_commands_actions_signal(%struct.TYPE_19__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
