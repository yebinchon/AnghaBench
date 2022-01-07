; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/raspicam/extr_RaspiCamControl.c_raspicamcontrol_set_all_parameters.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/raspicam/extr_RaspiCamControl.c_raspicamcontrol_set_all_parameters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_32__ = type { i32 }
%struct.TYPE_30__ = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_31__ = type { i32, i32, i32, %struct.TYPE_29__ }
%struct.TYPE_29__ = type { i32, i32 }

@MMAL_PARAMETER_CHANGE_EVENT_REQUEST = common dso_local global i32 0, align 4
@MMAL_PARAMETER_CAMERA_SETTINGS = common dso_local global i32 0, align 4
@MMAL_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"No camera settings events\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @raspicamcontrol_set_all_parameters(%struct.TYPE_32__* %0, %struct.TYPE_30__* %1) #0 {
  %3 = alloca %struct.TYPE_32__*, align 8
  %4 = alloca %struct.TYPE_30__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_31__, align 4
  %7 = alloca i64, align 8
  store %struct.TYPE_32__* %0, %struct.TYPE_32__** %3, align 8
  store %struct.TYPE_30__* %1, %struct.TYPE_30__** %4, align 8
  %8 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %9 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %9, i32 0, i32 32
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @raspicamcontrol_set_saturation(%struct.TYPE_32__* %8, i32 %11)
  store i32 %12, i32* %5, align 4
  %13 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %14 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %14, i32 0, i32 31
  %16 = load i32, i32* %15, align 8
  %17 = call i64 @raspicamcontrol_set_sharpness(%struct.TYPE_32__* %13, i32 %16)
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = add nsw i64 %19, %17
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %5, align 4
  %22 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %23 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %23, i32 0, i32 30
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @raspicamcontrol_set_contrast(%struct.TYPE_32__* %22, i32 %25)
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = add nsw i64 %28, %26
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %5, align 4
  %31 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %32 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %32, i32 0, i32 29
  %34 = load i32, i32* %33, align 8
  %35 = call i64 @raspicamcontrol_set_brightness(%struct.TYPE_32__* %31, i32 %34)
  %36 = load i32, i32* %5, align 4
  %37 = sext i32 %36 to i64
  %38 = add nsw i64 %37, %35
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %5, align 4
  %40 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %41 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %41, i32 0, i32 28
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @raspicamcontrol_set_ISO(%struct.TYPE_32__* %40, i32 %43)
  %45 = load i32, i32* %5, align 4
  %46 = sext i32 %45 to i64
  %47 = add nsw i64 %46, %44
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %5, align 4
  %49 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %50 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %50, i32 0, i32 27
  %52 = load i32, i32* %51, align 8
  %53 = call i64 @raspicamcontrol_set_video_stabilisation(%struct.TYPE_32__* %49, i32 %52)
  %54 = load i32, i32* %5, align 4
  %55 = sext i32 %54 to i64
  %56 = add nsw i64 %55, %53
  %57 = trunc i64 %56 to i32
  store i32 %57, i32* %5, align 4
  %58 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %59 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %59, i32 0, i32 26
  %61 = load i32, i32* %60, align 4
  %62 = call i64 @raspicamcontrol_set_exposure_compensation(%struct.TYPE_32__* %58, i32 %61)
  %63 = load i32, i32* %5, align 4
  %64 = sext i32 %63 to i64
  %65 = add nsw i64 %64, %62
  %66 = trunc i64 %65 to i32
  store i32 %66, i32* %5, align 4
  %67 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %68 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %68, i32 0, i32 25
  %70 = load i32, i32* %69, align 8
  %71 = call i64 @raspicamcontrol_set_exposure_mode(%struct.TYPE_32__* %67, i32 %70)
  %72 = load i32, i32* %5, align 4
  %73 = sext i32 %72 to i64
  %74 = add nsw i64 %73, %71
  %75 = trunc i64 %74 to i32
  store i32 %75, i32* %5, align 4
  %76 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %77 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %77, i32 0, i32 24
  %79 = load i32, i32* %78, align 4
  %80 = call i64 @raspicamcontrol_set_flicker_avoid_mode(%struct.TYPE_32__* %76, i32 %79)
  %81 = load i32, i32* %5, align 4
  %82 = sext i32 %81 to i64
  %83 = add nsw i64 %82, %80
  %84 = trunc i64 %83 to i32
  store i32 %84, i32* %5, align 4
  %85 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %86 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %86, i32 0, i32 23
  %88 = load i32, i32* %87, align 8
  %89 = call i64 @raspicamcontrol_set_metering_mode(%struct.TYPE_32__* %85, i32 %88)
  %90 = load i32, i32* %5, align 4
  %91 = sext i32 %90 to i64
  %92 = add nsw i64 %91, %89
  %93 = trunc i64 %92 to i32
  store i32 %93, i32* %5, align 4
  %94 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %95 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %95, i32 0, i32 22
  %97 = load i32, i32* %96, align 4
  %98 = call i64 @raspicamcontrol_set_awb_mode(%struct.TYPE_32__* %94, i32 %97)
  %99 = load i32, i32* %5, align 4
  %100 = sext i32 %99 to i64
  %101 = add nsw i64 %100, %98
  %102 = trunc i64 %101 to i32
  store i32 %102, i32* %5, align 4
  %103 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %104 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %104, i32 0, i32 21
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %107, i32 0, i32 20
  %109 = load i32, i32* %108, align 4
  %110 = call i64 @raspicamcontrol_set_awb_gains(%struct.TYPE_32__* %103, i32 %106, i32 %109)
  %111 = load i32, i32* %5, align 4
  %112 = sext i32 %111 to i64
  %113 = add nsw i64 %112, %110
  %114 = trunc i64 %113 to i32
  store i32 %114, i32* %5, align 4
  %115 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %116 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %116, i32 0, i32 19
  %118 = load i32, i32* %117, align 8
  %119 = call i64 @raspicamcontrol_set_imageFX(%struct.TYPE_32__* %115, i32 %118)
  %120 = load i32, i32* %5, align 4
  %121 = sext i32 %120 to i64
  %122 = add nsw i64 %121, %119
  %123 = trunc i64 %122 to i32
  store i32 %123, i32* %5, align 4
  %124 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %125 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %126 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %125, i32 0, i32 18
  %127 = call i64 @raspicamcontrol_set_colourFX(%struct.TYPE_32__* %124, i32* %126)
  %128 = load i32, i32* %5, align 4
  %129 = sext i32 %128 to i64
  %130 = add nsw i64 %129, %127
  %131 = trunc i64 %130 to i32
  store i32 %131, i32* %5, align 4
  %132 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %133 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %133, i32 0, i32 17
  %135 = load i32, i32* %134, align 8
  %136 = call i64 @raspicamcontrol_set_rotation(%struct.TYPE_32__* %132, i32 %135)
  %137 = load i32, i32* %5, align 4
  %138 = sext i32 %137 to i64
  %139 = add nsw i64 %138, %136
  %140 = trunc i64 %139 to i32
  store i32 %140, i32* %5, align 4
  %141 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %142 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %143 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %142, i32 0, i32 16
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %146 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %145, i32 0, i32 15
  %147 = load i32, i32* %146, align 8
  %148 = call i64 @raspicamcontrol_set_flips(%struct.TYPE_32__* %141, i32 %144, i32 %147)
  %149 = load i32, i32* %5, align 4
  %150 = sext i32 %149 to i64
  %151 = add nsw i64 %150, %148
  %152 = trunc i64 %151 to i32
  store i32 %152, i32* %5, align 4
  %153 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %154 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %155 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %154, i32 0, i32 14
  %156 = load i32, i32* %155, align 4
  %157 = call i64 @raspicamcontrol_set_ROI(%struct.TYPE_32__* %153, i32 %156)
  %158 = load i32, i32* %5, align 4
  %159 = sext i32 %158 to i64
  %160 = add nsw i64 %159, %157
  %161 = trunc i64 %160 to i32
  store i32 %161, i32* %5, align 4
  %162 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %163 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %164 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %163, i32 0, i32 13
  %165 = load i32, i32* %164, align 8
  %166 = call i64 @raspicamcontrol_set_shutter_speed(%struct.TYPE_32__* %162, i32 %165)
  %167 = load i32, i32* %5, align 4
  %168 = sext i32 %167 to i64
  %169 = add nsw i64 %168, %166
  %170 = trunc i64 %169 to i32
  store i32 %170, i32* %5, align 4
  %171 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %172 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %173 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %172, i32 0, i32 12
  %174 = load i32, i32* %173, align 4
  %175 = call i64 @raspicamcontrol_set_DRC(%struct.TYPE_32__* %171, i32 %174)
  %176 = load i32, i32* %5, align 4
  %177 = sext i32 %176 to i64
  %178 = add nsw i64 %177, %175
  %179 = trunc i64 %178 to i32
  store i32 %179, i32* %5, align 4
  %180 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %181 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %182 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %181, i32 0, i32 11
  %183 = load i32, i32* %182, align 8
  %184 = call i64 @raspicamcontrol_set_stats_pass(%struct.TYPE_32__* %180, i32 %183)
  %185 = load i32, i32* %5, align 4
  %186 = sext i32 %185 to i64
  %187 = add nsw i64 %186, %184
  %188 = trunc i64 %187 to i32
  store i32 %188, i32* %5, align 4
  %189 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %190 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %191 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %190, i32 0, i32 10
  %192 = load i32, i32* %191, align 4
  %193 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %194 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %193, i32 0, i32 9
  %195 = load i32, i32* %194, align 8
  %196 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %197 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %196, i32 0, i32 8
  %198 = load i32, i32* %197, align 4
  %199 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %200 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %199, i32 0, i32 7
  %201 = load i32, i32* %200, align 8
  %202 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %203 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %202, i32 0, i32 6
  %204 = load i32, i32* %203, align 4
  %205 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %206 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %205, i32 0, i32 5
  %207 = load i32, i32* %206, align 8
  %208 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %209 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %208, i32 0, i32 4
  %210 = load i32, i32* %209, align 4
  %211 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %212 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %211, i32 0, i32 3
  %213 = load i32, i32* %212, align 8
  %214 = call i64 @raspicamcontrol_set_annotate(%struct.TYPE_32__* %189, i32 %192, i32 %195, i32 %198, i32 %201, i32 %204, i32 %207, i32 %210, i32 %213)
  %215 = load i32, i32* %5, align 4
  %216 = sext i32 %215 to i64
  %217 = add nsw i64 %216, %214
  %218 = trunc i64 %217 to i32
  store i32 %218, i32* %5, align 4
  %219 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %220 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %221 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %220, i32 0, i32 2
  %222 = load i32, i32* %221, align 4
  %223 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %224 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %223, i32 0, i32 1
  %225 = load i32, i32* %224, align 8
  %226 = call i64 @raspicamcontrol_set_gains(%struct.TYPE_32__* %219, i32 %222, i32 %225)
  %227 = load i32, i32* %5, align 4
  %228 = sext i32 %227 to i64
  %229 = add nsw i64 %228, %226
  %230 = trunc i64 %229 to i32
  store i32 %230, i32* %5, align 4
  %231 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %232 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %231, i32 0, i32 0
  %233 = load i64, i64* %232, align 8
  %234 = icmp ne i64 %233, 0
  br i1 %234, label %235, label %259

