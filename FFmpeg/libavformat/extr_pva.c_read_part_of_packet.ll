; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_pva.c_read_part_of_packet.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_pva.c_read_part_of_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32*, %struct.TYPE_5__*, i32* }
%struct.TYPE_5__ = type { i32 }

@AV_NOPTS_VALUE = common dso_local global i64 0, align 8
@PVA_MAGIC = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"invalid syncword\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@PVA_VIDEO_PAYLOAD = common dso_local global i32 0, align 4
@PVA_AUDIO_PAYLOAD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"invalid streamid\0A\00", align 1
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"expected reserved byte to be 0x55\0A\00", align 1
@PVA_MAX_PAYLOAD_LENGTH = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"invalid payload length %u\0A\00", align 1
@AVERROR_EOF = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [59 x i8] c"expected non empty signaled PES packet, trying to recover\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [18 x i8] c"header too short\0A\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"audio data corruption\0A\00", align 1
@AVINDEX_KEYFRAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i64*, i32*, i32*, i32)* @read_part_of_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_part_of_packet(%struct.TYPE_6__* %0, i64* %1, i32* %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_5__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca [256 x i8], align 16
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %7, align 8
  store i64* %1, i64** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 2
  %30 = load i32*, i32** %29, align 8
  store i32* %30, i32** %12, align 8
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 1
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  store %struct.TYPE_5__* %33, %struct.TYPE_5__** %13, align 8
  %34 = load i64, i64* @AV_NOPTS_VALUE, align 8
  store i64 %34, i64* %20, align 8
  br label %35

35:                                               ; preds = %149, %5
  %36 = load i32*, i32** %12, align 8
  %37 = call i64 @avio_tell(i32* %36)
  store i64 %37, i64* %21, align 8
  %38 = load i32*, i32** %12, align 8
  %39 = call i32 @avio_rb16(i32* %38)
  store i32 %39, i32* %14, align 4
  %40 = load i32*, i32** %12, align 8
  %41 = call i32 @avio_r8(i32* %40)
  store i32 %41, i32* %15, align 4
  %42 = load i32*, i32** %12, align 8
  %43 = call i32 @avio_r8(i32* %42)
  %44 = load i32*, i32** %12, align 8
  %45 = call i32 @avio_r8(i32* %44)
  store i32 %45, i32* %16, align 4
  %46 = load i32*, i32** %12, align 8
  %47 = call i32 @avio_r8(i32* %46)
  store i32 %47, i32* %17, align 4
  %48 = load i32*, i32** %12, align 8
  %49 = call i32 @avio_rb16(i32* %48)
  store i32 %49, i32* %18, align 4
  %50 = load i32, i32* %17, align 4
  %51 = and i32 %50, 16
  store i32 %51, i32* %19, align 4
  %52 = load i32, i32* %14, align 4
  %53 = load i32, i32* @PVA_MAGIC, align 4
  %54 = icmp ne i32 %52, %53
  br i1 %54, label %55, label %61

55:                                               ; preds = %35
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %57 = load i32, i32* @AV_LOG_ERROR, align 4
  %58 = call i32 (%struct.TYPE_6__*, i32, i8*, ...) @pva_log(%struct.TYPE_6__* %56, i32 %57, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %59 = load i32, i32* @EIO, align 4
  %60 = call i32 @AVERROR(i32 %59)
  store i32 %60, i32* %6, align 4
  br label %245

61:                                               ; preds = %35
  %62 = load i32, i32* %15, align 4
  %63 = load i32, i32* @PVA_VIDEO_PAYLOAD, align 4
  %64 = icmp ne i32 %62, %63
  br i1 %64, label %65, label %75

65:                                               ; preds = %61
  %66 = load i32, i32* %15, align 4
  %67 = load i32, i32* @PVA_AUDIO_PAYLOAD, align 4
  %68 = icmp ne i32 %66, %67
  br i1 %68, label %69, label %75

69:                                               ; preds = %65
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %71 = load i32, i32* @AV_LOG_ERROR, align 4
  %72 = call i32 (%struct.TYPE_6__*, i32, i8*, ...) @pva_log(%struct.TYPE_6__* %70, i32 %71, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %73 = load i32, i32* @EIO, align 4
  %74 = call i32 @AVERROR(i32 %73)
  store i32 %74, i32* %6, align 4
  br label %245

75:                                               ; preds = %65, %61
  %76 = load i32, i32* %16, align 4
  %77 = icmp ne i32 %76, 85
  br i1 %77, label %78, label %82

78:                                               ; preds = %75
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %80 = load i32, i32* @AV_LOG_WARNING, align 4
  %81 = call i32 (%struct.TYPE_6__*, i32, i8*, ...) @pva_log(%struct.TYPE_6__* %79, i32 %80, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  br label %82

82:                                               ; preds = %78, %75
  %83 = load i32, i32* %18, align 4
  %84 = load i32, i32* @PVA_MAX_PAYLOAD_LENGTH, align 4
  %85 = icmp sgt i32 %83, %84
  br i1 %85, label %86, label %93

86:                                               ; preds = %82
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %88 = load i32, i32* @AV_LOG_ERROR, align 4
  %89 = load i32, i32* %18, align 4
  %90 = call i32 (%struct.TYPE_6__*, i32, i8*, ...) @pva_log(%struct.TYPE_6__* %87, i32 %88, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %89)
  %91 = load i32, i32* @EIO, align 4
  %92 = call i32 @AVERROR(i32 %91)
  store i32 %92, i32* %6, align 4
  br label %245

93:                                               ; preds = %82
  %94 = load i32, i32* %15, align 4
  %95 = load i32, i32* @PVA_VIDEO_PAYLOAD, align 4
  %96 = icmp eq i32 %94, %95
  br i1 %96, label %97, label %105

97:                                               ; preds = %93
  %98 = load i32, i32* %19, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %105

100:                                              ; preds = %97
  %101 = load i32*, i32** %12, align 8
  %102 = call i64 @avio_rb32(i32* %101)
  store i64 %102, i64* %20, align 8
  %103 = load i32, i32* %18, align 4
  %104 = sub nsw i32 %103, 4
  store i32 %104, i32* %18, align 4
  br label %221

105:                                              ; preds = %97, %93
  %106 = load i32, i32* %15, align 4
  %107 = load i32, i32* @PVA_AUDIO_PAYLOAD, align 4
  %108 = icmp eq i32 %106, %107
  br i1 %108, label %109, label %220

109:                                              ; preds = %105
  %110 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %203, label %114

114:                                              ; preds = %109
  %115 = load i32*, i32** %12, align 8
  %116 = call i32 @avio_rb24(i32* %115)
  store i32 %116, i32* %23, align 4
  %117 = load i32*, i32** %12, align 8
  %118 = call i32 @avio_r8(i32* %117)
  %119 = load i32*, i32** %12, align 8
  %120 = call i32 @avio_rb16(i32* %119)
  store i32 %120, i32* %25, align 4
  %121 = load i32*, i32** %12, align 8
  %122 = call i32 @avio_rb16(i32* %121)
  store i32 %122, i32* %26, align 4
  %123 = load i32*, i32** %12, align 8
  %124 = call i32 @avio_r8(i32* %123)
  store i32 %124, i32* %24, align 4
  %125 = load i32*, i32** %12, align 8
  %126 = call i64 @avio_feof(i32* %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %130

128:                                              ; preds = %114
  %129 = load i32, i32* @AVERROR_EOF, align 4
  store i32 %129, i32* %6, align 4
  br label %245

130:                                              ; preds = %114
  %131 = load i32, i32* %23, align 4
  %132 = icmp ne i32 %131, 1
  br i1 %132, label %136, label %133

133:                                              ; preds = %130
  %134 = load i32, i32* %24, align 4
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %150

136:                                              ; preds = %133, %130
  %137 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %138 = load i32, i32* @AV_LOG_WARNING, align 4
  %139 = call i32 (%struct.TYPE_6__*, i32, i8*, ...) @pva_log(%struct.TYPE_6__* %137, i32 %138, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.4, i64 0, i64 0))
  %140 = load i32*, i32** %12, align 8
  %141 = load i32, i32* %18, align 4
  %142 = sub nsw i32 %141, 9
  %143 = call i32 @avio_skip(i32* %140, i32 %142)
  %144 = load i32, i32* %11, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %149, label %146

146:                                              ; preds = %136
  %147 = load i32, i32* @EIO, align 4
  %148 = call i32 @AVERROR(i32 %147)
  store i32 %148, i32* %6, align 4
  br label %245

149:                                              ; preds = %136
  br label %35

150:                                              ; preds = %133
  %151 = load i32*, i32** %12, align 8
  %152 = getelementptr inbounds [256 x i8], [256 x i8]* %27, i64 0, i64 0
  %153 = load i32, i32* %24, align 4
  %154 = call i32 @avio_read(i32* %151, i8* %152, i32 %153)
  store i32 %154, i32* %22, align 4
  %155 = load i32, i32* %22, align 4
  %156 = load i32, i32* %24, align 4
  %157 = icmp ne i32 %155, %156
  br i1 %157, label %158, label %167

158:                                              ; preds = %150
  %159 = load i32, i32* %22, align 4
  %160 = icmp slt i32 %159, 0
  br i1 %160, label %161, label %163

161:                                              ; preds = %158
  %162 = load i32, i32* %22, align 4
  br label %165

163:                                              ; preds = %158
  %164 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  br label %165

165:                                              ; preds = %163, %161
  %166 = phi i32 [ %162, %161 ], [ %164, %163 ]
  store i32 %166, i32* %6, align 4
  br label %245

167:                                              ; preds = %150
  %168 = load i32, i32* %24, align 4
  %169 = add nsw i32 9, %168
  %170 = load i32, i32* %18, align 4
  %171 = sub nsw i32 %170, %169
  store i32 %171, i32* %18, align 4
  %172 = load i32, i32* %24, align 4
  %173 = add nsw i32 3, %172
  %174 = load i32, i32* %25, align 4
  %175 = sub nsw i32 %174, %173
  store i32 %175, i32* %25, align 4
  %176 = load i32, i32* %25, align 4
  %177 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %178 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %177, i32 0, i32 0
  store i32 %176, i32* %178, align 4
  %179 = load i32, i32* %26, align 4
  %180 = and i32 %179, 128
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %202

182:                                              ; preds = %167
  %183 = getelementptr inbounds [256 x i8], [256 x i8]* %27, i64 0, i64 0
  %184 = load i8, i8* %183, align 16
  %185 = zext i8 %184 to i32
  %186 = and i32 %185, 240
  %187 = icmp eq i32 %186, 32
  br i1 %187, label %188, label %202

188:                                              ; preds = %182
  %189 = load i32, i32* %24, align 4
  %190 = icmp slt i32 %189, 5
  br i1 %190, label %191, label %199

191:                                              ; preds = %188
  %192 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %193 = load i32, i32* @AV_LOG_ERROR, align 4
  %194 = call i32 (%struct.TYPE_6__*, i32, i8*, ...) @pva_log(%struct.TYPE_6__* %192, i32 %193, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0))
  %195 = load i32*, i32** %12, align 8
  %196 = load i32, i32* %18, align 4
  %197 = call i32 @avio_skip(i32* %195, i32 %196)
  %198 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %198, i32* %6, align 4
  br label %245

199:                                              ; preds = %188
  %200 = getelementptr inbounds [256 x i8], [256 x i8]* %27, i64 0, i64 0
  %201 = call i64 @ff_parse_pes_pts(i8* %200)
  store i64 %201, i64* %20, align 8
  br label %202

202:                                              ; preds = %199, %182, %167
  br label %203

203:                                              ; preds = %202, %109
  %204 = load i32, i32* %18, align 4
  %205 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %206 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 4
  %208 = sub nsw i32 %207, %204
  store i32 %208, i32* %206, align 4
  %209 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %210 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 4
  %212 = icmp slt i32 %211, 0
  br i1 %212, label %213, label %219

213:                                              ; preds = %203
  %214 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %215 = load i32, i32* @AV_LOG_WARNING, align 4
  %216 = call i32 (%struct.TYPE_6__*, i32, i8*, ...) @pva_log(%struct.TYPE_6__* %214, i32 %215, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0))
  %217 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %218 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %217, i32 0, i32 0
  store i32 0, i32* %218, align 4
  br label %219

219:                                              ; preds = %213, %203
  br label %220

220:                                              ; preds = %219, %105
  br label %221

221:                                              ; preds = %220, %100
  %222 = load i64, i64* %20, align 8
  %223 = load i64, i64* @AV_NOPTS_VALUE, align 8
  %224 = icmp ne i64 %222, %223
  br i1 %224, label %225, label %238

225:                                              ; preds = %221
  %226 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %227 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %226, i32 0, i32 0
  %228 = load i32*, i32** %227, align 8
  %229 = load i32, i32* %15, align 4
  %230 = sub nsw i32 %229, 1
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds i32, i32* %228, i64 %231
  %233 = load i32, i32* %232, align 4
  %234 = load i64, i64* %21, align 8
  %235 = load i64, i64* %20, align 8
  %236 = load i32, i32* @AVINDEX_KEYFRAME, align 4
  %237 = call i32 @av_add_index_entry(i32 %233, i64 %234, i64 %235, i32 0, i32 0, i32 %236)
  br label %238

238:                                              ; preds = %225, %221
  %239 = load i64, i64* %20, align 8
  %240 = load i64*, i64** %8, align 8
  store i64 %239, i64* %240, align 8
  %241 = load i32, i32* %18, align 4
  %242 = load i32*, i32** %9, align 8
  store i32 %241, i32* %242, align 4
  %243 = load i32, i32* %15, align 4
  %244 = load i32*, i32** %10, align 8
  store i32 %243, i32* %244, align 4
  store i32 0, i32* %6, align 4
  br label %245

245:                                              ; preds = %238, %191, %165, %146, %128, %86, %69, %55
  %246 = load i32, i32* %6, align 4
  ret i32 %246
}

declare dso_local i64 @avio_tell(i32*) #1

declare dso_local i32 @avio_rb16(i32*) #1

declare dso_local i32 @avio_r8(i32*) #1

declare dso_local i32 @pva_log(%struct.TYPE_6__*, i32, i8*, ...) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i64 @avio_rb32(i32*) #1

declare dso_local i32 @avio_rb24(i32*) #1

declare dso_local i64 @avio_feof(i32*) #1

declare dso_local i32 @avio_skip(i32*, i32) #1

declare dso_local i32 @avio_read(i32*, i8*, i32) #1

declare dso_local i64 @ff_parse_pes_pts(i8*) #1

declare dso_local i32 @av_add_index_entry(i32, i64, i64, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
