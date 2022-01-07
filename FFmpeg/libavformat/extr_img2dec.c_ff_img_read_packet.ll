; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_img2dec.c_ff_img_read_packet.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_img2dec.c_ff_img_read_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_26__ = type { i64 (%struct.TYPE_26__*, i32**, i8*, i32, i32*)*, i32*, %struct.TYPE_19__**, %struct.TYPE_22__* }
%struct.TYPE_19__ = type { i32, %struct.TYPE_27__* }
%struct.TYPE_27__ = type { i64, i32, i32 }
%struct.TYPE_22__ = type { i64, i64, i64, i64, i32, i32, i32, i64, i32, i64, i32, i32, %struct.TYPE_21__, i64 }
%struct.TYPE_21__ = type { i8** }
%struct.TYPE_24__ = type { i32, i32, i32*, i32, i32, i64 }
%struct.TYPE_23__ = type { i32, i8*, i32*, i32 }
%struct.TYPE_25__ = type { i64, i64 }
%struct.stat = type { %struct.TYPE_20__, i64 }
%struct.TYPE_20__ = type { i32 }

@AVERROR_EOF = common dso_local global i32 0, align 4
@PT_NONE = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@AVIO_FLAG_READ = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Could not open file : %s\0A\00", align 1
@AV_CODEC_ID_NONE = common dso_local global i64 0, align 8
@PROBE_BUF_MIN = common dso_local global i32 0, align 4
@AVPROBE_PADDING_SIZE = common dso_local global i32 0, align 4
@AV_CODEC_ID_RAWVIDEO = common dso_local global i64 0, align 8
@SEEK_SET = common dso_local global i32 0, align 4
@AV_PKT_FLAG_KEY = common dso_local global i32 0, align 4
@AVINDEX_KEYFRAME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_img_read_packet(%struct.TYPE_26__* %0, %struct.TYPE_24__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_26__*, align 8
  %5 = alloca %struct.TYPE_24__*, align 8
  %6 = alloca %struct.TYPE_22__*, align 8
  %7 = alloca [1024 x i8], align 16
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [3 x i32], align 4
  %12 = alloca [3 x i32], align 4
  %13 = alloca [3 x i32*], align 16
  %14 = alloca %struct.TYPE_27__*, align 8
  %15 = alloca %struct.TYPE_23__, align 8
  %16 = alloca %struct.TYPE_25__*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.stat, align 8
  store %struct.TYPE_26__* %0, %struct.TYPE_26__** %4, align 8
  store %struct.TYPE_24__* %1, %struct.TYPE_24__** %5, align 8
  %23 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %23, i32 0, i32 3
  %25 = load %struct.TYPE_22__*, %struct.TYPE_22__** %24, align 8
  store %struct.TYPE_22__* %25, %struct.TYPE_22__** %6, align 8
  %26 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 0
  store i8* %26, i8** %8, align 8
  %27 = bitcast [3 x i32]* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %27, i8 0, i64 12, i1 false)
  %28 = bitcast [3 x i32]* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %28, i8 0, i64 12, i1 false)
  %29 = bitcast [3 x i32*]* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %29, i8 0, i64 24, i1 false)
  %30 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %30, i32 0, i32 2
  %32 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %32, i64 0
  %34 = load %struct.TYPE_19__*, %struct.TYPE_19__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %34, i32 0, i32 1
  %36 = load %struct.TYPE_27__*, %struct.TYPE_27__** %35, align 8
  store %struct.TYPE_27__* %36, %struct.TYPE_27__** %14, align 8
  %37 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %37, i32 0, i32 7
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %279, label %41

41:                                               ; preds = %2
  %42 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %42, i32 0, i32 9
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %60

46:                                               ; preds = %41
  %47 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp ugt i64 %49, %52
  br i1 %53, label %54, label %60

54:                                               ; preds = %46
  %55 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %58, i32 0, i32 0
  store i64 %57, i64* %59, align 8
  br label %60

60:                                               ; preds = %54, %46, %41
  %61 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = icmp ugt i64 %63, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %60
  %69 = load i32, i32* @AVERROR_EOF, align 4
  store i32 %69, i32* %3, align 4
  br label %620

70:                                               ; preds = %60
  %71 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %71, i32 0, i32 3
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @PT_NONE, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %82

76:                                               ; preds = %70
  %77 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 0
  %78 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %78, i32 0, i32 11
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @av_strlcpy(i8* %77, i32 %80, i32 1024)
  br label %108

