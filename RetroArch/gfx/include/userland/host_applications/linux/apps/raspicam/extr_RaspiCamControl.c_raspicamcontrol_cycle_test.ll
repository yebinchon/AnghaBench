; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/raspicam/extr_RaspiCamControl.c_raspicamcontrol_cycle_test.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/raspicam/extr_RaspiCamControl.c_raspicamcontrol_cycle_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32 }

@raspicamcontrol_cycle_test.parameter = internal global i32 0, align 4
@raspicamcontrol_cycle_test.parameter_option = internal global i32 128, align 4
@exposure_map_size = common dso_local global i32 0, align 4
@exposure_map = common dso_local global %struct.TYPE_8__* null, align 8
@MMAL_PARAM_EXPOSUREMODE_AUTO = common dso_local global i32 0, align 4
@awb_map_size = common dso_local global i32 0, align 4
@awb_map = common dso_local global %struct.TYPE_9__* null, align 8
@MMAL_PARAM_AWBMODE_AUTO = common dso_local global i32 0, align 4
@imagefx_map_size = common dso_local global i32 0, align 4
@imagefx_map = common dso_local global %struct.TYPE_7__* null, align 8
@MMAL_PARAM_IMAGEFX_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @raspicamcontrol_cycle_test(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_6__, align 4
  store i32* %0, i32** %3, align 8
  %5 = load i32*, i32** %3, align 8
  %6 = call i32 @vcos_assert(i32* %5)
  %7 = load i32, i32* @raspicamcontrol_cycle_test.parameter, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %22

9:                                                ; preds = %1
  %10 = call i64 @update_cycle_parameter(i32* @raspicamcontrol_cycle_test.parameter_option, i32 -100, i32 100, i32 10)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %9
  %13 = load i32*, i32** %3, align 8
  %14 = load i32, i32* @raspicamcontrol_cycle_test.parameter_option, align 4
  %15 = call i32 @raspicamcontrol_set_sharpness(i32* %13, i32 %14)
  br label %21

16:                                               ; preds = %9
  %17 = load i32*, i32** %3, align 8
  %18 = call i32 @raspicamcontrol_set_sharpness(i32* %17, i32 0)
  %19 = load i32, i32* @raspicamcontrol_cycle_test.parameter, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* @raspicamcontrol_cycle_test.parameter, align 4
  br label %21

21:                                               ; preds = %16, %12
  br label %138

22:                                               ; preds = %1
  %23 = load i32, i32* @raspicamcontrol_cycle_test.parameter, align 4
  %24 = icmp eq i32 %23, 1
  br i1 %24, label %25, label %38

25:                                               ; preds = %22
  %26 = call i64 @update_cycle_parameter(i32* @raspicamcontrol_cycle_test.parameter_option, i32 -100, i32 100, i32 10)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %25
  %29 = load i32*, i32** %3, align 8
  %30 = load i32, i32* @raspicamcontrol_cycle_test.parameter_option, align 4
  %31 = call i32 @raspicamcontrol_set_contrast(i32* %29, i32 %30)
  br label %37

32:                                               ; preds = %25
  %33 = load i32*, i32** %3, align 8
  %34 = call i32 @raspicamcontrol_set_contrast(i32* %33, i32 0)
  %35 = load i32, i32* @raspicamcontrol_cycle_test.parameter, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* @raspicamcontrol_cycle_test.parameter, align 4
  br label %37

37:                                               ; preds = %32, %28
  br label %137

38:                                               ; preds = %22
  %39 = load i32, i32* @raspicamcontrol_cycle_test.parameter, align 4
  %40 = icmp eq i32 %39, 2
  br i1 %40, label %41, label %54

41:                                               ; preds = %38
  %42 = call i64 @update_cycle_parameter(i32* @raspicamcontrol_cycle_test.parameter_option, i32 0, i32 100, i32 10)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %41
  %45 = load i32*, i32** %3, align 8
  %46 = load i32, i32* @raspicamcontrol_cycle_test.parameter_option, align 4
  %47 = call i32 @raspicamcontrol_set_brightness(i32* %45, i32 %46)
  br label %53

48:                                               ; preds = %41
  %49 = load i32*, i32** %3, align 8
  %50 = call i32 @raspicamcontrol_set_brightness(i32* %49, i32 50)
  %51 = load i32, i32* @raspicamcontrol_cycle_test.parameter, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* @raspicamcontrol_cycle_test.parameter, align 4
  br label %53

53:                                               ; preds = %48, %44
  br label %136

54:                                               ; preds = %38
  %55 = load i32, i32* @raspicamcontrol_cycle_test.parameter, align 4
  %56 = icmp eq i32 %55, 3
  br i1 %56, label %57, label %70

57:                                               ; preds = %54
  %58 = call i64 @update_cycle_parameter(i32* @raspicamcontrol_cycle_test.parameter_option, i32 -100, i32 100, i32 10)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %57
  %61 = load i32*, i32** %3, align 8
  %62 = load i32, i32* @raspicamcontrol_cycle_test.parameter_option, align 4
  %63 = call i32 @raspicamcontrol_set_saturation(i32* %61, i32 %62)
  br label %69

64:                                               ; preds = %57
  %65 = load i32, i32* @raspicamcontrol_cycle_test.parameter, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* @raspicamcontrol_cycle_test.parameter, align 4
  %67 = load i32*, i32** %3, align 8
  %68 = call i32 @raspicamcontrol_set_saturation(i32* %67, i32 0)
  br label %69

69:                                               ; preds = %64, %60
  br label %135

70:                                               ; preds = %54
  %71 = load i32, i32* @raspicamcontrol_cycle_test.parameter, align 4
  %72 = icmp eq i32 %71, 4
  br i1 %72, label %73, label %86

73:                                               ; preds = %70
  %74 = call i64 @update_cycle_parameter(i32* @raspicamcontrol_cycle_test.parameter_option, i32 -10, i32 10, i32 4)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %73
  %77 = load i32*, i32** %3, align 8
  %78 = load i32, i32* @raspicamcontrol_cycle_test.parameter_option, align 4
  %79 = call i32 @raspicamcontrol_set_exposure_compensation(i32* %77, i32 %78)
  br label %85

80:                                               ; preds = %73
  %81 = load i32*, i32** %3, align 8
  %82 = call i32 @raspicamcontrol_set_exposure_compensation(i32* %81, i32 0)
  %83 = load i32, i32* @raspicamcontrol_cycle_test.parameter, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* @raspicamcontrol_cycle_test.parameter, align 4
  br label %85

85:                                               ; preds = %80, %76
  br label %134

86:                                               ; preds = %70
  %87 = load i32, i32* @raspicamcontrol_cycle_test.parameter, align 4
  %88 = icmp eq i32 %87, 5
  br i1 %88, label %89, label %109

89:                                               ; preds = %86
  %90 = load i32, i32* @exposure_map_size, align 4
  %91 = call i64 @update_cycle_parameter(i32* @raspicamcontrol_cycle_test.parameter_option, i32 0, i32 %90, i32 1)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %102

93:                                               ; preds = %89
  %94 = load i32*, i32** %3, align 8
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** @exposure_map, align 8
  %96 = load i32, i32* @raspicamcontrol_cycle_test.parameter_option, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @raspicamcontrol_set_exposure_mode(i32* %94, i32 %100)
  br label %108

102:                                              ; preds = %89
  %103 = load i32*, i32** %3, align 8
  %104 = load i32, i32* @MMAL_PARAM_EXPOSUREMODE_AUTO, align 4
  %105 = call i32 @raspicamcontrol_set_exposure_mode(i32* %103, i32 %104)
  %106 = load i32, i32* @raspicamcontrol_cycle_test.parameter, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* @raspicamcontrol_cycle_test.parameter, align 4
  br label %108

108:                                              ; preds = %102, %93
  br label %133

109:                                              ; preds = %86
  %110 = load i32, i32* @raspicamcontrol_cycle_test.parameter, align 4
  %111 = icmp eq i32 %110, 6
  br i1 %111, label %112, label %132

112:                                              ; preds = %109
  %113 = load i32, i32* @awb_map_size, align 4
  %114 = call i64 @update_cycle_parameter(i32* @raspicamcontrol_cycle_test.parameter_option, i32 0, i32 %113, i32 1)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %125

116:                                              ; preds = %112
  %117 = load i32*, i32** %3, align 8
  %118 = load %struct.TYPE_9__*, %struct.TYPE_9__** @awb_map, align 8
  %119 = load i32, i32* @raspicamcontrol_cycle_test.parameter_option, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @raspicamcontrol_set_awb_mode(i32* %117, i32 %123)
  br label %131

125:                                              ; preds = %112
  %126 = load i32*, i32** %3, align 8
  %127 = load i32, i32* @MMAL_PARAM_AWBMODE_AUTO, align 4
  %128 = call i32 @raspicamcontrol_set_awb_mode(i32* %126, i32 %127)
  %129 = load i32, i32* @raspicamcontrol_cycle_test.parameter, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* @raspicamcontrol_cycle_test.parameter, align 4
  br label %131

131:                                              ; preds = %125, %116
  br label %132

132:                                              ; preds = %131, %109
  br label %133

133:                                              ; preds = %132, %108
  br label %134

134:                                              ; preds = %133, %85
  br label %135

135:                                              ; preds = %134, %69
  br label %136

136:                                              ; preds = %135, %53
  br label %137

137:                                              ; preds = %136, %37
  br label %138

138:                                              ; preds = %137, %21
  %139 = load i32, i32* @raspicamcontrol_cycle_test.parameter, align 4
  %140 = icmp eq i32 %139, 7
  br i1 %140, label %141, label %161

141:                                              ; preds = %138
  %142 = load i32, i32* @imagefx_map_size, align 4
  %143 = call i64 @update_cycle_parameter(i32* @raspicamcontrol_cycle_test.parameter_option, i32 0, i32 %142, i32 1)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %154

145:                                              ; preds = %141
  %146 = load i32*, i32** %3, align 8
  %147 = load %struct.TYPE_7__*, %struct.TYPE_7__** @imagefx_map, align 8
  %148 = load i32, i32* @raspicamcontrol_cycle_test.parameter_option, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %147, i64 %149
  %151 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @raspicamcontrol_set_imageFX(i32* %146, i32 %152)
  br label %160

154:                                              ; preds = %141
  %155 = load i32*, i32** %3, align 8
  %156 = load i32, i32* @MMAL_PARAM_IMAGEFX_NONE, align 4
  %157 = call i32 @raspicamcontrol_set_imageFX(i32* %155, i32 %156)
  %158 = load i32, i32* @raspicamcontrol_cycle_test.parameter, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* @raspicamcontrol_cycle_test.parameter, align 4
  br label %160

160:                                              ; preds = %154, %145
  br label %161

161:                                              ; preds = %160, %138
  %162 = load i32, i32* @raspicamcontrol_cycle_test.parameter, align 4
  %163 = icmp eq i32 %162, 8
  br i1 %163, label %164, label %180

164:                                              ; preds = %161
  %165 = bitcast %struct.TYPE_6__* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %165, i8 0, i64 24, i1 false)
  %166 = load i32, i32* @raspicamcontrol_cycle_test.parameter_option, align 4
  switch i32 %166, label %177 [
    i32 128, label %167
    i32 1, label %170
    i32 2, label %173
  ]

