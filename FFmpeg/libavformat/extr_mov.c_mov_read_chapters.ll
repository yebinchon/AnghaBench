; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_mov.c_mov_read_chapters.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_mov.c_mov_read_chapters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, %struct.TYPE_15__**, %struct.TYPE_14__* }
%struct.TYPE_15__ = type { i32, i32, i32, i64, i32, %struct.TYPE_17__*, i32, %struct.TYPE_12__*, %struct.TYPE_16__, i32, %struct.TYPE_13__* }
%struct.TYPE_17__ = type { i64, i32, i64 }
%struct.TYPE_12__ = type { i64, i32 }
%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_14__ = type { i32, i32* }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Referenced QT chapter track not found\0A\00", align 1
@AVMEDIA_TYPE_VIDEO = common dso_local global i64 0, align 8
@AV_DISPOSITION_ATTACHED_PIC = common dso_local global i32 0, align 4
@AV_DISPOSITION_TIMED_THUMBNAILS = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Failed to retrieve first frame\0A\00", align 1
@AV_PKT_FLAG_KEY = common dso_local global i32 0, align 4
@AVMEDIA_TYPE_DATA = common dso_local global i64 0, align 8
@AV_CODEC_ID_BIN_DATA = common dso_local global i32 0, align 4
@AVDISCARD_ALL = common dso_local global i32 0, align 4
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [57 x i8] c"ignoring stream duration which is shorter than chapters\0A\00", align 1
@AV_NOPTS_VALUE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [30 x i8] c"Chapter %d not found in file\0A\00", align 1
@INT_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_18__*)* @mov_read_chapters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mov_read_chapters(%struct.TYPE_18__* %0) #0 {
  %2 = alloca %struct.TYPE_18__*, align 8
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_16__, align 4
  %11 = alloca %struct.TYPE_17__*, align 8
  %12 = alloca %struct.TYPE_17__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %2, align 8
  %18 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %18, i32 0, i32 2
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  store %struct.TYPE_14__* %20, %struct.TYPE_14__** %3, align 8
  store i32 0, i32* %8, align 4
  br label %21

21:                                               ; preds = %329, %1
  %22 = load i32, i32* %8, align 4
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp slt i32 %22, %25
  br i1 %26, label %27, label %332

27:                                               ; preds = %21
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* %8, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %9, align 4
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %4, align 8
  store i32 0, i32* %7, align 4
  br label %35

35:                                               ; preds = %62, %27
  %36 = load i32, i32* %7, align 4
  %37 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp slt i32 %36, %39
  br i1 %40, label %41, label %65

41:                                               ; preds = %35
  %42 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %42, i32 0, i32 1
  %44 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %43, align 8
  %45 = load i32, i32* %7, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %44, i64 %46
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* %9, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %61

53:                                               ; preds = %41
  %54 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %55 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %54, i32 0, i32 1
  %56 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %55, align 8
  %57 = load i32, i32* %7, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %56, i64 %58
  %60 = load %struct.TYPE_15__*, %struct.TYPE_15__** %59, align 8
  store %struct.TYPE_15__* %60, %struct.TYPE_15__** %4, align 8
  br label %65

61:                                               ; preds = %41
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %7, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %7, align 4
  br label %35

65:                                               ; preds = %53, %35
  %66 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %67 = icmp ne %struct.TYPE_15__* %66, null
  br i1 %67, label %72, label %68

