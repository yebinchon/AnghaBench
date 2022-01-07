; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/raspicam/extr_RaspiVidYUV.c_camera_buffer_callback.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/raspicam/extr_RaspiVidYUV.c_camera_buffer_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_28__ = type { i64, %struct.TYPE_22__*, i64 }
%struct.TYPE_22__ = type { %struct.TYPE_21__* }
%struct.TYPE_21__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i32, i32 }
%struct.TYPE_19__ = type { i32, i64, i32 }
%struct.TYPE_27__ = type { i32, i64, i32, %struct.TYPE_26__*, i32, i64, i32 }
%struct.TYPE_26__ = type { i64, i64, %struct.TYPE_25__*, %struct.TYPE_24__, i32, %struct.TYPE_23__, i64 }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_24__ = type { i32, i8*, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_23__ = type { i64 }

@camera_buffer_callback.last_second = internal global i32 -1, align 4
@.str = private unnamed_addr constant [51 x i8] c"Failed to write buffer data (%d from %d)- aborting\00", align 1
@MMAL_TIME_UNKNOWN = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [13 x i8] c"%lld.%03lld\0A\00", align 1
@ANNOTATE_APP_TEXT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [48 x i8] c"Received a camera buffer callback with no state\00", align 1
@MMAL_SUCCESS = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [45 x i8] c"Unable to return a buffer to the camera port\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_28__*, %struct.TYPE_19__*)* @camera_buffer_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @camera_buffer_callback(%struct.TYPE_28__* %0, %struct.TYPE_19__* %1) #0 {
  %3 = alloca %struct.TYPE_28__*, align 8
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca %struct.TYPE_27__*, align 8
  %7 = alloca %struct.TYPE_26__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  store %struct.TYPE_28__* %0, %struct.TYPE_28__** %3, align 8
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %4, align 8
  %14 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.TYPE_27__*
  store %struct.TYPE_27__* %17, %struct.TYPE_27__** %6, align 8
  %18 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %18, i32 0, i32 3
  %20 = load %struct.TYPE_26__*, %struct.TYPE_26__** %19, align 8
  store %struct.TYPE_26__* %20, %struct.TYPE_26__** %7, align 8
  %21 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %22 = icmp ne %struct.TYPE_27__* %21, null
  br i1 %22, label %23, label %230

23:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  %24 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %9, align 4
  %27 = call i32 (...) @get_microseconds64()
  %28 = sdiv i32 %27, 1000000
  store i32 %28, i32* %10, align 4
  %29 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %29, i32 0, i32 6
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %55

33:                                               ; preds = %23
  %34 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_22__*, %struct.TYPE_22__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_21__*, %struct.TYPE_21__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %45, i32 0, i32 1
  %47 = load %struct.TYPE_22__*, %struct.TYPE_22__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_21__*, %struct.TYPE_21__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = mul nsw i32 %44, %52
  %54 = call i32 @vcos_min(i32 %36, i32 %53)
  store i32 %54, i32* %9, align 4
  br label %55

55:                                               ; preds = %33, %23
  %56 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %56, i32 0, i32 6
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @vcos_assert(i32 %58)
  %60 = load i32, i32* %9, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %135

62:                                               ; preds = %55
  %63 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %64 = call i32 @mmal_buffer_header_mem_lock(%struct.TYPE_19__* %63)
  %65 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* %9, align 4
  %69 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %69, i32 0, i32 6
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @fwrite(i32 %67, i32 1, i32 %68, i32 %71)
  store i32 %72, i32* %8, align 4
  %73 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %74 = call i32 @mmal_buffer_header_mem_unlock(%struct.TYPE_19__* %73)
  %75 = load i32, i32* %8, align 4
  %76 = load i32, i32* %9, align 4
  %77 = icmp ne i32 %75, %76
  br i1 %77, label %78, label %84

78:                                               ; preds = %62
  %79 = load i32, i32* %8, align 4
  %80 = load i32, i32* %9, align 4
  %81 = call i32 (i8*, ...) @vcos_log_error(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %79, i32 %80)
  %82 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %82, i32 0, i32 0
  store i32 1, i32* %83, align 8
  br label %84

84:                                               ; preds = %78, %62
  %85 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %85, i32 0, i32 5
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %134

89:                                               ; preds = %84
  %90 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @MMAL_TIME_UNKNOWN, align 8
  %94 = icmp ne i64 %92, %93
  br i1 %94, label %95, label %133

95:                                               ; preds = %89
  %96 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %97 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = icmp eq i64 %98, 0
  br i1 %99, label %100, label %106

100:                                              ; preds = %95
  %101 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %105 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %104, i32 0, i32 1
  store i64 %103, i64* %105, align 8
  br label %106

106:                                              ; preds = %100, %95
  %107 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %111 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %110, i32 0, i32 1
  store i64 %109, i64* %111, align 8
  %112 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %116 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  %118 = sext i32 %117 to i64
  %119 = sub nsw i64 %114, %118
  %120 = trunc i64 %119 to i32
  store i32 %120, i32* %11, align 4
  %121 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %122 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %121, i32 0, i32 5
  %123 = load i64, i64* %122, align 8
  %124 = load i32, i32* %11, align 4
  %125 = sdiv i32 %124, 1000
  %126 = load i32, i32* %11, align 4
  %127 = srem i32 %126, 1000
  %128 = call i32 @fprintf(i64 %123, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %125, i32 %127)
  %129 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %130 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %129, i32 0, i32 4
  %131 = load i32, i32* %130, align 8
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %130, align 8
  br label %133

133:                                              ; preds = %106, %89
  br label %134

134:                                              ; preds = %133, %84
  br label %135

135:                                              ; preds = %134, %55
  %136 = load i32, i32* %10, align 4
  %137 = load i32, i32* @camera_buffer_callback.last_second, align 4
  %138 = icmp ne i32 %136, %137
  br i1 %138, label %139, label %229

139:                                              ; preds = %135
  %140 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %141 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %140, i32 0, i32 3
  %142 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = load i32, i32* @ANNOTATE_APP_TEXT, align 4
  %145 = and i32 %143, %144
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %190

147:                                              ; preds = %139
  %148 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %149 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %148, i32 0, i32 5
  %150 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %190

153:                                              ; preds = %147
  %154 = call i8* (...) @raspi_gps_location_string()
  store i8* %154, i8** %12, align 8
  %155 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %156 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %155, i32 0, i32 4
  %157 = load i32, i32* %156, align 8
  %158 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %159 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %158, i32 0, i32 3
  %160 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = load i8*, i8** %12, align 8
  %163 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %164 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %163, i32 0, i32 3
  %165 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %164, i32 0, i32 7
  %166 = load i32, i32* %165, align 4
  %167 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %168 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %167, i32 0, i32 3
  %169 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %168, i32 0, i32 6
  %170 = load i32, i32* %169, align 8
  %171 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %172 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %171, i32 0, i32 3
  %173 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %172, i32 0, i32 5
  %174 = load i32, i32* %173, align 4
  %175 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %176 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %175, i32 0, i32 3
  %177 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %176, i32 0, i32 4
  %178 = load i32, i32* %177, align 8
  %179 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %180 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %179, i32 0, i32 3
  %181 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %180, i32 0, i32 3
  %182 = load i32, i32* %181, align 4
  %183 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %184 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %183, i32 0, i32 3
  %185 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %184, i32 0, i32 2
  %186 = load i32, i32* %185, align 8
  %187 = call i32 @raspicamcontrol_set_annotate(i32 %157, i32 %161, i8* %162, i32 %166, i32 %170, i32 %174, i32 %178, i32 %182, i32 %186)
  %188 = load i8*, i8** %12, align 8
  %189 = call i32 @free(i8* %188)
  br label %227

190:                                              ; preds = %147, %139
  %191 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %192 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %191, i32 0, i32 4
  %193 = load i32, i32* %192, align 8
  %194 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %195 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %194, i32 0, i32 3
  %196 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %199 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %198, i32 0, i32 3
  %200 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %199, i32 0, i32 1
  %201 = load i8*, i8** %200, align 8
  %202 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %203 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %202, i32 0, i32 3
  %204 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %203, i32 0, i32 7
  %205 = load i32, i32* %204, align 4
  %206 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %207 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %206, i32 0, i32 3
  %208 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %207, i32 0, i32 6
  %209 = load i32, i32* %208, align 8
  %210 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %211 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %210, i32 0, i32 3
  %212 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %211, i32 0, i32 5
  %213 = load i32, i32* %212, align 4
  %214 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %215 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %214, i32 0, i32 3
  %216 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %215, i32 0, i32 4
  %217 = load i32, i32* %216, align 8
  %218 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %219 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %218, i32 0, i32 3
  %220 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %219, i32 0, i32 3
  %221 = load i32, i32* %220, align 4
  %222 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %223 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %222, i32 0, i32 3
  %224 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %223, i32 0, i32 2
  %225 = load i32, i32* %224, align 8
  %226 = call i32 @raspicamcontrol_set_annotate(i32 %193, i32 %197, i8* %201, i32 %205, i32 %209, i32 %213, i32 %217, i32 %221, i32 %225)
  br label %227

227:                                              ; preds = %190, %153
  %228 = load i32, i32* %10, align 4
  store i32 %228, i32* @camera_buffer_callback.last_second, align 4
  br label %229

229:                                              ; preds = %227, %135
  br label %232

230:                                              ; preds = %2
  %231 = call i32 (i8*, ...) @vcos_log_error(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0))
  br label %232