82:                                               ; preds = %70
  %83 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %83, i32 0, i32 13
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %82
  br label %107

88:                                               ; preds = %82
  %89 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 0
  %90 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %90, i32 0, i32 11
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = call i64 @av_get_frame_filename(i8* %89, i32 1024, i32 %92, i64 %95)
  %97 = icmp slt i64 %96, 0
  br i1 %97, label %98, label %106

98:                                               ; preds = %88
  %99 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = icmp ugt i64 %101, 1
  br i1 %102, label %103, label %106

103:                                              ; preds = %98
  %104 = load i32, i32* @EIO, align 4
  %105 = call i32 @AVERROR(i32 %104)
  store i32 %105, i32* %3, align 4
  br label %620

106:                                              ; preds = %98, %88
  br label %107

107:                                              ; preds = %106, %87
  br label %108

108:                                              ; preds = %107, %76
  store i32 0, i32* %9, align 4
  br label %109

109:                                              ; preds = %189, %108
  %110 = load i32, i32* %9, align 4
  %111 = icmp slt i32 %110, 3
  br i1 %111, label %112, label %192

112:                                              ; preds = %109
  %113 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %113, i32 0, i32 1
  %115 = load i32*, i32** %114, align 8
  %116 = icmp ne i32* %115, null
  br i1 %116, label %117, label %141

117:                                              ; preds = %112
  %118 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 0
  %119 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %120 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %119, i32 0, i32 11
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @strcmp(i8* %118, i32 %121)
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %141, label %124

124:                                              ; preds = %117
  %125 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %126 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %125, i32 0, i32 9
  %127 = load i64, i64* %126, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %141, label %129

129:                                              ; preds = %124
  %130 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %131 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %130, i32 0, i32 10
  %132 = load i32, i32* %131, align 8
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %141, label %134

134:                                              ; preds = %129
  %135 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %136 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %135, i32 0, i32 1
  %137 = load i32*, i32** %136, align 8
  %138 = load i32, i32* %9, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds [3 x i32*], [3 x i32*]* %13, i64 0, i64 %139
  store i32* %137, i32** %140, align 8
  br label %165

141:                                              ; preds = %129, %124, %117, %112
  %142 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %143 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %142, i32 0, i32 0
  %144 = load i64 (%struct.TYPE_26__*, i32**, i8*, i32, i32*)*, i64 (%struct.TYPE_26__*, i32**, i8*, i32, i32*)** %143, align 8
  %145 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %146 = load i32, i32* %9, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds [3 x i32*], [3 x i32*]* %13, i64 0, i64 %147
  %149 = load i8*, i8** %8, align 8
  %150 = load i32, i32* @AVIO_FLAG_READ, align 4
  %151 = call i64 %144(%struct.TYPE_26__* %145, i32** %148, i8* %149, i32 %150, i32* null)
  %152 = icmp slt i64 %151, 0
  br i1 %152, label %153, label %164

153:                                              ; preds = %141
  %154 = load i32, i32* %9, align 4
  %155 = icmp sge i32 %154, 1
  br i1 %155, label %156, label %157

156:                                              ; preds = %153
  br label %192

157:                                              ; preds = %153
  %158 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %159 = load i32, i32* @AV_LOG_ERROR, align 4
  %160 = load i8*, i8** %8, align 8
  %161 = call i32 @av_log(%struct.TYPE_26__* %158, i32 %159, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* %160)
  %162 = load i32, i32* @EIO, align 4
  %163 = call i32 @AVERROR(i32 %162)
  store i32 %163, i32* %3, align 4
  br label %620

164:                                              ; preds = %141
  br label %165

165:                                              ; preds = %164, %134
  %166 = load i32, i32* %9, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds [3 x i32*], [3 x i32*]* %13, i64 0, i64 %167
  %169 = load i32*, i32** %168, align 8
  %170 = call i32 @avio_size(i32* %169)
  %171 = load i32, i32* %9, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 %172
  store i32 %170, i32* %173, align 4
  %174 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %175 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %174, i32 0, i32 10
  %176 = load i32, i32* %175, align 8
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %179, label %178

178:                                              ; preds = %165
  br label %192