68:                                               ; preds = %65
  %69 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %70 = load i32, i32* @AV_LOG_ERROR, align 4
  %71 = call i32 (%struct.TYPE_18__*, i32, i8*, ...) @av_log(%struct.TYPE_18__* %69, i32 %70, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %329

72:                                               ; preds = %65
  %73 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %73, i32 0, i32 10
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %74, align 8
  store %struct.TYPE_13__* %75, %struct.TYPE_13__** %5, align 8
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i64 @avio_tell(i32 %78)
  store i64 %79, i64* %6, align 8
  %80 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %80, i32 0, i32 7
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @AVMEDIA_TYPE_VIDEO, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %148

87:                                               ; preds = %72
  %88 = load i32, i32* @AV_DISPOSITION_ATTACHED_PIC, align 4
  %89 = load i32, i32* @AV_DISPOSITION_TIMED_THUMBNAILS, align 4
  %90 = or i32 %88, %89
  %91 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = or i32 %93, %90
  store i32 %94, i32* %92, align 4
  %95 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %147

99:                                               ; preds = %87
  %100 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %100, i32 0, i32 5
  %102 = load %struct.TYPE_17__*, %struct.TYPE_17__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %102, i64 0
  store %struct.TYPE_17__* %103, %struct.TYPE_17__** %11, align 8
  %104 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %108 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load i32, i32* @SEEK_SET, align 4
  %111 = call i64 @avio_seek(i32 %106, i64 %109, i32 %110)
  %112 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %113 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %111, %114
  br i1 %115, label %116, label %120

116:                                              ; preds = %99
  %117 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %118 = load i32, i32* @AV_LOG_ERROR, align 4
  %119 = call i32 (%struct.TYPE_18__*, i32, i8*, ...) @av_log(%struct.TYPE_18__* %117, i32 %118, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %322

120:                                              ; preds = %99
  %121 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %122 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %125 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 8
  %127 = call i64 @av_get_packet(i32 %123, %struct.TYPE_16__* %10, i32 %126)
  %128 = icmp slt i64 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %120
  br label %322

130:                                              ; preds = %120
  %131 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %132 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %131, i32 0, i32 8
  %133 = bitcast %struct.TYPE_16__* %132 to i8*
  %134 = bitcast %struct.TYPE_16__* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %133, i8* align 4 %134, i64 8, i1 false)
  %135 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %136 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %135, i32 0, i32 9
  %137 = load i32, i32* %136, align 8
  %138 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %139 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %138, i32 0, i32 8
  %140 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %139, i32 0, i32 1
  store i32 %137, i32* %140, align 4
  %141 = load i32, i32* @AV_PKT_FLAG_KEY, align 4
  %142 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %143 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %142, i32 0, i32 8
  %144 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = or i32 %145, %141
  store i32 %146, i32* %144, align 8
  br label %147

147:                                              ; preds = %130, %87
  br label %321

148:                                              ; preds = %72
  %149 = load i64, i64* @AVMEDIA_TYPE_DATA, align 8
  %150 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %151 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %150, i32 0, i32 7
  %152 = load %struct.TYPE_12__*, %struct.TYPE_12__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %152, i32 0, i32 0
  store i64 %149, i64* %153, align 8
  %154 = load i32, i32* @AV_CODEC_ID_BIN_DATA, align 4
  %155 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %156 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %155, i32 0, i32 7
  %157 = load %struct.TYPE_12__*, %struct.TYPE_12__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %157, i32 0, i32 1
  store i32 %154, i32* %158, align 8
  %159 = load i32, i32* @AVDISCARD_ALL, align 4
  %160 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %161 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %160, i32 0, i32 6
  store i32 %159, i32* %161, align 8
  store i32 0, i32* %7, align 4
  br label %162

162:                                              ; preds = %317, %148
  %163 = load i32, i32* %7, align 4
  %164 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %165 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %164, i32 0, i32 2
  %166 = load i32, i32* %165, align 8
  %167 = icmp slt i32 %163, %166
  br i1 %167, label %168, label %320

168:                                              ; preds = %162
  %169 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %170 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %169, i32 0, i32 5
  %171 = load %struct.TYPE_17__*, %struct.TYPE_17__** %170, align 8
  %172 = load i32, i32* %7, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %171, i64 %173
  store %struct.TYPE_17__* %174, %struct.TYPE_17__** %12, align 8
  %175 = load i32, i32* %7, align 4
  %176 = add nsw i32 %175, 1
  %177 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %178 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %177, i32 0, i32 2
  %179 = load i32, i32* %178, align 8
  %180 = icmp slt i32 %176, %179
  br i1 %180, label %181, label %191

181:                                              ; preds = %168
  %182 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %183 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %182, i32 0, i32 5
  %184 = load %struct.TYPE_17__*, %struct.TYPE_17__** %183, align 8
  %185 = load i32, i32* %7, align 4
  %186 = add nsw i32 %185, 1
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %184, i64 %187
  %189 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %188, i32 0, i32 2
  %190 = load i64, i64* %189, align 8
  br label %195

191:                                              ; preds = %168
  %192 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %193 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %192, i32 0, i32 3
  %194 = load i64, i64* %193, align 8
  br label %195

195:                                              ; preds = %191, %181
  %196 = phi i64 [ %190, %181 ], [ %194, %191 ]
  store i64 %196, i64* %13, align 8
  %197 = load i64, i64* %13, align 8
  %198 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %199 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %198, i32 0, i32 2
  %200 = load i64, i64* %199, align 8
  %201 = icmp slt i64 %197, %200
  br i1 %201, label %202, label %207

202:                                              ; preds = %195
  %203 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %204 = load i32, i32* @AV_LOG_WARNING, align 4
  %205 = call i32 (%struct.TYPE_18__*, i32, i8*, ...) @av_log(%struct.TYPE_18__* %203, i32 %204, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.2, i64 0, i64 0))
  %206 = load i64, i64* @AV_NOPTS_VALUE, align 8
  store i64 %206, i64* %13, align 8
  br label %207

