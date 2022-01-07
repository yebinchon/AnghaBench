; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_decavcodec.c_decodeAudio.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_decavcodec.c_decodeAudio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_35__ = type { i64, i32, i64, i32, %struct.TYPE_30__*, i32, %struct.TYPE_33__*, i32, i32, %struct.TYPE_28__* }
%struct.TYPE_30__ = type { i32, i32, i64, i64, i64, i32, i32 }
%struct.TYPE_33__ = type { %struct.TYPE_32__ }
%struct.TYPE_32__ = type { %struct.TYPE_31__ }
%struct.TYPE_31__ = type { i32, i64, i64 }
%struct.TYPE_28__ = type { i32 }
%struct.TYPE_34__ = type { i64, i32, i32, i64, i32* }
%struct.TYPE_37__ = type { i64, i32, i64, i32*, i64 }
%struct.TYPE_36__ = type { i32, %struct.TYPE_29__, i64 }
%struct.TYPE_29__ = type { i64, double, i64, i32 }
%struct.TYPE_38__ = type { i64 }
%struct.TYPE_27__ = type { double, double, double, double, i32 }

@AV_NOPTS_VALUE = common dso_local global i64 0, align 8
@AV_PKT_FLAG_DISCARD = common dso_local global i32 0, align 4
@AVERROR_EOF = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@HB_ACODEC_PASS_FLAG = common dso_local global i32 0, align 4
@AV_FRAME_DATA_DOWNMIX_INFO = common dso_local global i32 0, align 4
@HB_AMIXDOWN_DOLBY = common dso_local global i64 0, align 8
@HB_AMIXDOWN_DOLBYPLII = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [46 x i8] c"decavcodec: hb_audio_resample_update() failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_35__*, %struct.TYPE_34__*)* @decodeAudio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @decodeAudio(%struct.TYPE_35__* %0, %struct.TYPE_34__* %1) #0 {
  %3 = alloca %struct.TYPE_35__*, align 8
  %4 = alloca %struct.TYPE_34__*, align 8
  %5 = alloca %struct.TYPE_28__*, align 8
  %6 = alloca %struct.TYPE_37__, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_36__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca double, align 8
  %12 = alloca %struct.TYPE_38__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca %struct.TYPE_27__*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca double, align 8
  store %struct.TYPE_35__* %0, %struct.TYPE_35__** %3, align 8
  store %struct.TYPE_34__* %1, %struct.TYPE_34__** %4, align 8
  %22 = load %struct.TYPE_35__*, %struct.TYPE_35__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %22, i32 0, i32 9
  %24 = load %struct.TYPE_28__*, %struct.TYPE_28__** %23, align 8
  store %struct.TYPE_28__* %24, %struct.TYPE_28__** %5, align 8
  %25 = load %struct.TYPE_35__*, %struct.TYPE_35__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @AV_NOPTS_VALUE, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %45

30:                                               ; preds = %2
  %31 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %32 = icmp ne %struct.TYPE_34__* %31, null
  br i1 %32, label %33, label %45

33:                                               ; preds = %30
  %34 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @AV_NOPTS_VALUE, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %45

39:                                               ; preds = %33
  %40 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.TYPE_35__*, %struct.TYPE_35__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %43, i32 0, i32 0
  store i64 %42, i64* %44, align 8
  br label %45

45:                                               ; preds = %39, %33, %30, %2
  %46 = call i32 @av_init_packet(%struct.TYPE_37__* %6)
  %47 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %48 = icmp ne %struct.TYPE_34__* %47, null
  br i1 %48, label %49, label %72

49:                                               ; preds = %45
  %50 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %50, i32 0, i32 4
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %6, i32 0, i32 3
  store i32* %52, i32** %53, align 8
  %54 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %54, i32 0, i32 3
  %56 = load i64, i64* %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %6, i32 0, i32 2
  store i64 %56, i64* %57, align 8
  %58 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %6, i32 0, i32 0
  store i64 %60, i64* %61, align 8
  %62 = load i64, i64* @AV_NOPTS_VALUE, align 8
  %63 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %6, i32 0, i32 4
  store i64 %62, i64* %63, align 8
  %64 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @AV_PKT_FLAG_DISCARD, align 4
  %68 = mul nsw i32 %66, %67
  %69 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %6, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = or i32 %70, %68
  store i32 %71, i32* %69, align 8
  br label %75

