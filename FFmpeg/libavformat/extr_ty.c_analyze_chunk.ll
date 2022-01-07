; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_ty.c_analyze_chunk.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_ty.c_analyze_chunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64, i64, i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i64 }

@TIVO_PES_FILEID = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"probe: chunk has %d recs\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"probe: chunk has %d 0x6e0 recs, %d 0xbe0 recs.\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"detected Series 1 Tivo\0A\00", align 1
@TIVO_SERIES1 = common dso_local global i64 0, align 8
@SERIES1_PES_LENGTH = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"detected Series 2 Tivo\0A\00", align 1
@TIVO_SERIES2 = common dso_local global i64 0, align 8
@SERIES2_PES_LENGTH = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [29 x i8] c"detected AC-3 Audio (DTivo)\0A\00", align 1
@TIVO_AUDIO_AC3 = common dso_local global i32 0, align 4
@TIVO_TYPE_DTIVO = common dso_local global i8* null, align 8
@AC3_PTS_OFFSET = common dso_local global i32 0, align 4
@AC3_PES_LENGTH = common dso_local global i32 0, align 4
@TIVO_AUDIO_MPEG = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [21 x i8] c"detected MPEG Audio\0A\00", align 1
@TIVO_TYPE_UNKNOWN = common dso_local global i64 0, align 8
@CHUNK_SIZE = common dso_local global i64 0, align 8
@ty_MPEGAudioPacket = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [27 x i8] c"detected Stand-Alone Tivo\0A\00", align 1
@TIVO_TYPE_SA = common dso_local global i64 0, align 8
@SA_PTS_OFFSET = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [23 x i8] c"detected DirecTV Tivo\0A\00", align 1
@DTIVO_PTS_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, i32*)* @analyze_chunk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @analyze_chunk(%struct.TYPE_10__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store i32* %1, i32** %5, align 8
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  store %struct.TYPE_9__* %18, %struct.TYPE_9__** %6, align 8
  %19 = load i32*, i32** %5, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  %21 = call i64 @AV_RB32(i32* %20)
  %22 = load i64, i64* @TIVO_PES_FILEID, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %260

25:                                               ; preds = %2
  %26 = load i32*, i32** %5, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp slt i32 %29, 5
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  store i32 0, i32* %3, align 4
  br label %260

32:                                               ; preds = %25
  %33 = load i32*, i32** %5, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 4
  store i32* %34, i32** %5, align 8
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %36 = load i32, i32* %7, align 4
  %37 = call i32 (%struct.TYPE_10__*, i8*, ...) @ff_dlog(%struct.TYPE_10__* %35, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %36)
  %38 = load i32*, i32** %5, align 8
  %39 = load i32, i32* %7, align 4
  %40 = call %struct.TYPE_8__* @parse_chunk_headers(i32* %38, i32 %39)
  store %struct.TYPE_8__* %40, %struct.TYPE_8__** %9, align 8
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %42 = icmp ne %struct.TYPE_8__* %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %32
  %44 = load i32, i32* @ENOMEM, align 4
  %45 = call i32 @AVERROR(i32 %44)
  store i32 %45, i32* %3, align 4
  br label %260

46:                                               ; preds = %32
  store i32 0, i32* %13, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %8, align 4
  br label %47

47:                                               ; preds = %79, %46
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* %7, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %82

51:                                               ; preds = %47
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %53 = load i32, i32* %8, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = shl i32 %57, 8
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %60 = load i32, i32* %8, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = or i32 %58, %64
  switch i32 %65, label %78 [
    i32 1760, label %66
    i32 3040, label %69
    i32 960, label %72
    i32 2496, label %75
  ]

66:                                               ; preds = %51
  %67 = load i32, i32* %10, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %10, align 4
  br label %78

69:                                               ; preds = %51
  %70 = load i32, i32* %11, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %11, align 4
  br label %78

72:                                               ; preds = %51
  %73 = load i32, i32* %13, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %13, align 4
  br label %78

75:                                               ; preds = %51
  %76 = load i32, i32* %12, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %12, align 4
  br label %78

78:                                               ; preds = %51, %75, %72, %69, %66
  br label %79

79:                                               ; preds = %78
  %80 = load i32, i32* %8, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %8, align 4
  br label %47

82:                                               ; preds = %47
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %84 = load i32, i32* %10, align 4
  %85 = load i32, i32* %11, align 4
  %86 = call i32 (%struct.TYPE_10__*, i8*, ...) @ff_dlog(%struct.TYPE_10__* %83, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %84, i32 %85)
  %87 = load i32, i32* %10, align 4
  %88 = icmp sgt i32 %87, 0
  br i1 %88, label %89, label %98

89:                                               ; preds = %82
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %91 = call i32 (%struct.TYPE_10__*, i8*, ...) @ff_dlog(%struct.TYPE_10__* %90, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %92 = load i64, i64* @TIVO_SERIES1, align 8
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 0
  store i64 %92, i64* %94, align 8
  %95 = load i32, i32* @SERIES1_PES_LENGTH, align 4
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 4
  store i32 %95, i32* %97, align 8
  br label %111

98:                                               ; preds = %82
  %99 = load i32, i32* %11, align 4
  %100 = icmp sgt i32 %99, 0
  br i1 %100, label %101, label %110

101:                                              ; preds = %98
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %103 = call i32 (%struct.TYPE_10__*, i8*, ...) @ff_dlog(%struct.TYPE_10__* %102, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  %104 = load i64, i64* @TIVO_SERIES2, align 8
  %105 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i32 0, i32 0
  store i64 %104, i64* %106, align 8
  %107 = load i32, i32* @SERIES2_PES_LENGTH, align 4
  %108 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 4
  store i32 %107, i32* %109, align 8
  br label %110

110:                                              ; preds = %101, %98
  br label %111

111:                                              ; preds = %110, %89
  %112 = load i32, i32* %12, align 4
  %113 = icmp sgt i32 %112, 0
  br i1 %113, label %114, label %130

114:                                              ; preds = %111
  %115 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %116 = call i32 (%struct.TYPE_10__*, i8*, ...) @ff_dlog(%struct.TYPE_10__* %115, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  %117 = load i32, i32* @TIVO_AUDIO_AC3, align 4
  %118 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i32 0, i32 3
  store i32 %117, i32* %119, align 4
  %120 = load i8*, i8** @TIVO_TYPE_DTIVO, align 8
  %121 = ptrtoint i8* %120 to i64
  %122 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %122, i32 0, i32 1
  store i64 %121, i64* %123, align 8
  %124 = load i32, i32* @AC3_PTS_OFFSET, align 4
  %125 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %126 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %125, i32 0, i32 2
  store i32 %124, i32* %126, align 8
  %127 = load i32, i32* @AC3_PES_LENGTH, align 4
  %128 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %129 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %128, i32 0, i32 4
  store i32 %127, i32* %129, align 8
  br label %140

130:                                              ; preds = %111
  %131 = load i32, i32* %13, align 4
  %132 = icmp sgt i32 %131, 0
  br i1 %132, label %133, label %139

133:                                              ; preds = %130
  %134 = load i32, i32* @TIVO_AUDIO_MPEG, align 4
  %135 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %136 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %135, i32 0, i32 3
  store i32 %134, i32* %136, align 4
  %137 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %138 = call i32 (%struct.TYPE_10__*, i8*, ...) @ff_dlog(%struct.TYPE_10__* %137, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  br label %139

139:                                              ; preds = %133, %130
  br label %140

140:                                              ; preds = %139, %114
  %141 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %142 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %141, i32 0, i32 1
  %143 = load i64, i64* %142, align 8
  %144 = load i64, i64* @TIVO_TYPE_UNKNOWN, align 8
  %145 = icmp eq i64 %143, %144
  br i1 %145, label %146, label %257

146:                                              ; preds = %140
  %147 = load i32, i32* %7, align 4
  %148 = mul nsw i32 16, %147
  %149 = sext i32 %148 to i64
  store i64 %149, i64* %14, align 8
  store i32 0, i32* %8, align 4
  br label %150

150:                                              ; preds = %253, %146
  %151 = load i32, i32* %8, align 4
  %152 = load i32, i32* %7, align 4
  %153 = icmp slt i32 %151, %152
  br i1 %153, label %154, label %256

154:                                              ; preds = %150
  %155 = load i64, i64* %14, align 8
  %156 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %157 = load i32, i32* %8, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %156, i64 %158
  %160 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %159, i32 0, i32 2
  %161 = load i64, i64* %160, align 8
  %162 = add i64 %155, %161
  %163 = load i64, i64* @CHUNK_SIZE, align 8
  %164 = icmp ugt i64 %162, %163
  br i1 %164, label %165, label %166

165:                                              ; preds = %154
  br label %256

166:                                              ; preds = %154
  %167 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %168 = load i32, i32* %8, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %167, i64 %169
  %171 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = shl i32 %172, 8
  %174 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %175 = load i32, i32* %8, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %174, i64 %176
  %178 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 4
  %180 = or i32 %173, %179
  %181 = icmp eq i32 %180, 960
  br i1 %181, label %182, label %244

182:                                              ; preds = %166
  %183 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %184 = load i32, i32* %8, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %183, i64 %185
  %187 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %186, i32 0, i32 2
  %188 = load i64, i64* %187, align 8
  %189 = icmp sgt i64 %188, 15
  br i1 %189, label %190, label %244

190:                                              ; preds = %182
  %191 = load i32, i32* @ty_MPEGAudioPacket, align 4
  %192 = load i32*, i32** %5, align 8
  %193 = load i64, i64* %14, align 8
  %194 = getelementptr inbounds i32, i32* %192, i64 %193
  %195 = call i32 @find_es_header(i32 %191, i32* %194, i32 5)
  store i32 %195, i32* %15, align 4
  %196 = load i32, i32* %15, align 4
  %197 = icmp sge i32 %196, 0
  br i1 %197, label %198, label %243

198:                                              ; preds = %190
  %199 = load i32*, i32** %5, align 8
  %200 = load i64, i64* %14, align 8
  %201 = add i64 %200, 6
  %202 = load i32, i32* %15, align 4
  %203 = sext i32 %202 to i64
  %204 = add i64 %201, %203
  %205 = getelementptr inbounds i32, i32* %199, i64 %204
  %206 = load i32, i32* %205, align 4
  %207 = and i32 %206, 128
  %208 = icmp eq i32 %207, 128
  br i1 %208, label %209, label %225

209:                                              ; preds = %198
  %210 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %211 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %210, i32 0, i32 0
  %212 = load i64, i64* %211, align 8
  %213 = load i64, i64* @TIVO_SERIES1, align 8
  %214 = icmp eq i64 %212, %213
  br i1 %214, label %215, label %218

215:                                              ; preds = %209
  %216 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %217 = call i32 (%struct.TYPE_10__*, i8*, ...) @ff_dlog(%struct.TYPE_10__* %216, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0))
  br label %218

218:                                              ; preds = %215, %209
  %219 = load i64, i64* @TIVO_TYPE_SA, align 8
  %220 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %221 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %220, i32 0, i32 1
  store i64 %219, i64* %221, align 8
  %222 = load i32, i32* @SA_PTS_OFFSET, align 4
  %223 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %224 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %223, i32 0, i32 2
  store i32 %222, i32* %224, align 8
  br label %242

225:                                              ; preds = %198
  %226 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %227 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %226, i32 0, i32 0
  %228 = load i64, i64* %227, align 8
  %229 = load i64, i64* @TIVO_SERIES1, align 8
  %230 = icmp eq i64 %228, %229
  br i1 %230, label %231, label %234

231:                                              ; preds = %225
  %232 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %233 = call i32 (%struct.TYPE_10__*, i8*, ...) @ff_dlog(%struct.TYPE_10__* %232, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0))
  br label %234

234:                                              ; preds = %231, %225
  %235 = load i8*, i8** @TIVO_TYPE_DTIVO, align 8
  %236 = ptrtoint i8* %235 to i64
  %237 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %238 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %237, i32 0, i32 1
  store i64 %236, i64* %238, align 8
  %239 = load i32, i32* @DTIVO_PTS_OFFSET, align 4
  %240 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %241 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %240, i32 0, i32 2
  store i32 %239, i32* %241, align 8
  br label %242

242:                                              ; preds = %234, %218
  br label %256

243:                                              ; preds = %190
  br label %244

244:                                              ; preds = %243, %182, %166
  %245 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %246 = load i32, i32* %8, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %245, i64 %247
  %249 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %248, i32 0, i32 2
  %250 = load i64, i64* %249, align 8
  %251 = load i64, i64* %14, align 8
  %252 = add i64 %251, %250
  store i64 %252, i64* %14, align 8
  br label %253

253:                                              ; preds = %244
  %254 = load i32, i32* %8, align 4
  %255 = add nsw i32 %254, 1
  store i32 %255, i32* %8, align 4
  br label %150

256:                                              ; preds = %242, %165, %150
  br label %257

257:                                              ; preds = %256, %140
  %258 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %259 = call i32 @av_free(%struct.TYPE_8__* %258)
  store i32 0, i32* %3, align 4
  br label %260

260:                                              ; preds = %257, %43, %31, %24
  %261 = load i32, i32* %3, align 4
  ret i32 %261
}

declare dso_local i64 @AV_RB32(i32*) #1

declare dso_local i32 @ff_dlog(%struct.TYPE_10__*, i8*, ...) #1

declare dso_local %struct.TYPE_8__* @parse_chunk_headers(i32*, i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @find_es_header(i32, i32*, i32) #1

declare dso_local i32 @av_free(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
