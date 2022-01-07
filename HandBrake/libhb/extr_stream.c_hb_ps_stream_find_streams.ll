; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_stream.c_hb_ps_stream_find_streams.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_stream.c_hb_ps_stream_find_streams.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_17__, i32, i32 }
%struct.TYPE_17__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32, i32, i32, i32 }
%struct.TYPE_20__ = type { i64, i64 }
%struct.TYPE_19__ = type { i32, i32, i32, i64 }

@HB_DVD_READ_BUFFER_SIZE = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@MAX_PS_PROBE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"hb_ps_stream_find_streams: Error parsing PS packet\00", align 1
@TS_HAS_PCR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Found program stream map\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"Error parsing program stream map\00", align 1
@S = common dso_local global i32 0, align 4
@WORK_DECVOBSUB = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [13 x i8] c"DVD Subtitle\00", align 1
@U = common dso_local global i32 0, align 4
@HB_ACODEC_DCA_HD = common dso_local global i32 0, align 4
@AV_CODEC_ID_DTS = common dso_local global i32 0, align 4
@A = common dso_local global i32 0, align 4
@HB_ACODEC_FFTRUEHD = common dso_local global i32 0, align 4
@AV_CODEC_ID_TRUEHD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_18__*)* @hb_ps_stream_find_streams to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hb_ps_stream_find_streams(%struct.TYPE_18__* %0) #0 {
  %2 = alloca %struct.TYPE_18__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_19__, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %2, align 8
  %16 = load i32, i32* @HB_DVD_READ_BUFFER_SIZE, align 4
  %17 = call %struct.TYPE_20__* @hb_buffer_init(i32 %16)
  store %struct.TYPE_20__* %17, %struct.TYPE_20__** %5, align 8
  %18 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @SEEK_SET, align 4
  %22 = call i32 @fseeko(i32 %20, i32 0, i32 %21)
  store i32 0, i32* %3, align 4
  br label %23

23:                                               ; preds = %331, %1
  %24 = load i32, i32* %3, align 4
  %25 = icmp slt i32 %24, 2
  br i1 %25, label %26, label %334

26:                                               ; preds = %23
  store i32 0, i32* %4, align 4
  br label %27

27:                                               ; preds = %320, %26
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @MAX_PS_PROBE_SIZE, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %328

31:                                               ; preds = %27
  %32 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %32, i32 0, i32 0
  store i64 0, i64* %33, align 8
  %34 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %35 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %36 = call i32 @hb_ps_read_packet(%struct.TYPE_18__* %34, %struct.TYPE_20__* %35)
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %7, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %31
  br label %328

