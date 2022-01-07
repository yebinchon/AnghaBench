; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_rtpdec_asf.c_asfrtp_parse_packet.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_rtpdec_asf.c_asfrtp_parse_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_31__ = type { i32, %struct.TYPE_25__**, %struct.TYPE_27__* }
%struct.TYPE_25__ = type { i64 }
%struct.TYPE_27__ = type { i32, %struct.TYPE_24__* }
%struct.TYPE_24__ = type { %struct.TYPE_26__**, %struct.TYPE_30__* }
%struct.TYPE_26__ = type { i64 }
%struct.TYPE_30__ = type { i32, i64 }
%struct.TYPE_28__ = type { i32, %struct.TYPE_30__*, %struct.TYPE_30__ }
%struct.TYPE_29__ = type { i64 }

@EIO = common dso_local global i32 0, align 4
@RTP_FLAG_MARKER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_31__*, %struct.TYPE_28__*, i32*, %struct.TYPE_29__*, i32*, i32*, i32, i32, i32)* @asfrtp_parse_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @asfrtp_parse_packet(%struct.TYPE_31__* %0, %struct.TYPE_28__* %1, i32* %2, %struct.TYPE_29__* %3, i32* %4, i32* %5, i32 %6, i32 %7, i32 %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_31__*, align 8
  %12 = alloca %struct.TYPE_28__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_29__*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.TYPE_30__*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca %struct.TYPE_27__*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  store %struct.TYPE_31__* %0, %struct.TYPE_31__** %11, align 8
  store %struct.TYPE_28__* %1, %struct.TYPE_28__** %12, align 8
  store i32* %2, i32** %13, align 8
  store %struct.TYPE_29__* %3, %struct.TYPE_29__** %14, align 8
  store i32* %4, i32** %15, align 8
  store i32* %5, i32** %16, align 8
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store i32 %8, i32* %19, align 4
  %31 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %32 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %31, i32 0, i32 2
  store %struct.TYPE_30__* %32, %struct.TYPE_30__** %20, align 8
  %33 = load %struct.TYPE_31__*, %struct.TYPE_31__** %11, align 8
  %34 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %33, i32 0, i32 2
  %35 = load %struct.TYPE_27__*, %struct.TYPE_27__** %34, align 8
  store %struct.TYPE_27__* %35, %struct.TYPE_27__** %24, align 8
  %36 = load %struct.TYPE_27__*, %struct.TYPE_27__** %24, align 8
  %37 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %36, i32 0, i32 1
  %38 = load %struct.TYPE_24__*, %struct.TYPE_24__** %37, align 8
  %39 = icmp ne %struct.TYPE_24__* %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %9
  store i32 -1, i32* %10, align 4
  br label %295

41:                                               ; preds = %9
  %42 = load i32, i32* %17, align 4
  %43 = icmp sgt i32 %42, 0
  br i1 %43, label %44, label %231

44:                                               ; preds = %41
  store i32 0, i32* %26, align 4
  %45 = load i32, i32* %17, align 4
  %46 = icmp slt i32 %45, 4
  br i1 %46, label %47, label %48

47:                                               ; preds = %44
  store i32 -1, i32* %10, align 4
  br label %295

48:                                               ; preds = %44
  %49 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %50 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %49, i32 0, i32 0
  %51 = call i32 @av_freep(i32* %50)
  %52 = load %struct.TYPE_30__*, %struct.TYPE_30__** %20, align 8
  %53 = load i32*, i32** %16, align 8
  %54 = load i32, i32* %17, align 4
  %55 = call i32 @ffio_init_context(%struct.TYPE_30__* %52, i32* %53, i32 %54, i32 0, i32* null, i32* null, i32* null, i32* null)
  br label %56

56:                                               ; preds = %209, %48
  %57 = load %struct.TYPE_30__*, %struct.TYPE_30__** %20, align 8
  %58 = call i32 @avio_tell(%struct.TYPE_30__* %57)
  %59 = add nsw i32 %58, 4
  %60 = load i32, i32* %17, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %210

62:                                               ; preds = %56
  %63 = load %struct.TYPE_30__*, %struct.TYPE_30__** %20, align 8
  %64 = call i32 @avio_tell(%struct.TYPE_30__* %63)
  store i32 %64, i32* %27, align 4
  %65 = load %struct.TYPE_30__*, %struct.TYPE_30__** %20, align 8
  %66 = call i32 @avio_r8(%struct.TYPE_30__* %65)
  store i32 %66, i32* %22, align 4
  %67 = load %struct.TYPE_30__*, %struct.TYPE_30__** %20, align 8
  %68 = call i32 @avio_rb24(%struct.TYPE_30__* %67)
  store i32 %68, i32* %23, align 4
  %69 = load i32, i32* %22, align 4
  %70 = and i32 %69, 32
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %62
  %73 = load %struct.TYPE_30__*, %struct.TYPE_30__** %20, align 8
  %74 = call i32 @avio_skip(%struct.TYPE_30__* %73, i32 4)
  br label %75

75:                                               ; preds = %72, %62
  %76 = load i32, i32* %22, align 4
  %77 = and i32 %76, 16
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %75
  %80 = load %struct.TYPE_30__*, %struct.TYPE_30__** %20, align 8
  %81 = call i32 @avio_skip(%struct.TYPE_30__* %80, i32 4)
  br label %82

82:                                               ; preds = %79, %75
  %83 = load i32, i32* %22, align 4
  %84 = and i32 %83, 8
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %82
  %87 = load %struct.TYPE_30__*, %struct.TYPE_30__** %20, align 8
  %88 = call i32 @avio_skip(%struct.TYPE_30__* %87, i32 4)
  br label %89

89:                                               ; preds = %86, %82
  %90 = load %struct.TYPE_30__*, %struct.TYPE_30__** %20, align 8
  %91 = call i32 @avio_tell(%struct.TYPE_30__* %90)
  store i32 %91, i32* %25, align 4
  %92 = load i32, i32* %22, align 4
  %93 = and i32 %92, 64
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %165, label %95

95:                                               ; preds = %89
  %96 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %97 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %96, i32 0, i32 1
  %98 = load %struct.TYPE_30__*, %struct.TYPE_30__** %97, align 8
  %99 = icmp ne %struct.TYPE_30__* %98, null
  br i1 %99, label %100, label %111

100:                                              ; preds = %95
  %101 = load i32, i32* %23, align 4
  %102 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %103 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %102, i32 0, i32 1
  %104 = load %struct.TYPE_30__*, %struct.TYPE_30__** %103, align 8
  %105 = call i32 @avio_tell(%struct.TYPE_30__* %104)
  %106 = icmp ne i32 %101, %105
  br i1 %106, label %107, label %111

107:                                              ; preds = %100
  %108 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %109 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %108, i32 0, i32 1
  %110 = call i32 @ffio_free_dyn_buf(%struct.TYPE_30__** %109)
  br label %111

111:                                              ; preds = %107, %100, %95
  %112 = load i32, i32* %23, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %126, label %114

114:                                              ; preds = %111
  %115 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %116 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %115, i32 0, i32 1
  %117 = load %struct.TYPE_30__*, %struct.TYPE_30__** %116, align 8
  %118 = icmp ne %struct.TYPE_30__* %117, null
  br i1 %118, label %126, label %119

119:                                              ; preds = %114
  %120 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %121 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %120, i32 0, i32 1
  %122 = call i32 @avio_open_dyn_buf(%struct.TYPE_30__** %121)
  store i32 %122, i32* %21, align 4
  %123 = icmp slt i32 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %119
  %125 = load i32, i32* %21, align 4
  store i32 %125, i32* %10, align 4
  br label %295

126:                                              ; preds = %119, %114, %111
  %127 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %128 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %127, i32 0, i32 1
  %129 = load %struct.TYPE_30__*, %struct.TYPE_30__** %128, align 8
  %130 = icmp ne %struct.TYPE_30__* %129, null
  br i1 %130, label %134, label %131

131:                                              ; preds = %126
  %132 = load i32, i32* @EIO, align 4
  %133 = call i32 @AVERROR(i32 %132)
  store i32 %133, i32* %10, align 4
  br label %295

134:                                              ; preds = %126
  %135 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %136 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %135, i32 0, i32 1
  %137 = load %struct.TYPE_30__*, %struct.TYPE_30__** %136, align 8
  %138 = load i32*, i32** %16, align 8
  %139 = load i32, i32* %25, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i32, i32* %138, i64 %140
  %142 = load i32, i32* %17, align 4
  %143 = load i32, i32* %25, align 4
  %144 = sub nsw i32 %142, %143
  %145 = call i32 @avio_write(%struct.TYPE_30__* %137, i32* %141, i32 %144)
  %146 = load %struct.TYPE_30__*, %struct.TYPE_30__** %20, align 8
  %147 = load i32, i32* %17, align 4
  %148 = load i32, i32* %25, align 4
  %149 = sub nsw i32 %147, %148
  %150 = call i32 @avio_skip(%struct.TYPE_30__* %146, i32 %149)
  %151 = load i32, i32* %19, align 4
  %152 = load i32, i32* @RTP_FLAG_MARKER, align 4
  %153 = and i32 %151, %152
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %156, label %155

155:                                              ; preds = %134
  store i32 -1, i32* %10, align 4
  br label %295

156:                                              ; preds = %134
  %157 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %158 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %157, i32 0, i32 1
  %159 = load %struct.TYPE_30__*, %struct.TYPE_30__** %158, align 8
  %160 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %161 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %160, i32 0, i32 0
  %162 = call i32 @avio_close_dyn_buf(%struct.TYPE_30__* %159, i32* %161)
  store i32 %162, i32* %26, align 4
  %163 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %164 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %163, i32 0, i32 1
  store %struct.TYPE_30__* null, %struct.TYPE_30__** %164, align 8
  br label %209

165:                                              ; preds = %89
  %166 = load i32, i32* %27, align 4
  %167 = load i32, i32* %23, align 4
  %168 = add nsw i32 %166, %167
  %169 = load i32, i32* %25, align 4
  %170 = sub nsw i32 %168, %169
  store i32 %170, i32* %28, align 4
  %171 = load i32, i32* %26, align 4
  store i32 %171, i32* %29, align 4
  %172 = load i32, i32* %28, align 4
  %173 = load i32, i32* %26, align 4
  %174 = add nsw i32 %173, %172
  store i32 %174, i32* %26, align 4
  %175 = load i32, i32* %28, align 4
  %176 = load i32, i32* %17, align 4
  %177 = load i32, i32* %25, align 4
  %178 = sub nsw i32 %176, %177
  %179 = call i64 @FFMIN(i32 %175, i32 %178)
  %180 = icmp slt i64 %179, 0
  br i1 %180, label %181, label %182

181:                                              ; preds = %165
  store i32 -1, i32* %10, align 4
  br label %295

182:                                              ; preds = %165
  %183 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %184 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %183, i32 0, i32 0
  %185 = load i32, i32* %26, align 4
  %186 = call i32 @av_reallocp(i32* %184, i32 %185)
  store i32 %186, i32* %21, align 4
  %187 = icmp slt i32 %186, 0
  br i1 %187, label %188, label %190

188:                                              ; preds = %182
  %189 = load i32, i32* %21, align 4
  store i32 %189, i32* %10, align 4
  br label %295

190:                                              ; preds = %182
  %191 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %192 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = load i32, i32* %29, align 4
  %195 = add nsw i32 %193, %194
  %196 = load i32*, i32** %16, align 8
  %197 = load i32, i32* %25, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds i32, i32* %196, i64 %198
  %200 = load i32, i32* %28, align 4
  %201 = load i32, i32* %17, align 4
  %202 = load i32, i32* %25, align 4
  %203 = sub nsw i32 %201, %202
  %204 = call i64 @FFMIN(i32 %200, i32 %203)
  %205 = call i32 @memcpy(i32 %195, i32* %199, i64 %204)
  %206 = load %struct.TYPE_30__*, %struct.TYPE_30__** %20, align 8
  %207 = load i32, i32* %28, align 4
  %208 = call i32 @avio_skip(%struct.TYPE_30__* %206, i32 %207)
  br label %209

209:                                              ; preds = %190, %156
  br label %56

210:                                              ; preds = %56
  %211 = load %struct.TYPE_30__*, %struct.TYPE_30__** %20, align 8
  %212 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %213 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 8
  %215 = load i32, i32* %26, align 4
  %216 = call i32 @init_packetizer(%struct.TYPE_30__* %211, i32 %214, i32 %215)
  %217 = load %struct.TYPE_27__*, %struct.TYPE_27__** %24, align 8
  %218 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 8
  %220 = load %struct.TYPE_30__*, %struct.TYPE_30__** %20, align 8
  %221 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 8
  %223 = add nsw i32 %222, %219
  store i32 %223, i32* %221, align 8
  %224 = load %struct.TYPE_30__*, %struct.TYPE_30__** %20, align 8
  %225 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %224, i32 0, i32 1
  store i64 0, i64* %225, align 8
  %226 = load %struct.TYPE_30__*, %struct.TYPE_30__** %20, align 8
  %227 = load %struct.TYPE_27__*, %struct.TYPE_27__** %24, align 8
  %228 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %227, i32 0, i32 1
  %229 = load %struct.TYPE_24__*, %struct.TYPE_24__** %228, align 8
  %230 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %229, i32 0, i32 1
  store %struct.TYPE_30__* %226, %struct.TYPE_30__** %230, align 8
  br label %231

231:                                              ; preds = %210, %41
  br label %232

232:                                              ; preds = %284, %231
  %233 = load %struct.TYPE_27__*, %struct.TYPE_27__** %24, align 8
  %234 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %233, i32 0, i32 1
  %235 = load %struct.TYPE_24__*, %struct.TYPE_24__** %234, align 8
  %236 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %237 = call i32 @ff_read_packet(%struct.TYPE_24__* %235, %struct.TYPE_29__* %236)
  store i32 %237, i32* %21, align 4
  %238 = load %struct.TYPE_30__*, %struct.TYPE_30__** %20, align 8
  %239 = call i32 @avio_tell(%struct.TYPE_30__* %238)
  %240 = load %struct.TYPE_27__*, %struct.TYPE_27__** %24, align 8
  %241 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %240, i32 0, i32 0
  store i32 %239, i32* %241, align 8
  %242 = load i32, i32* %21, align 4
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %245

244:                                              ; preds = %232
  br label %287

245:                                              ; preds = %232
  store i32 0, i32* %30, align 4
  br label %246

246:                                              ; preds = %281, %245
  %247 = load i32, i32* %30, align 4
  %248 = load %struct.TYPE_31__*, %struct.TYPE_31__** %11, align 8
  %249 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 8
  %251 = icmp slt i32 %247, %250
  br i1 %251, label %252, label %284

252:                                              ; preds = %246
  %253 = load %struct.TYPE_31__*, %struct.TYPE_31__** %11, align 8
  %254 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %253, i32 0, i32 1
  %255 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %254, align 8
  %256 = load i32, i32* %30, align 4
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds %struct.TYPE_25__*, %struct.TYPE_25__** %255, i64 %257
  %259 = load %struct.TYPE_25__*, %struct.TYPE_25__** %258, align 8
  %260 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %259, i32 0, i32 0
  %261 = load i64, i64* %260, align 8
  %262 = load %struct.TYPE_27__*, %struct.TYPE_27__** %24, align 8
  %263 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %262, i32 0, i32 1
  %264 = load %struct.TYPE_24__*, %struct.TYPE_24__** %263, align 8
  %265 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %264, i32 0, i32 0
  %266 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %265, align 8
  %267 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %268 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %267, i32 0, i32 0
  %269 = load i64, i64* %268, align 8
  %270 = getelementptr inbounds %struct.TYPE_26__*, %struct.TYPE_26__** %266, i64 %269
  %271 = load %struct.TYPE_26__*, %struct.TYPE_26__** %270, align 8
  %272 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %271, i32 0, i32 0
  %273 = load i64, i64* %272, align 8
  %274 = icmp eq i64 %261, %273
  br i1 %274, label %275, label %280

275:                                              ; preds = %252
  %276 = load i32, i32* %30, align 4
  %277 = sext i32 %276 to i64
  %278 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %279 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %278, i32 0, i32 0
  store i64 %277, i64* %279, align 8
  store i32 1, i32* %10, align 4
  br label %295

280:                                              ; preds = %252
  br label %281

281:                                              ; preds = %280
  %282 = load i32, i32* %30, align 4
  %283 = add nsw i32 %282, 1
  store i32 %283, i32* %30, align 4
  br label %246

284:                                              ; preds = %246
  %285 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %286 = call i32 @av_packet_unref(%struct.TYPE_29__* %285)
  br label %232

287:                                              ; preds = %244
  %288 = load i32, i32* %21, align 4
  %289 = icmp eq i32 %288, 1
  br i1 %289, label %290, label %291

290:                                              ; preds = %287
  br label %293

291:                                              ; preds = %287
  %292 = load i32, i32* %21, align 4
  br label %293

293:                                              ; preds = %291, %290
  %294 = phi i32 [ -1, %290 ], [ %292, %291 ]
  store i32 %294, i32* %10, align 4
  br label %295

295:                                              ; preds = %293, %275, %188, %181, %155, %131, %124, %47, %40
  %296 = load i32, i32* %10, align 4
  ret i32 %296
}

declare dso_local i32 @av_freep(i32*) #1

declare dso_local i32 @ffio_init_context(%struct.TYPE_30__*, i32*, i32, i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @avio_tell(%struct.TYPE_30__*) #1

declare dso_local i32 @avio_r8(%struct.TYPE_30__*) #1

declare dso_local i32 @avio_rb24(%struct.TYPE_30__*) #1

declare dso_local i32 @avio_skip(%struct.TYPE_30__*, i32) #1

declare dso_local i32 @ffio_free_dyn_buf(%struct.TYPE_30__**) #1

declare dso_local i32 @avio_open_dyn_buf(%struct.TYPE_30__**) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @avio_write(%struct.TYPE_30__*, i32*, i32) #1

declare dso_local i32 @avio_close_dyn_buf(%struct.TYPE_30__*, i32*) #1

declare dso_local i64 @FFMIN(i32, i32) #1

declare dso_local i32 @av_reallocp(i32*, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i64) #1

declare dso_local i32 @init_packetizer(%struct.TYPE_30__*, i32, i32) #1

declare dso_local i32 @ff_read_packet(%struct.TYPE_24__*, %struct.TYPE_29__*) #1

declare dso_local i32 @av_packet_unref(%struct.TYPE_29__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