179:                                              ; preds = %165
  %180 = load i32, i32* %9, align 4
  %181 = add nsw i32 85, %180
  %182 = trunc i32 %181 to i8
  %183 = load i8*, i8** %8, align 8
  %184 = load i8*, i8** %8, align 8
  %185 = call i32 @strlen(i8* %184)
  %186 = sub nsw i32 %185, 1
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i8, i8* %183, i64 %187
  store i8 %182, i8* %188, align 1
  br label %189

189:                                              ; preds = %179
  %190 = load i32, i32* %9, align 4
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* %9, align 4
  br label %109

192:                                              ; preds = %178, %156, %109
  %193 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %194 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %193, i32 0, i32 0
  %195 = load i64, i64* %194, align 8
  %196 = load i64, i64* @AV_CODEC_ID_NONE, align 8
  %197 = icmp eq i64 %195, %196
  br i1 %197, label %198, label %259

198:                                              ; preds = %192
  %199 = bitcast %struct.TYPE_23__* %15 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %199, i8 0, i64 32, i1 false)
  %200 = load i32, i32* @PROBE_BUF_MIN, align 4
  %201 = load i32, i32* @AVPROBE_PADDING_SIZE, align 4
  %202 = add nsw i32 %200, %201
  %203 = zext i32 %202 to i64
  %204 = call i8* @llvm.stacksave()
  store i8* %204, i8** %17, align 8
  %205 = alloca i32, i64 %203, align 16
  store i64 %203, i64* %18, align 8
  store i32 0, i32* %20, align 4
  %206 = getelementptr inbounds [3 x i32*], [3 x i32*]* %13, i64 0, i64 0
  %207 = load i32*, i32** %206, align 16
  %208 = load i32, i32* @PROBE_BUF_MIN, align 4
  %209 = call i32 @avio_read(i32* %207, i32* %205, i32 %208)
  store i32 %209, i32* %19, align 4
  %210 = load i32, i32* %19, align 4
  %211 = icmp slt i32 %210, 0
  br i1 %211, label %212, label %214

212:                                              ; preds = %198
  %213 = load i32, i32* %19, align 4
  store i32 %213, i32* %3, align 4
  store i32 1, i32* %21, align 4
  br label %255

214:                                              ; preds = %198
  %215 = load i32, i32* %19, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds i32, i32* %205, i64 %216
  %218 = mul nuw i64 4, %203
  %219 = load i32, i32* %19, align 4
  %220 = sext i32 %219 to i64
  %221 = sub i64 %218, %220
  %222 = trunc i64 %221 to i32
  %223 = call i32 @memset(i32* %217, i32 0, i32 %222)
  %224 = getelementptr inbounds [3 x i32*], [3 x i32*]* %13, i64 0, i64 0
  %225 = load i32*, i32** %224, align 16
  %226 = load i32, i32* %19, align 4
  %227 = sub nsw i32 0, %226
  %228 = call i32 @avio_skip(i32* %225, i32 %227)
  %229 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %15, i32 0, i32 2
  store i32* %205, i32** %229, align 8
  %230 = load i32, i32* %19, align 4
  %231 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %15, i32 0, i32 0
  store i32 %230, i32* %231, align 8
  %232 = load i8*, i8** %8, align 8
  %233 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %15, i32 0, i32 1
  store i8* %232, i8** %233, align 8
  %234 = call %struct.TYPE_25__* @av_probe_input_format3(%struct.TYPE_23__* %15, i32 1, i32* %20)
  store %struct.TYPE_25__* %234, %struct.TYPE_25__** %16, align 8
  %235 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %236 = icmp ne %struct.TYPE_25__* %235, null
  br i1 %236, label %237, label %254

237:                                              ; preds = %214
  %238 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %239 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %238, i32 0, i32 0
  %240 = load i64, i64* %239, align 8
  %241 = inttoptr i64 %240 to i32 (%struct.TYPE_26__*, %struct.TYPE_24__*)*
  %242 = icmp eq i32 (%struct.TYPE_26__*, %struct.TYPE_24__*)* %241, @ff_img_read_packet
  br i1 %242, label %243, label %254

243:                                              ; preds = %237
  %244 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %245 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %244, i32 0, i32 1
  %246 = load i64, i64* %245, align 8
  %247 = icmp ne i64 %246, 0
  br i1 %247, label %248, label %254

248:                                              ; preds = %243
  %249 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %250 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %249, i32 0, i32 1
  %251 = load i64, i64* %250, align 8
  %252 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %253 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %252, i32 0, i32 0
  store i64 %251, i64* %253, align 8
  br label %254

254:                                              ; preds = %248, %243, %237, %214
  store i32 0, i32* %21, align 4
  br label %255