72:                                               ; preds = %45
  %73 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %6, i32 0, i32 3
  store i32* null, i32** %73, align 8
  %74 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %6, i32 0, i32 2
  store i64 0, i64* %74, align 8
  br label %75

75:                                               ; preds = %72, %49
  %76 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %77 = call i32 @avcodec_send_packet(%struct.TYPE_28__* %76, %struct.TYPE_37__* %6)
  store i32 %77, i32* %7, align 4
  %78 = load i32, i32* %7, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %75
  %81 = load i32, i32* %7, align 4
  %82 = load i32, i32* @AVERROR_EOF, align 4
  %83 = icmp ne i32 %81, %82
  br i1 %83, label %84, label %86

84:                                               ; preds = %80
  %85 = call i32 @av_packet_unref(%struct.TYPE_37__* %6)
  br label %467

86:                                               ; preds = %80, %75
  br label %87

87:                                               ; preds = %462, %86
  %88 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %89 = load %struct.TYPE_35__*, %struct.TYPE_35__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %89, i32 0, i32 4
  %91 = load %struct.TYPE_30__*, %struct.TYPE_30__** %90, align 8
  %92 = call i32 @avcodec_receive_frame(%struct.TYPE_28__* %88, %struct.TYPE_30__* %91)
  store i32 %92, i32* %7, align 4
  %93 = load i32, i32* %7, align 4
  %94 = icmp slt i32 %93, 0
  br i1 %94, label %95, label %109

95:                                               ; preds = %87
  %96 = load i32, i32* %7, align 4
  %97 = load i32, i32* @EAGAIN, align 4
  %98 = call i32 @AVERROR(i32 %97)
  %99 = icmp ne i32 %96, %98
  br i1 %99, label %100, label %109

100:                                              ; preds = %95
  %101 = load i32, i32* %7, align 4
  %102 = load i32, i32* @AVERROR_EOF, align 4
  %103 = icmp ne i32 %101, %102
  br i1 %103, label %104, label %109

104:                                              ; preds = %100
  %105 = load %struct.TYPE_35__*, %struct.TYPE_35__** %3, align 8
  %106 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %105, i32 0, i32 8
  %107 = load i32, i32* %106, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %106, align 4
  br label %109

109:                                              ; preds = %104, %100, %95, %87
  %110 = load i32, i32* %7, align 4
  %111 = icmp slt i32 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %109
  br label %465

113:                                              ; preds = %109
  %114 = load %struct.TYPE_35__*, %struct.TYPE_35__** %3, align 8
  %115 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %114, i32 0, i32 4
  %116 = load %struct.TYPE_30__*, %struct.TYPE_30__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %126

120:                                              ; preds = %113
  %121 = load %struct.TYPE_35__*, %struct.TYPE_35__** %3, align 8
  %122 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %121, i32 0, i32 4
  %123 = load %struct.TYPE_30__*, %struct.TYPE_30__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  store i32 %125, i32* %9, align 4
  br label %130

126:                                              ; preds = %113
  %127 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  store i32 %129, i32* %9, align 4
  br label %130

130:                                              ; preds = %126, %120
  %131 = load %struct.TYPE_35__*, %struct.TYPE_35__** %3, align 8
  %132 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %131, i32 0, i32 4
  %133 = load %struct.TYPE_30__*, %struct.TYPE_30__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = sitofp i32 %135 to double
  %137 = fmul double 9.000000e+04, %136
  %138 = load i32, i32* %9, align 4
  %139 = sitofp i32 %138 to double
  %140 = fdiv double %137, %139
  %141 = fptosi double %140 to i32
  %142 = load %struct.TYPE_35__*, %struct.TYPE_35__** %3, align 8
  %143 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %142, i32 0, i32 1
  store i32 %141, i32* %143, align 8
  %144 = load %struct.TYPE_35__*, %struct.TYPE_35__** %3, align 8
  %145 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %144, i32 0, i32 4
  %146 = load %struct.TYPE_30__*, %struct.TYPE_30__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %146, i32 0, i32 2
  %148 = load i64, i64* %147, align 8
  store i64 %148, i64* %10, align 8
  %149 = load %struct.TYPE_35__*, %struct.TYPE_35__** %3, align 8
  %150 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 8
  %152 = sitofp i32 %151 to double
  store double %152, double* %11, align 8
  %153 = load %struct.TYPE_35__*, %struct.TYPE_35__** %3, align 8
  %154 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %153, i32 0, i32 6
  %155 = load %struct.TYPE_33__*, %struct.TYPE_33__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = load i32, i32* @HB_ACODEC_PASS_FLAG, align 4
  %161 = and i32 %159, %160
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %175

