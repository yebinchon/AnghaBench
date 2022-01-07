; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_stream.c_hb_ts_resolve_pid_types.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_stream.c_hb_ts_resolve_pid_types.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i8*, i8* }
%struct.TYPE_26__ = type { i64, %struct.TYPE_25__, i64, %struct.TYPE_24__ }
%struct.TYPE_25__ = type { i32, %struct.TYPE_27__* }
%struct.TYPE_27__ = type { i64, i64, %struct.TYPE_28__*, i32, i32, i32, i8*, i8* }
%struct.TYPE_28__ = type { %struct.TYPE_22__ }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_24__ = type { i32, %struct.TYPE_23__* }
%struct.TYPE_23__ = type { i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"HDMV\00", align 1
@A = common dso_local global i64 0, align 8
@HB_ACODEC_FFMPEG = common dso_local global i8* null, align 8
@AV_CODEC_ID_PCM_BLURAY = common dso_local global i8* null, align 8
@HB_SUBSTREAM_BD_AC3 = common dso_local global i32 0, align 4
@HB_ACODEC_AC3 = common dso_local global i8* null, align 8
@AV_CODEC_ID_AC3 = common dso_local global i8* null, align 8
@HB_SUBSTREAM_BD_TRUEHD = common dso_local global i32 0, align 4
@HB_ACODEC_FFTRUEHD = common dso_local global i8* null, align 8
@AV_CODEC_ID_TRUEHD = common dso_local global i8* null, align 8
@HB_ACODEC_FFEAC3 = common dso_local global i8* null, align 8
@AV_CODEC_ID_EAC3 = common dso_local global i8* null, align 8
@HB_SUBSTREAM_BD_DTS = common dso_local global i32 0, align 4
@HB_ACODEC_DCA = common dso_local global i8* null, align 8
@AV_CODEC_ID_DTS = common dso_local global i8* null, align 8
@HB_ACODEC_DCA_HD = common dso_local global i8* null, align 8
@S = common dso_local global i64 0, align 8
@V = common dso_local global i64 0, align 8
@st2codec = common dso_local global %struct.TYPE_21__* null, align 8
@U = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"Probing %d unknown stream%s\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [54 x i8] c"    Probe: Unsupported stream %s. stream id 0x%x-0x%x\00", align 1
@N = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [48 x i8] c"    Probe: Found stream %s. stream id 0x%x-0x%x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_26__*)* @hb_ts_resolve_pid_types to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hb_ts_resolve_pid_types(%struct.TYPE_26__* %0) #0 {
  %2 = alloca %struct.TYPE_26__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_28__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_27__*, align 8
  store %struct.TYPE_26__* %0, %struct.TYPE_26__** %2, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %3, align 4
  br label %12

12:                                               ; preds = %341, %1
  %13 = load i32, i32* %3, align 4
  %14 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %14, i32 0, i32 3
  %16 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %13, %17
  br i1 %18, label %19, label %344

19:                                               ; preds = %12
  %20 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %20, i32 0, i32 3
  %22 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_23__*, %struct.TYPE_23__** %22, align 8
  %24 = load i32, i32* %3, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %5, align 4
  %29 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %30 = load i32, i32* %3, align 4
  %31 = call i32 @ts_stream_type(%struct.TYPE_26__* %29, i32 %30)
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp eq i32 %32, 128
  br i1 %33, label %34, label %64

34:                                               ; preds = %19
  %35 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = call i64 @STR4_TO_UINT32(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %64

40:                                               ; preds = %34
  %41 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* %6, align 4
  %44 = load i64, i64* @A, align 8
  %45 = call i32 @update_ts_streams(%struct.TYPE_26__* %41, i32 %42, i32 0, i32 %43, i64 %44, i32* %7)
  %46 = load i8*, i8** @HB_ACODEC_FFMPEG, align 8
  %47 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %48, i32 0, i32 1
  %50 = load %struct.TYPE_27__*, %struct.TYPE_27__** %49, align 8
  %51 = load i32, i32* %7, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %53, i32 0, i32 7
  store i8* %46, i8** %54, align 8
  %55 = load i8*, i8** @AV_CODEC_ID_PCM_BLURAY, align 8
  %56 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %57 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %57, i32 0, i32 1
  %59 = load %struct.TYPE_27__*, %struct.TYPE_27__** %58, align 8
  %60 = load i32, i32* %7, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %62, i32 0, i32 6
  store i8* %55, i8** %63, align 8
  br label %341

64:                                               ; preds = %34, %19
  %65 = load i32, i32* %6, align 4
  %66 = icmp eq i32 %65, 131
  br i1 %66, label %67, label %122

67:                                               ; preds = %64
  %68 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %69 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = call i64 @STR4_TO_UINT32(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %122

73:                                               ; preds = %67
  %74 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %75 = load i32, i32* %5, align 4
  %76 = load i32, i32* @HB_SUBSTREAM_BD_AC3, align 4
  %77 = load i32, i32* %6, align 4
  %78 = load i64, i64* @A, align 8
  %79 = call i32 @update_ts_streams(%struct.TYPE_26__* %74, i32 %75, i32 %76, i32 %77, i64 %78, i32* %7)
  %80 = load i8*, i8** @HB_ACODEC_AC3, align 8
  %81 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %82 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %82, i32 0, i32 1
  %84 = load %struct.TYPE_27__*, %struct.TYPE_27__** %83, align 8
  %85 = load i32, i32* %7, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %87, i32 0, i32 7
  store i8* %80, i8** %88, align 8
  %89 = load i8*, i8** @AV_CODEC_ID_AC3, align 8
  %90 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %91 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %91, i32 0, i32 1
  %93 = load %struct.TYPE_27__*, %struct.TYPE_27__** %92, align 8
  %94 = load i32, i32* %7, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %93, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %96, i32 0, i32 6
  store i8* %89, i8** %97, align 8
  %98 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %99 = load i32, i32* %5, align 4
  %100 = load i32, i32* @HB_SUBSTREAM_BD_TRUEHD, align 4
  %101 = load i32, i32* %6, align 4
  %102 = load i64, i64* @A, align 8
  %103 = call i32 @update_ts_streams(%struct.TYPE_26__* %98, i32 %99, i32 %100, i32 %101, i64 %102, i32* %7)
  %104 = load i8*, i8** @HB_ACODEC_FFTRUEHD, align 8
  %105 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %106 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %106, i32 0, i32 1
  %108 = load %struct.TYPE_27__*, %struct.TYPE_27__** %107, align 8
  %109 = load i32, i32* %7, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %108, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %111, i32 0, i32 7
  store i8* %104, i8** %112, align 8
  %113 = load i8*, i8** @AV_CODEC_ID_TRUEHD, align 8
  %114 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %115 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %115, i32 0, i32 1
  %117 = load %struct.TYPE_27__*, %struct.TYPE_27__** %116, align 8
  %118 = load i32, i32* %7, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %117, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %120, i32 0, i32 6
  store i8* %113, i8** %121, align 8
  br label %341

122:                                              ; preds = %67, %64
  %123 = load i32, i32* %6, align 4
  %124 = icmp eq i32 %123, 132
  br i1 %124, label %128, label %125

125:                                              ; preds = %122
  %126 = load i32, i32* %6, align 4
  %127 = icmp eq i32 %126, 161
  br i1 %127, label %128, label %158

128:                                              ; preds = %125, %122
  %129 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %130 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = call i64 @STR4_TO_UINT32(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %133 = icmp eq i64 %131, %132
  br i1 %133, label %134, label %158

134:                                              ; preds = %128
  %135 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %136 = load i32, i32* %5, align 4
  %137 = load i32, i32* %6, align 4
  %138 = load i64, i64* @A, align 8
  %139 = call i32 @update_ts_streams(%struct.TYPE_26__* %135, i32 %136, i32 0, i32 %137, i64 %138, i32* %7)
  %140 = load i8*, i8** @HB_ACODEC_FFEAC3, align 8
  %141 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %142 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %141, i32 0, i32 1
  %143 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %142, i32 0, i32 1
  %144 = load %struct.TYPE_27__*, %struct.TYPE_27__** %143, align 8
  %145 = load i32, i32* %7, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %144, i64 %146
  %148 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %147, i32 0, i32 7
  store i8* %140, i8** %148, align 8
  %149 = load i8*, i8** @AV_CODEC_ID_EAC3, align 8
  %150 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %151 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %150, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %151, i32 0, i32 1
  %153 = load %struct.TYPE_27__*, %struct.TYPE_27__** %152, align 8
  %154 = load i32, i32* %7, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %153, i64 %155
  %157 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %156, i32 0, i32 6
  store i8* %149, i8** %157, align 8
  br label %341

158:                                              ; preds = %128, %125
  %159 = load i32, i32* %6, align 4
  %160 = icmp eq i32 %159, 133
  br i1 %160, label %161, label %215

161:                                              ; preds = %158
  %162 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %163 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = call i64 @STR4_TO_UINT32(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %166 = icmp eq i64 %164, %165
  br i1 %166, label %167, label %215

167:                                              ; preds = %161
  %168 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %169 = load i32, i32* %5, align 4
  %170 = load i32, i32* @HB_SUBSTREAM_BD_DTS, align 4
  %171 = load i32, i32* %6, align 4
  %172 = load i64, i64* @A, align 8
  %173 = call i32 @update_ts_streams(%struct.TYPE_26__* %168, i32 %169, i32 %170, i32 %171, i64 %172, i32* %7)
  %174 = load i8*, i8** @HB_ACODEC_DCA, align 8
  %175 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %176 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %175, i32 0, i32 1
  %177 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %176, i32 0, i32 1
  %178 = load %struct.TYPE_27__*, %struct.TYPE_27__** %177, align 8
  %179 = load i32, i32* %7, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %178, i64 %180
  %182 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %181, i32 0, i32 7
  store i8* %174, i8** %182, align 8
  %183 = load i8*, i8** @AV_CODEC_ID_DTS, align 8
  %184 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %185 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %184, i32 0, i32 1
  %186 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %185, i32 0, i32 1
  %187 = load %struct.TYPE_27__*, %struct.TYPE_27__** %186, align 8
  %188 = load i32, i32* %7, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %187, i64 %189
  %191 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %190, i32 0, i32 6
  store i8* %183, i8** %191, align 8
  %192 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %193 = load i32, i32* %5, align 4
  %194 = load i32, i32* %6, align 4
  %195 = load i64, i64* @A, align 8
  %196 = call i32 @update_ts_streams(%struct.TYPE_26__* %192, i32 %193, i32 0, i32 %194, i64 %195, i32* %7)
  %197 = load i8*, i8** @HB_ACODEC_DCA_HD, align 8
  %198 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %199 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %198, i32 0, i32 1
  %200 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %199, i32 0, i32 1
  %201 = load %struct.TYPE_27__*, %struct.TYPE_27__** %200, align 8
  %202 = load i32, i32* %7, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %201, i64 %203
  %205 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %204, i32 0, i32 7
  store i8* %197, i8** %205, align 8
  %206 = load i8*, i8** @AV_CODEC_ID_DTS, align 8
  %207 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %208 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %207, i32 0, i32 1
  %209 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %208, i32 0, i32 1
  %210 = load %struct.TYPE_27__*, %struct.TYPE_27__** %209, align 8
  %211 = load i32, i32* %7, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %210, i64 %212
  %214 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %213, i32 0, i32 6
  store i8* %206, i8** %214, align 8
  br label %341

215:                                              ; preds = %161, %158
  %216 = load i32, i32* %6, align 4
  %217 = icmp eq i32 %216, 134
  br i1 %217, label %218, label %272

218:                                              ; preds = %215
  %219 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %220 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %219, i32 0, i32 0
  %221 = load i64, i64* %220, align 8
  %222 = call i64 @STR4_TO_UINT32(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %223 = icmp eq i64 %221, %222
  br i1 %223, label %224, label %272

224:                                              ; preds = %218
  %225 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %226 = load i32, i32* %5, align 4
  %227 = load i32, i32* @HB_SUBSTREAM_BD_DTS, align 4
  %228 = load i32, i32* %6, align 4
  %229 = load i64, i64* @A, align 8
  %230 = call i32 @update_ts_streams(%struct.TYPE_26__* %225, i32 %226, i32 %227, i32 %228, i64 %229, i32* %7)
  %231 = load i8*, i8** @HB_ACODEC_DCA, align 8
  %232 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %233 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %232, i32 0, i32 1
  %234 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %233, i32 0, i32 1
  %235 = load %struct.TYPE_27__*, %struct.TYPE_27__** %234, align 8
  %236 = load i32, i32* %7, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %235, i64 %237
  %239 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %238, i32 0, i32 7
  store i8* %231, i8** %239, align 8
  %240 = load i8*, i8** @AV_CODEC_ID_DTS, align 8
  %241 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %242 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %241, i32 0, i32 1
  %243 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %242, i32 0, i32 1
  %244 = load %struct.TYPE_27__*, %struct.TYPE_27__** %243, align 8
  %245 = load i32, i32* %7, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %244, i64 %246
  %248 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %247, i32 0, i32 6
  store i8* %240, i8** %248, align 8
  %249 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %250 = load i32, i32* %5, align 4
  %251 = load i32, i32* %6, align 4
  %252 = load i64, i64* @A, align 8
  %253 = call i32 @update_ts_streams(%struct.TYPE_26__* %249, i32 %250, i32 0, i32 %251, i64 %252, i32* %7)
  %254 = load i8*, i8** @HB_ACODEC_DCA_HD, align 8
  %255 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %256 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %255, i32 0, i32 1
  %257 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %256, i32 0, i32 1
  %258 = load %struct.TYPE_27__*, %struct.TYPE_27__** %257, align 8
  %259 = load i32, i32* %7, align 4
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %258, i64 %260
  %262 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %261, i32 0, i32 7
  store i8* %254, i8** %262, align 8
  %263 = load i8*, i8** @AV_CODEC_ID_DTS, align 8
  %264 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %265 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %264, i32 0, i32 1
  %266 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %265, i32 0, i32 1
  %267 = load %struct.TYPE_27__*, %struct.TYPE_27__** %266, align 8
  %268 = load i32, i32* %7, align 4
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %267, i64 %269
  %271 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %270, i32 0, i32 6
  store i8* %263, i8** %271, align 8
  br label %341

272:                                              ; preds = %218, %215
  %273 = load i32, i32* %6, align 4
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %275, label %331

275:                                              ; preds = %272
  %276 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %277 = load i32, i32* %3, align 4
  %278 = call i64 @ts_stream_kind(%struct.TYPE_26__* %276, i32 %277)
  %279 = load i64, i64* @A, align 8
  %280 = icmp eq i64 %278, %279
  br i1 %280, label %293, label %281

281:                                              ; preds = %275
  %282 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %283 = load i32, i32* %3, align 4
  %284 = call i64 @ts_stream_kind(%struct.TYPE_26__* %282, i32 %283)
  %285 = load i64, i64* @S, align 8
  %286 = icmp eq i64 %284, %285
  br i1 %286, label %293, label %287

287:                                              ; preds = %281
  %288 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %289 = load i32, i32* %3, align 4
  %290 = call i64 @ts_stream_kind(%struct.TYPE_26__* %288, i32 %289)
  %291 = load i64, i64* @V, align 8
  %292 = icmp eq i64 %290, %291
  br i1 %292, label %293, label %331

293:                                              ; preds = %287, %281, %275
  %294 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %295 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %294, i32 0, i32 3
  %296 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %295, i32 0, i32 1
  %297 = load %struct.TYPE_23__*, %struct.TYPE_23__** %296, align 8
  %298 = load i32, i32* %3, align 4
  %299 = sext i32 %298 to i64
  %300 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %297, i64 %299
  %301 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %300, i32 0, i32 1
  %302 = load i32, i32* %301, align 4
  store i32 %302, i32* %7, align 4
  %303 = load %struct.TYPE_21__*, %struct.TYPE_21__** @st2codec, align 8
  %304 = load i32, i32* %6, align 4
  %305 = sext i32 %304 to i64
  %306 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %303, i64 %305
  %307 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %306, i32 0, i32 1
  %308 = load i8*, i8** %307, align 8
  %309 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %310 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %309, i32 0, i32 1
  %311 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %310, i32 0, i32 1
  %312 = load %struct.TYPE_27__*, %struct.TYPE_27__** %311, align 8
  %313 = load i32, i32* %7, align 4
  %314 = sext i32 %313 to i64
  %315 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %312, i64 %314
  %316 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %315, i32 0, i32 7
  store i8* %308, i8** %316, align 8
  %317 = load %struct.TYPE_21__*, %struct.TYPE_21__** @st2codec, align 8
  %318 = load i32, i32* %6, align 4
  %319 = sext i32 %318 to i64
  %320 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %317, i64 %319
  %321 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %320, i32 0, i32 0
  %322 = load i8*, i8** %321, align 8
  %323 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %324 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %323, i32 0, i32 1
  %325 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %324, i32 0, i32 1
  %326 = load %struct.TYPE_27__*, %struct.TYPE_27__** %325, align 8
  %327 = load i32, i32* %7, align 4
  %328 = sext i32 %327 to i64
  %329 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %326, i64 %328
  %330 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %329, i32 0, i32 6
  store i8* %322, i8** %330, align 8
  br label %341

331:                                              ; preds = %287, %272
  %332 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %333 = load i32, i32* %3, align 4
  %334 = call i64 @ts_stream_kind(%struct.TYPE_26__* %332, i32 %333)
  %335 = load i64, i64* @U, align 8
  %336 = icmp eq i64 %334, %335
  br i1 %336, label %337, label %340

337:                                              ; preds = %331
  %338 = load i32, i32* %4, align 4
  %339 = add nsw i32 %338, 1
  store i32 %339, i32* %4, align 4
  br label %340

340:                                              ; preds = %337, %331
  br label %341

341:                                              ; preds = %340, %293, %224, %167, %134, %73, %40
  %342 = load i32, i32* %3, align 4
  %343 = add nsw i32 %342, 1
  store i32 %343, i32* %3, align 4
  br label %12

344:                                              ; preds = %12
  %345 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %346 = call i32 @hb_stream_seek(%struct.TYPE_26__* %345, double 0.000000e+00)
  %347 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %348 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %347, i32 0, i32 2
  store i64 0, i64* %348, align 8
  %349 = load i32, i32* %4, align 4
  %350 = icmp ne i32 %349, 0
  br i1 %350, label %351, label %358

351:                                              ; preds = %344
  %352 = load i32, i32* %4, align 4
  %353 = load i32, i32* %4, align 4
  %354 = icmp sgt i32 %353, 1
  %355 = zext i1 %354 to i64
  %356 = select i1 %354, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %357 = call i32 (i8*, i32, i8*, ...) @hb_log(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %352, i8* %356)
  br label %358

358:                                              ; preds = %351, %344
  br label %359

359:                                              ; preds = %449, %389, %358
  %360 = load i32, i32* %4, align 4
  %361 = icmp ne i32 %360, 0
  br i1 %361, label %362, label %366

362:                                              ; preds = %359
  %363 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %364 = call %struct.TYPE_28__* @hb_ts_stream_decode(%struct.TYPE_26__* %363)
  store %struct.TYPE_28__* %364, %struct.TYPE_28__** %8, align 8
  %365 = icmp ne %struct.TYPE_28__* %364, null
  br label %366

366:                                              ; preds = %362, %359
  %367 = phi i1 [ false, %359 ], [ %365, %362 ]
  br i1 %367, label %368, label %451

368:                                              ; preds = %366
  %369 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %370 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %371 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %370, i32 0, i32 0
  %372 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %371, i32 0, i32 0
  %373 = load i32, i32* %372, align 4
  %374 = call i32 @index_of_id(%struct.TYPE_26__* %369, i32 %373)
  store i32 %374, i32* %9, align 4
  %375 = load i32, i32* %9, align 4
  %376 = icmp slt i32 %375, 0
  br i1 %376, label %389, label %377

377:                                              ; preds = %368
  %378 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %379 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %378, i32 0, i32 1
  %380 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %379, i32 0, i32 1
  %381 = load %struct.TYPE_27__*, %struct.TYPE_27__** %380, align 8
  %382 = load i32, i32* %9, align 4
  %383 = sext i32 %382 to i64
  %384 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %381, i64 %383
  %385 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %384, i32 0, i32 0
  %386 = load i64, i64* %385, align 8
  %387 = load i64, i64* @U, align 8
  %388 = icmp ne i64 %386, %387
  br i1 %388, label %389, label %391

389:                                              ; preds = %377, %368
  %390 = call i32 @hb_buffer_close(%struct.TYPE_28__** %8)
  br label %359

391:                                              ; preds = %377
  %392 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %393 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %392, i32 0, i32 1
  %394 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %393, i32 0, i32 1
  %395 = load %struct.TYPE_27__*, %struct.TYPE_27__** %394, align 8
  %396 = load i32, i32* %9, align 4
  %397 = sext i32 %396 to i64
  %398 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %395, i64 %397
  store %struct.TYPE_27__* %398, %struct.TYPE_27__** %11, align 8
  %399 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %400 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %401 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %402 = call i32 @do_probe(%struct.TYPE_26__* %399, %struct.TYPE_27__* %400, %struct.TYPE_28__* %401)
  store i32 %402, i32* %10, align 4
  %403 = load i32, i32* %10, align 4
  %404 = icmp slt i32 %403, 0
  br i1 %404, label %405, label %424

405:                                              ; preds = %391
  %406 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %407 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %406, i32 0, i32 5
  %408 = load i32, i32* %407, align 8
  %409 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %410 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %409, i32 0, i32 4
  %411 = load i32, i32* %410, align 4
  %412 = sext i32 %411 to i64
  %413 = inttoptr i64 %412 to i8*
  %414 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %415 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %414, i32 0, i32 3
  %416 = load i32, i32* %415, align 8
  %417 = call i32 (i8*, i32, i8*, ...) @hb_log(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0), i32 %408, i8* %413, i32 %416)
  %418 = load i8*, i8** @N, align 8
  %419 = ptrtoint i8* %418 to i64
  %420 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %421 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %420, i32 0, i32 0
  store i64 %419, i64* %421, align 8
  %422 = load i32, i32* %4, align 4
  %423 = add nsw i32 %422, -1
  store i32 %423, i32* %4, align 4
  br label %449

424:                                              ; preds = %391
  %425 = load i32, i32* %10, align 4
  %426 = icmp ne i32 %425, 0
  br i1 %426, label %427, label %448

427:                                              ; preds = %424
  %428 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %429 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %428, i32 0, i32 0
  %430 = load i64, i64* %429, align 8
  %431 = load i64, i64* @U, align 8
  %432 = icmp ne i64 %430, %431
  br i1 %432, label %433, label %448

433:                                              ; preds = %427
  %434 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %435 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %434, i32 0, i32 5
  %436 = load i32, i32* %435, align 8
  %437 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %438 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %437, i32 0, i32 4
  %439 = load i32, i32* %438, align 4
  %440 = sext i32 %439 to i64
  %441 = inttoptr i64 %440 to i8*
  %442 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %443 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %442, i32 0, i32 3
  %444 = load i32, i32* %443, align 8
  %445 = call i32 (i8*, i32, i8*, ...) @hb_log(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.5, i64 0, i64 0), i32 %436, i8* %441, i32 %444)
  %446 = load i32, i32* %4, align 4
  %447 = add nsw i32 %446, -1
  store i32 %447, i32* %4, align 4
  br label %448

448:                                              ; preds = %433, %427, %424
  br label %449

449:                                              ; preds = %448, %405
  %450 = call i32 @hb_buffer_close(%struct.TYPE_28__** %8)
  br label %359

451:                                              ; preds = %366
  store i32 0, i32* %3, align 4
  br label %452

452:                                              ; preds = %500, %451
  %453 = load i32, i32* %3, align 4
  %454 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %455 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %454, i32 0, i32 1
  %456 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %455, i32 0, i32 0
  %457 = load i32, i32* %456, align 8
  %458 = icmp slt i32 %453, %457
  br i1 %458, label %459, label %503

459:                                              ; preds = %452
  %460 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %461 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %460, i32 0, i32 1
  %462 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %461, i32 0, i32 1
  %463 = load %struct.TYPE_27__*, %struct.TYPE_27__** %462, align 8
  %464 = load i32, i32* %3, align 4
  %465 = sext i32 %464 to i64
  %466 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %463, i64 %465
  %467 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %466, i32 0, i32 0
  %468 = load i64, i64* %467, align 8
  %469 = load i64, i64* @U, align 8
  %470 = icmp eq i64 %468, %469
  br i1 %470, label %471, label %482

471:                                              ; preds = %459
  %472 = load i8*, i8** @N, align 8
  %473 = ptrtoint i8* %472 to i64
  %474 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %475 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %474, i32 0, i32 1
  %476 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %475, i32 0, i32 1
  %477 = load %struct.TYPE_27__*, %struct.TYPE_27__** %476, align 8
  %478 = load i32, i32* %3, align 4
  %479 = sext i32 %478 to i64
  %480 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %477, i64 %479
  %481 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %480, i32 0, i32 0
  store i64 %473, i64* %481, align 8
  br label %482

482:                                              ; preds = %471, %459
  %483 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %484 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %483, i32 0, i32 1
  %485 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %484, i32 0, i32 1
  %486 = load %struct.TYPE_27__*, %struct.TYPE_27__** %485, align 8
  %487 = load i32, i32* %3, align 4
  %488 = sext i32 %487 to i64
  %489 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %486, i64 %488
  %490 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %489, i32 0, i32 2
  %491 = call i32 @hb_buffer_close(%struct.TYPE_28__** %490)
  %492 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %493 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %492, i32 0, i32 1
  %494 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %493, i32 0, i32 1
  %495 = load %struct.TYPE_27__*, %struct.TYPE_27__** %494, align 8
  %496 = load i32, i32* %3, align 4
  %497 = sext i32 %496 to i64
  %498 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %495, i64 %497
  %499 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %498, i32 0, i32 1
  store i64 0, i64* %499, align 8
  br label %500

500:                                              ; preds = %482
  %501 = load i32, i32* %3, align 4
  %502 = add nsw i32 %501, 1
  store i32 %502, i32* %3, align 4
  br label %452

503:                                              ; preds = %452
  ret void
}

declare dso_local i32 @ts_stream_type(%struct.TYPE_26__*, i32) #1

declare dso_local i64 @STR4_TO_UINT32(i8*) #1

declare dso_local i32 @update_ts_streams(%struct.TYPE_26__*, i32, i32, i32, i64, i32*) #1

declare dso_local i64 @ts_stream_kind(%struct.TYPE_26__*, i32) #1

declare dso_local i32 @hb_stream_seek(%struct.TYPE_26__*, double) #1

declare dso_local i32 @hb_log(i8*, i32, i8*, ...) #1

declare dso_local %struct.TYPE_28__* @hb_ts_stream_decode(%struct.TYPE_26__*) #1

declare dso_local i32 @index_of_id(%struct.TYPE_26__*, i32) #1

declare dso_local i32 @hb_buffer_close(%struct.TYPE_28__**) #1

declare dso_local i32 @do_probe(%struct.TYPE_26__*, %struct.TYPE_27__*, %struct.TYPE_28__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
