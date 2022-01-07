; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/hello_pi/libs/ilclient/extr_ilclient.c_ilclient_enable_port_buffers.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/hello_pi/libs/ilclient/extr_ilclient.c_ilclient_enable_port_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, %struct.TYPE_14__*, %struct.TYPE_14__*, i32, i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i32, i32, i64, i32, i64, i64, i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }

@OMX_VERSION = common dso_local global i32 0, align 4
@OMX_IndexParamPortDefinition = common dso_local global i32 0, align 4
@OMX_ErrorNone = common dso_local global i64 0, align 8
@OMX_FALSE = common dso_local global i64 0, align 8
@OMX_StateIdle = common dso_local global i64 0, align 8
@OMX_StateExecuting = common dso_local global i64 0, align 8
@OMX_StatePause = common dso_local global i64 0, align 8
@OMX_CommandPortEnable = common dso_local global i32 0, align 4
@OMX_DirInput = common dso_local global i64 0, align 8
@OMX_EventError = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ilclient_enable_port_buffers(%struct.TYPE_15__* %0, i32 %1, i8* (i8*, i64, i32, i32)* %2, i32 (i8*, i8*)* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8* (i8*, i64, i32, i32)*, align 8
  %10 = alloca i32 (i8*, i8*)*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_13__, align 8
  %14 = alloca %struct.TYPE_14__*, align 8
  %15 = alloca %struct.TYPE_14__**, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* (i8*, i64, i32, i32)* %2, i8* (i8*, i64, i32, i32)** %9, align 8
  store i32 (i8*, i8*)* %3, i32 (i8*, i8*)** %10, align 8
  store i8* %4, i8** %11, align 8
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %14, align 8
  store %struct.TYPE_14__** %14, %struct.TYPE_14__*** %15, align 8
  %19 = call i32 @memset(%struct.TYPE_13__* %13, i32 0, i32 48)
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 0
  store i32 48, i32* %20, align 8
  %21 = load i32, i32* @OMX_VERSION, align 4
  %22 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 7
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* %8, align 4
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 1
  store i32 %24, i32* %25, align 4
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @OMX_IndexParamPortDefinition, align 4
  %30 = call i64 @OMX_GetParameter(i32 %28, i32 %29, %struct.TYPE_13__* %13)
  store i64 %30, i64* %12, align 8
  %31 = load i64, i64* %12, align 8
  %32 = load i64, i64* @OMX_ErrorNone, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %47, label %34

34:                                               ; preds = %5
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @OMX_FALSE, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %47, label %39

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 3
  %41 = load i32, i32* %40, align 8
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 4
  %45 = load i64, i64* %44, align 8
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %43, %39, %34, %5
  store i32 -1, i32* %6, align 4
  br label %194

48:                                               ; preds = %43
  %49 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 8
  %52 = call i64 @OMX_GetState(i32 %51, i64* %16)
  store i64 %52, i64* %12, align 8
  %53 = load i64, i64* %12, align 8
  %54 = load i64, i64* @OMX_ErrorNone, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %68, label %56

56:                                               ; preds = %48
  %57 = load i64, i64* %16, align 8
  %58 = load i64, i64* @OMX_StateIdle, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %69, label %60

60:                                               ; preds = %56
  %61 = load i64, i64* %16, align 8
  %62 = load i64, i64* @OMX_StateExecuting, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %69, label %64

64:                                               ; preds = %60
  %65 = load i64, i64* %16, align 8
  %66 = load i64, i64* @OMX_StatePause, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %69, label %68

68:                                               ; preds = %64, %48
  store i32 -1, i32* %6, align 4
  br label %194

69:                                               ; preds = %64, %60, %56
  %70 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @OMX_CommandPortEnable, align 4
  %74 = load i32, i32* %8, align 4
  %75 = call i64 @OMX_SendCommand(i32 %72, i32 %73, i32 %74, i32* null)
  store i64 %75, i64* %12, align 8
  %76 = load i64, i64* %12, align 8
  %77 = load i64, i64* @OMX_ErrorNone, align 8
  %78 = icmp eq i64 %76, %77
  %79 = zext i1 %78 to i32
  %80 = call i32 @vc_assert(i32 %79)
  store i32 0, i32* %17, align 4
  br label %81

81:                                               ; preds = %143, %69
  %82 = load i32, i32* %17, align 4
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 3
  %84 = load i32, i32* %83, align 8
  %85 = icmp ne i32 %82, %84
  br i1 %85, label %86, label %146

86:                                               ; preds = %81
  %87 = load i8* (i8*, i64, i32, i32)*, i8* (i8*, i64, i32, i32)** %9, align 8
  %88 = icmp ne i8* (i8*, i64, i32, i32)* %87, null
  br i1 %88, label %89, label %100

89:                                               ; preds = %86
  %90 = load i8* (i8*, i64, i32, i32)*, i8* (i8*, i64, i32, i32)** %9, align 8
  %91 = load i8*, i8** %11, align 8
  %92 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 4
  %93 = load i64, i64* %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 6
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %97 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %96, i32 0, i32 4
  %98 = load i32, i32* %97, align 4
  %99 = call i8* %90(i8* %91, i64 %93, i32 %95, i32 %98)
  store i8* %99, i8** %18, align 8
  br label %109

100:                                              ; preds = %86
  %101 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 4
  %102 = load i64, i64* %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 6
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %106 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %105, i32 0, i32 4
  %107 = load i32, i32* %106, align 4
  %108 = call i8* @vcos_malloc_aligned(i64 %102, i32 %104, i32 %107)
  store i8* %108, i8** %18, align 8
  br label %109

109:                                              ; preds = %100, %89
  %110 = load i8*, i8** %18, align 8
  %111 = icmp ne i8* %110, null
  br i1 %111, label %113, label %112

112:                                              ; preds = %109
  br label %146

113:                                              ; preds = %109
  %114 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %115 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %15, align 8
  %118 = load i32, i32* %8, align 4
  %119 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 4
  %120 = load i64, i64* %119, align 8
  %121 = load i8*, i8** %18, align 8
  %122 = call i64 @OMX_UseBuffer(i32 %116, %struct.TYPE_14__** %117, i32 %118, i32* null, i64 %120, i8* %121)
  store i64 %122, i64* %12, align 8
  %123 = load i64, i64* %12, align 8
  %124 = load i64, i64* @OMX_ErrorNone, align 8
  %125 = icmp ne i64 %123, %124
  br i1 %125, label %126, label %138

126:                                              ; preds = %113
  %127 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %10, align 8
  %128 = icmp ne i32 (i8*, i8*)* %127, null
  br i1 %128, label %129, label %134

129:                                              ; preds = %126
  %130 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %10, align 8
  %131 = load i8*, i8** %11, align 8
  %132 = load i8*, i8** %18, align 8
  %133 = call i32 %130(i8* %131, i8* %132)
  br label %137

134:                                              ; preds = %126
  %135 = load i8*, i8** %18, align 8
  %136 = call i32 @vcos_free(i8* %135)
  br label %137

137:                                              ; preds = %134, %129
  br label %146

138:                                              ; preds = %113
  %139 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %15, align 8
  %140 = load %struct.TYPE_14__*, %struct.TYPE_14__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %140, i32 0, i32 0
  %142 = bitcast i32* %141 to %struct.TYPE_14__**
  store %struct.TYPE_14__** %142, %struct.TYPE_14__*** %15, align 8
  br label %143

143:                                              ; preds = %138
  %144 = load i32, i32* %17, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %17, align 4
  br label %81

146:                                              ; preds = %137, %112, %81
  %147 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %148 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %147, i32 0, i32 0
  %149 = call i32 @vcos_semaphore_wait(i32* %148)
  %150 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 5
  %151 = load i64, i64* %150, align 8
  %152 = load i64, i64* @OMX_DirInput, align 8
  %153 = icmp eq i64 %151, %152
  br i1 %153, label %154, label %162

154:                                              ; preds = %146
  %155 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %156 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %155, i32 0, i32 2
  %157 = load %struct.TYPE_14__*, %struct.TYPE_14__** %156, align 8
  %158 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %15, align 8
  store %struct.TYPE_14__* %157, %struct.TYPE_14__** %158, align 8
  %159 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %160 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %161 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %160, i32 0, i32 2
  store %struct.TYPE_14__* %159, %struct.TYPE_14__** %161, align 8
  br label %170

162:                                              ; preds = %146
  %163 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %164 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %163, i32 0, i32 1
  %165 = load %struct.TYPE_14__*, %struct.TYPE_14__** %164, align 8
  %166 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %15, align 8
  store %struct.TYPE_14__* %165, %struct.TYPE_14__** %166, align 8
  %167 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %168 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %169 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %168, i32 0, i32 1
  store %struct.TYPE_14__* %167, %struct.TYPE_14__** %169, align 8
  br label %170

170:                                              ; preds = %162, %154
  %171 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %172 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %171, i32 0, i32 0
  %173 = call i32 @vcos_semaphore_post(i32* %172)
  %174 = load i32, i32* %17, align 4
  %175 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 3
  %176 = load i32, i32* %175, align 8
  %177 = icmp ne i32 %174, %176
  br i1 %177, label %184, label %178

178:                                              ; preds = %170
  %179 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %180 = load i32, i32* @OMX_CommandPortEnable, align 4
  %181 = load i32, i32* %8, align 4
  %182 = call i64 @ilclient_wait_for_command_complete(%struct.TYPE_15__* %179, i32 %180, i32 %181)
  %183 = icmp slt i64 %182, 0
  br i1 %183, label %184, label %193

184:                                              ; preds = %178, %170
  %185 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %186 = load i32, i32* %8, align 4
  %187 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %10, align 8
  %188 = load i8*, i8** %11, align 8
  %189 = call i32 @ilclient_disable_port_buffers(%struct.TYPE_15__* %185, i32 %186, i32* null, i32 (i8*, i8*)* %187, i8* %188)
  %190 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %191 = load i32, i32* @OMX_EventError, align 4
  %192 = call i32 @ilclient_remove_event(%struct.TYPE_15__* %190, i32 %191, i32 0, i32 1, i32 1, i32 0)
  store i32 -1, i32* %6, align 4
  br label %194

193:                                              ; preds = %178
  store i32 0, i32* %6, align 4
  br label %194

194:                                              ; preds = %193, %184, %68, %47
  %195 = load i32, i32* %6, align 4
  ret i32 %195
}

declare dso_local i32 @memset(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i64 @OMX_GetParameter(i32, i32, %struct.TYPE_13__*) #1

declare dso_local i64 @OMX_GetState(i32, i64*) #1

declare dso_local i64 @OMX_SendCommand(i32, i32, i32, i32*) #1

declare dso_local i32 @vc_assert(i32) #1

declare dso_local i8* @vcos_malloc_aligned(i64, i32, i32) #1

declare dso_local i64 @OMX_UseBuffer(i32, %struct.TYPE_14__**, i32, i32*, i64, i8*) #1

declare dso_local i32 @vcos_free(i8*) #1

declare dso_local i32 @vcos_semaphore_wait(i32*) #1

declare dso_local i32 @vcos_semaphore_post(i32*) #1

declare dso_local i64 @ilclient_wait_for_command_complete(%struct.TYPE_15__*, i32, i32) #1

declare dso_local i32 @ilclient_disable_port_buffers(%struct.TYPE_15__*, i32, i32*, i32 (i8*, i8*)*, i8*) #1

declare dso_local i32 @ilclient_remove_event(%struct.TYPE_15__*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