255:                                              ; preds = %254, %212
  %256 = load i8*, i8** %17, align 8
  call void @llvm.stackrestore(i8* %256)
  %257 = load i32, i32* %21, align 4
  switch i32 %257, label %622 [
    i32 0, label %258
    i32 1, label %620
  ]

258:                                              ; preds = %255
  br label %259

259:                                              ; preds = %258, %192
  %260 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %261 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %260, i32 0, i32 0
  %262 = load i64, i64* %261, align 8
  %263 = load i64, i64* @AV_CODEC_ID_RAWVIDEO, align 8
  %264 = icmp eq i64 %262, %263
  br i1 %264, label %265, label %278

265:                                              ; preds = %259
  %266 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %267 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %266, i32 0, i32 2
  %268 = load i32, i32* %267, align 4
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %278, label %270

270:                                              ; preds = %265
  %271 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %272 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %271, i32 0, i32 2
  %273 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %274 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %273, i32 0, i32 1
  %275 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 0
  %276 = load i32, i32* %275, align 4
  %277 = call i32 @infer_size(i32* %272, i32* %274, i32 %276)
  br label %278

278:                                              ; preds = %270, %265, %259
  br label %339

279:                                              ; preds = %2
  %280 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %281 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %280, i32 0, i32 1
  %282 = load i32*, i32** %281, align 8
  %283 = getelementptr inbounds [3 x i32*], [3 x i32*]* %13, i64 0, i64 0
  store i32* %282, i32** %283, align 16
  %284 = getelementptr inbounds [3 x i32*], [3 x i32*]* %13, i64 0, i64 0
  %285 = load i32*, i32** %284, align 16
  %286 = call i64 @avio_feof(i32* %285)
  %287 = icmp ne i64 %286, 0
  br i1 %287, label %288, label %303

288:                                              ; preds = %279
  %289 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %290 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %289, i32 0, i32 9
  %291 = load i64, i64* %290, align 8
  %292 = icmp ne i64 %291, 0
  br i1 %292, label %293, label %303

293:                                              ; preds = %288
  %294 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %295 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %294, i32 0, i32 7
  %296 = load i64, i64* %295, align 8
  %297 = icmp ne i64 %296, 0
  br i1 %297, label %298, label %303

298:                                              ; preds = %293
  %299 = getelementptr inbounds [3 x i32*], [3 x i32*]* %13, i64 0, i64 0
  %300 = load i32*, i32** %299, align 16
  %301 = load i32, i32* @SEEK_SET, align 4
  %302 = call i64 @avio_seek(i32* %300, i32 0, i32 %301)
  br label %303

303:                                              ; preds = %298, %293, %288, %279
  %304 = getelementptr inbounds [3 x i32*], [3 x i32*]* %13, i64 0, i64 0
  %305 = load i32*, i32** %304, align 16
  %306 = call i64 @avio_feof(i32* %305)
  %307 = icmp ne i64 %306, 0
  br i1 %307, label %308, label %310

308:                                              ; preds = %303
  %309 = load i32, i32* @AVERROR_EOF, align 4
  store i32 %309, i32* %3, align 4
  br label %620

310:                                              ; preds = %303
  %311 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %312 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %311, i32 0, i32 4
  %313 = load i32, i32* %312, align 8
  %314 = icmp sgt i32 %313, 0
  br i1 %314, label %315, label %320

315:                                              ; preds = %310
  %316 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %317 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %316, i32 0, i32 4
  %318 = load i32, i32* %317, align 8
  %319 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 0
  store i32 %318, i32* %319, align 4
  br label %338

320:                                              ; preds = %310
  %321 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %322 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %321, i32 0, i32 2
  %323 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %322, align 8
  %324 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %323, i64 0
  %325 = load %struct.TYPE_19__*, %struct.TYPE_19__** %324, align 8
  %326 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %325, i32 0, i32 0
  %327 = load i32, i32* %326, align 8
  %328 = icmp ne i32 %327, 0
  br i1 %328, label %335, label %329

329:                                              ; preds = %320
  %330 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %331 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %330, i32 0, i32 1
  %332 = load i32*, i32** %331, align 8
  %333 = call i32 @avio_size(i32* %332)
  %334 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 0
  store i32 %333, i32* %334, align 4
  br label %337

335:                                              ; preds = %320
  %336 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 0
  store i32 4096, i32* %336, align 4
  br label %337

