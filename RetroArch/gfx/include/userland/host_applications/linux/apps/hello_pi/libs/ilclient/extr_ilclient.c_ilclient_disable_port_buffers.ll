; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/hello_pi/libs/ilclient/extr_ilclient.c_ilclient_disable_port_buffers.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/hello_pi/libs/ilclient/extr_ilclient.c_ilclient_disable_port_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i32, i32, %struct.TYPE_14__*, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32, i32, %struct.TYPE_14__*, i8* }
%struct.TYPE_13__ = type { i32, i32, i64, i32, i64, i64, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }

@OMX_VERSION = common dso_local global i32 0, align 4
@OMX_IndexParamPortDefinition = common dso_local global i32 0, align 4
@OMX_ErrorNone = common dso_local global i64 0, align 8
@OMX_TRUE = common dso_local global i64 0, align 8
@OMX_CommandPortDisable = common dso_local global i32 0, align 4
@OMX_DirInput = common dso_local global i64 0, align 8
@ILCLIENT_PORT_DISABLED = common dso_local global i32 0, align 4
@ILCLIENT_EVENT_ERROR = common dso_local global i32 0, align 4
@ILCLIENT_EMPTY_BUFFER_DONE = common dso_local global i32 0, align 4
@ILCLIENT_FILL_BUFFER_DONE = common dso_local global i32 0, align 4
@VCOS_OR_CONSUME = common dso_local global i32 0, align 4
@OMX_EventError = common dso_local global i32 0, align 4
@OMX_EventCmdComplete = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ilclient_disable_port_buffers(%struct.TYPE_15__* %0, i32 %1, %struct.TYPE_14__* %2, i32 (i8*, i8*)* %3, i8* %4) #0 {
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca i32 (i8*, i8*)*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_14__*, align 8
  %13 = alloca %struct.TYPE_14__**, align 8
  %14 = alloca %struct.TYPE_14__*, align 8
  %15 = alloca %struct.TYPE_14__*, align 8
  %16 = alloca %struct.TYPE_13__, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_14__*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca %struct.TYPE_14__*, align 8
  %22 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.TYPE_14__* %2, %struct.TYPE_14__** %8, align 8
  store i32 (i8*, i8*)* %3, i32 (i8*, i8*)** %9, align 8
  store i8* %4, i8** %10, align 8
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  store %struct.TYPE_14__* %23, %struct.TYPE_14__** %12, align 8
  %24 = call i32 @memset(%struct.TYPE_13__* %16, i32 0, i32 48)
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 0
  store i32 48, i32* %25, align 8
  %26 = load i32, i32* @OMX_VERSION, align 4
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 6
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  %29 = load i32, i32* %7, align 4
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 1
  store i32 %29, i32* %30, align 4
  %31 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @OMX_IndexParamPortDefinition, align 4
  %35 = call i64 @OMX_GetParameter(i32 %33, i32 %34, %struct.TYPE_13__* %16)
  store i64 %35, i64* %11, align 8
  %36 = load i64, i64* %11, align 8
  %37 = load i64, i64* @OMX_ErrorNone, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %52, label %39

39:                                               ; preds = %5
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @OMX_TRUE, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %52, label %44

44:                                               ; preds = %39
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 3
  %46 = load i32, i32* %45, align 8
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 4
  %50 = load i64, i64* %49, align 8
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %48, %44, %39, %5
  br label %234

53:                                               ; preds = %48
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 3
  %55 = load i32, i32* %54, align 8
  store i32 %55, i32* %17, align 4
  %56 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @OMX_CommandPortDisable, align 4
  %60 = load i32, i32* %7, align 4
  %61 = call i64 @OMX_SendCommand(i32 %58, i32 %59, i32 %60, i32* null)
  store i64 %61, i64* %11, align 8
  %62 = load i64, i64* %11, align 8
  %63 = load i64, i64* @OMX_ErrorNone, align 8
  %64 = icmp eq i64 %62, %63
  %65 = zext i1 %64 to i32
  %66 = call i32 @vc_assert(i32 %65)
  br label %67

67:                                               ; preds = %225, %53
  %68 = load i32, i32* %17, align 4
  %69 = icmp sgt i32 %68, 0
  br i1 %69, label %70, label %226

70:                                               ; preds = %67
  %71 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %72 = icmp eq %struct.TYPE_14__* %71, null
  br i1 %72, label %73, label %141

73:                                               ; preds = %70
  %74 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %74, i32 0, i32 2
  %76 = call i32 @vcos_semaphore_wait(i32* %75)
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 5
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @OMX_DirInput, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %84

81:                                               ; preds = %73
  %82 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %82, i32 0, i32 4
  br label %87

84:                                               ; preds = %73
  %85 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %85, i32 0, i32 3
  br label %87