163:                                              ; preds = %130
  %164 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %6, i32 0, i32 2
  %165 = load i64, i64* %164, align 8
  %166 = call %struct.TYPE_36__* @hb_buffer_init(i64 %165)
  store %struct.TYPE_36__* %166, %struct.TYPE_36__** %8, align 8
  %167 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %168 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %167, i32 0, i32 2
  %169 = load i64, i64* %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %6, i32 0, i32 3
  %171 = load i32*, i32** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %6, i32 0, i32 2
  %173 = load i64, i64* %172, align 8
  %174 = call i32 @memcpy(i64 %169, i32* %171, i64 %173)
  br label %389

175:                                              ; preds = %130
  %176 = load %struct.TYPE_35__*, %struct.TYPE_35__** %3, align 8
  %177 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %176, i32 0, i32 4
  %178 = load %struct.TYPE_30__*, %struct.TYPE_30__** %177, align 8
  %179 = load i32, i32* @AV_FRAME_DATA_DOWNMIX_INFO, align 4
  %180 = call %struct.TYPE_38__* @av_frame_get_side_data(%struct.TYPE_30__* %178, i32 %179)
  store %struct.TYPE_38__* %180, %struct.TYPE_38__** %12, align 8
  %181 = icmp ne %struct.TYPE_38__* %180, null
  br i1 %181, label %182, label %230

182:                                              ; preds = %175
  %183 = load %struct.TYPE_38__*, %struct.TYPE_38__** %12, align 8
  %184 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %183, i32 0, i32 0
  %185 = load i64, i64* %184, align 8
  %186 = inttoptr i64 %185 to %struct.TYPE_27__*
  store %struct.TYPE_27__* %186, %struct.TYPE_27__** %16, align 8
  %187 = load %struct.TYPE_35__*, %struct.TYPE_35__** %3, align 8
  %188 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %187, i32 0, i32 6
  %189 = load %struct.TYPE_33__*, %struct.TYPE_33__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %189, i32 0, i32 0
  %191 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %191, i32 0, i32 1
  %193 = load i64, i64* %192, align 8
  %194 = load i64, i64* @HB_AMIXDOWN_DOLBY, align 8
  %195 = icmp eq i64 %193, %194
  br i1 %195, label %206, label %196

196:                                              ; preds = %182
  %197 = load %struct.TYPE_35__*, %struct.TYPE_35__** %3, align 8
  %198 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %197, i32 0, i32 6
  %199 = load %struct.TYPE_33__*, %struct.TYPE_33__** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %199, i32 0, i32 0
  %201 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %200, i32 0, i32 0
  %202 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %201, i32 0, i32 1
  %203 = load i64, i64* %202, align 8
  %204 = load i64, i64* @HB_AMIXDOWN_DOLBYPLII, align 8
  %205 = icmp eq i64 %203, %204
  br i1 %205, label %206, label %213

206:                                              ; preds = %196, %182
  %207 = load %struct.TYPE_27__*, %struct.TYPE_27__** %16, align 8
  %208 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %207, i32 0, i32 0
  %209 = load double, double* %208, align 8
  store double %209, double* %14, align 8
  %210 = load %struct.TYPE_27__*, %struct.TYPE_27__** %16, align 8
  %211 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %210, i32 0, i32 1
  %212 = load double, double* %211, align 8
  store double %212, double* %15, align 8
  br label %220

213:                                              ; preds = %196
  %214 = load %struct.TYPE_27__*, %struct.TYPE_27__** %16, align 8
  %215 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %214, i32 0, i32 2
  %216 = load double, double* %215, align 8
  store double %216, double* %14, align 8
  %217 = load %struct.TYPE_27__*, %struct.TYPE_27__** %16, align 8
  %218 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %217, i32 0, i32 3
  %219 = load double, double* %218, align 8
  store double %219, double* %15, align 8
  br label %220