337:                                              ; preds = %335, %329
  br label %338

338:                                              ; preds = %337, %315
  br label %339

339:                                              ; preds = %338, %278
  %340 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %341 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 0
  %342 = load i32, i32* %341, align 4
  %343 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 1
  %344 = load i32, i32* %343, align 4
  %345 = add nsw i32 %342, %344
  %346 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 2
  %347 = load i32, i32* %346, align 4
  %348 = add nsw i32 %345, %347
  %349 = call i32 @av_new_packet(%struct.TYPE_24__* %340, i32 %348)
  store i32 %349, i32* %10, align 4
  %350 = load i32, i32* %10, align 4
  %351 = icmp slt i32 %350, 0
  br i1 %351, label %352, label %353

352:                                              ; preds = %339
  br label %589

353:                                              ; preds = %339
  %354 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %355 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %354, i32 0, i32 5
  store i64 0, i64* %355, align 8
  %356 = load i32, i32* @AV_PKT_FLAG_KEY, align 4
  %357 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %358 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %357, i32 0, i32 4
  %359 = load i32, i32* %358, align 4
  %360 = or i32 %359, %356
  store i32 %360, i32* %358, align 4
  %361 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %362 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %361, i32 0, i32 5
  %363 = load i32, i32* %362, align 4
  %364 = icmp ne i32 %363, 0
  br i1 %364, label %365, label %392

365:                                              ; preds = %353
  %366 = load i8*, i8** %8, align 8
  %367 = call i64 @stat(i8* %366, %struct.stat* %22)
  %368 = icmp ne i64 %367, 0
  br i1 %368, label %369, label %372

369:                                              ; preds = %365
  %370 = load i32, i32* @EIO, align 4
  %371 = call i32 @AVERROR(i32 %370)
  store i32 %371, i32* %10, align 4
  br label %589

372:                                              ; preds = %365
  %373 = getelementptr inbounds %struct.stat, %struct.stat* %22, i32 0, i32 1
  %374 = load i64, i64* %373, align 8
  %375 = trunc i64 %374 to i32
  %376 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %377 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %376, i32 0, i32 0
  store i32 %375, i32* %377, align 8
  %378 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %379 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %378, i32 0, i32 2
  %380 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %379, align 8
  %381 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %380, i64 0
  %382 = load %struct.TYPE_19__*, %struct.TYPE_19__** %381, align 8
  %383 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %384 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %383, i32 0, i32 0
  %385 = load i64, i64* %384, align 8
  %386 = trunc i64 %385 to i32
  %387 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %388 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %387, i32 0, i32 0
  %389 = load i32, i32* %388, align 8
  %390 = load i32, i32* @AVINDEX_KEYFRAME, align 4
  %391 = call i32 @av_add_index_entry(%struct.TYPE_19__* %382, i32 %386, i32 %389, i32 0, i32 0, i32 %390)
  br label %404

392:                                              ; preds = %353
  %393 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %394 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %393, i32 0, i32 7
  %395 = load i64, i64* %394, align 8
  %396 = icmp ne i64 %395, 0
  br i1 %396, label %403, label %397

397:                                              ; preds = %392
  %398 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %399 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %398, i32 0, i32 6
  %400 = load i32, i32* %399, align 8
  %401 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %402 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %401, i32 0, i32 0
  store i32 %400, i32* %402, align 8
  br label %403

403:                                              ; preds = %397, %392
  br label %404

404:                                              ; preds = %403, %372
  %405 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %406 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %405, i32 0, i32 7
  %407 = load i64, i64* %406, align 8
  %408 = icmp ne i64 %407, 0
  br i1 %408, label %409, label %415

409:                                              ; preds = %404
  %410 = getelementptr inbounds [3 x i32*], [3 x i32*]* %13, i64 0, i64 0
  %411 = load i32*, i32** %410, align 16
  %412 = call i32 @avio_tell(i32* %411)
  %413 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %414 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %413, i32 0, i32 3
  store i32 %412, i32* %414, align 8
  br label %415

415:                                              ; preds = %409, %404
  %416 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %417 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %416, i32 0, i32 1
  store i32 0, i32* %417, align 4
  store i32 0, i32* %9, align 4
  br label %418

418:                                              ; preds = %533, %415
  %419 = load i32, i32* %9, align 4
  %420 = icmp slt i32 %419, 3
  br i1 %420, label %421, label %536

