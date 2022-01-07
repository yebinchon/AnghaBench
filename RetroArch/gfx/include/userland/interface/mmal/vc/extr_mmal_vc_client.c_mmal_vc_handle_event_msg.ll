; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/vc/extr_mmal_vc_client.c_mmal_vc_handle_event_msg.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/vc/extr_mmal_vc_client.c_mmal_vc_handle_event_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64 }
%struct.TYPE_15__ = type { i64, i32, %struct.TYPE_17__*, i32, i64, i64, i32* }
%struct.TYPE_17__ = type { i64, i32, i32 }
%struct.TYPE_13__ = type { i64, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i64, i32 (i32*, %struct.TYPE_17__*)* }

@.str = private unnamed_addr constant [62 x i8] c"event to host, cmd 0x%08x len %d to component %p port (%d,%d)\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"port (%i,%i) doesn't exist\00", align 1
@MMAL_SUCCESS = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [48 x i8] c"no event buffer available to receive event (%i)\00", align 1
@.str.3 = private unnamed_addr constant [47 x i8] c"event buffer to small to receive event (%i/%i)\00", align 1
@MMAL_MAGIC = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [51 x i8] c"event buffers not configured properly by component\00", align 1
@MMAL_WORKER_EVENT_SPACE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [28 x i8] c"queue event bulk rx: %p, %d\00", align 1
@VCHIQ_SUCCESS = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [43 x i8] c"queue event bulk rx len %d failed to start\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"done callback back to client\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_16__*, i32, i8*)* @mmal_vc_handle_event_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mmal_vc_handle_event_msg(%struct.TYPE_16__* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_17__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %14 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %17, %struct.TYPE_15__** %7, align 8
  %18 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %18, i32 0, i32 6
  %20 = load i32*, i32** %19, align 8
  store i32* %20, i32** %8, align 8
  %21 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %27, i32 0, i32 6
  %29 = load i32*, i32** %28, align 8
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %30, i32 0, i32 5
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %33, i32 0, i32 4
  %35 = load i64, i64* %34, align 8
  %36 = call i32 (i8*, ...) @LOG_DEBUG(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i32 %23, i64 %26, i32* %29, i64 %32, i64 %35)
  %37 = load i8*, i8** %6, align 8
  %38 = load i32*, i32** %8, align 8
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %39, i32 0, i32 5
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %42, i32 0, i32 4
  %44 = load i64, i64* %43, align 8
  %45 = call i32* @mmal_vc_port_by_number(i32* %38, i64 %41, i64 %44)
  store i32* %45, i32** %11, align 8
  %46 = load i32*, i32** %11, align 8
  %47 = ptrtoint i32* %46 to i32
  %48 = call i32 @vcos_verify(i32 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %60, label %50

50:                                               ; preds = %3
  %51 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %51, i32 0, i32 5
  %53 = load i64, i64* %52, align 8
  %54 = trunc i64 %53 to i32
  %55 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %55, i32 0, i32 4
  %57 = load i64, i64* %56, align 8
  %58 = trunc i64 %57 to i32
  %59 = call i32 (i8*, ...) @LOG_ERROR(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %54, i32 %58)
  br label %210

60:                                               ; preds = %3
  %61 = load i32*, i32** %11, align 8
  %62 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 8
  %65 = call i64 @mmal_port_event_get(i32* %61, %struct.TYPE_17__** %9, i32 %64)
  store i64 %65, i64* %10, align 8
  %66 = load i64, i64* %10, align 8
  %67 = load i64, i64* @MMAL_SUCCESS, align 8
  %68 = icmp ne i64 %66, %67
  br i1 %68, label %69, label %73

69:                                               ; preds = %60
  %70 = load i64, i64* %10, align 8
  %71 = trunc i64 %70 to i32
  %72 = call i32 (i8*, ...) @LOG_ERROR(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i32 %71)
  br label %210

73:                                               ; preds = %60
  %74 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %78 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp sle i64 %76, %79
  %81 = zext i1 %80 to i32
  %82 = call i32 @vcos_verify(i32 %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %94, label %84

84:                                               ; preds = %73
  %85 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %86 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = trunc i64 %87 to i32
  %89 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %90 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = trunc i64 %91 to i32
  %93 = call i32 (i8*, ...) @LOG_ERROR(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), i32 %88, i32 %92)
  br label %210

94:                                               ; preds = %73
  %95 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %96 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = trunc i64 %97 to i32
  %99 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %100 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %99, i32 0, i32 1
  store i32 %98, i32* %100, align 8
  %101 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %102 = call %struct.TYPE_13__* @mmal_buffer_header_driver_data(%struct.TYPE_17__* %101)
  %103 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @MMAL_MAGIC, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %130

107:                                              ; preds = %94
  %108 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %109 = call %struct.TYPE_13__* @mmal_buffer_header_driver_data(%struct.TYPE_17__* %108)
  %110 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %109, i32 0, i32 1
  %111 = load %struct.TYPE_14__*, %struct.TYPE_14__** %110, align 8
  %112 = icmp ne %struct.TYPE_14__* %111, null
  br i1 %112, label %113, label %130

113:                                              ; preds = %107
  %114 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %115 = call %struct.TYPE_13__* @mmal_buffer_header_driver_data(%struct.TYPE_17__* %114)
  %116 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %115, i32 0, i32 1
  %117 = load %struct.TYPE_14__*, %struct.TYPE_14__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* @MMAL_MAGIC, align 8
  %121 = icmp eq i64 %119, %120
  br i1 %121, label %122, label %130

122:                                              ; preds = %113
  %123 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %124 = call %struct.TYPE_13__* @mmal_buffer_header_driver_data(%struct.TYPE_17__* %123)
  %125 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %124, i32 0, i32 1
  %126 = load %struct.TYPE_14__*, %struct.TYPE_14__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %126, i32 0, i32 1
  %128 = load i32 (i32*, %struct.TYPE_17__*)*, i32 (i32*, %struct.TYPE_17__*)** %127, align 8
  %129 = icmp ne i32 (i32*, %struct.TYPE_17__*)* %128, null
  br label %130

130:                                              ; preds = %122, %113, %107, %94
  %131 = phi i1 [ false, %113 ], [ false, %107 ], [ false, %94 ], [ %129, %122 ]
  %132 = zext i1 %131 to i32
  %133 = call i32 @vcos_verify(i32 %132)
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %137, label %135

135:                                              ; preds = %130
  %136 = call i32 (i8*, ...) @LOG_ERROR(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.4, i64 0, i64 0))
  br label %210

137:                                              ; preds = %130
  %138 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %139 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 8
  %141 = load i32, i32* @MMAL_WORKER_EVENT_SPACE, align 4
  %142 = icmp sgt i32 %140, %141
  br i1 %142, label %143, label %178

143:                                              ; preds = %137
  %144 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %145 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 8
  store i32 %146, i32* %12, align 4
  %147 = load i32, i32* %12, align 4
  %148 = add nsw i32 %147, 3
  %149 = and i32 %148, -4
  store i32 %149, i32* %12, align 4
  %150 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %151 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %154 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 8
  %156 = call i32 (i8*, ...) @LOG_DEBUG(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i32 %152, i32 %155)
  %157 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %158 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %159 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %158, i32 0, i32 2
  store %struct.TYPE_17__* %157, %struct.TYPE_17__** %159, align 8
  %160 = load i32, i32* %5, align 4
  %161 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %162 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %161, i32 0, i32 2
  %163 = load i32, i32* %162, align 4
  %164 = load i32, i32* %12, align 4
  %165 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %166 = call i64 @vchiq_queue_bulk_receive(i32 %160, i32 %163, i32 %164, %struct.TYPE_16__* %165)
  store i64 %166, i64* %13, align 8
  %167 = load i64, i64* %13, align 8
  %168 = load i64, i64* @VCHIQ_SUCCESS, align 8
  %169 = icmp ne i64 %167, %168
  br i1 %169, label %170, label %177

170:                                              ; preds = %143
  %171 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %172 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 8
  %174 = call i32 @LOG_TRACE(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.6, i64 0, i64 0), i32 %173)
  %175 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %176 = call i32 @mmal_buffer_header_release(%struct.TYPE_17__* %175)
  br label %210

