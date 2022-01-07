; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/hello_pi/hello_jpeg/extr_jpeg.c_startupImageDecoder.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/hello_pi/hello_jpeg/extr_jpeg.c_startupImageDecoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, %struct.TYPE_13__*, i32** }
%struct.TYPE_13__ = type { i32, i32, i32 }
%struct.TYPE_16__ = type { i32, i32, i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i8* }
%struct.TYPE_15__ = type { i32, i32, i32, i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i8* }

@OMX_StateIdle = common dso_local global i32 0, align 4
@OMX_VERSION = common dso_local global i8* null, align 8
@OMX_IMAGE_CodingJPEG = common dso_local global i32 0, align 4
@OMX_IndexParamImagePortFormat = common dso_local global i32 0, align 4
@OMX_IndexParamPortDefinition = common dso_local global i32 0, align 4
@OMX_CommandPortEnable = common dso_local global i32 0, align 4
@OMX_ErrorNone = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"Allocate decode buffer\00", align 1
@OMXJPEG_ERROR_MEMORY = common dso_local global i32 0, align 4
@OMX_EventCmdComplete = common dso_local global i32 0, align 4
@TIMEOUT_MS = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Did not get port enable %d\0A\00", align 1
@OMXJPEG_ERROR_EXECUTING = common dso_local global i32 0, align 4
@OMX_CommandStateSet = common dso_local global i32 0, align 4
@OMX_StateExecuting = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"Error starting image decoder %x\0A\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"Did not receive executing stat %d\0A\00", align 1
@OMXJPEG_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @startupImageDecoder(%struct.TYPE_14__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca %struct.TYPE_16__, align 8
  %5 = alloca %struct.TYPE_15__, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %3, align 8
  %8 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %8, i32 0, i32 1
  %10 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @OMX_StateIdle, align 4
  %14 = call i32 @ilclient_change_component_state(i32 %12, i32 %13)
  %15 = call i32 @memset(%struct.TYPE_16__* %4, i32 0, i32 24)
  %16 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %4, i32 0, i32 0
  store i32 24, i32* %16, align 8
  %17 = load i8*, i8** @OMX_VERSION, align 8
  %18 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %4, i32 0, i32 3
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  store i8* %17, i8** %19, align 8
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %4, i32 0, i32 2
  store i32 %24, i32* %25, align 8
  %26 = load i32, i32* @OMX_IMAGE_CodingJPEG, align 4
  %27 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %4, i32 0, i32 1
  store i32 %26, i32* %27, align 4
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @OMX_IndexParamImagePortFormat, align 4
  %34 = call i32 @OMX_SetParameter(i32 %32, i32 %33, %struct.TYPE_16__* %4)
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %5, i32 0, i32 0
  store i32 24, i32* %35, align 8
  %36 = load i8*, i8** @OMX_VERSION, align 8
  %37 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %5, i32 0, i32 4
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 0
  store i8* %36, i8** %38, align 8
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 1
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %5, i32 0, i32 3
  store i32 %43, i32* %44, align 4
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i32 0, i32 1
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @OMX_IndexParamPortDefinition, align 4
  %51 = call i32 @OMX_GetParameter(i32 %49, i32 %50, %struct.TYPE_15__* %5)
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 1
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @OMX_CommandPortEnable, align 4
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 1
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @OMX_SendCommand(i32 %56, i32 %57, i32 %62, i32* null)
  %64 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %5, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 8
  %68 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = sext i32 %70 to i64
  %72 = mul i64 1, %71
  %73 = trunc i64 %72 to i32
  %74 = call i64 @malloc(i32 %73)
  %75 = inttoptr i64 %74 to i32**
  %76 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %76, i32 0, i32 2
  store i32** %75, i32*** %77, align 8
  store i32 0, i32* %6, align 4
  br label %78

78:                                               ; preds = %113, %1
  %79 = load i32, i32* %6, align 4
  %80 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = icmp slt i32 %79, %82
  br i1 %83, label %84, label %116

84:                                               ; preds = %78
  %85 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %85, i32 0, i32 1
  %87 = load %struct.TYPE_13__*, %struct.TYPE_13__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %90, i32 0, i32 2
  %92 = load i32**, i32*** %91, align 8
  %93 = load i32, i32* %6, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32*, i32** %92, i64 %94
  %96 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %96, i32 0, i32 1
  %98 = load %struct.TYPE_13__*, %struct.TYPE_13__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* %6, align 4
  %102 = sext i32 %101 to i64
  %103 = inttoptr i64 %102 to i8*
  %104 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %5, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = call i64 @OMX_AllocateBuffer(i32 %89, i32** %95, i32 %100, i8* %103, i32 %105)
  %107 = load i64, i64* @OMX_ErrorNone, align 8
  %108 = icmp ne i64 %106, %107
  br i1 %108, label %109, label %112

109:                                              ; preds = %84
  %110 = call i32 @perror(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %111 = load i32, i32* @OMXJPEG_ERROR_MEMORY, align 4
  store i32 %111, i32* %2, align 4
  br label %172

112:                                              ; preds = %84
  br label %113

113:                                              ; preds = %112
  %114 = load i32, i32* %6, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %6, align 4
  br label %78

116:                                              ; preds = %78
  %117 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %118 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %117, i32 0, i32 1
  %119 = load %struct.TYPE_13__*, %struct.TYPE_13__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* @OMX_EventCmdComplete, align 4
  %123 = load i32, i32* @OMX_CommandPortEnable, align 4
  %124 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %125 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %124, i32 0, i32 1
  %126 = load %struct.TYPE_13__*, %struct.TYPE_13__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* @TIMEOUT_MS, align 4
  %130 = call i32 @ilclient_wait_for_event(i32 %121, i32 %122, i32 %123, i32 0, i32 %128, i32 0, i32 0, i32 %129)
  store i32 %130, i32* %7, align 4
  %131 = load i32, i32* %7, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %138

133:                                              ; preds = %116
  %134 = load i32, i32* @stderr, align 4
  %135 = load i32, i32* %7, align 4
  %136 = call i32 @fprintf(i32 %134, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %135)
  %137 = load i32, i32* @OMXJPEG_ERROR_EXECUTING, align 4
  store i32 %137, i32* %2, align 4
  br label %172

138:                                              ; preds = %116
  %139 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %140 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %139, i32 0, i32 1
  %141 = load %struct.TYPE_13__*, %struct.TYPE_13__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* @OMX_CommandStateSet, align 4
  %145 = load i32, i32* @OMX_StateExecuting, align 4
  %146 = call i32 @OMX_SendCommand(i32 %143, i32 %144, i32 %145, i32* null)
  store i32 %146, i32* %7, align 4
  %147 = load i32, i32* %7, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %154

149:                                              ; preds = %138
  %150 = load i32, i32* @stderr, align 4
  %151 = load i32, i32* %7, align 4
  %152 = call i32 @fprintf(i32 %150, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %151)
  %153 = load i32, i32* @OMXJPEG_ERROR_EXECUTING, align 4
  store i32 %153, i32* %2, align 4
  br label %172

154:                                              ; preds = %138
  %155 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %156 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %155, i32 0, i32 1
  %157 = load %struct.TYPE_13__*, %struct.TYPE_13__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = load i32, i32* @OMX_EventCmdComplete, align 4
  %161 = load i32, i32* @OMX_StateExecuting, align 4
  %162 = load i32, i32* @TIMEOUT_MS, align 4
  %163 = call i32 @ilclient_wait_for_event(i32 %159, i32 %160, i32 %161, i32 0, i32 0, i32 1, i32 0, i32 %162)
  store i32 %163, i32* %7, align 4
  %164 = load i32, i32* %7, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %170

166:                                              ; preds = %154
  %167 = load i32, i32* @stderr, align 4
  %168 = load i32, i32* %7, align 4
  %169 = call i32 @fprintf(i32 %167, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %168)
  br label %170

170:                                              ; preds = %166, %154
  %171 = load i32, i32* @OMXJPEG_OK, align 4
  store i32 %171, i32* %2, align 4
  br label %172

172:                                              ; preds = %170, %149, %133, %109
  %173 = load i32, i32* %2, align 4
  ret i32 %173
}

declare dso_local i32 @ilclient_change_component_state(i32, i32) #1

declare dso_local i32 @memset(%struct.TYPE_16__*, i32, i32) #1

declare dso_local i32 @OMX_SetParameter(i32, i32, %struct.TYPE_16__*) #1

declare dso_local i32 @OMX_GetParameter(i32, i32, %struct.TYPE_15__*) #1

declare dso_local i32 @OMX_SendCommand(i32, i32, i32, i32*) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i64 @OMX_AllocateBuffer(i32, i32**, i32, i8*, i32) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @ilclient_wait_for_event(i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