421:                                              ; preds = %418
  %422 = load i32, i32* %9, align 4
  %423 = sext i32 %422 to i64
  %424 = getelementptr inbounds [3 x i32*], [3 x i32*]* %13, i64 0, i64 %423
  %425 = load i32*, i32** %424, align 8
  %426 = icmp ne i32* %425, null
  br i1 %426, label %427, label %532

427:                                              ; preds = %421
  %428 = load i32, i32* %9, align 4
  %429 = sext i32 %428 to i64
  %430 = getelementptr inbounds [3 x i32*], [3 x i32*]* %13, i64 0, i64 %429
  %431 = load i32*, i32** %430, align 8
  %432 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %433 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %432, i32 0, i32 2
  %434 = load i32*, i32** %433, align 8
  %435 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %436 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %435, i32 0, i32 1
  %437 = load i32, i32* %436, align 4
  %438 = sext i32 %437 to i64
  %439 = getelementptr inbounds i32, i32* %434, i64 %438
  %440 = load i32, i32* %9, align 4
  %441 = sext i32 %440 to i64
  %442 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 %441
  %443 = load i32, i32* %442, align 4
  %444 = call i32 @avio_read(i32* %431, i32* %439, i32 %443)
  %445 = load i32, i32* %9, align 4
  %446 = sext i32 %445 to i64
  %447 = getelementptr inbounds [3 x i32], [3 x i32]* %12, i64 0, i64 %446
  store i32 %444, i32* %447, align 4
  %448 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %449 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %448, i32 0, i32 9
  %450 = load i64, i64* %449, align 8
  %451 = icmp ne i64 %450, 0
  br i1 %451, label %452, label %496

452:                                              ; preds = %427
  %453 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %454 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %453, i32 0, i32 7
  %455 = load i64, i64* %454, align 8
  %456 = icmp ne i64 %455, 0
  br i1 %456, label %457, label %496

457:                                              ; preds = %452
  %458 = load i32, i32* %9, align 4
  %459 = sext i32 %458 to i64
  %460 = getelementptr inbounds [3 x i32], [3 x i32]* %12, i64 0, i64 %459
  %461 = load i32, i32* %460, align 4
  %462 = load i32, i32* @AVERROR_EOF, align 4
  %463 = icmp eq i32 %461, %462
  br i1 %463, label %464, label %496

464:                                              ; preds = %457
  %465 = load i32, i32* %9, align 4
  %466 = sext i32 %465 to i64
  %467 = getelementptr inbounds [3 x i32*], [3 x i32*]* %13, i64 0, i64 %466
  %468 = load i32*, i32** %467, align 8
  %469 = load i32, i32* @SEEK_SET, align 4
  %470 = call i64 @avio_seek(i32* %468, i32 0, i32 %469)
  %471 = icmp sge i64 %470, 0
  br i1 %471, label %472, label %495

472:                                              ; preds = %464
  %473 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %474 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %473, i32 0, i32 3
  store i32 0, i32* %474, align 8
  %475 = load i32, i32* %9, align 4
  %476 = sext i32 %475 to i64
  %477 = getelementptr inbounds [3 x i32*], [3 x i32*]* %13, i64 0, i64 %476
  %478 = load i32*, i32** %477, align 8
  %479 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %480 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %479, i32 0, i32 2
  %481 = load i32*, i32** %480, align 8
  %482 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %483 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %482, i32 0, i32 1
  %484 = load i32, i32* %483, align 4
  %485 = sext i32 %484 to i64
  %486 = getelementptr inbounds i32, i32* %481, i64 %485
  %487 = load i32, i32* %9, align 4
  %488 = sext i32 %487 to i64
  %489 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 %488
  %490 = load i32, i32* %489, align 4
  %491 = call i32 @avio_read(i32* %478, i32* %486, i32 %490)
  %492 = load i32, i32* %9, align 4
  %493 = sext i32 %492 to i64
  %494 = getelementptr inbounds [3 x i32], [3 x i32]* %12, i64 0, i64 %493
  store i32 %491, i32* %494, align 4
  br label %495

495:                                              ; preds = %472, %464
  br label %496

496:                                              ; preds = %495, %457, %452, %427
  %497 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %498 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %497, i32 0, i32 7
  %499 = load i64, i64* %498, align 8
  %500 = icmp ne i64 %499, 0
  br i1 %500, label %516, label %501