220:                                              ; preds = %213, %206
  %221 = load %struct.TYPE_35__*, %struct.TYPE_35__** %3, align 8
  %222 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %221, i32 0, i32 7
  %223 = load i32, i32* %222, align 8
  %224 = load double, double* %14, align 8
  %225 = load double, double* %15, align 8
  %226 = load %struct.TYPE_27__*, %struct.TYPE_27__** %16, align 8
  %227 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %226, i32 0, i32 4
  %228 = load i32, i32* %227, align 8
  %229 = call i32 @hb_audio_resample_set_mix_levels(i32 %223, double %224, double %225, i32 %228)
  br label %230

230:                                              ; preds = %220, %175
  %231 = load %struct.TYPE_35__*, %struct.TYPE_35__** %3, align 8
  %232 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %231, i32 0, i32 4
  %233 = load %struct.TYPE_30__*, %struct.TYPE_30__** %232, align 8
  %234 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %233, i32 0, i32 3
  %235 = load i64, i64* %234, align 8
  store i64 %235, i64* %13, align 8
  %236 = load i64, i64* %13, align 8
  %237 = icmp eq i64 %236, 0
  br i1 %237, label %238, label %245

238:                                              ; preds = %230
  %239 = load %struct.TYPE_35__*, %struct.TYPE_35__** %3, align 8
  %240 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %239, i32 0, i32 4
  %241 = load %struct.TYPE_30__*, %struct.TYPE_30__** %240, align 8
  %242 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %241, i32 0, i32 6
  %243 = load i32, i32* %242, align 4
  %244 = call i64 @av_get_default_channel_layout(i32 %243)
  store i64 %244, i64* %13, align 8
  br label %245

245:                                              ; preds = %238, %230
  %246 = load %struct.TYPE_35__*, %struct.TYPE_35__** %3, align 8
  %247 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %246, i32 0, i32 7
  %248 = load i32, i32* %247, align 8
  %249 = load i64, i64* %13, align 8
  %250 = call i32 @hb_audio_resample_set_channel_layout(i32 %248, i64 %249)
  %251 = load %struct.TYPE_35__*, %struct.TYPE_35__** %3, align 8
  %252 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %251, i32 0, i32 7
  %253 = load i32, i32* %252, align 8
  %254 = load %struct.TYPE_35__*, %struct.TYPE_35__** %3, align 8
  %255 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %254, i32 0, i32 4
  %256 = load %struct.TYPE_30__*, %struct.TYPE_30__** %255, align 8
  %257 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %256, i32 0, i32 5
  %258 = load i32, i32* %257, align 8
  %259 = call i32 @hb_audio_resample_set_sample_fmt(i32 %253, i32 %258)
  %260 = load %struct.TYPE_35__*, %struct.TYPE_35__** %3, align 8
  %261 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %260, i32 0, i32 7
  %262 = load i32, i32* %261, align 8
  %263 = load %struct.TYPE_35__*, %struct.TYPE_35__** %3, align 8
  %264 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %263, i32 0, i32 4
  %265 = load %struct.TYPE_30__*, %struct.TYPE_30__** %264, align 8
  %266 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %265, i32 0, i32 0
  %267 = load i32, i32* %266, align 8
  %268 = call i32 @hb_audio_resample_set_sample_rate(i32 %262, i32 %267)
  %269 = load %struct.TYPE_35__*, %struct.TYPE_35__** %3, align 8
  %270 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %269, i32 0, i32 7
  %271 = load i32, i32* %270, align 8
  %272 = call i64 @hb_audio_resample_update(i32 %271)
  %273 = icmp ne i64 %272, 0
  br i1 %273, label %274, label %281

