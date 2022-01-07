; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_ifv.c_ifv_read_packet.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_ifv.c_ifv_read_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, %struct.TYPE_11__**, %struct.TYPE_10__* }
%struct.TYPE_11__ = type { i64, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i64, i32, i32 }
%struct.TYPE_10__ = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.TYPE_12__ = type { i64, i64, i32 }

@AVERROR_EOF = common dso_local global i32 0, align 4
@AVMEDIA_TYPE_VIDEO = common dso_local global i32 0, align 4
@AVMEDIA_TYPE_AUDIO = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*, %struct.TYPE_12__*)* @ifv_read_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ifv_read_packet(%struct.TYPE_14__* %0, %struct.TYPE_12__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca %struct.TYPE_13__*, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %4, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %5, align 8
  %12 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %12, i32 0, i32 2
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  store %struct.TYPE_10__* %14, %struct.TYPE_10__** %6, align 8
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %10, align 8
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %9, align 8
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %8, align 8
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ult i64 %17, %20
  br i1 %21, label %22, label %47

22:                                               ; preds = %2
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %23, i32 0, i32 1
  %25 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %24, align 8
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %25, i64 %28
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %29, align 8
  store %struct.TYPE_11__* %30, %struct.TYPE_11__** %7, align 8
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ult i64 %33, %36
  br i1 %37, label %38, label %46

38:                                               ; preds = %22
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 1
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %40, align 8
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i64 %44
  store %struct.TYPE_13__* %45, %struct.TYPE_13__** %8, align 8
  store %struct.TYPE_13__* %45, %struct.TYPE_13__** %10, align 8
  br label %46

46:                                               ; preds = %38, %22
  br label %47

47:                                               ; preds = %46, %2
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 6
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %98

52:                                               ; preds = %47
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 3
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 4
  %58 = load i64, i64* %57, align 8
  %59 = icmp ult i64 %55, %58
  br i1 %59, label %60, label %98

60:                                               ; preds = %52
  %61 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %61, i32 0, i32 1
  %63 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %62, align 8
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 5
  %66 = load i64, i64* %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %63, i64 %66
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %67, align 8
  store %struct.TYPE_11__* %68, %struct.TYPE_11__** %7, align 8
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 3
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp ult i64 %71, %74
  br i1 %75, label %76, label %97

76:                                               ; preds = %60
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 1
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %78, align 8
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 3
  %82 = load i64, i64* %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i64 %82
  store %struct.TYPE_13__* %83, %struct.TYPE_13__** %9, align 8
  %84 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %85 = icmp ne %struct.TYPE_13__* %84, null
  br i1 %85, label %86, label %94

86:                                               ; preds = %76
  %87 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %88 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %91 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = icmp slt i64 %89, %92
  br i1 %93, label %94, label %96

94:                                               ; preds = %86, %76
  %95 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  store %struct.TYPE_13__* %95, %struct.TYPE_13__** %10, align 8
  br label %96

96:                                               ; preds = %94, %86
  br label %97

97:                                               ; preds = %96, %60
  br label %98

98:                                               ; preds = %97, %52, %47
  %99 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %100 = icmp ne %struct.TYPE_13__* %99, null
  br i1 %100, label %222, label %101

101:                                              ; preds = %98
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 6
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %174

106:                                              ; preds = %101
  %107 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %108 = icmp ne %struct.TYPE_13__* %107, null
  br i1 %108, label %174, label %109

109:                                              ; preds = %106
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 0
  store i64 %112, i64* %114, align 8
  %115 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i32 0, i32 4
  %117 = load i64, i64* %116, align 8
  %118 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %118, i32 0, i32 3
  store i64 %117, i64* %119, align 8
  %120 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = call i32 @avio_skip(i32 %122, i32 28)
  %124 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = call i64 @avio_rl32(i32 %126)
  %128 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %129 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %128, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = add i64 %130, %127
  store i64 %131, i64* %129, align 8
  %132 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = call i64 @avio_rl32(i32 %134)
  %136 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %137 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %136, i32 0, i32 4
  %138 = load i64, i64* %137, align 8
  %139 = add i64 %138, %135
  store i64 %139, i64* %137, align 8
  %140 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %141 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = call i32 @avio_skip(i32 %142, i32 12)
  %144 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %145 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = call i64 @avio_feof(i32 %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %151

149:                                              ; preds = %109
  %150 = load i32, i32* @AVERROR_EOF, align 4
  store i32 %150, i32* %3, align 4
  br label %283

151:                                              ; preds = %109
  %152 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %153 = load i32, i32* @AVMEDIA_TYPE_VIDEO, align 4
  %154 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %155 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = call i32 @read_index(%struct.TYPE_14__* %152, i32 %153, i64 %156)
  store i32 %157, i32* %11, align 4
  %158 = load i32, i32* %11, align 4
  %159 = icmp slt i32 %158, 0
  br i1 %159, label %160, label %162

160:                                              ; preds = %151
  %161 = load i32, i32* %11, align 4
  store i32 %161, i32* %3, align 4
  br label %283

162:                                              ; preds = %151
  %163 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %164 = load i32, i32* @AVMEDIA_TYPE_AUDIO, align 4
  %165 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %166 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %165, i32 0, i32 3
  %167 = load i64, i64* %166, align 8
  %168 = call i32 @read_index(%struct.TYPE_14__* %163, i32 %164, i64 %167)
  store i32 %168, i32* %11, align 4
  %169 = load i32, i32* %11, align 4
  %170 = icmp slt i32 %169, 0
  br i1 %170, label %171, label %173

171:                                              ; preds = %162
  %172 = load i32, i32* %11, align 4
  store i32 %172, i32* %3, align 4
  br label %283

173:                                              ; preds = %162
  store i32 0, i32* %3, align 4
  br label %283

174:                                              ; preds = %106, %101
  %175 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %176 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %175, i32 0, i32 6
  %177 = load i64, i64* %176, align 8
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %220, label %179

179:                                              ; preds = %174
  %180 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %181 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %180, i32 0, i32 1
  %182 = load i64, i64* %181, align 8
  %183 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %184 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %183, i32 0, i32 0
  store i64 %182, i64* %184, align 8
  %185 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %186 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = call i32 @avio_skip(i32 %187, i32 28)
  %189 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %190 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = call i64 @avio_rl32(i32 %191)
  %193 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %194 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %193, i32 0, i32 1
  %195 = load i64, i64* %194, align 8
  %196 = add i64 %195, %192
  store i64 %196, i64* %194, align 8
  %197 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %198 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = call i32 @avio_skip(i32 %199, i32 16)
  %201 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %202 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 8
  %204 = call i64 @avio_feof(i32 %203)
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %206, label %208

206:                                              ; preds = %179
  %207 = load i32, i32* @AVERROR_EOF, align 4
  store i32 %207, i32* %3, align 4
  br label %283

208:                                              ; preds = %179
  %209 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %210 = load i32, i32* @AVMEDIA_TYPE_VIDEO, align 4
  %211 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %212 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %211, i32 0, i32 0
  %213 = load i64, i64* %212, align 8
  %214 = call i32 @read_index(%struct.TYPE_14__* %209, i32 %210, i64 %213)
  store i32 %214, i32* %11, align 4
  %215 = load i32, i32* %11, align 4
  %216 = icmp slt i32 %215, 0
  br i1 %216, label %217, label %219

217:                                              ; preds = %208
  %218 = load i32, i32* %11, align 4
  store i32 %218, i32* %3, align 4
  br label %283

219:                                              ; preds = %208
  store i32 0, i32* %3, align 4
  br label %283

220:                                              ; preds = %174
  br label %221

221:                                              ; preds = %220
  br label %222

222:                                              ; preds = %221, %98
  %223 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %224 = icmp ne %struct.TYPE_13__* %223, null
  br i1 %224, label %227, label %225

225:                                              ; preds = %222
  %226 = load i32, i32* @AVERROR_EOF, align 4
  store i32 %226, i32* %3, align 4
  br label %283

227:                                              ; preds = %222
  %228 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %229 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 8
  %231 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %232 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %231, i32 0, i32 1
  %233 = load i32, i32* %232, align 8
  %234 = load i32, i32* @SEEK_SET, align 4
  %235 = call i32 @avio_seek(i32 %230, i32 %233, i32 %234)
  %236 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %237 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 8
  %239 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %240 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %241 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %240, i32 0, i32 2
  %242 = load i32, i32* %241, align 4
  %243 = call i32 @av_get_packet(i32 %238, %struct.TYPE_12__* %239, i32 %242)
  store i32 %243, i32* %11, align 4
  %244 = load i32, i32* %11, align 4
  %245 = icmp slt i32 %244, 0
  br i1 %245, label %246, label %248

246:                                              ; preds = %227
  %247 = load i32, i32* %11, align 4
  store i32 %247, i32* %3, align 4
  br label %283

248:                                              ; preds = %227
  %249 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %250 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %251 = icmp eq %struct.TYPE_13__* %249, %250
  br i1 %251, label %252, label %262

252:                                              ; preds = %248
  %253 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %254 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %253, i32 0, i32 0
  %255 = load i64, i64* %254, align 8
  %256 = add i64 %255, 1
  store i64 %256, i64* %254, align 8
  %257 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %258 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %257, i32 0, i32 2
  %259 = load i64, i64* %258, align 8
  %260 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %261 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %260, i32 0, i32 0
  store i64 %259, i64* %261, align 8
  br label %272

262:                                              ; preds = %248
  %263 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %264 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %263, i32 0, i32 3
  %265 = load i64, i64* %264, align 8
  %266 = add i64 %265, 1
  store i64 %266, i64* %264, align 8
  %267 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %268 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %267, i32 0, i32 5
  %269 = load i64, i64* %268, align 8
  %270 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %271 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %270, i32 0, i32 0
  store i64 %269, i64* %271, align 8
  br label %272

272:                                              ; preds = %262, %252
  %273 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %274 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %273, i32 0, i32 0
  %275 = load i64, i64* %274, align 8
  %276 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %277 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %276, i32 0, i32 1
  store i64 %275, i64* %277, align 8
  %278 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %279 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %278, i32 0, i32 1
  %280 = load i32, i32* %279, align 8
  %281 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %282 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %281, i32 0, i32 2
  store i32 %280, i32* %282, align 8
  store i32 0, i32* %3, align 4
  br label %283

283:                                              ; preds = %272, %246, %225, %219, %217, %206, %173, %171, %160, %149
  %284 = load i32, i32* %3, align 4
  ret i32 %284
}

declare dso_local i32 @avio_skip(i32, i32) #1

declare dso_local i64 @avio_rl32(i32) #1

declare dso_local i64 @avio_feof(i32) #1

declare dso_local i32 @read_index(%struct.TYPE_14__*, i32, i64) #1

declare dso_local i32 @avio_seek(i32, i32, i32) #1

declare dso_local i32 @av_get_packet(i32, %struct.TYPE_12__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