167:                                              ; preds = %164
  store i32 1, i32* @raspicamcontrol_cycle_test.parameter_option, align 4
  %168 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 0
  store i32 128, i32* %168, align 4
  %169 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 1
  store i32 128, i32* %169, align 4
  br label %177

170:                                              ; preds = %164
  store i32 2, i32* @raspicamcontrol_cycle_test.parameter_option, align 4
  %171 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 0
  store i32 100, i32* %171, align 4
  %172 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 1
  store i32 200, i32* %172, align 4
  br label %177

173:                                              ; preds = %164
  store i32 128, i32* @raspicamcontrol_cycle_test.parameter_option, align 4
  %174 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 2
  store i32 0, i32* %174, align 4
  %175 = load i32, i32* @raspicamcontrol_cycle_test.parameter, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* @raspicamcontrol_cycle_test.parameter, align 4
  br label %177

177:                                              ; preds = %164, %173, %170, %167
  %178 = load i32*, i32** %3, align 8
  %179 = call i32 @raspicamcontrol_set_colourFX(i32* %178, %struct.TYPE_6__* %4)
  br label %180

180:                                              ; preds = %177, %161
  %181 = load i32, i32* @raspicamcontrol_cycle_test.parameter, align 4
  %182 = icmp eq i32 %181, 9
  br i1 %182, label %183, label %211