274:                                              ; preds = %245
  %275 = call i32 @hb_log(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %276 = load %struct.TYPE_35__*, %struct.TYPE_35__** %3, align 8
  %277 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %276, i32 0, i32 4
  %278 = load %struct.TYPE_30__*, %struct.TYPE_30__** %277, align 8
  %279 = call i32 @av_frame_unref(%struct.TYPE_30__* %278)
  %280 = call i32 @av_packet_unref(%struct.TYPE_37__* %6)
  br label %467

281:                                              ; preds = %245
  %282 = load %struct.TYPE_35__*, %struct.TYPE_35__** %3, align 8
  %283 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %282, i32 0, i32 7
  %284 = load i32, i32* %283, align 8
  %285 = load %struct.TYPE_35__*, %struct.TYPE_35__** %3, align 8
  %286 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %285, i32 0, i32 4
  %287 = load %struct.TYPE_30__*, %struct.TYPE_30__** %286, align 8
  %288 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %287, i32 0, i32 4
  %289 = load i64, i64* %288, align 8
  %290 = inttoptr i64 %289 to i32**
  %291 = load %struct.TYPE_35__*, %struct.TYPE_35__** %3, align 8
  %292 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %291, i32 0, i32 4
  %293 = load %struct.TYPE_30__*, %struct.TYPE_30__** %292, align 8
  %294 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %293, i32 0, i32 1
  %295 = load i32, i32* %294, align 4
  %296 = call %struct.TYPE_36__* @hb_audio_resample(i32 %284, i32** %290, i32 %295)
  store %struct.TYPE_36__* %296, %struct.TYPE_36__** %8, align 8
  %297 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %298 = icmp ne %struct.TYPE_36__* %297, null
  br i1 %298, label %299, label %388

299:                                              ; preds = %281
  %300 = load %struct.TYPE_35__*, %struct.TYPE_35__** %3, align 8
  %301 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %300, i32 0, i32 2
  %302 = load i64, i64* %301, align 8
  %303 = icmp sgt i64 %302, 0
  br i1 %303, label %304, label %388

304:                                              ; preds = %299
  %305 = load %struct.TYPE_35__*, %struct.TYPE_35__** %3, align 8
  %306 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %305, i32 0, i32 6
  %307 = load %struct.TYPE_33__*, %struct.TYPE_33__** %306, align 8
  %308 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %307, i32 0, i32 0
  %309 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %308, i32 0, i32 0
  %310 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %309, i32 0, i32 1
  %311 = load i64, i64* %310, align 8
  %312 = call i32 @hb_mixdown_get_discrete_channel_count(i64 %311)
  store i32 %312, i32* %17, align 4
  %313 = load i32, i32* %17, align 4
  %314 = sext i32 %313 to i64
  %315 = mul i64 %314, 4
  %316 = trunc i64 %315 to i32
  store i32 %316, i32* %18, align 4
  %317 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %318 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %317, i32 0, i32 0
  %319 = load i32, i32* %318, align 8
  %320 = load i32, i32* %18, align 4
  %321 = sdiv i32 %319, %320
  store i32 %321, i32* %19, align 4
  %322 = load i32, i32* %19, align 4
  %323 = sext i32 %322 to i64
  %324 = load %struct.TYPE_35__*, %struct.TYPE_35__** %3, align 8
  %325 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %324, i32 0, i32 2
  %326 = load i64, i64* %325, align 8
  %327 = icmp sle i64 %323, %326
  br i1 %327, label %328, label %336

328:                                              ; preds = %304
  %329 = call i32 @hb_buffer_close(%struct.TYPE_36__** %8)
  %330 = load i32, i32* %19, align 4
  %331 = sext i32 %330 to i64
  %332 = load %struct.TYPE_35__*, %struct.TYPE_35__** %3, align 8
  %333 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %332, i32 0, i32 2
  %334 = load i64, i64* %333, align 8
  %335 = sub nsw i64 %334, %331
  store i64 %335, i64* %333, align 8
  br label %387

336:                                              ; preds = %304
  %337 = load %struct.TYPE_35__*, %struct.TYPE_35__** %3, align 8
  %338 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %337, i32 0, i32 2
  %339 = load i64, i64* %338, align 8
  %340 = load i32, i32* %18, align 4
  %341 = sext i32 %340 to i64
  %342 = mul nsw i64 %339, %341
  %343 = trunc i64 %342 to i32
  store i32 %343, i32* %20, align 4
  %344 = load %struct.TYPE_35__*, %struct.TYPE_35__** %3, align 8
  %345 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %344, i32 0, i32 2
  %346 = load i64, i64* %345, align 8
  %347 = mul nsw i64 %346, 90000
  %348 = load %struct.TYPE_35__*, %struct.TYPE_35__** %3, align 8
  %349 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %348, i32 0, i32 6
  %350 = load %struct.TYPE_33__*, %struct.TYPE_33__** %349, align 8
  %351 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %350, i32 0, i32 0
  %352 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %351, i32 0, i32 0
  %353 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %352, i32 0, i32 2
  %354 = load i64, i64* %353, align 8
  %355 = sdiv i64 %347, %354
  %356 = sitofp i64 %355 to double
  store double %356, double* %21, align 8
  %357 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %358 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %357, i32 0, i32 2
  %359 = load i64, i64* %358, align 8
  %360 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %361 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %360, i32 0, i32 2
  %362 = load i64, i64* %361, align 8
  %363 = load i32, i32* %20, align 4
  %364 = sext i32 %363 to i64
  %365 = add nsw i64 %362, %364
  %366 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %367 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %366, i32 0, i32 0
  %368 = load i32, i32* %367, align 8
  %369 = load i32, i32* %20, align 4
  %370 = sub nsw i32 %368, %369
  %371 = call i32 @memmove(i64 %359, i64 %365, i32 %370)
  %372 = load i32, i32* %20, align 4
  %373 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %374 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %373, i32 0, i32 0
  %375 = load i32, i32* %374, align 8
  %376 = sub nsw i32 %375, %372
  store i32 %376, i32* %374, align 8
  %377 = load double, double* %21, align 8
  %378 = load i64, i64* %10, align 8
  %379 = sitofp i64 %378 to double
  %380 = fadd double %379, %377
  %381 = fptosi double %380 to i64
  store i64 %381, i64* %10, align 8
  %382 = load double, double* %21, align 8
  %383 = load double, double* %11, align 8
  %384 = fsub double %383, %382
  store double %384, double* %11, align 8
  %385 = load %struct.TYPE_35__*, %struct.TYPE_35__** %3, align 8
  %386 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %385, i32 0, i32 2
  store i64 0, i64* %386, align 8
  br label %387

387:                                              ; preds = %336, %328
  br label %388

388:                                              ; preds = %387, %299, %281
  br label %389

389:                                              ; preds = %388, %163
  %390 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %391 = icmp ne %struct.TYPE_36__* %390, null
  br i1 %391, label %392, label %453

392:                                              ; preds = %389
  %393 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %394 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %393, i32 0, i32 2
  %395 = load i32, i32* %394, align 4
  %396 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %397 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %396, i32 0, i32 1
  %398 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %397, i32 0, i32 3
  store i32 %395, i32* %398, align 8
  %399 = load i64, i64* %10, align 8
  %400 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %401 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %400, i32 0, i32 1
  %402 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %401, i32 0, i32 0
  store i64 %399, i64* %402, align 8
  %403 = load double, double* %11, align 8
  %404 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %405 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %404, i32 0, i32 1
  %406 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %405, i32 0, i32 1
  store double %403, double* %406, align 8
  %407 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %408 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %407, i32 0, i32 1
  %409 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %408, i32 0, i32 0
  %410 = load i64, i64* %409, align 8
  %411 = load i64, i64* @AV_NOPTS_VALUE, align 8
  %412 = icmp eq i64 %410, %411
  br i1 %412, label %413, label %420

413:                                              ; preds = %392
  %414 = load %struct.TYPE_35__*, %struct.TYPE_35__** %3, align 8
  %415 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %414, i32 0, i32 0
  %416 = load i64, i64* %415, align 8
  %417 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %418 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %417, i32 0, i32 1
  %419 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %418, i32 0, i32 0
  store i64 %416, i64* %419, align 8
  br label %427

420:                                              ; preds = %392
  %421 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %422 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %421, i32 0, i32 1
  %423 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %422, i32 0, i32 0
  %424 = load i64, i64* %423, align 8
  %425 = load %struct.TYPE_35__*, %struct.TYPE_35__** %3, align 8
  %426 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %425, i32 0, i32 0
  store i64 %424, i64* %426, align 8
  br label %427

427:                                              ; preds = %420, %413
  %428 = load %struct.TYPE_35__*, %struct.TYPE_35__** %3, align 8
  %429 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %428, i32 0, i32 0
  %430 = load i64, i64* %429, align 8
  %431 = load i64, i64* @AV_NOPTS_VALUE, align 8
  %432 = icmp ne i64 %430, %431
  br i1 %432, label %433, label %448

433:                                              ; preds = %427
  %434 = load %struct.TYPE_35__*, %struct.TYPE_35__** %3, align 8
  %435 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %434, i32 0, i32 1
  %436 = load i32, i32* %435, align 8
  %437 = sext i32 %436 to i64
  %438 = load %struct.TYPE_35__*, %struct.TYPE_35__** %3, align 8
  %439 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %438, i32 0, i32 0
  %440 = load i64, i64* %439, align 8
  %441 = add nsw i64 %440, %437
  store i64 %441, i64* %439, align 8
  %442 = load %struct.TYPE_35__*, %struct.TYPE_35__** %3, align 8
  %443 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %442, i32 0, i32 0
  %444 = load i64, i64* %443, align 8
  %445 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %446 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %445, i32 0, i32 1
  %447 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %446, i32 0, i32 2
  store i64 %444, i64* %447, align 8
  br label %448

448:                                              ; preds = %433, %427
  %449 = load %struct.TYPE_35__*, %struct.TYPE_35__** %3, align 8
  %450 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %449, i32 0, i32 5
  %451 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %452 = call i32 @hb_buffer_list_append(i32* %450, %struct.TYPE_36__* %451)
  br label %453

453:                                              ; preds = %448, %389
  %454 = load %struct.TYPE_35__*, %struct.TYPE_35__** %3, align 8
  %455 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %454, i32 0, i32 4
  %456 = load %struct.TYPE_30__*, %struct.TYPE_30__** %455, align 8
  %457 = call i32 @av_frame_unref(%struct.TYPE_30__* %456)
  %458 = load %struct.TYPE_35__*, %struct.TYPE_35__** %3, align 8
  %459 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %458, i32 0, i32 3
  %460 = load i32, i32* %459, align 8
  %461 = add nsw i32 %460, 1
  store i32 %461, i32* %459, align 8
  br label %462

462:                                              ; preds = %453
  %463 = load i32, i32* %7, align 4
  %464 = icmp sge i32 %463, 0
  br i1 %464, label %87, label %465

465:                                              ; preds = %462, %112
  %466 = call i32 @av_packet_unref(%struct.TYPE_37__* %6)
  br label %467

467:                                              ; preds = %465, %274, %84
  ret void
}

