; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_movenc.c_mov_write_moov_tag.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_movenc.c_mov_write_moov_tag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32, i32, i32, i64, %struct.TYPE_20__*, i32, i32 }
%struct.TYPE_20__ = type { i64, i64, i64, i64, i32, i32, i32, i32, i32, %struct.TYPE_19__*, i32 }
%struct.TYPE_19__ = type { i64 }
%struct.TYPE_22__ = type { i32, i32** }

@.str = private unnamed_addr constant [5 x i8] c"moov\00", align 1
@FF_MOV_FLAG_FRAGMENT = common dso_local global i32 0, align 4
@AVMEDIA_TYPE_AUDIO = common dso_local global i64 0, align 8
@AV_PKT_DATA_FALLBACK_TRACK = common dso_local global i32 0, align 4
@MODE_MOV = common dso_local global i64 0, align 8
@MODE_PSP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_21__*, %struct.TYPE_22__*)* @mov_write_moov_tag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mov_write_moov_tag(i32* %0, %struct.TYPE_21__* %1, %struct.TYPE_22__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_21__*, align 8
  %7 = alloca %struct.TYPE_22__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_20__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_21__* %1, %struct.TYPE_21__** %6, align 8
  store %struct.TYPE_22__* %2, %struct.TYPE_22__** %7, align 8
  %15 = load i32*, i32** %5, align 8
  %16 = call i32 @avio_tell(i32* %15)
  store i32 %16, i32* %9, align 4
  %17 = load i32*, i32** %5, align 8
  %18 = call i32 @avio_wb32(i32* %17, i32 0)
  %19 = load i32*, i32** %5, align 8
  %20 = call i32 @ffio_wfourcc(i32* %19, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %21 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %22 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %23 = call i32 @mov_setup_track_ids(%struct.TYPE_21__* %21, %struct.TYPE_22__* %22)
  store i32 0, i32* %8, align 4
  br label %24

24:                                               ; preds = %77, %3
  %25 = load i32, i32* %8, align 4
  %26 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp slt i32 %25, %28
  br i1 %29, label %30, label %80

30:                                               ; preds = %24
  %31 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %31, i32 0, i32 4
  %33 = load %struct.TYPE_20__*, %struct.TYPE_20__** %32, align 8
  %34 = load i32, i32* %8, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp sle i64 %38, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %30
  %41 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @FF_MOV_FLAG_FRAGMENT, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %40
  br label %77

48:                                               ; preds = %40, %30
  %49 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %49, i32 0, i32 6
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %52, i32 0, i32 4
  %54 = load %struct.TYPE_20__*, %struct.TYPE_20__** %53, align 8
  %55 = load i32, i32* %8, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %57, i32 0, i32 10
  store i32 %51, i32* %58, align 8
  %59 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %59, i32 0, i32 4
  %61 = load %struct.TYPE_20__*, %struct.TYPE_20__** %60, align 8
  %62 = load i32, i32* %8, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %76

68:                                               ; preds = %48
  %69 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %69, i32 0, i32 4
  %71 = load %struct.TYPE_20__*, %struct.TYPE_20__** %70, align 8
  %72 = load i32, i32* %8, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %71, i64 %73
  %75 = call i32 @build_chunks(%struct.TYPE_20__* %74)
  br label %76

76:                                               ; preds = %68, %48
  br label %77

77:                                               ; preds = %76, %47
  %78 = load i32, i32* %8, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %8, align 4
  br label %24

80:                                               ; preds = %24
  %81 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %122

85:                                               ; preds = %80
  store i32 0, i32* %8, align 4
  br label %86

86:                                               ; preds = %118, %85
  %87 = load i32, i32* %8, align 4
  %88 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = icmp slt i32 %87, %90
  br i1 %91, label %92, label %121

92:                                               ; preds = %86
  %93 = call i64 @MKTAG(i8 signext 99, i8 signext 104, i8 signext 97, i8 signext 112)
  %94 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %94, i32 0, i32 4
  %96 = load %struct.TYPE_20__*, %struct.TYPE_20__** %95, align 8
  %97 = load i32, i32* %8, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %96, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %99, i32 0, i32 1
  store i64 %93, i64* %100, align 8
  %101 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %101, i32 0, i32 4
  %103 = load %struct.TYPE_20__*, %struct.TYPE_20__** %102, align 8
  %104 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %103, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %108, i32 0, i32 6
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %111, i32 0, i32 4
  %113 = load %struct.TYPE_20__*, %struct.TYPE_20__** %112, align 8
  %114 = load i32, i32* %8, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %113, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %116, i32 0, i32 7
  store i32 %110, i32* %117, align 4
  br label %118

118:                                              ; preds = %92
  %119 = load i32, i32* %8, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %8, align 4
  br label %86

121:                                              ; preds = %86
  br label %122

122:                                              ; preds = %121, %80
  store i32 0, i32* %8, align 4
  br label %123

123:                                              ; preds = %207, %122
  %124 = load i32, i32* %8, align 4
  %125 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %126 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = icmp slt i32 %124, %127
  br i1 %128, label %129, label %210

129:                                              ; preds = %123
  %130 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %131 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %130, i32 0, i32 4
  %132 = load %struct.TYPE_20__*, %struct.TYPE_20__** %131, align 8
  %133 = load i32, i32* %8, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %132, i64 %134
  store %struct.TYPE_20__* %135, %struct.TYPE_20__** %10, align 8
  %136 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %137 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %136, i32 0, i32 2
  %138 = load i64, i64* %137, align 8
  %139 = call i64 @MKTAG(i8 signext 114, i8 signext 116, i8 signext 112, i8 signext 32)
  %140 = icmp eq i64 %138, %139
  br i1 %140, label %141, label %156

141:                                              ; preds = %129
  %142 = call i64 @MKTAG(i8 signext 104, i8 signext 105, i8 signext 110, i8 signext 116)
  %143 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %144 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %143, i32 0, i32 1
  store i64 %142, i64* %144, align 8
  %145 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %146 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %145, i32 0, i32 4
  %147 = load %struct.TYPE_20__*, %struct.TYPE_20__** %146, align 8
  %148 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %149 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %148, i32 0, i32 3
  %150 = load i64, i64* %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %147, i64 %150
  %152 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %151, i32 0, i32 6
  %153 = load i32, i32* %152, align 8
  %154 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %155 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %154, i32 0, i32 7
  store i32 %153, i32* %155, align 4
  br label %206

156:                                              ; preds = %129
  %157 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %158 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %157, i32 0, i32 9
  %159 = load %struct.TYPE_19__*, %struct.TYPE_19__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = load i64, i64* @AVMEDIA_TYPE_AUDIO, align 8
  %163 = icmp eq i64 %161, %162
  br i1 %163, label %164, label %205

164:                                              ; preds = %156
  %165 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %166 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %165, i32 0, i32 8
  %167 = load i32, i32* %166, align 8
  %168 = load i32, i32* @AV_PKT_DATA_FALLBACK_TRACK, align 4
  %169 = call i64 @av_stream_get_side_data(i32 %167, i32 %168, i32* %12)
  %170 = inttoptr i64 %169 to i32*
  store i32* %170, i32** %11, align 8
  %171 = load i32*, i32** %11, align 8
  %172 = icmp ne i32* %171, null
  br i1 %172, label %173, label %204

173:                                              ; preds = %164
  %174 = load i32, i32* %12, align 4
  %175 = sext i32 %174 to i64
  %176 = icmp eq i64 %175, 4
  br i1 %176, label %177, label %204

177:                                              ; preds = %173
  %178 = load i32*, i32** %11, align 8
  %179 = load i32, i32* %178, align 4
  %180 = icmp sge i32 %179, 0
  br i1 %180, label %181, label %203

181:                                              ; preds = %177
  %182 = load i32*, i32** %11, align 8
  %183 = load i32, i32* %182, align 4
  %184 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %185 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 8
  %187 = icmp slt i32 %183, %186
  br i1 %187, label %188, label %203

188:                                              ; preds = %181
  %189 = call i64 @MKTAG(i8 signext 102, i8 signext 97, i8 signext 108, i8 signext 108)
  %190 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %191 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %190, i32 0, i32 1
  store i64 %189, i64* %191, align 8
  %192 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %193 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %192, i32 0, i32 4
  %194 = load %struct.TYPE_20__*, %struct.TYPE_20__** %193, align 8
  %195 = load i32*, i32** %11, align 8
  %196 = load i32, i32* %195, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %194, i64 %197
  %199 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %198, i32 0, i32 6
  %200 = load i32, i32* %199, align 8
  %201 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %202 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %201, i32 0, i32 7
  store i32 %200, i32* %202, align 4
  br label %203

203:                                              ; preds = %188, %181, %177
  br label %204

204:                                              ; preds = %203, %173, %164
  br label %205

205:                                              ; preds = %204, %156
  br label %206

206:                                              ; preds = %205, %141
  br label %207

207:                                              ; preds = %206
  %208 = load i32, i32* %8, align 4
  %209 = add nsw i32 %208, 1
  store i32 %209, i32* %8, align 4
  br label %123

210:                                              ; preds = %123
  store i32 0, i32* %8, align 4
  br label %211

211:                                              ; preds = %301, %210
  %212 = load i32, i32* %8, align 4
  %213 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %214 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 8
  %216 = icmp slt i32 %212, %215
  br i1 %216, label %217, label %304

217:                                              ; preds = %211
  %218 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %219 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %218, i32 0, i32 4
  %220 = load %struct.TYPE_20__*, %struct.TYPE_20__** %219, align 8
  %221 = load i32, i32* %8, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %220, i64 %222
  %224 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %223, i32 0, i32 2
  %225 = load i64, i64* %224, align 8
  %226 = call i64 @MKTAG(i8 signext 116, i8 signext 109, i8 signext 99, i8 signext 100)
  %227 = icmp eq i64 %225, %226
  br i1 %227, label %228, label %300

228:                                              ; preds = %217
  %229 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %230 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %229, i32 0, i32 4
  %231 = load %struct.TYPE_20__*, %struct.TYPE_20__** %230, align 8
  %232 = load i32, i32* %8, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %231, i64 %233
  %235 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %234, i32 0, i32 3
  %236 = load i64, i64* %235, align 8
  %237 = trunc i64 %236 to i32
  store i32 %237, i32* %13, align 4
  %238 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %239 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %238, i32 0, i32 4
  %240 = load %struct.TYPE_20__*, %struct.TYPE_20__** %239, align 8
  %241 = load i32, i32* %8, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %240, i64 %242
  %244 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %243, i32 0, i32 2
  %245 = load i64, i64* %244, align 8
  %246 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %247 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %246, i32 0, i32 4
  %248 = load %struct.TYPE_20__*, %struct.TYPE_20__** %247, align 8
  %249 = load i32, i32* %13, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %248, i64 %250
  %252 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %251, i32 0, i32 1
  store i64 %245, i64* %252, align 8
  %253 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %254 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %253, i32 0, i32 4
  %255 = load %struct.TYPE_20__*, %struct.TYPE_20__** %254, align 8
  %256 = load i32, i32* %8, align 4
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %255, i64 %257
  %259 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %258, i32 0, i32 6
  %260 = load i32, i32* %259, align 8
  %261 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %262 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %261, i32 0, i32 4
  %263 = load %struct.TYPE_20__*, %struct.TYPE_20__** %262, align 8
  %264 = load i32, i32* %13, align 4
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %263, i64 %265
  %267 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %266, i32 0, i32 7
  store i32 %260, i32* %267, align 4
  %268 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %269 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %268, i32 0, i32 4
  %270 = load %struct.TYPE_20__*, %struct.TYPE_20__** %269, align 8
  %271 = load i32, i32* %13, align 4
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %270, i64 %272
  %274 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %273, i32 0, i32 5
  %275 = load i32, i32* %274, align 4
  %276 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %277 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %276, i32 0, i32 4
  %278 = load %struct.TYPE_20__*, %struct.TYPE_20__** %277, align 8
  %279 = load i32, i32* %8, align 4
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %278, i64 %280
  %282 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %281, i32 0, i32 4
  %283 = load i32, i32* %282, align 8
  %284 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %285 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %284, i32 0, i32 4
  %286 = load %struct.TYPE_20__*, %struct.TYPE_20__** %285, align 8
  %287 = load i32, i32* %13, align 4
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %286, i64 %288
  %290 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %289, i32 0, i32 4
  %291 = load i32, i32* %290, align 8
  %292 = call i32 @av_rescale(i32 %275, i32 %283, i32 %291)
  %293 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %294 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %293, i32 0, i32 4
  %295 = load %struct.TYPE_20__*, %struct.TYPE_20__** %294, align 8
  %296 = load i32, i32* %8, align 4
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %295, i64 %297
  %299 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %298, i32 0, i32 5
  store i32 %292, i32* %299, align 4
  br label %300

300:                                              ; preds = %228, %217
  br label %301

301:                                              ; preds = %300
  %302 = load i32, i32* %8, align 4
  %303 = add nsw i32 %302, 1
  store i32 %303, i32* %8, align 4
  br label %211

304:                                              ; preds = %211
  %305 = load i32*, i32** %5, align 8
  %306 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %307 = call i32 @mov_write_mvhd_tag(i32* %305, %struct.TYPE_21__* %306)
  %308 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %309 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %308, i32 0, i32 3
  %310 = load i64, i64* %309, align 8
  %311 = load i64, i64* @MODE_MOV, align 8
  %312 = icmp ne i64 %310, %311
  br i1 %312, label %313, label %322

313:                                              ; preds = %304
  %314 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %315 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %314, i32 0, i32 5
  %316 = load i32, i32* %315, align 8
  %317 = icmp ne i32 %316, 0
  br i1 %317, label %322, label %318

318:                                              ; preds = %313
  %319 = load i32*, i32** %5, align 8
  %320 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %321 = call i32 @mov_write_iods_tag(i32* %319, %struct.TYPE_21__* %320)
  br label %322

322:                                              ; preds = %318, %313, %304
  store i32 0, i32* %8, align 4
  br label %323

323:                                              ; preds = %379, %322
  %324 = load i32, i32* %8, align 4
  %325 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %326 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %325, i32 0, i32 0
  %327 = load i32, i32* %326, align 8
  %328 = icmp slt i32 %324, %327
  br i1 %328, label %329, label %382

329:                                              ; preds = %323
  %330 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %331 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %330, i32 0, i32 4
  %332 = load %struct.TYPE_20__*, %struct.TYPE_20__** %331, align 8
  %333 = load i32, i32* %8, align 4
  %334 = sext i32 %333 to i64
  %335 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %332, i64 %334
  %336 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %335, i32 0, i32 0
  %337 = load i64, i64* %336, align 8
  %338 = icmp sgt i64 %337, 0
  br i1 %338, label %346, label %339

339:                                              ; preds = %329
  %340 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %341 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %340, i32 0, i32 1
  %342 = load i32, i32* %341, align 4
  %343 = load i32, i32* @FF_MOV_FLAG_FRAGMENT, align 4
  %344 = and i32 %342, %343
  %345 = icmp ne i32 %344, 0
  br i1 %345, label %346, label %378

346:                                              ; preds = %339, %329
  %347 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %348 = load i32*, i32** %5, align 8
  %349 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %350 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %351 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %350, i32 0, i32 4
  %352 = load %struct.TYPE_20__*, %struct.TYPE_20__** %351, align 8
  %353 = load i32, i32* %8, align 4
  %354 = sext i32 %353 to i64
  %355 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %352, i64 %354
  %356 = load i32, i32* %8, align 4
  %357 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %358 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %357, i32 0, i32 0
  %359 = load i32, i32* %358, align 8
  %360 = icmp slt i32 %356, %359
  br i1 %360, label %361, label %369

361:                                              ; preds = %346
  %362 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %363 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %362, i32 0, i32 1
  %364 = load i32**, i32*** %363, align 8
  %365 = load i32, i32* %8, align 4
  %366 = sext i32 %365 to i64
  %367 = getelementptr inbounds i32*, i32** %364, i64 %366
  %368 = load i32*, i32** %367, align 8
  br label %370

369:                                              ; preds = %346
  br label %370

370:                                              ; preds = %369, %361
  %371 = phi i32* [ %368, %361 ], [ null, %369 ]
  %372 = call i32 @mov_write_trak_tag(%struct.TYPE_22__* %347, i32* %348, %struct.TYPE_21__* %349, %struct.TYPE_20__* %355, i32* %371)
  store i32 %372, i32* %14, align 4
  %373 = load i32, i32* %14, align 4
  %374 = icmp slt i32 %373, 0
  br i1 %374, label %375, label %377

375:                                              ; preds = %370
  %376 = load i32, i32* %14, align 4
  store i32 %376, i32* %4, align 4
  br label %412

377:                                              ; preds = %370
  br label %378

378:                                              ; preds = %377, %339
  br label %379

379:                                              ; preds = %378
  %380 = load i32, i32* %8, align 4
  %381 = add nsw i32 %380, 1
  store i32 %381, i32* %8, align 4
  br label %323

382:                                              ; preds = %323
  %383 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %384 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %383, i32 0, i32 1
  %385 = load i32, i32* %384, align 4
  %386 = load i32, i32* @FF_MOV_FLAG_FRAGMENT, align 4
  %387 = and i32 %385, %386
  %388 = icmp ne i32 %387, 0
  br i1 %388, label %389, label %393

389:                                              ; preds = %382
  %390 = load i32*, i32** %5, align 8
  %391 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %392 = call i32 @mov_write_mvex_tag(i32* %390, %struct.TYPE_21__* %391)
  br label %393

393:                                              ; preds = %389, %382
  %394 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %395 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %394, i32 0, i32 3
  %396 = load i64, i64* %395, align 8
  %397 = load i64, i64* @MODE_PSP, align 8
  %398 = icmp eq i64 %396, %397
  br i1 %398, label %399, label %403

399:                                              ; preds = %393
  %400 = load i32*, i32** %5, align 8
  %401 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %402 = call i32 @mov_write_uuidusmt_tag(i32* %400, %struct.TYPE_22__* %401)
  br label %408

403:                                              ; preds = %393
  %404 = load i32*, i32** %5, align 8
  %405 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %406 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %407 = call i32 @mov_write_udta_tag(i32* %404, %struct.TYPE_21__* %405, %struct.TYPE_22__* %406)
  br label %408

408:                                              ; preds = %403, %399
  %409 = load i32*, i32** %5, align 8
  %410 = load i32, i32* %9, align 4
  %411 = call i32 @update_size(i32* %409, i32 %410)
  store i32 %411, i32* %4, align 4
  br label %412

412:                                              ; preds = %408, %375
  %413 = load i32, i32* %4, align 4
  ret i32 %413
}

declare dso_local i32 @avio_tell(i32*) #1

declare dso_local i32 @avio_wb32(i32*, i32) #1

declare dso_local i32 @ffio_wfourcc(i32*, i8*) #1

declare dso_local i32 @mov_setup_track_ids(%struct.TYPE_21__*, %struct.TYPE_22__*) #1

declare dso_local i32 @build_chunks(%struct.TYPE_20__*) #1

declare dso_local i64 @MKTAG(i8 signext, i8 signext, i8 signext, i8 signext) #1

declare dso_local i64 @av_stream_get_side_data(i32, i32, i32*) #1

declare dso_local i32 @av_rescale(i32, i32, i32) #1

declare dso_local i32 @mov_write_mvhd_tag(i32*, %struct.TYPE_21__*) #1

declare dso_local i32 @mov_write_iods_tag(i32*, %struct.TYPE_21__*) #1

declare dso_local i32 @mov_write_trak_tag(%struct.TYPE_22__*, i32*, %struct.TYPE_21__*, %struct.TYPE_20__*, i32*) #1

declare dso_local i32 @mov_write_mvex_tag(i32*, %struct.TYPE_21__*) #1

declare dso_local i32 @mov_write_uuidusmt_tag(i32*, %struct.TYPE_22__*) #1

declare dso_local i32 @mov_write_udta_tag(i32*, %struct.TYPE_21__*, %struct.TYPE_22__*) #1

declare dso_local i32 @update_size(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