87:                                               ; preds = %84, %81
  %88 = phi %struct.TYPE_14__** [ %83, %81 ], [ %86, %84 ]
  store %struct.TYPE_14__** %88, %struct.TYPE_14__*** %13, align 8
  %89 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %13, align 8
  %90 = load %struct.TYPE_14__*, %struct.TYPE_14__** %89, align 8
  store %struct.TYPE_14__* %90, %struct.TYPE_14__** %14, align 8
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %15, align 8
  br label %91

91:                                               ; preds = %136, %87
  %92 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %93 = icmp ne %struct.TYPE_14__* %92, null
  br i1 %93, label %94, label %137

94:                                               ; preds = %91
  %95 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 5
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @OMX_DirInput, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %103

99:                                               ; preds = %94
  %100 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %101 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  br label %107

103:                                              ; preds = %94
  %104 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %105 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  br label %107

107:                                              ; preds = %103, %99
  %108 = phi i32 [ %102, %99 ], [ %106, %103 ]
  %109 = load i32, i32* %7, align 4
  %110 = icmp eq i32 %108, %109
  br i1 %110, label %111, label %131

111:                                              ; preds = %107
  %112 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  store %struct.TYPE_14__* %112, %struct.TYPE_14__** %19, align 8
  %113 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %114 = icmp ne %struct.TYPE_14__* %113, null
  br i1 %114, label %120, label %115

115:                                              ; preds = %111
  %116 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  %117 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %116, i32 0, i32 2
  %118 = load %struct.TYPE_14__*, %struct.TYPE_14__** %117, align 8
  %119 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %13, align 8
  store %struct.TYPE_14__* %118, %struct.TYPE_14__** %119, align 8
  store %struct.TYPE_14__* %118, %struct.TYPE_14__** %14, align 8
  br label %126

120:                                              ; preds = %111
  %121 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  %122 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %121, i32 0, i32 2
  %123 = load %struct.TYPE_14__*, %struct.TYPE_14__** %122, align 8
  %124 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %125 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %124, i32 0, i32 2
  store %struct.TYPE_14__* %123, %struct.TYPE_14__** %125, align 8
  store %struct.TYPE_14__* %123, %struct.TYPE_14__** %14, align 8
  br label %126

126:                                              ; preds = %120, %115
  %127 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %128 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  %129 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %128, i32 0, i32 2
  store %struct.TYPE_14__* %127, %struct.TYPE_14__** %129, align 8
  %130 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  store %struct.TYPE_14__* %130, %struct.TYPE_14__** %12, align 8
  br label %136

131:                                              ; preds = %107
  %132 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  store %struct.TYPE_14__* %132, %struct.TYPE_14__** %15, align 8
  %133 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %134 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %133, i32 0, i32 2
  %135 = bitcast %struct.TYPE_14__** %134 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %135, %struct.TYPE_14__** %14, align 8
  br label %136

136:                                              ; preds = %131, %126
  br label %91

137:                                              ; preds = %91
  %138 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %139 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %138, i32 0, i32 2
  %140 = call i32 @vcos_semaphore_post(i32* %139)
  br label %141

141:                                              ; preds = %137, %70
  br label %142

142:                                              ; preds = %173, %141
  %143 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %144 = icmp ne %struct.TYPE_14__* %143, null
  br i1 %144, label %145, label %177

145:                                              ; preds = %142
  %146 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %147 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %146, i32 0, i32 3
  %148 = load i8*, i8** %147, align 8
  store i8* %148, i8** %20, align 8
  %149 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %150 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %149, i32 0, i32 2
  %151 = load %struct.TYPE_14__*, %struct.TYPE_14__** %150, align 8
  store %struct.TYPE_14__* %151, %struct.TYPE_14__** %21, align 8
  %152 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %153 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = load i32, i32* %7, align 4
  %156 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %157 = call i64 @OMX_FreeBuffer(i32 %154, i32 %155, %struct.TYPE_14__* %156)
  store i64 %157, i64* %11, align 8
  %158 = load i64, i64* %11, align 8
  %159 = load i64, i64* @OMX_ErrorNone, align 8
  %160 = icmp eq i64 %158, %159
  %161 = zext i1 %160 to i32
  %162 = call i32 @vc_assert(i32 %161)
  %163 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %9, align 8
  %164 = icmp ne i32 (i8*, i8*)* %163, null
  br i1 %164, label %165, label %170

165:                                              ; preds = %145
  %166 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %9, align 8
  %167 = load i8*, i8** %10, align 8
  %168 = load i8*, i8** %20, align 8
  %169 = call i32 %166(i8* %167, i8* %168)
  br label %173

170:                                              ; preds = %145
  %171 = load i8*, i8** %20, align 8
  %172 = call i32 @vcos_free(i8* %171)
  br label %173

