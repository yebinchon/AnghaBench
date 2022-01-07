; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_oggparsevorbis.c_vorbis_packet.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_oggparsevorbis.c_vorbis_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__**, %struct.ogg* }
%struct.TYPE_5__ = type { i8*, i8* }
%struct.ogg = type { %struct.ogg_stream* }
%struct.ogg_stream = type { i8*, i32, i32, i32, i32, i32, i32, i32*, i32, i32, i32, i32*, %struct.oggvorbis_private* }
%struct.oggvorbis_private = type { i32, i32, i32 }

@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@AV_NOPTS_VALUE = common dso_local global i8* null, align 8
@OGG_FLAG_EOS = common dso_local global i32 0, align 4
@AV_PKT_FLAG_CORRUPT = common dso_local global i32 0, align 4
@VORBIS_FLAG_COMMENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32)* @vorbis_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vorbis_packet(%struct.TYPE_6__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ogg*, align 8
  %7 = alloca %struct.ogg_stream*, align 8
  %8 = alloca %struct.oggvorbis_private*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32 %1, i32* %5, align 4
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 1
  %18 = load %struct.ogg*, %struct.ogg** %17, align 8
  store %struct.ogg* %18, %struct.ogg** %6, align 8
  %19 = load %struct.ogg*, %struct.ogg** %6, align 8
  %20 = getelementptr inbounds %struct.ogg, %struct.ogg* %19, i32 0, i32 0
  %21 = load %struct.ogg_stream*, %struct.ogg_stream** %20, align 8
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %21, i64 %23
  store %struct.ogg_stream* %24, %struct.ogg_stream** %7, align 8
  %25 = load %struct.ogg_stream*, %struct.ogg_stream** %7, align 8
  %26 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %25, i32 0, i32 12
  %27 = load %struct.oggvorbis_private*, %struct.oggvorbis_private** %26, align 8
  store %struct.oggvorbis_private* %27, %struct.oggvorbis_private** %8, align 8
  store i32 0, i32* %10, align 4
  %28 = load %struct.oggvorbis_private*, %struct.oggvorbis_private** %8, align 8
  %29 = getelementptr inbounds %struct.oggvorbis_private, %struct.oggvorbis_private* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %2
  %33 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %33, i32* %3, align 4
  br label %364

34:                                               ; preds = %2
  %35 = load %struct.ogg_stream*, %struct.ogg_stream** %7, align 8
  %36 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %39, label %45

39:                                               ; preds = %34
  %40 = load %struct.ogg_stream*, %struct.ogg_stream** %7, align 8
  %41 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  %43 = load i8*, i8** @AV_NOPTS_VALUE, align 8
  %44 = icmp eq i8* %42, %43
  br i1 %44, label %45, label %271

45:                                               ; preds = %39, %34
  %46 = load %struct.ogg_stream*, %struct.ogg_stream** %7, align 8
  %47 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @OGG_FLAG_EOS, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %271, label %52

52:                                               ; preds = %45
  %53 = load %struct.ogg_stream*, %struct.ogg_stream** %7, align 8
  %54 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = sext i32 %55 to i64
  %57 = icmp sge i64 %56, 0
  br i1 %57, label %58, label %271

58:                                               ; preds = %52
  %59 = load %struct.ogg_stream*, %struct.ogg_stream** %7, align 8
  %60 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %59, i32 0, i32 11
  %61 = load i32*, i32** %60, align 8
  %62 = load %struct.ogg_stream*, %struct.ogg_stream** %7, align 8
  %63 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 8
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %61, i64 %65
  store i32* %66, i32** %13, align 8
  %67 = load i32*, i32** %13, align 8
  store i32* %67, i32** %14, align 8
  %68 = load %struct.oggvorbis_private*, %struct.oggvorbis_private** %8, align 8
  %69 = getelementptr inbounds %struct.oggvorbis_private, %struct.oggvorbis_private* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @av_vorbis_parse_reset(i32 %70)
  store i32 0, i32* %9, align 4
  %72 = load %struct.ogg_stream*, %struct.ogg_stream** %7, align 8
  %73 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %72, i32 0, i32 4
  %74 = load i32, i32* %73, align 4
  store i32 %74, i32* %11, align 4
  %75 = load %struct.oggvorbis_private*, %struct.oggvorbis_private** %8, align 8
  %76 = getelementptr inbounds %struct.oggvorbis_private, %struct.oggvorbis_private* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = load i32*, i32** %13, align 8
  %79 = call i32 @av_vorbis_parse_frame_flags(i32 %77, i32* %78, i32 1, i32* %10)
  store i32 %79, i32* %12, align 4
  %80 = load i32, i32* %12, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %88

82:                                               ; preds = %58
  %83 = load i32, i32* @AV_PKT_FLAG_CORRUPT, align 4
  %84 = load %struct.ogg_stream*, %struct.ogg_stream** %7, align 8
  %85 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %84, i32 0, i32 10
  %86 = load i32, i32* %85, align 8
  %87 = or i32 %86, %83
  store i32 %87, i32* %85, align 8
  store i32 0, i32* %3, align 4
  br label %364

88:                                               ; preds = %58
  %89 = load i32, i32* %10, align 4
  %90 = load i32, i32* @VORBIS_FLAG_COMMENT, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %88
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %95 = load i32, i32* %5, align 4
  %96 = call i32 @vorbis_update_metadata(%struct.TYPE_6__* %94, i32 %95)
  store i32 0, i32* %10, align 4
  br label %97

97:                                               ; preds = %93, %88
  br label %98

98:                                               ; preds = %97
  %99 = load i32, i32* %12, align 4
  %100 = load i32, i32* %9, align 4
  %101 = add nsw i32 %100, %99
  store i32 %101, i32* %9, align 4
  %102 = load i32*, i32** %14, align 8
  %103 = load %struct.ogg_stream*, %struct.ogg_stream** %7, align 8
  %104 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %103, i32 0, i32 5
  %105 = load i32, i32* %104, align 8
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %102, i64 %106
  store i32* %107, i32** %14, align 8
  store i32* %107, i32** %13, align 8
  br label %108

108:                                              ; preds = %170, %98
  %109 = load i32, i32* %11, align 4
  %110 = load %struct.ogg_stream*, %struct.ogg_stream** %7, align 8
  %111 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %110, i32 0, i32 6
  %112 = load i32, i32* %111, align 4
  %113 = icmp slt i32 %109, %112
  br i1 %113, label %114, label %173

114:                                              ; preds = %108
  %115 = load %struct.ogg_stream*, %struct.ogg_stream** %7, align 8
  %116 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %115, i32 0, i32 7
  %117 = load i32*, i32** %116, align 8
  %118 = load i32, i32* %11, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %117, i64 %119
  %121 = load i32, i32* %120, align 4
  %122 = icmp slt i32 %121, 255
  br i1 %122, label %123, label %159

123:                                              ; preds = %114
  %124 = load %struct.oggvorbis_private*, %struct.oggvorbis_private** %8, align 8
  %125 = getelementptr inbounds %struct.oggvorbis_private, %struct.oggvorbis_private* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 4
  %127 = load i32*, i32** %13, align 8
  %128 = call i32 @av_vorbis_parse_frame_flags(i32 %126, i32* %127, i32 1, i32* %10)
  store i32 %128, i32* %15, align 4
  %129 = load i32, i32* %15, align 4
  %130 = icmp slt i32 %129, 0
  br i1 %130, label %131, label %135

131:                                              ; preds = %123
  %132 = load %struct.ogg_stream*, %struct.ogg_stream** %7, align 8
  %133 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 4
  store i32 %134, i32* %9, align 4
  br label %173

135:                                              ; preds = %123
  %136 = load i32, i32* %10, align 4
  %137 = load i32, i32* @VORBIS_FLAG_COMMENT, align 4
  %138 = and i32 %136, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %144

140:                                              ; preds = %135
  %141 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %142 = load i32, i32* %5, align 4
  %143 = call i32 @vorbis_update_metadata(%struct.TYPE_6__* %141, i32 %142)
  store i32 0, i32* %10, align 4
  br label %144

144:                                              ; preds = %140, %135
  br label %145

145:                                              ; preds = %144
  %146 = load i32, i32* %15, align 4
  %147 = load i32, i32* %9, align 4
  %148 = add nsw i32 %147, %146
  store i32 %148, i32* %9, align 4
  %149 = load i32*, i32** %14, align 8
  %150 = load %struct.ogg_stream*, %struct.ogg_stream** %7, align 8
  %151 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %150, i32 0, i32 7
  %152 = load i32*, i32** %151, align 8
  %153 = load i32, i32* %11, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i32, i32* %152, i64 %154
  %156 = load i32, i32* %155, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i32, i32* %149, i64 %157
  store i32* %158, i32** %13, align 8
  br label %159

159:                                              ; preds = %145, %114
  %160 = load %struct.ogg_stream*, %struct.ogg_stream** %7, align 8
  %161 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %160, i32 0, i32 7
  %162 = load i32*, i32** %161, align 8
  %163 = load i32, i32* %11, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i32, i32* %162, i64 %164
  %166 = load i32, i32* %165, align 4
  %167 = load i32*, i32** %14, align 8
  %168 = sext i32 %166 to i64
  %169 = getelementptr inbounds i32, i32* %167, i64 %168
  store i32* %169, i32** %14, align 8
  br label %170

170:                                              ; preds = %159
  %171 = load i32, i32* %11, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %11, align 4
  br label %108

173:                                              ; preds = %131, %108
  %174 = load %struct.ogg_stream*, %struct.ogg_stream** %7, align 8
  %175 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %174, i32 0, i32 2
  %176 = load i32, i32* %175, align 4
  %177 = load i32, i32* %9, align 4
  %178 = sub nsw i32 %176, %177
  %179 = load %struct.ogg_stream*, %struct.ogg_stream** %7, align 8
  %180 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %179, i32 0, i32 8
  store i32 %178, i32* %180, align 8
  %181 = sext i32 %178 to i64
  %182 = inttoptr i64 %181 to i8*
  %183 = load %struct.ogg_stream*, %struct.ogg_stream** %7, align 8
  %184 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %183, i32 0, i32 0
  store i8* %182, i8** %184, align 8
  %185 = load %struct.ogg_stream*, %struct.ogg_stream** %7, align 8
  %186 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %185, i32 0, i32 2
  %187 = load i32, i32* %186, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %201, label %189

189:                                              ; preds = %173
  %190 = load i32, i32* %9, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %201

192:                                              ; preds = %189
  %193 = load i8*, i8** @AV_NOPTS_VALUE, align 8
  %194 = ptrtoint i8* %193 to i32
  %195 = load %struct.ogg_stream*, %struct.ogg_stream** %7, align 8
  %196 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %195, i32 0, i32 8
  store i32 %194, i32* %196, align 8
  %197 = sext i32 %194 to i64
  %198 = inttoptr i64 %197 to i8*
  %199 = load %struct.ogg_stream*, %struct.ogg_stream** %7, align 8
  %200 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %199, i32 0, i32 0
  store i8* %198, i8** %200, align 8
  br label %201

201:                                              ; preds = %192, %189, %173
  %202 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %203 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %202, i32 0, i32 0
  %204 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %203, align 8
  %205 = load i32, i32* %5, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %204, i64 %206
  %208 = load %struct.TYPE_5__*, %struct.TYPE_5__** %207, align 8
  %209 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %208, i32 0, i32 0
  %210 = load i8*, i8** %209, align 8
  %211 = load i8*, i8** @AV_NOPTS_VALUE, align 8
  %212 = icmp eq i8* %210, %211
  br i1 %212, label %213, label %262

213:                                              ; preds = %201
  %214 = load %struct.ogg_stream*, %struct.ogg_stream** %7, align 8
  %215 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %214, i32 0, i32 0
  %216 = load i8*, i8** %215, align 8
  %217 = ptrtoint i8* %216 to i32
  %218 = call i8* @FFMAX(i32 %217, i32 0)
  %219 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %220 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %219, i32 0, i32 0
  %221 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %220, align 8
  %222 = load i32, i32* %5, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %221, i64 %223
  %225 = load %struct.TYPE_5__*, %struct.TYPE_5__** %224, align 8
  %226 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %225, i32 0, i32 0
  store i8* %218, i8** %226, align 8
  %227 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %228 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %227, i32 0, i32 0
  %229 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %228, align 8
  %230 = load i32, i32* %5, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %229, i64 %231
  %233 = load %struct.TYPE_5__*, %struct.TYPE_5__** %232, align 8
  %234 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %233, i32 0, i32 1
  %235 = load i8*, i8** %234, align 8
  %236 = load i8*, i8** @AV_NOPTS_VALUE, align 8
  %237 = icmp ne i8* %235, %236
  br i1 %237, label %238, label %261

238:                                              ; preds = %213
  %239 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %240 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %239, i32 0, i32 0
  %241 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %240, align 8
  %242 = load i32, i32* %5, align 4
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %241, i64 %243
  %245 = load %struct.TYPE_5__*, %struct.TYPE_5__** %244, align 8
  %246 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %245, i32 0, i32 0
  %247 = load i8*, i8** %246, align 8
  %248 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %249 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %248, i32 0, i32 0
  %250 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %249, align 8
  %251 = load i32, i32* %5, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %250, i64 %252
  %254 = load %struct.TYPE_5__*, %struct.TYPE_5__** %253, align 8
  %255 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %254, i32 0, i32 1
  %256 = load i8*, i8** %255, align 8
  %257 = ptrtoint i8* %256 to i64
  %258 = ptrtoint i8* %247 to i64
  %259 = sub i64 %257, %258
  %260 = inttoptr i64 %259 to i8*
  store i8* %260, i8** %255, align 8
  br label %261

261:                                              ; preds = %238, %213
  br label %262

262:                                              ; preds = %261, %201
  %263 = load i8*, i8** @AV_NOPTS_VALUE, align 8
  %264 = ptrtoint i8* %263 to i32
  %265 = load %struct.oggvorbis_private*, %struct.oggvorbis_private** %8, align 8
  %266 = getelementptr inbounds %struct.oggvorbis_private, %struct.oggvorbis_private* %265, i32 0, i32 0
  store i32 %264, i32* %266, align 4
  %267 = load %struct.oggvorbis_private*, %struct.oggvorbis_private** %8, align 8
  %268 = getelementptr inbounds %struct.oggvorbis_private, %struct.oggvorbis_private* %267, i32 0, i32 2
  %269 = load i32, i32* %268, align 4
  %270 = call i32 @av_vorbis_parse_reset(i32 %269)
  br label %271

271:                                              ; preds = %262, %52, %45, %39
  %272 = load %struct.ogg_stream*, %struct.ogg_stream** %7, align 8
  %273 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %272, i32 0, i32 5
  %274 = load i32, i32* %273, align 8
  %275 = icmp sgt i32 %274, 0
  br i1 %275, label %276, label %311

276:                                              ; preds = %271
  %277 = load %struct.oggvorbis_private*, %struct.oggvorbis_private** %8, align 8
  %278 = getelementptr inbounds %struct.oggvorbis_private, %struct.oggvorbis_private* %277, i32 0, i32 2
  %279 = load i32, i32* %278, align 4
  %280 = load %struct.ogg_stream*, %struct.ogg_stream** %7, align 8
  %281 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %280, i32 0, i32 11
  %282 = load i32*, i32** %281, align 8
  %283 = load %struct.ogg_stream*, %struct.ogg_stream** %7, align 8
  %284 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %283, i32 0, i32 3
  %285 = load i32, i32* %284, align 8
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds i32, i32* %282, i64 %286
  %288 = call i32 @av_vorbis_parse_frame_flags(i32 %279, i32* %287, i32 1, i32* %10)
  store i32 %288, i32* %9, align 4
  %289 = load i32, i32* %9, align 4
  %290 = icmp slt i32 %289, 0
  br i1 %290, label %291, label %297

291:                                              ; preds = %276
  %292 = load i32, i32* @AV_PKT_FLAG_CORRUPT, align 4
  %293 = load %struct.ogg_stream*, %struct.ogg_stream** %7, align 8
  %294 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %293, i32 0, i32 10
  %295 = load i32, i32* %294, align 8
  %296 = or i32 %295, %292
  store i32 %296, i32* %294, align 8
  store i32 0, i32* %3, align 4
  br label %364

297:                                              ; preds = %276
  %298 = load i32, i32* %10, align 4
  %299 = load i32, i32* @VORBIS_FLAG_COMMENT, align 4
  %300 = and i32 %298, %299
  %301 = icmp ne i32 %300, 0
  br i1 %301, label %302, label %306

302:                                              ; preds = %297
  %303 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %304 = load i32, i32* %5, align 4
  %305 = call i32 @vorbis_update_metadata(%struct.TYPE_6__* %303, i32 %304)
  store i32 0, i32* %10, align 4
  br label %306

306:                                              ; preds = %302, %297
  br label %307

307:                                              ; preds = %306
  %308 = load i32, i32* %9, align 4
  %309 = load %struct.ogg_stream*, %struct.ogg_stream** %7, align 8
  %310 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %309, i32 0, i32 9
  store i32 %308, i32* %310, align 4
  br label %311

311:                                              ; preds = %307, %271
  %312 = load %struct.ogg_stream*, %struct.ogg_stream** %7, align 8
  %313 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %312, i32 0, i32 1
  %314 = load i32, i32* %313, align 8
  %315 = load i32, i32* @OGG_FLAG_EOS, align 4
  %316 = and i32 %314, %315
  %317 = icmp ne i32 %316, 0
  br i1 %317, label %318, label %363

318:                                              ; preds = %311
  %319 = load %struct.ogg_stream*, %struct.ogg_stream** %7, align 8
  %320 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %319, i32 0, i32 0
  %321 = load i8*, i8** %320, align 8
  %322 = load i8*, i8** @AV_NOPTS_VALUE, align 8
  %323 = icmp ne i8* %321, %322
  br i1 %323, label %324, label %333

324:                                              ; preds = %318
  %325 = load %struct.ogg_stream*, %struct.ogg_stream** %7, align 8
  %326 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %325, i32 0, i32 0
  %327 = load i8*, i8** %326, align 8
  %328 = ptrtoint i8* %327 to i32
  %329 = load %struct.oggvorbis_private*, %struct.oggvorbis_private** %8, align 8
  %330 = getelementptr inbounds %struct.oggvorbis_private, %struct.oggvorbis_private* %329, i32 0, i32 0
  store i32 %328, i32* %330, align 4
  %331 = load %struct.oggvorbis_private*, %struct.oggvorbis_private** %8, align 8
  %332 = getelementptr inbounds %struct.oggvorbis_private, %struct.oggvorbis_private* %331, i32 0, i32 1
  store i32 0, i32* %332, align 4
  br label %333

333:                                              ; preds = %324, %318
  %334 = load %struct.ogg_stream*, %struct.ogg_stream** %7, align 8
  %335 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %334, i32 0, i32 4
  %336 = load i32, i32* %335, align 4
  %337 = load %struct.ogg_stream*, %struct.ogg_stream** %7, align 8
  %338 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %337, i32 0, i32 6
  %339 = load i32, i32* %338, align 4
  %340 = icmp eq i32 %336, %339
  br i1 %340, label %341, label %355

341:                                              ; preds = %333
  %342 = load %struct.ogg_stream*, %struct.ogg_stream** %7, align 8
  %343 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %342, i32 0, i32 2
  %344 = load i32, i32* %343, align 4
  %345 = load %struct.oggvorbis_private*, %struct.oggvorbis_private** %8, align 8
  %346 = getelementptr inbounds %struct.oggvorbis_private, %struct.oggvorbis_private* %345, i32 0, i32 0
  %347 = load i32, i32* %346, align 4
  %348 = sub nsw i32 %344, %347
  %349 = load %struct.oggvorbis_private*, %struct.oggvorbis_private** %8, align 8
  %350 = getelementptr inbounds %struct.oggvorbis_private, %struct.oggvorbis_private* %349, i32 0, i32 1
  %351 = load i32, i32* %350, align 4
  %352 = sub nsw i32 %348, %351
  %353 = load %struct.ogg_stream*, %struct.ogg_stream** %7, align 8
  %354 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %353, i32 0, i32 9
  store i32 %352, i32* %354, align 4
  br label %355

355:                                              ; preds = %341, %333
  %356 = load %struct.ogg_stream*, %struct.ogg_stream** %7, align 8
  %357 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %356, i32 0, i32 9
  %358 = load i32, i32* %357, align 4
  %359 = load %struct.oggvorbis_private*, %struct.oggvorbis_private** %8, align 8
  %360 = getelementptr inbounds %struct.oggvorbis_private, %struct.oggvorbis_private* %359, i32 0, i32 1
  %361 = load i32, i32* %360, align 4
  %362 = add nsw i32 %361, %358
  store i32 %362, i32* %360, align 4
  br label %363

363:                                              ; preds = %355, %311
  store i32 0, i32* %3, align 4
  br label %364

364:                                              ; preds = %363, %291, %82, %32
  %365 = load i32, i32* %3, align 4
  ret i32 %365
}

declare dso_local i32 @av_vorbis_parse_reset(i32) #1

declare dso_local i32 @av_vorbis_parse_frame_flags(i32, i32*, i32, i32*) #1

declare dso_local i32 @vorbis_update_metadata(%struct.TYPE_6__*, i32) #1

declare dso_local i8* @FFMAX(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