183:                                              ; preds = %180
  %184 = load i32, i32* @raspicamcontrol_cycle_test.parameter_option, align 4
  switch i32 %184, label %210 [
    i32 128, label %185
    i32 1, label %188
    i32 2, label %191
    i32 3, label %194
    i32 4, label %199
    i32 5, label %202
    i32 6, label %205
  ]

185:                                              ; preds = %183
  %186 = load i32*, i32** %3, align 8
  %187 = call i32 @raspicamcontrol_set_rotation(i32* %186, i32 90)
  store i32 1, i32* @raspicamcontrol_cycle_test.parameter_option, align 4
  br label %210

188:                                              ; preds = %183
  %189 = load i32*, i32** %3, align 8
  %190 = call i32 @raspicamcontrol_set_rotation(i32* %189, i32 180)
  store i32 2, i32* @raspicamcontrol_cycle_test.parameter_option, align 4
  br label %210

191:                                              ; preds = %183
  %192 = load i32*, i32** %3, align 8
  %193 = call i32 @raspicamcontrol_set_rotation(i32* %192, i32 270)
  store i32 3, i32* @raspicamcontrol_cycle_test.parameter_option, align 4
  br label %210

194:                                              ; preds = %183
  %195 = load i32*, i32** %3, align 8
  %196 = call i32 @raspicamcontrol_set_rotation(i32* %195, i32 0)
  %197 = load i32*, i32** %3, align 8
  %198 = call i32 @raspicamcontrol_set_flips(i32* %197, i32 1, i32 0)
  store i32 4, i32* @raspicamcontrol_cycle_test.parameter_option, align 4
  br label %210