501:                                              ; preds = %496
  %502 = load i32, i32* %9, align 4
  %503 = sext i32 %502 to i64
  %504 = getelementptr inbounds [3 x i32*], [3 x i32*]* %13, i64 0, i64 %503
  %505 = load i32*, i32** %504, align 8
  %506 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %507 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %506, i32 0, i32 1
  %508 = load i32*, i32** %507, align 8
  %509 = icmp ne i32* %505, %508
  br i1 %509, label %510, label %516

510:                                              ; preds = %501
  %511 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %512 = load i32, i32* %9, align 4
  %513 = sext i32 %512 to i64
  %514 = getelementptr inbounds [3 x i32*], [3 x i32*]* %13, i64 0, i64 %513
  %515 = call i32 @ff_format_io_close(%struct.TYPE_26__* %511, i32** %514)
  br label %516

516:                                              ; preds = %510, %501, %496
  %517 = load i32, i32* %9, align 4
  %518 = sext i32 %517 to i64
  %519 = getelementptr inbounds [3 x i32], [3 x i32]* %12, i64 0, i64 %518
  %520 = load i32, i32* %519, align 4
  %521 = icmp sgt i32 %520, 0
  br i1 %521, label %522, label %531

522:                                              ; preds = %516
  %523 = load i32, i32* %9, align 4
  %524 = sext i32 %523 to i64
  %525 = getelementptr inbounds [3 x i32], [3 x i32]* %12, i64 0, i64 %524
  %526 = load i32, i32* %525, align 4
  %527 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %528 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %527, i32 0, i32 1
  %529 = load i32, i32* %528, align 4
  %530 = add nsw i32 %529, %526
  store i32 %530, i32* %528, align 4
  br label %531

531:                                              ; preds = %522, %516
  br label %532

532:                                              ; preds = %531, %421
  br label %533

533:                                              ; preds = %532
  %534 = load i32, i32* %9, align 4
  %535 = add nsw i32 %534, 1
  store i32 %535, i32* %9, align 4
  br label %418

536:                                              ; preds = %418
  %537 = getelementptr inbounds [3 x i32], [3 x i32]* %12, i64 0, i64 0
  %538 = load i32, i32* %537, align 4
  %539 = icmp sle i32 %538, 0
  br i1 %539, label %548, label %540

540:                                              ; preds = %536
  %541 = getelementptr inbounds [3 x i32], [3 x i32]* %12, i64 0, i64 1
  %542 = load i32, i32* %541, align 4
  %543 = icmp slt i32 %542, 0
  br i1 %543, label %548, label %544

544:                                              ; preds = %540
  %545 = getelementptr inbounds [3 x i32], [3 x i32]* %12, i64 0, i64 2
  %546 = load i32, i32* %545, align 4
  %547 = icmp slt i32 %546, 0
  br i1 %547, label %548, label %576

548:                                              ; preds = %544, %540, %536
  %549 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %550 = call i32 @av_packet_unref(%struct.TYPE_24__* %549)
  %551 = getelementptr inbounds [3 x i32], [3 x i32]* %12, i64 0, i64 0
  %552 = load i32, i32* %551, align 4
  %553 = icmp slt i32 %552, 0
  br i1 %553, label %554, label %557

554:                                              ; preds = %548
  %555 = getelementptr inbounds [3 x i32], [3 x i32]* %12, i64 0, i64 0
  %556 = load i32, i32* %555, align 4
  store i32 %556, i32* %10, align 4
  br label %575

557:                                              ; preds = %548
  %558 = getelementptr inbounds [3 x i32], [3 x i32]* %12, i64 0, i64 1
  %559 = load i32, i32* %558, align 4
  %560 = icmp slt i32 %559, 0
  br i1 %560, label %561, label %564

561:                                              ; preds = %557
  %562 = getelementptr inbounds [3 x i32], [3 x i32]* %12, i64 0, i64 1
  %563 = load i32, i32* %562, align 4
  store i32 %563, i32* %10, align 4
  br label %574

564:                                              ; preds = %557
  %565 = getelementptr inbounds [3 x i32], [3 x i32]* %12, i64 0, i64 2
  %566 = load i32, i32* %565, align 4
  %567 = icmp slt i32 %566, 0
  br i1 %567, label %568, label %571

568:                                              ; preds = %564
  %569 = getelementptr inbounds [3 x i32], [3 x i32]* %12, i64 0, i64 2
  %570 = load i32, i32* %569, align 4
  store i32 %570, i32* %10, align 4
  br label %573