173:                                              ; preds = %170, %165
  %174 = load i32, i32* %17, align 4
  %175 = add nsw i32 %174, -1
  store i32 %175, i32* %17, align 4
  %176 = load %struct.TYPE_14__*, %struct.TYPE_14__** %21, align 8
  store %struct.TYPE_14__* %176, %struct.TYPE_14__** %12, align 8
  br label %142

177:                                              ; preds = %142
  %178 = load i32, i32* %17, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %225

180:                                              ; preds = %177
  %181 = load i32, i32* @ILCLIENT_PORT_DISABLED, align 4
  %182 = load i32, i32* @ILCLIENT_EVENT_ERROR, align 4
  %183 = or i32 %181, %182
  store i32 %183, i32* %22, align 4
  %184 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 5
  %185 = load i64, i64* %184, align 8
  %186 = load i64, i64* @OMX_DirInput, align 8
  %187 = icmp eq i64 %185, %186
  br i1 %187, label %188, label %190

188:                                              ; preds = %180
  %189 = load i32, i32* @ILCLIENT_EMPTY_BUFFER_DONE, align 4
  br label %192

190:                                              ; preds = %180
  %191 = load i32, i32* @ILCLIENT_FILL_BUFFER_DONE, align 4
  br label %192

192:                                              ; preds = %190, %188
  %193 = phi i32 [ %189, %188 ], [ %191, %190 ]
  %194 = load i32, i32* %22, align 4
  %195 = or i32 %194, %193
  store i32 %195, i32* %22, align 4
  %196 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %197 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %196, i32 0, i32 0
  %198 = load i32, i32* %22, align 4
  %199 = load i32, i32* @VCOS_OR_CONSUME, align 4
  %200 = call i32 @vcos_event_flags_get(i32* %197, i32 %198, i32 %199, i32 -1, i32* %18)
  %201 = load i32, i32* %18, align 4
  %202 = load i32, i32* @ILCLIENT_EVENT_ERROR, align 4
  %203 = and i32 %201, %202
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %211

205:                                              ; preds = %192
  %206 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %207 = load i32, i32* @OMX_EventError, align 4
  %208 = call i64 @ilclient_remove_event(%struct.TYPE_15__* %206, i32 %207, i32 0, i32 1, i32 1, i32 0)
  %209 = icmp sge i64 %208, 0
  br i1 %209, label %210, label %211

210:                                              ; preds = %205
  br label %234

211:                                              ; preds = %205, %192
  %212 = load i32, i32* %18, align 4
  %213 = load i32, i32* @ILCLIENT_PORT_DISABLED, align 4
  %214 = and i32 %212, %213
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %224

216:                                              ; preds = %211
  %217 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %218 = load i32, i32* @OMX_EventCmdComplete, align 4
  %219 = load i32, i32* @OMX_CommandPortDisable, align 4
  %220 = load i32, i32* %7, align 4
  %221 = call i64 @ilclient_remove_event(%struct.TYPE_15__* %217, i32 %218, i32 %219, i32 0, i32 %220, i32 0)
  %222 = icmp sge i64 %221, 0
  br i1 %222, label %223, label %224

223:                                              ; preds = %216
  br label %234

224:                                              ; preds = %216, %211
  br label %225

225:                                              ; preds = %224, %177
  br label %67

226:                                              ; preds = %67
  %227 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %228 = load i32, i32* @OMX_CommandPortDisable, align 4
  %229 = load i32, i32* %7, align 4
  %230 = call i64 @ilclient_wait_for_command_complete(%struct.TYPE_15__* %227, i32 %228, i32 %229)
  %231 = icmp slt i64 %230, 0
  br i1 %231, label %232, label %234

232:                                              ; preds = %226
  %233 = call i32 @vc_assert(i32 0)
  br label %234

234:                                              ; preds = %52, %210, %223, %232, %226
  ret void
}

declare dso_local i32 @memset(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i64 @OMX_GetParameter(i32, i32, %struct.TYPE_13__*) #1

declare dso_local i64 @OMX_SendCommand(i32, i32, i32, i32*) #1

declare dso_local i32 @vc_assert(i32) #1

declare dso_local i32 @vcos_semaphore_wait(i32*) #1

declare dso_local i32 @vcos_semaphore_post(i32*) #1

declare dso_local i64 @OMX_FreeBuffer(i32, i32, %struct.TYPE_14__*) #1

declare dso_local i32 @vcos_free(i8*) #1

declare dso_local i32 @vcos_event_flags_get(i32*, i32, i32, i32, i32*) #1

declare dso_local i64 @ilclient_remove_event(%struct.TYPE_15__*, i32, i32, i32, i32, i32) #1

declare dso_local i64 @ilclient_wait_for_command_complete(%struct.TYPE_15__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