207:                                              ; preds = %202, %195
  %208 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %209 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 4
  %211 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %212 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %211, i32 0, i32 0
  %213 = load i64, i64* %212, align 8
  %214 = load i32, i32* @SEEK_SET, align 4
  %215 = call i64 @avio_seek(i32 %210, i64 %213, i32 %214)
  %216 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %217 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %216, i32 0, i32 0
  %218 = load i64, i64* %217, align 8
  %219 = icmp ne i64 %215, %218
  br i1 %219, label %220, label %225

220:                                              ; preds = %207
  %221 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %222 = load i32, i32* @AV_LOG_ERROR, align 4
  %223 = load i32, i32* %7, align 4
  %224 = call i32 (%struct.TYPE_18__*, i32, i8*, ...) @av_log(%struct.TYPE_18__* %221, i32 %222, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %223)
  br label %322

225:                                              ; preds = %207
  %226 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %227 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 4
  %229 = call i32 @avio_rb16(i32 %228)
  store i32 %229, i32* %16, align 4
  %230 = load i32, i32* %16, align 4
  %231 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %232 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %231, i32 0, i32 1
  %233 = load i32, i32* %232, align 8
  %234 = sub nsw i32 %233, 2
  %235 = icmp sgt i32 %230, %234
  br i1 %235, label %236, label %237

236:                                              ; preds = %225
  br label %317

237:                                              ; preds = %225
  %238 = load i32, i32* %16, align 4
  %239 = mul nsw i32 2, %238
  %240 = add nsw i32 %239, 1
  store i32 %240, i32* %17, align 4
  %241 = load i32, i32* %17, align 4
  %242 = call i64* @av_mallocz(i32 %241)
  store i64* %242, i64** %14, align 8
  %243 = icmp ne i64* %242, null
  br i1 %243, label %245, label %244

244:                                              ; preds = %237
  br label %322

245:                                              ; preds = %237
  %246 = load i32, i32* %16, align 4
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %251, label %248

248:                                              ; preds = %245
  %249 = load i64*, i64** %14, align 8
  %250 = getelementptr inbounds i64, i64* %249, i64 0
  store i64 0, i64* %250, align 8
  br label %304

251:                                              ; preds = %245
  %252 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %253 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 4
  %255 = call i32 @avio_rb16(i32 %254)
  store i32 %255, i32* %15, align 4
  %256 = load i32, i32* %15, align 4
  %257 = icmp eq i32 %256, 65279
  br i1 %257, label %258, label %266

258:                                              ; preds = %251
  %259 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %260 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %259, i32 0, i32 0
  %261 = load i32, i32* %260, align 4
  %262 = load i32, i32* %16, align 4
  %263 = load i64*, i64** %14, align 8
  %264 = load i32, i32* %17, align 4
  %265 = call i32 @avio_get_str16be(i32 %261, i32 %262, i64* %263, i32 %264)
  br label %303

266:                                              ; preds = %251
  %267 = load i32, i32* %15, align 4
  %268 = icmp eq i32 %267, 65534
  br i1 %268, label %269, label %277