235:                                              ; preds = %2
  %236 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %6, i32 0, i32 0
  %237 = load i32, i32* @MMAL_PARAMETER_CHANGE_EVENT_REQUEST, align 4
  store i32 %237, i32* %236, align 4
  %238 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %6, i32 0, i32 1
  %239 = load i32, i32* @MMAL_PARAMETER_CAMERA_SETTINGS, align 4
  store i32 %239, i32* %238, align 4
  %240 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %6, i32 0, i32 2
  store i32 1, i32* %240, align 4
  %241 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %6, i32 0, i32 3
  %242 = bitcast %struct.TYPE_29__* %241 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %242, i8 0, i64 8, i1 false)
  %243 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %244 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 4
  %246 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %6, i32 0, i32 1
  %247 = call i64 @mmal_port_parameter_set(i32 %245, i32* %246)
  store i64 %247, i64* %7, align 8
  %248 = load i64, i64* %7, align 8
  %249 = load i64, i64* @MMAL_SUCCESS, align 8
  %250 = icmp ne i64 %248, %249
  br i1 %250, label %251, label %253

251:                                              ; preds = %235
  %252 = call i32 @vcos_log_error(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %253

253:                                              ; preds = %251, %235
  %254 = load i64, i64* %7, align 8
  %255 = load i32, i32* %5, align 4
  %256 = sext i32 %255 to i64
  %257 = add nsw i64 %256, %254
  %258 = trunc i64 %257 to i32
  store i32 %258, i32* %5, align 4
  br label %259

259:                                              ; preds = %253, %2
  %260 = load i32, i32* %5, align 4
  ret i32 %260
}