232:                                              ; preds = %230, %229
  %233 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %234 = call i32 @mmal_buffer_header_release(%struct.TYPE_19__* %233)
  %235 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %236 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %235, i32 0, i32 0
  %237 = load i64, i64* %236, align 8
  %238 = icmp ne i64 %237, 0
  br i1 %238, label %239, label %264

239:                                              ; preds = %232
  %240 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %241 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %240, i32 0, i32 3
  %242 = load %struct.TYPE_26__*, %struct.TYPE_26__** %241, align 8
  %243 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %242, i32 0, i32 2
  %244 = load %struct.TYPE_25__*, %struct.TYPE_25__** %243, align 8
  %245 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 4
  %247 = call %struct.TYPE_19__* @mmal_queue_get(i32 %246)
  store %struct.TYPE_19__* %247, %struct.TYPE_19__** %5, align 8
  %248 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %249 = icmp ne %struct.TYPE_19__* %248, null
  br i1 %249, label %250, label %254

250:                                              ; preds = %239
  %251 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %252 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %253 = call i64 @mmal_port_send_buffer(%struct.TYPE_28__* %251, %struct.TYPE_19__* %252)
  store i64 %253, i64* %13, align 8
  br label %254

254:                                              ; preds = %250, %239
  %255 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %256 = icmp ne %struct.TYPE_19__* %255, null
  br i1 %256, label %257, label %261