269:                                              ; preds = %266
  %270 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %271 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %270, i32 0, i32 0
  %272 = load i32, i32* %271, align 4
  %273 = load i32, i32* %16, align 4
  %274 = load i64*, i64** %14, align 8
  %275 = load i32, i32* %17, align 4
  %276 = call i32 @avio_get_str16le(i32 %272, i32 %273, i64* %274, i32 %275)
  br label %302

277:                                              ; preds = %266
  %278 = load i64*, i64** %14, align 8
  %279 = load i32, i32* %15, align 4
  %280 = call i32 @AV_WB16(i64* %278, i32 %279)
  %281 = load i32, i32* %16, align 4
  %282 = icmp eq i32 %281, 1
  br i1 %282, label %286, label %283

283:                                              ; preds = %277
  %284 = load i32, i32* %16, align 4
  %285 = icmp eq i32 %284, 2
  br i1 %285, label %286, label %291

286:                                              ; preds = %283, %277
  %287 = load i64*, i64** %14, align 8
  %288 = load i32, i32* %16, align 4
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds i64, i64* %287, i64 %289
  store i64 0, i64* %290, align 8
  br label %301

291:                                              ; preds = %283
  %292 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %293 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %292, i32 0, i32 0
  %294 = load i32, i32* %293, align 4
  %295 = load i32, i32* @INT_MAX, align 4
  %296 = load i64*, i64** %14, align 8
  %297 = getelementptr inbounds i64, i64* %296, i64 2
  %298 = load i32, i32* %16, align 4
  %299 = sub nsw i32 %298, 1
  %300 = call i32 @avio_get_str(i32 %294, i32 %295, i64* %297, i32 %299)
  br label %301

301:                                              ; preds = %291, %286
  br label %302

302:                                              ; preds = %301, %269
  br label %303

303:                                              ; preds = %302, %258
  br label %304

304:                                              ; preds = %303, %248
  %305 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %306 = load i32, i32* %7, align 4
  %307 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %308 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %307, i32 0, i32 4
  %309 = load i32, i32* %308, align 8
  %310 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %311 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %310, i32 0, i32 2
  %312 = load i64, i64* %311, align 8
  %313 = load i64, i64* %13, align 8
  %314 = load i64*, i64** %14, align 8
  %315 = call i32 @avpriv_new_chapter(%struct.TYPE_18__* %305, i32 %306, i32 %309, i64 %312, i64 %313, i64* %314)
  %316 = call i32 @av_freep(i64** %14)
  br label %317

317:                                              ; preds = %304, %236
  %318 = load i32, i32* %7, align 4
  %319 = add nsw i32 %318, 1
  store i32 %319, i32* %7, align 4
  br label %162

320:                                              ; preds = %162
  br label %321

321:                                              ; preds = %320, %147
  br label %322

322:                                              ; preds = %321, %244, %220, %129, %116
  %323 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %324 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %323, i32 0, i32 0
  %325 = load i32, i32* %324, align 4
  %326 = load i64, i64* %6, align 8
  %327 = load i32, i32* @SEEK_SET, align 4
  %328 = call i64 @avio_seek(i32 %325, i64 %326, i32 %327)
  br label %329

329:                                              ; preds = %322, %68
  %330 = load i32, i32* %8, align 4
  %331 = add nsw i32 %330, 1
  store i32 %331, i32* %8, align 4
  br label %21

332:                                              ; preds = %21
  ret void
}

declare dso_local i32 @av_log(%struct.TYPE_18__*, i32, i8*, ...) #1

declare dso_local i64 @avio_tell(i32) #1

declare dso_local i64 @avio_seek(i32, i64, i32) #1

declare dso_local i64 @av_get_packet(i32, %struct.TYPE_16__*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @avio_rb16(i32) #1

declare dso_local i64* @av_mallocz(i32) #1

declare dso_local i32 @avio_get_str16be(i32, i32, i64*, i32) #1

declare dso_local i32 @avio_get_str16le(i32, i32, i64*, i32) #1

declare dso_local i32 @AV_WB16(i64*, i32) #1

declare dso_local i32 @avio_get_str(i32, i32, i64*, i32) #1

declare dso_local i32 @avpriv_new_chapter(%struct.TYPE_18__*, i32, i32, i64, i64, i64*) #1

declare dso_local i32 @av_freep(i64**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