177:                                              ; preds = %143
  br label %209

178:                                              ; preds = %137
  %179 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %180 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %179, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %195

183:                                              ; preds = %178
  %184 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %185 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %184, i32 0, i32 2
  %186 = load i32, i32* %185, align 4
  %187 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %188 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 8
  %190 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %191 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %190, i32 0, i32 0
  %192 = load i64, i64* %191, align 8
  %193 = trunc i64 %192 to i32
  %194 = call i32 @memcpy(i32 %186, i32 %189, i32 %193)
  br label %195

195:                                              ; preds = %183, %178
  %196 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %197 = call %struct.TYPE_13__* @mmal_buffer_header_driver_data(%struct.TYPE_17__* %196)
  %198 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %197, i32 0, i32 1
  %199 = load %struct.TYPE_14__*, %struct.TYPE_14__** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %199, i32 0, i32 1
  %201 = load i32 (i32*, %struct.TYPE_17__*)*, i32 (i32*, %struct.TYPE_17__*)** %200, align 8
  %202 = load i32*, i32** %11, align 8
  %203 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %204 = call i32 %201(i32* %202, %struct.TYPE_17__* %203)
  %205 = call i32 (i8*, ...) @LOG_DEBUG(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0))
  %206 = load i32, i32* %5, align 4
  %207 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %208 = call i32 @vchiq_release_message(i32 %206, %struct.TYPE_16__* %207)
  br label %209

209:                                              ; preds = %195, %177
  br label %216

210:                                              ; preds = %170, %135, %84, %69, %50
  %211 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %212 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %211, i32 0, i32 0
  store i64 0, i64* %212, align 8
  %213 = load i32, i32* %5, align 4
  %214 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %215 = call i32 @vchiq_release_message(i32 %213, %struct.TYPE_16__* %214)
  br label %216

216:                                              ; preds = %210, %209
  ret void
}

declare dso_local i32 @LOG_DEBUG(i8*, ...) #1

declare dso_local i32* @mmal_vc_port_by_number(i32*, i64, i64) #1

declare dso_local i32 @vcos_verify(i32) #1

declare dso_local i32 @LOG_ERROR(i8*, ...) #1

declare dso_local i64 @mmal_port_event_get(i32*, %struct.TYPE_17__**, i32) #1

declare dso_local %struct.TYPE_13__* @mmal_buffer_header_driver_data(%struct.TYPE_17__*) #1

declare dso_local i64 @vchiq_queue_bulk_receive(i32, i32, i32, %struct.TYPE_16__*) #1

declare dso_local i32 @LOG_TRACE(i8*, i32) #1

declare dso_local i32 @mmal_buffer_header_release(%struct.TYPE_17__*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @vchiq_release_message(i32, %struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
