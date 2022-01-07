; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_dashenc.c_write_hls_media_playlist.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_dashenc.c_write_hls_media_playlist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32, i64, %struct.TYPE_16__*, i32, %struct.TYPE_19__**, i32, i32 }
%struct.TYPE_16__ = type { %struct.TYPE_18__** }
%struct.TYPE_18__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_19__ = type { double, i32, i32, i32, i64 }
%struct.TYPE_22__ = type { %struct.TYPE_21__* }
%struct.TYPE_21__ = type { double, i32, i64, i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"file\00", align 1
@SEGMENT_TYPE_MP4 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"%s.tmp\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@PLAYLIST_TYPE_NONE = common dso_local global i32 0, align 4
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"ff_hls_write_file_entry get error\0A\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"#EXT-X-PREFETCH:%s\0A\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"renaming file %s to %s failed\0A\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_20__*, %struct.TYPE_22__*, i32, i32, i8*)* @write_hls_media_playlist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_hls_media_playlist(%struct.TYPE_20__* %0, %struct.TYPE_22__* %1, i32 %2, i32 %3, i8* %4) #0 {
  %6 = alloca %struct.TYPE_20__*, align 8
  %7 = alloca %struct.TYPE_22__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_21__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca [1024 x i8], align 16
  %14 = alloca [1024 x i8], align 16
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca double, align 8
  %24 = alloca %struct.TYPE_19__*, align 8
  %25 = alloca double, align 8
  %26 = alloca %struct.TYPE_19__*, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %6, align 8
  store %struct.TYPE_22__* %1, %struct.TYPE_22__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i8* %4, i8** %10, align 8
  %27 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_21__*, %struct.TYPE_21__** %28, align 8
  store %struct.TYPE_21__* %29, %struct.TYPE_21__** %11, align 8
  %30 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %30, i32 0, i32 2
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %34, i64 0
  %36 = load %struct.TYPE_18__*, %struct.TYPE_18__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %12, align 4
  store i32* null, i32** %15, align 8
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %40 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %41 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 8
  %43 = call i8* @avio_find_protocol_name(i32 %42)
  store i8* %43, i8** %18, align 8
  %44 = load i8*, i8** %18, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %46, label %51

46:                                               ; preds = %5
  %47 = load i8*, i8** %18, align 8
  %48 = call i32 @strcmp(i8* %47, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %49 = icmp ne i32 %48, 0
  %50 = xor i1 %49, true
  br label %51

51:                                               ; preds = %46, %5
  %52 = phi i1 [ false, %5 ], [ %50, %46 ]
  %53 = zext i1 %52 to i32
  store i32 %53, i32* %19, align 4
  store double 0.000000e+00, double* %23, align 8
  %54 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %55 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %56 = call i32 @get_start_index_number(%struct.TYPE_20__* %54, %struct.TYPE_21__* %55, i32* %21, i32* %22)
  %57 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %58 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %57, i32 0, i32 4
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %73

61:                                               ; preds = %51
  %62 = load i32, i32* %21, align 4
  %63 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = icmp sge i32 %62, %65
  br i1 %66, label %73, label %67

67:                                               ; preds = %61
  %68 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @SEGMENT_TYPE_MP4, align 8
  %72 = icmp ne i64 %70, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %67, %61, %51
  br label %281

74:                                               ; preds = %67
  %75 = getelementptr inbounds [1024 x i8], [1024 x i8]* %14, i64 0, i64 0
  %76 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %77 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* %8, align 4
  %80 = call i32 @get_hls_playlist_name(i8* %75, i32 1024, i32 %78, i32 %79)
  %81 = getelementptr inbounds [1024 x i8], [1024 x i8]* %13, i64 0, i64 0
  %82 = load i32, i32* %19, align 4
  %83 = icmp ne i32 %82, 0
  %84 = zext i1 %83 to i64
  %85 = select i1 %83, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)
  %86 = getelementptr inbounds [1024 x i8], [1024 x i8]* %14, i64 0, i64 0
  %87 = call i32 @snprintf(i8* %81, i32 1024, i8* %85, i8* %86)
  %88 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %89 = call i32 @set_http_options(i32** %15, %struct.TYPE_21__* %88)
  %90 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %91 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %92 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %91, i32 0, i32 1
  %93 = getelementptr inbounds [1024 x i8], [1024 x i8]* %13, i64 0, i64 0
  %94 = call i32 @dashenc_io_open(%struct.TYPE_22__* %90, i32* %92, i8* %93, i32** %15)
  store i32 %94, i32* %17, align 4
  %95 = call i32 @av_dict_free(i32** %15)
  %96 = load i32, i32* %17, align 4
  %97 = icmp slt i32 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %74
  %99 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %100 = load i32, i32* %17, align 4
  %101 = getelementptr inbounds [1024 x i8], [1024 x i8]* %13, i64 0, i64 0
  %102 = call i32 @handle_io_open_error(%struct.TYPE_22__* %99, i32 %100, i8* %101)
  br label %281

103:                                              ; preds = %74
  %104 = load i32, i32* %21, align 4
  store i32 %104, i32* %20, align 4
  br label %105

105:                                              ; preds = %134, %103
  %106 = load i32, i32* %20, align 4
  %107 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = icmp slt i32 %106, %109
  br i1 %110, label %111, label %137

111:                                              ; preds = %105
  %112 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %112, i32 0, i32 4
  %114 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %113, align 8
  %115 = load i32, i32* %20, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %114, i64 %116
  %118 = load %struct.TYPE_19__*, %struct.TYPE_19__** %117, align 8
  store %struct.TYPE_19__* %118, %struct.TYPE_19__** %24, align 8
  %119 = load %struct.TYPE_19__*, %struct.TYPE_19__** %24, align 8
  %120 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %119, i32 0, i32 4
  %121 = load i64, i64* %120, align 8
  %122 = sitofp i64 %121 to double
  %123 = load i32, i32* %12, align 4
  %124 = sitofp i32 %123 to double
  %125 = fdiv double %122, %124
  store double %125, double* %25, align 8
  %126 = load i32, i32* %16, align 4
  %127 = sitofp i32 %126 to double
  %128 = load double, double* %25, align 8
  %129 = fcmp ole double %127, %128
  br i1 %129, label %130, label %133

130:                                              ; preds = %111
  %131 = load double, double* %25, align 8
  %132 = call i32 @lrint(double %131)
  store i32 %132, i32* %16, align 4
  br label %133

133:                                              ; preds = %130, %111
  br label %134

134:                                              ; preds = %133
  %135 = load i32, i32* %20, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %20, align 4
  br label %105

137:                                              ; preds = %105
  %138 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %139 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 8
  %141 = load i32, i32* %16, align 4
  %142 = load i32, i32* %22, align 4
  %143 = load i32, i32* @PLAYLIST_TYPE_NONE, align 4
  %144 = call i32 @ff_hls_write_playlist_header(i32 %140, i32 6, i32 -1, i32 %141, i32 %142, i32 %143, i32 0)
  %145 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %146 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 8
  %148 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %149 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %148, i32 0, i32 3
  %150 = load i32, i32* %149, align 8
  %151 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %152 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %151, i32 0, i32 2
  %153 = load i64, i64* %152, align 8
  %154 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %155 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %154, i32 0, i32 6
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %158 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %157, i32 0, i32 5
  %159 = load i32, i32* %158, align 8
  %160 = call i32 @ff_hls_write_init_file(i32 %147, i32 %150, i64 %153, i32 %156, i32 %159)
  %161 = load i32, i32* %21, align 4
  store i32 %161, i32* %20, align 4
  br label %162

162:                                              ; preds = %239, %137
  %163 = load i32, i32* %20, align 4
  %164 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %165 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = icmp slt i32 %163, %166
  br i1 %167, label %168, label %242

168:                                              ; preds = %162
  %169 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %170 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %169, i32 0, i32 4
  %171 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %170, align 8
  %172 = load i32, i32* %20, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %171, i64 %173
  %175 = load %struct.TYPE_19__*, %struct.TYPE_19__** %174, align 8
  store %struct.TYPE_19__* %175, %struct.TYPE_19__** %26, align 8
  %176 = load double, double* %23, align 8
  %177 = fcmp oeq double %176, 0.000000e+00
  br i1 %177, label %178, label %192

178:                                              ; preds = %168
  %179 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %180 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = icmp eq i32 %181, 1
  br i1 %182, label %183, label %187

183:                                              ; preds = %178
  %184 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %185 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %184, i32 0, i32 0
  %186 = load double, double* %185, align 8
  store double %186, double* %23, align 8
  br label %191

187:                                              ; preds = %178
  %188 = load %struct.TYPE_19__*, %struct.TYPE_19__** %26, align 8
  %189 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %188, i32 0, i32 0
  %190 = load double, double* %189, align 8
  store double %190, double* %23, align 8
  br label %191

191:                                              ; preds = %187, %183
  br label %192

192:                                              ; preds = %191, %168
  %193 = load double, double* %23, align 8
  %194 = load %struct.TYPE_19__*, %struct.TYPE_19__** %26, align 8
  %195 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %194, i32 0, i32 0
  store double %193, double* %195, align 8
  %196 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %197 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 8
  %199 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %200 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %199, i32 0, i32 2
  %201 = load i64, i64* %200, align 8
  %202 = load %struct.TYPE_19__*, %struct.TYPE_19__** %26, align 8
  %203 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %202, i32 0, i32 4
  %204 = load i64, i64* %203, align 8
  %205 = sitofp i64 %204 to double
  %206 = load i32, i32* %12, align 4
  %207 = sitofp i32 %206 to double
  %208 = fdiv double %205, %207
  %209 = load %struct.TYPE_19__*, %struct.TYPE_19__** %26, align 8
  %210 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %209, i32 0, i32 3
  %211 = load i32, i32* %210, align 8
  %212 = load %struct.TYPE_19__*, %struct.TYPE_19__** %26, align 8
  %213 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %212, i32 0, i32 2
  %214 = load i32, i32* %213, align 4
  %215 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %216 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %215, i32 0, i32 2
  %217 = load i64, i64* %216, align 8
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %219, label %223

219:                                              ; preds = %192
  %220 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %221 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %220, i32 0, i32 3
  %222 = load i32, i32* %221, align 8
  br label %227

223:                                              ; preds = %192
  %224 = load %struct.TYPE_19__*, %struct.TYPE_19__** %26, align 8
  %225 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %224, i32 0, i32 1
  %226 = load i32, i32* %225, align 8
  br label %227

227:                                              ; preds = %223, %219
  %228 = phi i32 [ %222, %219 ], [ %226, %223 ]
  %229 = call i32 @ff_hls_write_file_entry(i32 %198, i32 0, i64 %201, double %208, i32 0, i32 %211, i32 %214, i32* null, i32 %228, double* %23, i32 0, i32 0, i32 0)
  store i32 %229, i32* %17, align 4
  %230 = load i32, i32* %17, align 4
  %231 = icmp slt i32 %230, 0
  br i1 %231, label %232, label %238

232:                                              ; preds = %227
  %233 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %234 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %233, i32 0, i32 2
  %235 = load %struct.TYPE_16__*, %struct.TYPE_16__** %234, align 8
  %236 = load i32, i32* @AV_LOG_WARNING, align 4
  %237 = call i32 (%struct.TYPE_16__*, i32, i8*, ...) @av_log(%struct.TYPE_16__* %235, i32 %236, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  br label %238

238:                                              ; preds = %232, %227
  br label %239

239:                                              ; preds = %238
  %240 = load i32, i32* %20, align 4
  %241 = add nsw i32 %240, 1
  store i32 %241, i32* %20, align 4
  br label %162

242:                                              ; preds = %162
  %243 = load i8*, i8** %10, align 8
  %244 = icmp ne i8* %243, null
  br i1 %244, label %245, label %251

245:                                              ; preds = %242
  %246 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %247 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %246, i32 0, i32 1
  %248 = load i32, i32* %247, align 8
  %249 = load i8*, i8** %10, align 8
  %250 = call i32 @avio_printf(i32 %248, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i8* %249)
  br label %251

251:                                              ; preds = %245, %242
  %252 = load i32, i32* %9, align 4
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %254, label %259

254:                                              ; preds = %251
  %255 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %256 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %255, i32 0, i32 1
  %257 = load i32, i32* %256, align 8
  %258 = call i32 @ff_hls_write_end_list(i32 %257)
  br label %259

259:                                              ; preds = %254, %251
  %260 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %261 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %262 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %261, i32 0, i32 1
  %263 = getelementptr inbounds [1024 x i8], [1024 x i8]* %13, i64 0, i64 0
  %264 = call i32 @dashenc_io_close(%struct.TYPE_22__* %260, i32* %262, i8* %263)
  %265 = load i32, i32* %19, align 4
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %267, label %281

267:                                              ; preds = %259
  %268 = getelementptr inbounds [1024 x i8], [1024 x i8]* %13, i64 0, i64 0
  %269 = getelementptr inbounds [1024 x i8], [1024 x i8]* %14, i64 0, i64 0
  %270 = call i64 @avpriv_io_move(i8* %268, i8* %269)
  %271 = icmp slt i64 %270, 0
  br i1 %271, label %272, label %280

272:                                              ; preds = %267
  %273 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %274 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %273, i32 0, i32 2
  %275 = load %struct.TYPE_16__*, %struct.TYPE_16__** %274, align 8
  %276 = load i32, i32* @AV_LOG_WARNING, align 4
  %277 = getelementptr inbounds [1024 x i8], [1024 x i8]* %13, i64 0, i64 0
  %278 = getelementptr inbounds [1024 x i8], [1024 x i8]* %14, i64 0, i64 0
  %279 = call i32 (%struct.TYPE_16__*, i32, i8*, ...) @av_log(%struct.TYPE_16__* %275, i32 %276, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i8* %277, i8* %278)
  br label %280

280:                                              ; preds = %272, %267
  br label %281

281:                                              ; preds = %73, %98, %280, %259
  ret void
}

declare dso_local i8* @avio_find_protocol_name(i32) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @get_start_index_number(%struct.TYPE_20__*, %struct.TYPE_21__*, i32*, i32*) #1

declare dso_local i32 @get_hls_playlist_name(i8*, i32, i32, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i32 @set_http_options(i32**, %struct.TYPE_21__*) #1

declare dso_local i32 @dashenc_io_open(%struct.TYPE_22__*, i32*, i8*, i32**) #1

declare dso_local i32 @av_dict_free(i32**) #1

declare dso_local i32 @handle_io_open_error(%struct.TYPE_22__*, i32, i8*) #1

declare dso_local i32 @lrint(double) #1

declare dso_local i32 @ff_hls_write_playlist_header(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ff_hls_write_init_file(i32, i32, i64, i32, i32) #1

declare dso_local i32 @ff_hls_write_file_entry(i32, i32, i64, double, i32, i32, i32, i32*, i32, double*, i32, i32, i32) #1

declare dso_local i32 @av_log(%struct.TYPE_16__*, i32, i8*, ...) #1

declare dso_local i32 @avio_printf(i32, i8*, i8*) #1

declare dso_local i32 @ff_hls_write_end_list(i32) #1

declare dso_local i32 @dashenc_io_close(%struct.TYPE_22__*, i32*, i8*) #1

declare dso_local i64 @avpriv_io_move(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