199:                                              ; preds = %183
  %200 = load i32*, i32** %3, align 8
  %201 = call i32 @raspicamcontrol_set_flips(i32* %200, i32 0, i32 1)
  store i32 5, i32* @raspicamcontrol_cycle_test.parameter_option, align 4
  br label %210

202:                                              ; preds = %183
  %203 = load i32*, i32** %3, align 8
  %204 = call i32 @raspicamcontrol_set_flips(i32* %203, i32 1, i32 1)
  store i32 6, i32* @raspicamcontrol_cycle_test.parameter_option, align 4
  br label %210

205:                                              ; preds = %183
  %206 = load i32*, i32** %3, align 8
  %207 = call i32 @raspicamcontrol_set_flips(i32* %206, i32 0, i32 0)
  store i32 128, i32* @raspicamcontrol_cycle_test.parameter_option, align 4
  %208 = load i32, i32* @raspicamcontrol_cycle_test.parameter, align 4
  %209 = add nsw i32 %208, 1
  store i32 %209, i32* @raspicamcontrol_cycle_test.parameter, align 4
  br label %210

210:                                              ; preds = %183, %205, %202, %199, %194, %191, %188, %185
  br label %211

211:                                              ; preds = %210, %180
  %212 = load i32, i32* @raspicamcontrol_cycle_test.parameter, align 4
  %213 = icmp eq i32 %212, 10
  br i1 %213, label %214, label %215

214:                                              ; preds = %211
  store i32 1, i32* @raspicamcontrol_cycle_test.parameter, align 4
  store i32 0, i32* %2, align 4
  br label %216

215:                                              ; preds = %211
  store i32 1, i32* %2, align 4
  br label %216

216:                                              ; preds = %215, %214
  %217 = load i32, i32* %2, align 4
  ret i32 %217
}

declare dso_local i32 @vcos_assert(i32*) #1

declare dso_local i64 @update_cycle_parameter(i32*, i32, i32, i32) #1

declare dso_local i32 @raspicamcontrol_set_sharpness(i32*, i32) #1

declare dso_local i32 @raspicamcontrol_set_contrast(i32*, i32) #1

declare dso_local i32 @raspicamcontrol_set_brightness(i32*, i32) #1

declare dso_local i32 @raspicamcontrol_set_saturation(i32*, i32) #1

declare dso_local i32 @raspicamcontrol_set_exposure_compensation(i32*, i32) #1

declare dso_local i32 @raspicamcontrol_set_exposure_mode(i32*, i32) #1

declare dso_local i32 @raspicamcontrol_set_awb_mode(i32*, i32) #1

declare dso_local i32 @raspicamcontrol_set_imageFX(i32*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @raspicamcontrol_set_colourFX(i32*, %struct.TYPE_6__*) #1

declare dso_local i32 @raspicamcontrol_set_rotation(i32*, i32) #1

declare dso_local i32 @raspicamcontrol_set_flips(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