declare dso_local i32 @av_init_packet(%struct.TYPE_37__*) #1

declare dso_local i32 @avcodec_send_packet(%struct.TYPE_28__*, %struct.TYPE_37__*) #1

declare dso_local i32 @av_packet_unref(%struct.TYPE_37__*) #1

declare dso_local i32 @avcodec_receive_frame(%struct.TYPE_28__*, %struct.TYPE_30__*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local %struct.TYPE_36__* @hb_buffer_init(i64) #1

declare dso_local i32 @memcpy(i64, i32*, i64) #1

declare dso_local %struct.TYPE_38__* @av_frame_get_side_data(%struct.TYPE_30__*, i32) #1

declare dso_local i32 @hb_audio_resample_set_mix_levels(i32, double, double, i32) #1

declare dso_local i64 @av_get_default_channel_layout(i32) #1

declare dso_local i32 @hb_audio_resample_set_channel_layout(i32, i64) #1

declare dso_local i32 @hb_audio_resample_set_sample_fmt(i32, i32) #1

declare dso_local i32 @hb_audio_resample_set_sample_rate(i32, i32) #1

declare dso_local i64 @hb_audio_resample_update(i32) #1

declare dso_local i32 @hb_log(i8*) #1

declare dso_local i32 @av_frame_unref(%struct.TYPE_30__*) #1

declare dso_local %struct.TYPE_36__* @hb_audio_resample(i32, i32**, i32) #1

declare dso_local i32 @hb_mixdown_get_discrete_channel_count(i64) #1

declare dso_local i32 @hb_buffer_close(%struct.TYPE_36__**) #1

declare dso_local i32 @memmove(i64, i64, i32) #1

declare dso_local i32 @hb_buffer_list_append(i32*, %struct.TYPE_36__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
