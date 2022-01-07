; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_subviewerdec.c_subviewer_read_header.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_subviewerdec.c_subviewer_read_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_13__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32, i32, i32 }
%struct.TYPE_14__ = type { i32, i8*, i8* }

@AV_NOPTS_VALUE = common dso_local global i8* null, align 8
@ENOMEM = common dso_local global i32 0, align 4
@SEEK_CUR = common dso_local global i32 0, align 4
@AVMEDIA_TYPE_SUBTITLE = common dso_local global i32 0, align 4
@AV_CODEC_ID_SUBVIEWER = common dso_local global i32 0, align 4
@AV_BPRINT_SIZE_UNLIMITED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"[br]\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"[COLF]\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"[SIZE]\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"[FONT]\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"[STYLE]\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"[END INFORMATION]\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"[SUBTITLE]\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"[INFORMATION]\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*)* @subviewer_read_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @subviewer_read_header(%struct.TYPE_15__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_14__*, align 8
  %12 = alloca [2048 x i8], align 16
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca [32 x i8], align 16
  %18 = alloca [128 x i8], align 16
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %3, align 8
  %19 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 2
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %20, align 8
  store %struct.TYPE_12__* %21, %struct.TYPE_12__** %4, align 8
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %23 = call %struct.TYPE_13__* @avformat_new_stream(%struct.TYPE_15__* %22, i32* null)
  store %struct.TYPE_13__* %23, %struct.TYPE_13__** %5, align 8
  store i32 0, i32* %7, align 4
  store i32 1, i32* %8, align 4
  %24 = load i8*, i8** @AV_NOPTS_VALUE, align 8
  store i8* %24, i8** %9, align 8
  store i32 -1, i32* %10, align 4
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %11, align 8
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %26 = icmp ne %struct.TYPE_13__* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %1
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = call i32 @AVERROR(i32 %28)
  store i32 %29, i32* %2, align 4
  br label %310

30:                                               ; preds = %1
  %31 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @ffio_ensure_seekback(i32 %33, i32 3)
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %30
  %38 = load i32, i32* %7, align 4
  store i32 %38, i32* %2, align 4
  br label %310

39:                                               ; preds = %30
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @avio_rb24(i32 %42)
  %44 = icmp ne i32 %43, 15711167
  br i1 %44, label %45, label %51

45:                                               ; preds = %39
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @SEEK_CUR, align 4
  %50 = call i32 @avio_seek(i32 %48, i32 -3, i32 %49)
  br label %51

51:                                               ; preds = %45, %39
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %53 = call i32 @avpriv_set_pts_info(%struct.TYPE_13__* %52, i32 64, i32 1, i32 100)
  %54 = load i32, i32* @AVMEDIA_TYPE_SUBTITLE, align 4
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_16__*, %struct.TYPE_16__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %57, i32 0, i32 2
  store i32 %54, i32* %58, align 4
  %59 = load i32, i32* @AV_CODEC_ID_SUBVIEWER, align 4
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_16__*, %struct.TYPE_16__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %62, i32 0, i32 1
  store i32 %59, i32* %63, align 4
  %64 = load i32, i32* @AV_BPRINT_SIZE_UNLIMITED, align 4
  %65 = call i32 @av_bprint_init(i32* %6, i32 0, i32 %64)
  br label %66

66:                                               ; preds = %301, %110, %51
  %67 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @avio_feof(i32 %69)
  %71 = icmp ne i32 %70, 0
  %72 = xor i1 %71, true
  br i1 %72, label %73, label %302

73:                                               ; preds = %66
  store i8* null, i8** %13, align 8
  %74 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = getelementptr inbounds [2048 x i8], [2048 x i8]* %12, i64 0, i64 0
  %78 = call i32 @ff_get_line(i32 %76, i8* %77, i32 2048)
  store i32 %78, i32* %14, align 4
  %79 = load i32, i32* %14, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %82, label %81

81:                                               ; preds = %73
  br label %302

82:                                               ; preds = %73
  %83 = getelementptr inbounds [2048 x i8], [2048 x i8]* %12, i64 0, i64 0
  %84 = call i64 @strcspn(i8* %83, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %85 = getelementptr inbounds [2048 x i8], [2048 x i8]* %12, i64 0, i64 %84
  store i8 0, i8* %85, align 1
  %86 = getelementptr inbounds [2048 x i8], [2048 x i8]* %12, i64 0, i64 0
  %87 = load i8, i8* %86, align 16
  %88 = sext i8 %87 to i32
  %89 = icmp eq i32 %88, 91
  br i1 %89, label %90, label %243

90:                                               ; preds = %82
  %91 = getelementptr inbounds [2048 x i8], [2048 x i8]* %12, i64 0, i64 0
  %92 = call i64 @strncmp(i8* %91, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 4)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %243

94:                                               ; preds = %90
  %95 = getelementptr inbounds [2048 x i8], [2048 x i8]* %12, i64 0, i64 0
  %96 = call i64 @strstr(i8* %95, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %110, label %98

98:                                               ; preds = %94
  %99 = getelementptr inbounds [2048 x i8], [2048 x i8]* %12, i64 0, i64 0
  %100 = call i64 @strstr(i8* %99, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %110, label %102

102:                                              ; preds = %98
  %103 = getelementptr inbounds [2048 x i8], [2048 x i8]* %12, i64 0, i64 0
  %104 = call i64 @strstr(i8* %103, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %110, label %106

106:                                              ; preds = %102
  %107 = getelementptr inbounds [2048 x i8], [2048 x i8]* %12, i64 0, i64 0
  %108 = call i64 @strstr(i8* %107, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %106, %102, %98, %94
  br label %66

111:                                              ; preds = %106
  %112 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %112, i32 0, i32 0
  %114 = load %struct.TYPE_16__*, %struct.TYPE_16__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %242, label %118

118:                                              ; preds = %111
  %119 = getelementptr inbounds [2048 x i8], [2048 x i8]* %12, i64 0, i64 0
  %120 = call i32 @av_bprintf(i32* %6, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8* %119)
  %121 = getelementptr inbounds [2048 x i8], [2048 x i8]* %12, i64 0, i64 0
  %122 = call i64 @strncmp(i8* %121, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0), i32 17)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %128

124:                                              ; preds = %118
  %125 = getelementptr inbounds [2048 x i8], [2048 x i8]* %12, i64 0, i64 0
  %126 = call i64 @strncmp(i8* %125, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i32 10)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %137, label %128

128:                                              ; preds = %124, %118
  %129 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %130 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %129, i32 0, i32 0
  %131 = load %struct.TYPE_16__*, %struct.TYPE_16__** %130, align 8
  %132 = call i32 @ff_bprint_to_codecpar_extradata(%struct.TYPE_16__* %131, i32* %6)
  store i32 %132, i32* %7, align 4
  %133 = load i32, i32* %7, align 4
  %134 = icmp slt i32 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %128
  br label %307

136:                                              ; preds = %128
  br label %241

137:                                              ; preds = %124
  %138 = getelementptr inbounds [2048 x i8], [2048 x i8]* %12, i64 0, i64 0
  %139 = call i64 @strncmp(i8* %138, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i32 13)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %240

141:                                              ; preds = %137
  store i32 0, i32* %16, align 4
  store i32 1, i32* %15, align 4
  br label %142

142:                                              ; preds = %172, %141
  %143 = load i32, i32* %15, align 4
  %144 = sext i32 %143 to i64
  %145 = icmp ult i64 %144, 31
  br i1 %145, label %146, label %160

146:                                              ; preds = %142
  %147 = load i32, i32* %15, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds [2048 x i8], [2048 x i8]* %12, i64 0, i64 %148
  %150 = load i8, i8* %149, align 1
  %151 = sext i8 %150 to i32
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %160

153:                                              ; preds = %146
  %154 = load i32, i32* %15, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds [2048 x i8], [2048 x i8]* %12, i64 0, i64 %155
  %157 = load i8, i8* %156, align 1
  %158 = sext i8 %157 to i32
  %159 = icmp ne i32 %158, 93
  br label %160

160:                                              ; preds = %153, %146, %142
  %161 = phi i1 [ false, %146 ], [ false, %142 ], [ %159, %153 ]
  br i1 %161, label %162, label %175

162:                                              ; preds = %160
  %163 = load i32, i32* %15, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds [2048 x i8], [2048 x i8]* %12, i64 0, i64 %164
  %166 = load i8, i8* %165, align 1
  %167 = call signext i8 @av_tolower(i8 signext %166)
  %168 = load i32, i32* %15, align 4
  %169 = sub nsw i32 %168, 1
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds [32 x i8], [32 x i8]* %17, i64 0, i64 %170
  store i8 %167, i8* %171, align 1
  br label %172

172:                                              ; preds = %162
  %173 = load i32, i32* %15, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %15, align 4
  br label %142

175:                                              ; preds = %160
  %176 = load i32, i32* %15, align 4
  %177 = sub nsw i32 %176, 1
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds [32 x i8], [32 x i8]* %17, i64 0, i64 %178
  store i8 0, i8* %179, align 1
  %180 = load i32, i32* %15, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds [2048 x i8], [2048 x i8]* %12, i64 0, i64 %181
  %183 = load i8, i8* %182, align 1
  %184 = sext i8 %183 to i32
  %185 = icmp eq i32 %184, 93
  br i1 %185, label %186, label %189

186:                                              ; preds = %175
  %187 = load i32, i32* %15, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %15, align 4
  br label %189

189:                                              ; preds = %186, %175
  br label %190

190:                                              ; preds = %197, %189
  %191 = load i32, i32* %15, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds [2048 x i8], [2048 x i8]* %12, i64 0, i64 %192
  %194 = load i8, i8* %193, align 1
  %195 = sext i8 %194 to i32
  %196 = icmp eq i32 %195, 32
  br i1 %196, label %197, label %200

197:                                              ; preds = %190
  %198 = load i32, i32* %15, align 4
  %199 = add nsw i32 %198, 1
  store i32 %199, i32* %15, align 4
  br label %190

200:                                              ; preds = %190
  br label %201

201:                                              ; preds = %221, %200
  %202 = load i32, i32* %16, align 4
  %203 = sext i32 %202 to i64
  %204 = icmp ult i64 %203, 127
  br i1 %204, label %205, label %219

205:                                              ; preds = %201
  %206 = load i32, i32* %15, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds [2048 x i8], [2048 x i8]* %12, i64 0, i64 %207
  %209 = load i8, i8* %208, align 1
  %210 = sext i8 %209 to i32
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %219

212:                                              ; preds = %205
  %213 = load i32, i32* %15, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds [2048 x i8], [2048 x i8]* %12, i64 0, i64 %214
  %216 = load i8, i8* %215, align 1
  %217 = sext i8 %216 to i32
  %218 = icmp ne i32 %217, 93
  br label %219

219:                                              ; preds = %212, %205, %201
  %220 = phi i1 [ false, %205 ], [ false, %201 ], [ %218, %212 ]
  br i1 %220, label %221, label %231

221:                                              ; preds = %219
  %222 = load i32, i32* %15, align 4
  %223 = add nsw i32 %222, 1
  store i32 %223, i32* %15, align 4
  %224 = sext i32 %222 to i64
  %225 = getelementptr inbounds [2048 x i8], [2048 x i8]* %12, i64 0, i64 %224
  %226 = load i8, i8* %225, align 1
  %227 = load i32, i32* %16, align 4
  %228 = add nsw i32 %227, 1
  store i32 %228, i32* %16, align 4
  %229 = sext i32 %227 to i64
  %230 = getelementptr inbounds [128 x i8], [128 x i8]* %18, i64 0, i64 %229
  store i8 %226, i8* %230, align 1
  br label %201

231:                                              ; preds = %219
  %232 = load i32, i32* %16, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds [128 x i8], [128 x i8]* %18, i64 0, i64 %233
  store i8 0, i8* %234, align 1
  %235 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %236 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %235, i32 0, i32 1
  %237 = getelementptr inbounds [32 x i8], [32 x i8]* %17, i64 0, i64 0
  %238 = getelementptr inbounds [128 x i8], [128 x i8]* %18, i64 0, i64 0
  %239 = call i32 @av_dict_set(i32* %236, i8* %237, i8* %238, i32 0)
  br label %240

240:                                              ; preds = %231, %137
  br label %241

241:                                              ; preds = %240, %136
  br label %242

242:                                              ; preds = %241, %111
  br label %301

243:                                              ; preds = %90, %82
  %244 = getelementptr inbounds [2048 x i8], [2048 x i8]* %12, i64 0, i64 0
  %245 = call i64 @read_ts(i8* %244, i8** %9, i32* %10)
  %246 = icmp sge i64 %245, 0
  br i1 %246, label %247, label %252

247:                                              ; preds = %243
  store i32 1, i32* %8, align 4
  %248 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %249 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 8
  %251 = call i8* @avio_tell(i32 %250)
  store i8* %251, i8** %13, align 8
  br label %300

252:                                              ; preds = %243
  %253 = getelementptr inbounds [2048 x i8], [2048 x i8]* %12, i64 0, i64 0
  %254 = load i8, i8* %253, align 16
  %255 = icmp ne i8 %254, 0
  br i1 %255, label %256, label %299

256:                                              ; preds = %252
  %257 = load i32, i32* %8, align 4
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %269, label %259

259:                                              ; preds = %256
  %260 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %261 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %260, i32 0, i32 0
  %262 = call %struct.TYPE_14__* @ff_subtitles_queue_insert(i32* %261, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0), i32 1, i32 1)
  store %struct.TYPE_14__* %262, %struct.TYPE_14__** %11, align 8
  %263 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %264 = icmp ne %struct.TYPE_14__* %263, null
  br i1 %264, label %268, label %265

265:                                              ; preds = %259
  %266 = load i32, i32* @ENOMEM, align 4
  %267 = call i32 @AVERROR(i32 %266)
  store i32 %267, i32* %7, align 4
  br label %307

268:                                              ; preds = %259
  br label %269

269:                                              ; preds = %268, %256
  %270 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %271 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %270, i32 0, i32 0
  %272 = getelementptr inbounds [2048 x i8], [2048 x i8]* %12, i64 0, i64 0
  %273 = getelementptr inbounds [2048 x i8], [2048 x i8]* %12, i64 0, i64 0
  %274 = call i32 @strlen(i8* %273)
  %275 = load i32, i32* %8, align 4
  %276 = icmp ne i32 %275, 0
  %277 = xor i1 %276, true
  %278 = zext i1 %277 to i32
  %279 = call %struct.TYPE_14__* @ff_subtitles_queue_insert(i32* %271, i8* %272, i32 %274, i32 %278)
  store %struct.TYPE_14__* %279, %struct.TYPE_14__** %11, align 8
  %280 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %281 = icmp ne %struct.TYPE_14__* %280, null
  br i1 %281, label %285, label %282

282:                                              ; preds = %269
  %283 = load i32, i32* @ENOMEM, align 4
  %284 = call i32 @AVERROR(i32 %283)
  store i32 %284, i32* %7, align 4
  br label %307

285:                                              ; preds = %269
  %286 = load i32, i32* %8, align 4
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %288, label %298

288:                                              ; preds = %285
  %289 = load i8*, i8** %13, align 8
  %290 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %291 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %290, i32 0, i32 2
  store i8* %289, i8** %291, align 8
  %292 = load i8*, i8** %9, align 8
  %293 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %294 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %293, i32 0, i32 1
  store i8* %292, i8** %294, align 8
  %295 = load i32, i32* %10, align 4
  %296 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %297 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %296, i32 0, i32 0
  store i32 %295, i32* %297, align 8
  br label %298

298:                                              ; preds = %288, %285
  store i32 0, i32* %8, align 4
  br label %299

299:                                              ; preds = %298, %252
  br label %300

300:                                              ; preds = %299, %247
  br label %301

301:                                              ; preds = %300, %242
  br label %66

302:                                              ; preds = %81, %66
  %303 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %304 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %305 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %304, i32 0, i32 0
  %306 = call i32 @ff_subtitles_queue_finalize(%struct.TYPE_15__* %303, i32* %305)
  br label %307

307:                                              ; preds = %302, %282, %265, %135
  %308 = call i32 @av_bprint_finalize(i32* %6, i32* null)
  %309 = load i32, i32* %7, align 4
  store i32 %309, i32* %2, align 4
  br label %310

310:                                              ; preds = %307, %37, %27
  %311 = load i32, i32* %2, align 4
  ret i32 %311
}

declare dso_local %struct.TYPE_13__* @avformat_new_stream(%struct.TYPE_15__*, i32*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @ffio_ensure_seekback(i32, i32) #1

declare dso_local i32 @avio_rb24(i32) #1

declare dso_local i32 @avio_seek(i32, i32, i32) #1

declare dso_local i32 @avpriv_set_pts_info(%struct.TYPE_13__*, i32, i32, i32) #1

declare dso_local i32 @av_bprint_init(i32*, i32, i32) #1

declare dso_local i32 @avio_feof(i32) #1

declare dso_local i32 @ff_get_line(i32, i8*, i32) #1

declare dso_local i64 @strcspn(i8*, i8*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i64 @strstr(i8*, i8*) #1

declare dso_local i32 @av_bprintf(i32*, i8*, i8*) #1

declare dso_local i32 @ff_bprint_to_codecpar_extradata(%struct.TYPE_16__*, i32*) #1

declare dso_local signext i8 @av_tolower(i8 signext) #1

declare dso_local i32 @av_dict_set(i32*, i8*, i8*, i32) #1

declare dso_local i64 @read_ts(i8*, i8**, i32*) #1

declare dso_local i8* @avio_tell(i32) #1

declare dso_local %struct.TYPE_14__* @ff_subtitles_queue_insert(i32*, i8*, i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @ff_subtitles_queue_finalize(%struct.TYPE_15__*, i32*) #1

declare dso_local i32 @av_bprint_finalize(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