40:                                               ; preds = %31
  %41 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %42 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = call i32 @hb_parse_ps(%struct.TYPE_18__* %41, i64 %44, i64 %47, %struct.TYPE_19__* %8)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %40
  %51 = call i32 @hb_deep_log(i32 2, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  br label %320

52:                                               ; preds = %40
  %53 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %8, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp eq i32 %54, 186
  br i1 %55, label %56, label %62

56:                                               ; preds = %52
  %57 = load i32, i32* @TS_HAS_PCR, align 4
  %58 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %59 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = or i32 %60, %57
  store i32 %61, i32* %59, align 8
  br label %319

62:                                               ; preds = %52
  %63 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %8, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp eq i32 %64, 188
  br i1 %65, label %66, label %81

66:                                               ; preds = %62
  %67 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %68 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = call i64 @decode_ps_map(%struct.TYPE_18__* %67, i64 %70, i64 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %66
  %77 = call i32 @hb_log(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %80

78:                                               ; preds = %66
  %79 = call i32 @hb_error(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  br label %80

80:                                               ; preds = %78, %76
  br label %318

81:                                               ; preds = %62
  %82 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %8, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = and i32 %83, 224
  %85 = icmp eq i32 %84, 192
  br i1 %85, label %86, label %94

86:                                               ; preds = %81
  store i32 4, i32* %6, align 4
  %87 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %88 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %8, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %8, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* %6, align 4
  %93 = call i32 @update_ps_streams(%struct.TYPE_18__* %87, i32 %89, i32 %91, i32 %92, i32 -1)
  br label %317

94:                                               ; preds = %81
  %95 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %8, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = icmp eq i32 %96, 189
  br i1 %97, label %98, label %279

98:                                               ; preds = %94
  %99 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %8, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  store i32 %100, i32* %9, align 4
  %101 = load i32, i32* %9, align 4
  %102 = icmp sge i32 %101, 32
  br i1 %102, label %103, label %141

103:                                              ; preds = %98
  %104 = load i32, i32* %9, align 4
  %105 = icmp sle i32 %104, 55
  br i1 %105, label %106, label %141

106:                                              ; preds = %103
  %107 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %108 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %8, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %8, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @update_ps_streams(%struct.TYPE_18__* %107, i32 %109, i32 %111, i32 0, i32 -1)
  store i32 %112, i32* %10, align 4
  %113 = load i32, i32* @S, align 4
  %114 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %115 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %115, i32 0, i32 0
  %117 = load %struct.TYPE_16__*, %struct.TYPE_16__** %116, align 8
  %118 = load i32, i32* %10, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %117, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %120, i32 0, i32 3
  store i32 %113, i32* %121, align 4
  %122 = load i32, i32* @WORK_DECVOBSUB, align 4
  %123 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %124 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %124, i32 0, i32 0
  %126 = load %struct.TYPE_16__*, %struct.TYPE_16__** %125, align 8
  %127 = load i32, i32* %10, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %126, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %129, i32 0, i32 1
  store i32 %122, i32* %130, align 4
  %131 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %132 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %132, i32 0, i32 0
  %134 = load %struct.TYPE_16__*, %struct.TYPE_16__** %133, align 8
  %135 = load i32, i32* %10, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %134, i64 %136
  %138 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @strncpy(i32 %139, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32 80)
  br label %320

141:                                              ; preds = %103, %98
  %142 = load i32, i32* %9, align 4
  %143 = icmp sge i32 %142, 128
  br i1 %143, label %144, label %148

144:                                              ; preds = %141
  %145 = load i32, i32* %9, align 4
  %146 = icmp sle i32 %145, 135
  br i1 %146, label %147, label %148

147:                                              ; preds = %144
  store i32 129, i32* %6, align 4
  br label %271

148:                                              ; preds = %144, %141
  %149 = load i32, i32* %9, align 4
  %150 = icmp sge i32 %149, 136
  br i1 %150, label %151, label %154

151:                                              ; preds = %148
  %152 = load i32, i32* %9, align 4
  %153 = icmp sle i32 %152, 143
  br i1 %153, label %160, label %154

154:                                              ; preds = %151, %148
  %155 = load i32, i32* %9, align 4
  %156 = icmp sge i32 %155, 152
  br i1 %156, label %157, label %186

157:                                              ; preds = %154
  %158 = load i32, i32* %9, align 4
  %159 = icmp sle i32 %158, 159
  br i1 %159, label %160, label %186

160:                                              ; preds = %157, %151
  %161 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %162 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %8, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %8, i32 0, i32 2
  %165 = load i32, i32* %164, align 8
  %166 = load i32, i32* @U, align 4
  %167 = call i32 @update_ps_streams(%struct.TYPE_18__* %161, i32 %163, i32 %165, i32 0, i32 %166)
  store i32 %167, i32* %11, align 4
  %168 = load i32, i32* @HB_ACODEC_DCA_HD, align 4
  %169 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %170 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %170, i32 0, i32 0
  %172 = load %struct.TYPE_16__*, %struct.TYPE_16__** %171, align 8
  %173 = load i32, i32* %11, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %172, i64 %174
  %176 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %175, i32 0, i32 1
  store i32 %168, i32* %176, align 4
  %177 = load i32, i32* @AV_CODEC_ID_DTS, align 4
  %178 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %179 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %179, i32 0, i32 0
  %181 = load %struct.TYPE_16__*, %struct.TYPE_16__** %180, align 8
  %182 = load i32, i32* %11, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %181, i64 %183
  %185 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %184, i32 0, i32 0
  store i32 %177, i32* %185, align 4
  br label %320

186:                                              ; preds = %157, %154
  %187 = load i32, i32* %9, align 4
  %188 = icmp sge i32 %187, 160
  br i1 %188, label %189, label %201

189:                                              ; preds = %186
  %190 = load i32, i32* %9, align 4
  %191 = icmp sle i32 %190, 175
  br i1 %191, label %192, label %201

192:                                              ; preds = %189
  store i32 131, i32* %6, align 4
  %193 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %194 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %8, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %8, i32 0, i32 2
  %197 = load i32, i32* %196, align 8
  %198 = load i32, i32* %6, align 4
  %199 = load i32, i32* @A, align 4
  %200 = call i32 @update_ps_streams(%struct.TYPE_18__* %193, i32 %195, i32 %197, i32 %198, i32 %199)
  br label %320

201:                                              ; preds = %189, %186
  %202 = load i32, i32* %9, align 4
  %203 = icmp sge i32 %202, 176
  br i1 %203, label %204, label %233

204:                                              ; preds = %201
  %205 = load i32, i32* %9, align 4
  %206 = icmp sle i32 %205, 191
  br i1 %206, label %207, label %233

207:                                              ; preds = %204
  %208 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %209 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %8, i32 0, i32 0
  %210 = load i32, i32* %209, align 8
  %211 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %8, i32 0, i32 2
  %212 = load i32, i32* %211, align 8
  %213 = load i32, i32* @A, align 4
  %214 = call i32 @update_ps_streams(%struct.TYPE_18__* %208, i32 %210, i32 %212, i32 0, i32 %213)
  store i32 %214, i32* %12, align 4
  %215 = load i32, i32* @HB_ACODEC_FFTRUEHD, align 4
  %216 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %217 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %216, i32 0, i32 0
  %218 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %217, i32 0, i32 0
  %219 = load %struct.TYPE_16__*, %struct.TYPE_16__** %218, align 8
  %220 = load i32, i32* %12, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %219, i64 %221
  %223 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %222, i32 0, i32 1
  store i32 %215, i32* %223, align 4
  %224 = load i32, i32* @AV_CODEC_ID_TRUEHD, align 4
  %225 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %226 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %225, i32 0, i32 0
  %227 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %226, i32 0, i32 0
  %228 = load %struct.TYPE_16__*, %struct.TYPE_16__** %227, align 8
  %229 = load i32, i32* %12, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %228, i64 %230
  %232 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %231, i32 0, i32 0
  store i32 %224, i32* %232, align 4
  br label %320

233:                                              ; preds = %204, %201
  %234 = load i32, i32* %9, align 4
  %235 = icmp sge i32 %234, 192
  br i1 %235, label %236, label %266

236:                                              ; preds = %233
  %237 = load i32, i32* %9, align 4
  %238 = icmp sle i32 %237, 207
  br i1 %238, label %239, label %266

239:                                              ; preds = %236
  %240 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %241 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %240, i32 0, i32 1
  %242 = load i64, i64* %241, align 8
  %243 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %8, i32 0, i32 3
  %244 = load i64, i64* %243, align 8
  %245 = add nsw i64 %242, %244
  %246 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %247 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %246, i32 0, i32 0
  %248 = load i64, i64* %247, align 8
  %249 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %8, i32 0, i32 3
  %250 = load i64, i64* %249, align 8
  %251 = sub nsw i64 %248, %250
  %252 = call i32 @bits_init(i32* %13, i64 %245, i64 %251, i32 0)
  %253 = call i32 @bits_get(i32* %13, i32 16)
  store i32 %253, i32* %14, align 4
  %254 = load i32, i32* %14, align 4
  %255 = icmp eq i32 %254, 2935
  br i1 %255, label %256, label %264

256:                                              ; preds = %239
  %257 = call i32 @bits_skip(i32* %13, i32 24)
  %258 = call i32 @bits_get(i32* %13, i32 5)
  store i32 %258, i32* %15, align 4
  %259 = load i32, i32* %15, align 4
  %260 = icmp sle i32 %259, 10
  br i1 %260, label %261, label %262

261:                                              ; preds = %256
  store i32 129, i32* %6, align 4
  br label %263

262:                                              ; preds = %256
  store i32 135, i32* %6, align 4
  br label %263

263:                                              ; preds = %262, %261
  br label %265

264:                                              ; preds = %239
  store i32 0, i32* %6, align 4
  br label %265

265:                                              ; preds = %264, %263
  br label %267

266:                                              ; preds = %236, %233
  store i32 0, i32* %6, align 4
  br label %267

267:                                              ; preds = %266, %265
  br label %268

268:                                              ; preds = %267
  br label %269

269:                                              ; preds = %268
  br label %270

270:                                              ; preds = %269
  br label %271

271:                                              ; preds = %270, %147
  %272 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %273 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %8, i32 0, i32 0
  %274 = load i32, i32* %273, align 8
  %275 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %8, i32 0, i32 2
  %276 = load i32, i32* %275, align 8
  %277 = load i32, i32* %6, align 4
  %278 = call i32 @update_ps_streams(%struct.TYPE_18__* %272, i32 %274, i32 %276, i32 %277, i32 -1)
  br label %316

279:                                              ; preds = %94
  %280 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %8, i32 0, i32 0
  %281 = load i32, i32* %280, align 8
  %282 = and i32 %281, 240
  %283 = icmp eq i32 %282, 224
  br i1 %283, label %284, label %292

284:                                              ; preds = %279
  store i32 0, i32* %6, align 4
  %285 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %286 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %8, i32 0, i32 0
  %287 = load i32, i32* %286, align 8
  %288 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %8, i32 0, i32 1
  %289 = load i32, i32* %288, align 4
  %290 = load i32, i32* %6, align 4
  %291 = call i32 @update_ps_streams(%struct.TYPE_18__* %285, i32 %287, i32 %289, i32 %290, i32 -1)
  br label %315

292:                                              ; preds = %279
  %293 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %8, i32 0, i32 0
  %294 = load i32, i32* %293, align 8
  %295 = icmp eq i32 %294, 253
  br i1 %295, label %296, label %314

296:                                              ; preds = %292
  %297 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %8, i32 0, i32 1
  %298 = load i32, i32* %297, align 4
  %299 = icmp eq i32 %298, 85
  br i1 %299, label %304, label %300

300:                                              ; preds = %296
  %301 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %8, i32 0, i32 1
  %302 = load i32, i32* %301, align 4
  %303 = icmp eq i32 %302, 86
  br i1 %303, label %304, label %305

304:                                              ; preds = %300, %296
  store i32 234, i32* %6, align 4
  br label %306

305:                                              ; preds = %300
  store i32 0, i32* %6, align 4
  br label %306

306:                                              ; preds = %305, %304
  %307 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %308 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %8, i32 0, i32 0
  %309 = load i32, i32* %308, align 8
  %310 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %8, i32 0, i32 1
  %311 = load i32, i32* %310, align 4
  %312 = load i32, i32* %6, align 4
  %313 = call i32 @update_ps_streams(%struct.TYPE_18__* %307, i32 %309, i32 %311, i32 %312, i32 -1)
  br label %314

314:                                              ; preds = %306, %292
  br label %315

315:                                              ; preds = %314, %284
  br label %316

316:                                              ; preds = %315, %271
  br label %317

317:                                              ; preds = %316, %86
  br label %318

318:                                              ; preds = %317, %80
  br label %319

319:                                              ; preds = %318, %56
  br label %320

320:                                              ; preds = %319, %207, %192, %160, %106, %50
  %321 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %322 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %321, i32 0, i32 0
  %323 = load i64, i64* %322, align 8
  %324 = load i32, i32* %4, align 4
  %325 = sext i32 %324 to i64
  %326 = add nsw i64 %325, %323
  %327 = trunc i64 %326 to i32
  store i32 %327, i32* %4, align 4
  br label %27

328:                                              ; preds = %39, %27
  %329 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %330 = call i32 @hb_stream_seek(%struct.TYPE_18__* %329, double 2.000000e-01)
  br label %331

331:                                              ; preds = %328
  %332 = load i32, i32* %3, align 4
  %333 = add nsw i32 %332, 1
  store i32 %333, i32* %3, align 4
  br label %23

334:                                              ; preds = %23
  %335 = call i32 @hb_buffer_close(%struct.TYPE_20__** %5)
  ret void
}

declare dso_local %struct.TYPE_20__* @hb_buffer_init(i32) #1

declare dso_local i32 @fseeko(i32, i32, i32) #1

declare dso_local i32 @hb_ps_read_packet(%struct.TYPE_18__*, %struct.TYPE_20__*) #1

declare dso_local i32 @hb_parse_ps(%struct.TYPE_18__*, i64, i64, %struct.TYPE_19__*) #1

declare dso_local i32 @hb_deep_log(i32, i8*) #1

declare dso_local i64 @decode_ps_map(%struct.TYPE_18__*, i64, i64) #1

declare dso_local i32 @hb_log(i8*) #1

declare dso_local i32 @hb_error(i8*) #1

declare dso_local i32 @update_ps_streams(%struct.TYPE_18__*, i32, i32, i32, i32) #1

declare dso_local i32 @strncpy(i32, i8*, i32) #1

declare dso_local i32 @bits_init(i32*, i64, i64, i32) #1

declare dso_local i32 @bits_get(i32*, i32) #1

declare dso_local i32 @bits_skip(i32*, i32) #1

declare dso_local i32 @hb_stream_seek(%struct.TYPE_18__*, double) #1

declare dso_local i32 @hb_buffer_close(%struct.TYPE_20__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
