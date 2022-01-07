; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_matroskaenc.c_mkv_write_tags.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_matroskaenc.c_mkv_write_tags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { i32, i32, %struct.TYPE_17__*, %struct.TYPE_23__**, %struct.TYPE_25__**, i32, %struct.TYPE_22__* }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_23__ = type { i32, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i64 }
%struct.TYPE_25__ = type { i32, i32 }
%struct.TYPE_22__ = type { i64, i32, i32*, i32, i32, %struct.TYPE_20__*, i64, %struct.TYPE_19__* }
%struct.TYPE_20__ = type { i32, %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i64, i32 }
%struct.TYPE_19__ = type { i32 }

@ff_mkv_metadata_conv = common dso_local global i32 0, align 4
@AVMEDIA_TYPE_ATTACHMENT = common dso_local global i64 0, align 8
@MATROSKA_ID_TAGTARGETS_TRACKUID = common dso_local global i32 0, align 4
@AVIO_SEEKABLE_NORMAL = common dso_local global i32 0, align 4
@MATROSKA_ID_SIMPLETAG = common dso_local global i32 0, align 4
@MATROSKA_ID_TAGNAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"DURATION\00", align 1
@MODE_WEBM = common dso_local global i64 0, align 8
@MATROSKA_ID_TAGTARGETS_CHAPTERUID = common dso_local global i32 0, align 4
@MATROSKA_ID_TAGTARGETS_ATTACHUID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_24__*)* @mkv_write_tags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mkv_write_tags(%struct.TYPE_24__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_24__*, align 8
  %4 = alloca %struct.TYPE_22__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_23__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_23__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_25__*, align 8
  %13 = alloca %struct.TYPE_21__*, align 8
  %14 = alloca %struct.TYPE_23__*, align 8
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %3, align 8
  %15 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %15, i32 0, i32 6
  %17 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  store %struct.TYPE_22__* %17, %struct.TYPE_22__** %4, align 8
  %18 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %19 = load i32, i32* @ff_mkv_metadata_conv, align 4
  %20 = call i32 @ff_metadata_conv_ctx(%struct.TYPE_24__* %18, i32 %19, i32* null)
  %21 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %21, i32 0, i32 5
  %23 = load i32, i32* %22, align 8
  %24 = call i64 @mkv_check_tag(i32 %23, i32 0)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %37

26:                                               ; preds = %1
  %27 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %28 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %28, i32 0, i32 5
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @mkv_write_tag(%struct.TYPE_24__* %27, i32 %30, i32 0, i32 0)
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %26
  %35 = load i32, i32* %6, align 4
  store i32 %35, i32* %2, align 4
  br label %311

36:                                               ; preds = %26
  br label %37

37:                                               ; preds = %36, %1
  store i32 0, i32* %5, align 4
  br label %38

38:                                               ; preds = %82, %37
  %39 = load i32, i32* %5, align 4
  %40 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp slt i32 %39, %42
  br i1 %43, label %44, label %85

44:                                               ; preds = %38
  %45 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %45, i32 0, i32 3
  %47 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %46, align 8
  %48 = load i32, i32* %5, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %47, i64 %49
  %51 = load %struct.TYPE_23__*, %struct.TYPE_23__** %50, align 8
  store %struct.TYPE_23__* %51, %struct.TYPE_23__** %7, align 8
  %52 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %52, i32 0, i32 1
  %54 = load %struct.TYPE_18__*, %struct.TYPE_18__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @AVMEDIA_TYPE_ATTACHMENT, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %44
  br label %82

60:                                               ; preds = %44
  %61 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @MATROSKA_ID_TAGTARGETS_TRACKUID, align 4
  %65 = call i64 @mkv_check_tag(i32 %63, i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %60
  br label %82

68:                                               ; preds = %60
  %69 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %70 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @MATROSKA_ID_TAGTARGETS_TRACKUID, align 4
  %74 = load i32, i32* %5, align 4
  %75 = add nsw i32 %74, 1
  %76 = call i32 @mkv_write_tag(%struct.TYPE_24__* %69, i32 %72, i32 %73, i32 %75)
  store i32 %76, i32* %6, align 4
  %77 = load i32, i32* %6, align 4
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %68
  %80 = load i32, i32* %6, align 4
  store i32 %80, i32* %2, align 4
  br label %311

81:                                               ; preds = %68
  br label %82

82:                                               ; preds = %81, %67, %59
  %83 = load i32, i32* %5, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %5, align 4
  br label %38

85:                                               ; preds = %38
  %86 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %86, i32 0, i32 2
  %88 = load %struct.TYPE_17__*, %struct.TYPE_17__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @AVIO_SEEKABLE_NORMAL, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %158

94:                                               ; preds = %85
  %95 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %95, i32 0, i32 4
  %97 = load i32, i32* %96, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %158, label %99

99:                                               ; preds = %94
  store i32 0, i32* %5, align 4
  br label %100

100:                                              ; preds = %154, %99
  %101 = load i32, i32* %5, align 4
  %102 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = icmp slt i32 %101, %104
  br i1 %105, label %106, label %157

106:                                              ; preds = %100
  %107 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %107, i32 0, i32 3
  %109 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %108, align 8
  %110 = load i32, i32* %5, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %109, i64 %111
  %113 = load %struct.TYPE_23__*, %struct.TYPE_23__** %112, align 8
  store %struct.TYPE_23__* %113, %struct.TYPE_23__** %9, align 8
  %114 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %115 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %114, i32 0, i32 1
  %116 = load %struct.TYPE_18__*, %struct.TYPE_18__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* @AVMEDIA_TYPE_ATTACHMENT, align 8
  %120 = icmp eq i64 %118, %119
  br i1 %120, label %121, label %122

121:                                              ; preds = %106
  br label %154

122:                                              ; preds = %106
  %123 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %124 = load i32, i32* @MATROSKA_ID_TAGTARGETS_TRACKUID, align 4
  %125 = load i32, i32* %5, align 4
  %126 = add nsw i32 %125, 1
  %127 = call i32 @mkv_write_tag_targets(%struct.TYPE_24__* %123, i32 %124, i32 %126, i32* %10)
  %128 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %129 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %128, i32 0, i32 2
  %130 = load i32*, i32** %129, align 8
  store i32* %130, i32** %8, align 8
  %131 = load i32*, i32** %8, align 8
  %132 = load i32, i32* @MATROSKA_ID_SIMPLETAG, align 4
  %133 = call i32 @start_ebml_master(i32* %131, i32 %132, i32 0)
  store i32 %133, i32* %11, align 4
  %134 = load i32*, i32** %8, align 8
  %135 = load i32, i32* @MATROSKA_ID_TAGNAME, align 4
  %136 = call i32 @put_ebml_string(i32* %134, i32 %135, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %137 = load i32*, i32** %8, align 8
  %138 = call i32 @avio_tell(i32* %137)
  %139 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %140 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %139, i32 0, i32 7
  %141 = load %struct.TYPE_19__*, %struct.TYPE_19__** %140, align 8
  %142 = load i32, i32* %5, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %141, i64 %143
  %145 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %144, i32 0, i32 0
  store i32 %138, i32* %145, align 4
  %146 = load i32*, i32** %8, align 8
  %147 = call i32 @put_ebml_void(i32* %146, i32 23)
  %148 = load i32*, i32** %8, align 8
  %149 = load i32, i32* %11, align 4
  %150 = call i32 @end_ebml_master(i32* %148, i32 %149)
  %151 = load i32*, i32** %8, align 8
  %152 = load i32, i32* %10, align 4
  %153 = call i32 @end_ebml_master(i32* %151, i32 %152)
  br label %154

154:                                              ; preds = %122, %121
  %155 = load i32, i32* %5, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %5, align 4
  br label %100

157:                                              ; preds = %100
  br label %158

158:                                              ; preds = %157, %94, %85
  %159 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %160 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = load i64, i64* @MODE_WEBM, align 8
  %163 = icmp ne i64 %161, %162
  br i1 %163, label %164, label %209

164:                                              ; preds = %158
  store i32 0, i32* %5, align 4
  br label %165

165:                                              ; preds = %205, %164
  %166 = load i32, i32* %5, align 4
  %167 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %168 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = icmp slt i32 %166, %169
  br i1 %170, label %171, label %208

171:                                              ; preds = %165
  %172 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %173 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %172, i32 0, i32 4
  %174 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %173, align 8
  %175 = load i32, i32* %5, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds %struct.TYPE_25__*, %struct.TYPE_25__** %174, i64 %176
  %178 = load %struct.TYPE_25__*, %struct.TYPE_25__** %177, align 8
  store %struct.TYPE_25__* %178, %struct.TYPE_25__** %12, align 8
  %179 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %180 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 4
  %182 = load i32, i32* @MATROSKA_ID_TAGTARGETS_CHAPTERUID, align 4
  %183 = call i64 @mkv_check_tag(i32 %181, i32 %182)
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %186, label %185

185:                                              ; preds = %171
  br label %205

186:                                              ; preds = %171
  %187 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %188 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %189 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 4
  %191 = load i32, i32* @MATROSKA_ID_TAGTARGETS_CHAPTERUID, align 4
  %192 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %193 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 4
  %195 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %196 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 8
  %198 = add nsw i32 %194, %197
  %199 = call i32 @mkv_write_tag(%struct.TYPE_24__* %187, i32 %190, i32 %191, i32 %198)
  store i32 %199, i32* %6, align 4
  %200 = load i32, i32* %6, align 4
  %201 = icmp slt i32 %200, 0
  br i1 %201, label %202, label %204

202:                                              ; preds = %186
  %203 = load i32, i32* %6, align 4
  store i32 %203, i32* %2, align 4
  br label %311

204:                                              ; preds = %186
  br label %205

205:                                              ; preds = %204, %185
  %206 = load i32, i32* %5, align 4
  %207 = add nsw i32 %206, 1
  store i32 %207, i32* %5, align 4
  br label %165

208:                                              ; preds = %165
  br label %209

209:                                              ; preds = %208, %158
  %210 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %211 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %210, i32 0, i32 6
  %212 = load i64, i64* %211, align 8
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %214, label %272

214:                                              ; preds = %209
  %215 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %216 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %215, i32 0, i32 0
  %217 = load i64, i64* %216, align 8
  %218 = load i64, i64* @MODE_WEBM, align 8
  %219 = icmp ne i64 %217, %218
  br i1 %219, label %220, label %272

220:                                              ; preds = %214
  store i32 0, i32* %5, align 4
  br label %221

221:                                              ; preds = %268, %220
  %222 = load i32, i32* %5, align 4
  %223 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %224 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %223, i32 0, i32 5
  %225 = load %struct.TYPE_20__*, %struct.TYPE_20__** %224, align 8
  %226 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 8
  %228 = icmp slt i32 %222, %227
  br i1 %228, label %229, label %271

229:                                              ; preds = %221
  %230 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %231 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %230, i32 0, i32 5
  %232 = load %struct.TYPE_20__*, %struct.TYPE_20__** %231, align 8
  %233 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %232, i32 0, i32 1
  %234 = load %struct.TYPE_21__*, %struct.TYPE_21__** %233, align 8
  %235 = load i32, i32* %5, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %234, i64 %236
  store %struct.TYPE_21__* %237, %struct.TYPE_21__** %13, align 8
  %238 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %239 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %238, i32 0, i32 3
  %240 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %239, align 8
  %241 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %242 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %241, i32 0, i32 0
  %243 = load i64, i64* %242, align 8
  %244 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %240, i64 %243
  %245 = load %struct.TYPE_23__*, %struct.TYPE_23__** %244, align 8
  store %struct.TYPE_23__* %245, %struct.TYPE_23__** %14, align 8
  %246 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %247 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 8
  %249 = load i32, i32* @MATROSKA_ID_TAGTARGETS_ATTACHUID, align 4
  %250 = call i64 @mkv_check_tag(i32 %248, i32 %249)
  %251 = icmp ne i64 %250, 0
  br i1 %251, label %253, label %252

252:                                              ; preds = %229
  br label %268

253:                                              ; preds = %229
  %254 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %255 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %256 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %255, i32 0, i32 0
  %257 = load i32, i32* %256, align 8
  %258 = load i32, i32* @MATROSKA_ID_TAGTARGETS_ATTACHUID, align 4
  %259 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %260 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %259, i32 0, i32 1
  %261 = load i32, i32* %260, align 8
  %262 = call i32 @mkv_write_tag(%struct.TYPE_24__* %254, i32 %257, i32 %258, i32 %261)
  store i32 %262, i32* %6, align 4
  %263 = load i32, i32* %6, align 4
  %264 = icmp slt i32 %263, 0
  br i1 %264, label %265, label %267

265:                                              ; preds = %253
  %266 = load i32, i32* %6, align 4
  store i32 %266, i32* %2, align 4
  br label %311

267:                                              ; preds = %253
  br label %268

268:                                              ; preds = %267, %252
  %269 = load i32, i32* %5, align 4
  %270 = add nsw i32 %269, 1
  store i32 %270, i32* %5, align 4
  br label %221

271:                                              ; preds = %221
  br label %272

272:                                              ; preds = %271, %214, %209
  %273 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %274 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %273, i32 0, i32 2
  %275 = load i32*, i32** %274, align 8
  %276 = icmp ne i32* %275, null
  br i1 %276, label %277, label %310

277:                                              ; preds = %272
  %278 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %279 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %278, i32 0, i32 2
  %280 = load %struct.TYPE_17__*, %struct.TYPE_17__** %279, align 8
  %281 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %280, i32 0, i32 0
  %282 = load i32, i32* %281, align 4
  %283 = load i32, i32* @AVIO_SEEKABLE_NORMAL, align 4
  %284 = and i32 %282, %283
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %286, label %301

286:                                              ; preds = %277
  %287 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %288 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %287, i32 0, i32 4
  %289 = load i32, i32* %288, align 4
  %290 = icmp ne i32 %289, 0
  br i1 %290, label %301, label %291

291:                                              ; preds = %286
  %292 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %293 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %292, i32 0, i32 2
  %294 = load %struct.TYPE_17__*, %struct.TYPE_17__** %293, align 8
  %295 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %296 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %295, i32 0, i32 2
  %297 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %298 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %299 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %298, i32 0, i32 3
  %300 = call i32 @end_ebml_master_crc32_preliminary(%struct.TYPE_17__* %294, i32** %296, %struct.TYPE_22__* %297, i32* %299)
  br label %309

301:                                              ; preds = %286, %277
  %302 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %303 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %302, i32 0, i32 2
  %304 = load %struct.TYPE_17__*, %struct.TYPE_17__** %303, align 8
  %305 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %306 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %305, i32 0, i32 2
  %307 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %308 = call i32 @end_ebml_master_crc32(%struct.TYPE_17__* %304, i32** %306, %struct.TYPE_22__* %307)
  br label %309

309:                                              ; preds = %301, %291
  br label %310

310:                                              ; preds = %309, %272
  store i32 0, i32* %2, align 4
  br label %311

311:                                              ; preds = %310, %265, %202, %79, %34
  %312 = load i32, i32* %2, align 4
  ret i32 %312
}

declare dso_local i32 @ff_metadata_conv_ctx(%struct.TYPE_24__*, i32, i32*) #1

declare dso_local i64 @mkv_check_tag(i32, i32) #1

declare dso_local i32 @mkv_write_tag(%struct.TYPE_24__*, i32, i32, i32) #1

declare dso_local i32 @mkv_write_tag_targets(%struct.TYPE_24__*, i32, i32, i32*) #1

declare dso_local i32 @start_ebml_master(i32*, i32, i32) #1

declare dso_local i32 @put_ebml_string(i32*, i32, i8*) #1

declare dso_local i32 @avio_tell(i32*) #1

declare dso_local i32 @put_ebml_void(i32*, i32) #1

declare dso_local i32 @end_ebml_master(i32*, i32) #1

declare dso_local i32 @end_ebml_master_crc32_preliminary(%struct.TYPE_17__*, i32**, %struct.TYPE_22__*, i32*) #1

declare dso_local i32 @end_ebml_master_crc32(%struct.TYPE_17__*, i32**, %struct.TYPE_22__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