571:                                              ; preds = %564
  %572 = load i32, i32* @AVERROR_EOF, align 4
  store i32 %572, i32* %10, align 4
  br label %573

573:                                              ; preds = %571, %568
  br label %574

574:                                              ; preds = %573, %561
  br label %575

575:                                              ; preds = %574, %554
  br label %589

576:                                              ; preds = %544
  %577 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %578 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %577, i32 0, i32 8
  %579 = load i32, i32* %578, align 8
  %580 = add nsw i32 %579, 1
  store i32 %580, i32* %578, align 8
  %581 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %582 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %581, i32 0, i32 0
  %583 = load i64, i64* %582, align 8
  %584 = add i64 %583, 1
  store i64 %584, i64* %582, align 8
  %585 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %586 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %585, i32 0, i32 6
  %587 = load i32, i32* %586, align 8
  %588 = add nsw i32 %587, 1
  store i32 %588, i32* %586, align 8
  store i32 0, i32* %3, align 4
  br label %620

589:                                              ; preds = %575, %369, %352
  %590 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %591 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %590, i32 0, i32 7
  %592 = load i64, i64* %591, align 8
  %593 = icmp ne i64 %592, 0
  br i1 %593, label %618, label %594

594:                                              ; preds = %589
  store i32 0, i32* %9, align 4
  br label %595

595:                                              ; preds = %614, %594
  %596 = load i32, i32* %9, align 4
  %597 = icmp slt i32 %596, 3
  br i1 %597, label %598, label %617

598:                                              ; preds = %595
  %599 = load i32, i32* %9, align 4
  %600 = sext i32 %599 to i64
  %601 = getelementptr inbounds [3 x i32*], [3 x i32*]* %13, i64 0, i64 %600
  %602 = load i32*, i32** %601, align 8
  %603 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %604 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %603, i32 0, i32 1
  %605 = load i32*, i32** %604, align 8
  %606 = icmp ne i32* %602, %605
  br i1 %606, label %607, label %613

607:                                              ; preds = %598
  %608 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %609 = load i32, i32* %9, align 4
  %610 = sext i32 %609 to i64
  %611 = getelementptr inbounds [3 x i32*], [3 x i32*]* %13, i64 0, i64 %610
  %612 = call i32 @ff_format_io_close(%struct.TYPE_26__* %608, i32** %611)
  br label %613

613:                                              ; preds = %607, %598
  br label %614

614:                                              ; preds = %613
  %615 = load i32, i32* %9, align 4
  %616 = add nsw i32 %615, 1
  store i32 %616, i32* %9, align 4
  br label %595

617:                                              ; preds = %595
  br label %618

618:                                              ; preds = %617, %589
  %619 = load i32, i32* %10, align 4
  store i32 %619, i32* %3, align 4
  br label %620

620:                                              ; preds = %618, %576, %308, %255, %157, %103, %68
  %621 = load i32, i32* %3, align 4
  ret i32 %621

622:                                              ; preds = %255
  unreachable
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @av_strlcpy(i8*, i32, i32) #2

declare dso_local i64 @av_get_frame_filename(i8*, i32, i32, i64) #2

declare dso_local i32 @AVERROR(i32) #2

declare dso_local i32 @strcmp(i8*, i32) #2

declare dso_local i32 @av_log(%struct.TYPE_26__*, i32, i8*, i8*) #2

declare dso_local i32 @avio_size(i32*) #2

declare dso_local i32 @strlen(i8*) #2

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #3

declare dso_local i32 @avio_read(i32*, i32*, i32) #2

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i32 @avio_skip(i32*, i32) #2

declare dso_local %struct.TYPE_25__* @av_probe_input_format3(%struct.TYPE_23__*, i32, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #3

declare dso_local i32 @infer_size(i32*, i32*, i32) #2

declare dso_local i64 @avio_feof(i32*) #2

declare dso_local i64 @avio_seek(i32*, i32, i32) #2

declare dso_local i32 @av_new_packet(%struct.TYPE_24__*, i32) #2

declare dso_local i64 @stat(i8*, %struct.stat*) #2

declare dso_local i32 @av_add_index_entry(%struct.TYPE_19__*, i32, i32, i32, i32, i32) #2

declare dso_local i32 @avio_tell(i32*) #2

declare dso_local i32 @ff_format_io_close(%struct.TYPE_26__*, i32**) #2

declare dso_local i32 @av_packet_unref(%struct.TYPE_24__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