declare dso_local i32 @raspicamcontrol_set_saturation(%struct.TYPE_32__*, i32) #1

declare dso_local i64 @raspicamcontrol_set_sharpness(%struct.TYPE_32__*, i32) #1

declare dso_local i64 @raspicamcontrol_set_contrast(%struct.TYPE_32__*, i32) #1

declare dso_local i64 @raspicamcontrol_set_brightness(%struct.TYPE_32__*, i32) #1

declare dso_local i64 @raspicamcontrol_set_ISO(%struct.TYPE_32__*, i32) #1

declare dso_local i64 @raspicamcontrol_set_video_stabilisation(%struct.TYPE_32__*, i32) #1

declare dso_local i64 @raspicamcontrol_set_exposure_compensation(%struct.TYPE_32__*, i32) #1

declare dso_local i64 @raspicamcontrol_set_exposure_mode(%struct.TYPE_32__*, i32) #1

declare dso_local i64 @raspicamcontrol_set_flicker_avoid_mode(%struct.TYPE_32__*, i32) #1

declare dso_local i64 @raspicamcontrol_set_metering_mode(%struct.TYPE_32__*, i32) #1

declare dso_local i64 @raspicamcontrol_set_awb_mode(%struct.TYPE_32__*, i32) #1

declare dso_local i64 @raspicamcontrol_set_awb_gains(%struct.TYPE_32__*, i32, i32) #1

declare dso_local i64 @raspicamcontrol_set_imageFX(%struct.TYPE_32__*, i32) #1

declare dso_local i64 @raspicamcontrol_set_colourFX(%struct.TYPE_32__*, i32*) #1

declare dso_local i64 @raspicamcontrol_set_rotation(%struct.TYPE_32__*, i32) #1

declare dso_local i64 @raspicamcontrol_set_flips(%struct.TYPE_32__*, i32, i32) #1

declare dso_local i64 @raspicamcontrol_set_ROI(%struct.TYPE_32__*, i32) #1

declare dso_local i64 @raspicamcontrol_set_shutter_speed(%struct.TYPE_32__*, i32) #1

declare dso_local i64 @raspicamcontrol_set_DRC(%struct.TYPE_32__*, i32) #1

declare dso_local i64 @raspicamcontrol_set_stats_pass(%struct.TYPE_32__*, i32) #1

declare dso_local i64 @raspicamcontrol_set_annotate(%struct.TYPE_32__*, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i64 @raspicamcontrol_set_gains(%struct.TYPE_32__*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i64 @mmal_port_parameter_set(i32, i32*) #1

declare dso_local i32 @vcos_log_error(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
