; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_wtvdec.c_read_header.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_wtvdec.c_read_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i8*, %struct.TYPE_12__**, i64, i32, %struct.TYPE_11__* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32, %struct.TYPE_13__*, i32, i8*, i32, i32, i32 }
%struct.TYPE_13__ = type { i64, i32, i64 }

@WTV_SECTOR_SIZE = common dso_local global i32 0, align 4
@AV_NOPTS_VALUE = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"root directory size exceeds sector size\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@ff_timeline_le16 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"timeline data missing\0A\00", align 1
@SEEK_TO_DATA = common dso_local global i32 0, align 4
@SEEK_CUR = common dso_local global i32 0, align 4
@ff_table_0_entries_legacy_attrib_le16 = common dso_local global i32 0, align 4
@AVFMTCTX_NOHEADER = common dso_local global i32 0, align 4
@ff_table_0_entries_time_le16 = common dso_local global i32 0, align 4
@AVINDEX_KEYFRAME = common dso_local global i32 0, align 4
@ff_timeline_table_0_entries_Events_le16 = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*)* @read_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_header(%struct.TYPE_14__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_12__*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.TYPE_13__*, align 8
  %17 = alloca %struct.TYPE_13__*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %3, align 8
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 4
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %22, align 8
  store %struct.TYPE_11__* %23, %struct.TYPE_11__** %4, align 8
  %24 = load i32, i32* @WTV_SECTOR_SIZE, align 4
  %25 = zext i32 %24 to i64
  %26 = call i8* @llvm.stacksave()
  store i8* %26, i8** %7, align 8
  %27 = alloca i32, i64 %25, align 16
  store i64 %25, i64* %8, align 8
  %28 = load i32, i32* @AV_NOPTS_VALUE, align 4
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 4
  store i32 %28, i32* %30, align 8
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 5
  store i32 %28, i32* %32, align 4
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 6
  store i32 %28, i32* %34, align 8
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = call i32 @avio_skip(i8* %37, i32 48)
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  %42 = call i8* @avio_rl32(i8* %41)
  %43 = ptrtoint i8* %42 to i32
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %6, align 4
  %45 = sext i32 %44 to i64
  %46 = mul nuw i64 4, %25
  %47 = icmp ugt i64 %45, %46
  br i1 %47, label %48, label %53

48:                                               ; preds = %1
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %50 = load i32, i32* @AV_LOG_ERROR, align 4
  %51 = call i32 @av_log(%struct.TYPE_14__* %49, i32 %50, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %52 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %52, i32* %2, align 4
  store i32 1, i32* %12, align 4
  br label %256

53:                                               ; preds = %1
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %54, i32 0, i32 0
  %56 = load i8*, i8** %55, align 8
  %57 = call i32 @avio_skip(i8* %56, i32 4)
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 0
  %60 = load i8*, i8** %59, align 8
  %61 = call i8* @avio_rl32(i8* %60)
  %62 = ptrtoint i8* %61 to i32
  store i32 %62, i32* %5, align 4
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %63, i32 0, i32 0
  %65 = load i8*, i8** %64, align 8
  %66 = load i32, i32* %5, align 4
  %67 = call i64 @seek_by_sector(i8* %65, i32 %66, i32 0)
  store i64 %67, i64* %11, align 8
  %68 = load i64, i64* %11, align 8
  %69 = icmp slt i64 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %53
  %71 = load i64, i64* %11, align 8
  %72 = trunc i64 %71 to i32
  store i32 %72, i32* %2, align 4
  store i32 1, i32* %12, align 4
  br label %256

73:                                               ; preds = %53
  %74 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %74, i32 0, i32 0
  %76 = load i8*, i8** %75, align 8
  %77 = load i32, i32* %6, align 4
  %78 = call i32 @avio_read(i8* %76, i32* %27, i32 %77)
  store i32 %78, i32* %6, align 4
  %79 = load i32, i32* %6, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %73
  %82 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %82, i32* %2, align 4
  store i32 1, i32* %12, align 4
  br label %256

83:                                               ; preds = %73
  %84 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %85 = load i32, i32* %6, align 4
  %86 = load i32, i32* @ff_timeline_le16, align 4
  %87 = call i8* @wtvfile_open(%struct.TYPE_14__* %84, i32* %27, i32 %85, i32 %86)
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 3
  store i8* %87, i8** %89, align 8
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 3
  %92 = load i8*, i8** %91, align 8
  %93 = icmp ne i8* %92, null
  br i1 %93, label %99, label %94

94:                                               ; preds = %83
  %95 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %96 = load i32, i32* @AV_LOG_ERROR, align 4
  %97 = call i32 @av_log(%struct.TYPE_14__* %95, i32 %96, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %98 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %98, i32* %2, align 4
  store i32 1, i32* %12, align 4
  br label %256

99:                                               ; preds = %83
  %100 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %101 = load i32, i32* @SEEK_TO_DATA, align 4
  %102 = call i64 @parse_chunks(%struct.TYPE_14__* %100, i32 %101, i32 0, i32 0)
  store i64 %102, i64* %11, align 8
  %103 = load i64, i64* %11, align 8
  %104 = icmp slt i64 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %99
  %106 = load i64, i64* %11, align 8
  %107 = trunc i64 %106 to i32
  store i32 %107, i32* %2, align 4
  store i32 1, i32* %12, align 4
  br label %256

108:                                              ; preds = %99
  %109 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %109, i32 0, i32 3
  %111 = load i8*, i8** %110, align 8
  %112 = load i32, i32* @SEEK_CUR, align 4
  %113 = call i32 @avio_seek(i8* %111, i64 -32, i32 %112)
  %114 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %115 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %114, i32 0, i32 0
  %116 = load i8*, i8** %115, align 8
  %117 = call i64 @avio_tell(i8* %116)
  store i64 %117, i64* %10, align 8
  %118 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %119 = load i32, i32* %6, align 4
  %120 = load i32, i32* @ff_table_0_entries_legacy_attrib_le16, align 4
  %121 = call i8* @wtvfile_open(%struct.TYPE_14__* %118, i32* %27, i32 %119, i32 %120)
  %122 = bitcast i8* %121 to i32*
  store i32* %122, i32** %9, align 8
  %123 = load i32*, i32** %9, align 8
  %124 = icmp ne i32* %123, null
  br i1 %124, label %125, label %131

125:                                              ; preds = %108
  %126 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %127 = load i32*, i32** %9, align 8
  %128 = call i32 @parse_legacy_attrib(%struct.TYPE_14__* %126, i32* %127)
  %129 = load i32*, i32** %9, align 8
  %130 = call i32 @wtvfile_close(i32* %129)
  br label %131

131:                                              ; preds = %125, %108
  %132 = load i32, i32* @AVFMTCTX_NOHEADER, align 4
  %133 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %134 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %133, i32 0, i32 3
  %135 = load i32, i32* %134, align 8
  %136 = or i32 %135, %132
  store i32 %136, i32* %134, align 8
  %137 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %138 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %137, i32 0, i32 2
  %139 = load i64, i64* %138, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %249

141:                                              ; preds = %131
  %142 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %143 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %142, i32 0, i32 1
  %144 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %144, i64 0
  %146 = load %struct.TYPE_12__*, %struct.TYPE_12__** %145, align 8
  store %struct.TYPE_12__* %146, %struct.TYPE_12__** %13, align 8
  %147 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %148 = load i32, i32* %6, align 4
  %149 = load i32, i32* @ff_table_0_entries_time_le16, align 4
  %150 = call i8* @wtvfile_open(%struct.TYPE_14__* %147, i32* %27, i32 %148, i32 %149)
  %151 = bitcast i8* %150 to i32*
  store i32* %151, i32** %9, align 8
  %152 = load i32*, i32** %9, align 8
  %153 = icmp ne i32* %152, null
  br i1 %153, label %154, label %248

154:                                              ; preds = %141
  br label %155

155:                                              ; preds = %165, %154
  br label %156

156:                                              ; preds = %155
  %157 = load i32*, i32** %9, align 8
  %158 = call i64 @avio_rl64(i32* %157)
  store i64 %158, i64* %14, align 8
  %159 = load i32*, i32** %9, align 8
  %160 = call i64 @avio_rl64(i32* %159)
  store i64 %160, i64* %15, align 8
  %161 = load i32*, i32** %9, align 8
  %162 = call i64 @avio_feof(i32* %161)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %165

164:                                              ; preds = %156
  br label %176

165:                                              ; preds = %156
  %166 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %167 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %166, i32 0, i32 1
  %168 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %169 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %168, i32 0, i32 0
  %170 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %171 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %170, i32 0, i32 2
  %172 = load i64, i64* %14, align 8
  %173 = load i64, i64* %15, align 8
  %174 = load i32, i32* @AVINDEX_KEYFRAME, align 4
  %175 = call i32 @ff_add_index_entry(%struct.TYPE_13__** %167, i32* %169, i32* %171, i32 0, i64 %172, i64 %173, i32 0, i32 %174)
  br label %155

176:                                              ; preds = %164
  %177 = load i32*, i32** %9, align 8
  %178 = call i32 @wtvfile_close(i32* %177)
  %179 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %180 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %247

183:                                              ; preds = %176
  %184 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %185 = load i32, i32* %6, align 4
  %186 = load i32, i32* @ff_timeline_table_0_entries_Events_le16, align 4
  %187 = call i8* @wtvfile_open(%struct.TYPE_14__* %184, i32* %27, i32 %185, i32 %186)
  %188 = bitcast i8* %187 to i32*
  store i32* %188, i32** %9, align 8
  %189 = load i32*, i32** %9, align 8
  %190 = icmp ne i32* %189, null
  br i1 %190, label %191, label %246

191:                                              ; preds = %183
  %192 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %193 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %192, i32 0, i32 1
  %194 = load %struct.TYPE_13__*, %struct.TYPE_13__** %193, align 8
  store %struct.TYPE_13__* %194, %struct.TYPE_13__** %16, align 8
  %195 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %196 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %195, i32 0, i32 1
  %197 = load %struct.TYPE_13__*, %struct.TYPE_13__** %196, align 8
  %198 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %199 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %197, i64 %201
  %203 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %202, i64 -1
  store %struct.TYPE_13__* %203, %struct.TYPE_13__** %17, align 8
  store i64 0, i64* %18, align 8
  br label %204

204:                                              ; preds = %233, %191
  br label %205

205:                                              ; preds = %204
  %206 = load i32*, i32** %9, align 8
  %207 = call i64 @avio_rl64(i32* %206)
  store i64 %207, i64* %19, align 8
  %208 = load i32*, i32** %9, align 8
  %209 = call i64 @avio_rl64(i32* %208)
  store i64 %209, i64* %20, align 8
  br label %210

210:                                              ; preds = %222, %205
  %211 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %212 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %213 = icmp ule %struct.TYPE_13__* %211, %212
  br i1 %213, label %214, label %220

214:                                              ; preds = %210
  %215 = load i64, i64* %19, align 8
  %216 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %217 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %216, i32 0, i32 0
  %218 = load i64, i64* %217, align 8
  %219 = icmp sgt i64 %215, %218
  br label %220

220:                                              ; preds = %214, %210
  %221 = phi i1 [ false, %210 ], [ %219, %214 ]
  br i1 %221, label %222, label %228

222:                                              ; preds = %220
  %223 = load i64, i64* %18, align 8
  %224 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %225 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %224, i32 0, i32 2
  store i64 %223, i64* %225, align 8
  %226 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %227 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %226, i32 1
  store %struct.TYPE_13__* %227, %struct.TYPE_13__** %16, align 8
  br label %210

228:                                              ; preds = %220
  %229 = load i32*, i32** %9, align 8
  %230 = call i64 @avio_feof(i32* %229)
  %231 = icmp ne i64 %230, 0
  br i1 %231, label %232, label %233

232:                                              ; preds = %228
  br label %235

233:                                              ; preds = %228
  %234 = load i64, i64* %20, align 8
  store i64 %234, i64* %18, align 8
  br label %204

235:                                              ; preds = %232
  %236 = load i64, i64* %18, align 8
  %237 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %238 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %237, i32 0, i32 2
  store i64 %236, i64* %238, align 8
  %239 = load i32*, i32** %9, align 8
  %240 = call i32 @wtvfile_close(i32* %239)
  %241 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %242 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %241, i32 0, i32 1
  %243 = load i32, i32* %242, align 8
  %244 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %245 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %244, i32 0, i32 0
  store i32 %243, i32* %245, align 4
  br label %246

246:                                              ; preds = %235, %183
  br label %247

247:                                              ; preds = %246, %176
  br label %248

248:                                              ; preds = %247, %141
  br label %249

249:                                              ; preds = %248, %131
  %250 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %251 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %250, i32 0, i32 0
  %252 = load i8*, i8** %251, align 8
  %253 = load i64, i64* %10, align 8
  %254 = load i32, i32* @SEEK_SET, align 4
  %255 = call i32 @avio_seek(i8* %252, i64 %253, i32 %254)
  store i32 0, i32* %2, align 4
  store i32 1, i32* %12, align 4
  br label %256

256:                                              ; preds = %249, %105, %94, %81, %70, %48
  %257 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %257)
  %258 = load i32, i32* %2, align 4
  ret i32 %258
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @avio_skip(i8*, i32) #2

declare dso_local i8* @avio_rl32(i8*) #2

declare dso_local i32 @av_log(%struct.TYPE_14__*, i32, i8*) #2

declare dso_local i64 @seek_by_sector(i8*, i32, i32) #2

declare dso_local i32 @avio_read(i8*, i32*, i32) #2

declare dso_local i8* @wtvfile_open(%struct.TYPE_14__*, i32*, i32, i32) #2

declare dso_local i64 @parse_chunks(%struct.TYPE_14__*, i32, i32, i32) #2

declare dso_local i32 @avio_seek(i8*, i64, i32) #2

declare dso_local i64 @avio_tell(i8*) #2

declare dso_local i32 @parse_legacy_attrib(%struct.TYPE_14__*, i32*) #2

declare dso_local i32 @wtvfile_close(i32*) #2

declare dso_local i64 @avio_rl64(i32*) #2

declare dso_local i64 @avio_feof(i32*) #2

declare dso_local i32 @ff_add_index_entry(%struct.TYPE_13__**, i32*, i32*, i32, i64, i64, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