257:                                              ; preds = %254
  %258 = load i64, i64* %13, align 8
  %259 = load i64, i64* @MMAL_SUCCESS, align 8
  %260 = icmp ne i64 %258, %259
  br i1 %260, label %261, label %263

261:                                              ; preds = %257, %254
  %262 = call i32 (i8*, ...) @vcos_log_error(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0))
  br label %263

263:                                              ; preds = %261, %257
  br label %264

264:                                              ; preds = %263, %232
  ret void
}

declare dso_local i32 @get_microseconds64(...) #1

declare dso_local i32 @vcos_min(i32, i32) #1

declare dso_local i32 @vcos_assert(i32) #1

declare dso_local i32 @mmal_buffer_header_mem_lock(%struct.TYPE_19__*) #1

declare dso_local i32 @fwrite(i32, i32, i32, i32) #1

declare dso_local i32 @mmal_buffer_header_mem_unlock(%struct.TYPE_19__*) #1

declare dso_local i32 @vcos_log_error(i8*, ...) #1

declare dso_local i32 @fprintf(i64, i8*, i32, i32) #1

declare dso_local i8* @raspi_gps_location_string(...) #1

declare dso_local i32 @raspicamcontrol_set_annotate(i32, i32, i8*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @mmal_buffer_header_release(%struct.TYPE_19__*) #1

declare dso_local %struct.TYPE_19__* @mmal_queue_get(i32) #1

declare dso_local i64 @mmal_port_send_buffer(%struct.TYPE_28__*, %struct.TYPE_19__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
