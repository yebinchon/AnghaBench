; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_movenc.c_mov_write_trun_tag.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_movenc.c_mov_write_trun_tag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i64 }
%struct.TYPE_8__ = type { i32, i32, i32, i64, i32, i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i32, i32 }

@MOV_TRUN_DATA_OFFSET = common dso_local global i32 0, align 4
@MOV_TRUN_SAMPLE_DURATION = common dso_local global i32 0, align 4
@MOV_TRUN_SAMPLE_SIZE = common dso_local global i32 0, align 4
@MOV_TRUN_SAMPLE_FLAGS = common dso_local global i32 0, align 4
@MOV_TRUN_FIRST_SAMPLE_FLAGS = common dso_local global i32 0, align 4
@MOV_TRACK_CTTS = common dso_local global i32 0, align 4
@MOV_TRUN_SAMPLE_CTS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"trun\00", align 1
@FF_MOV_FLAG_NEGATIVE_CTS_OFFSETS = common dso_local global i32 0, align 4
@FF_MOV_FLAG_OMIT_TFHD_OFFSET = common dso_local global i32 0, align 4
@FF_MOV_FLAG_DEFAULT_BASE_MOOF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_9__*, %struct.TYPE_8__*, i32, i32, i32)* @mov_write_trun_tag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mov_write_trun_tag(i32* %0, %struct.TYPE_9__* %1, %struct.TYPE_8__* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %8, align 8
  store %struct.TYPE_8__* %2, %struct.TYPE_8__** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %16 = load i32*, i32** %7, align 8
  %17 = call i32 @avio_tell(i32* %16)
  store i32 %17, i32* %13, align 4
  %18 = load i32, i32* @MOV_TRUN_DATA_OFFSET, align 4
  store i32 %18, i32* %14, align 4
  %19 = load i32, i32* %11, align 4
  store i32 %19, i32* %15, align 4
  br label %20

20:                                               ; preds = %75, %6
  %21 = load i32, i32* %15, align 4
  %22 = load i32, i32* %12, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %78

24:                                               ; preds = %20
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %26 = load i32, i32* %15, align 4
  %27 = call i32 @get_cluster_duration(%struct.TYPE_8__* %25, i32 %26)
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %27, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %24
  %33 = load i32, i32* @MOV_TRUN_SAMPLE_DURATION, align 4
  %34 = load i32, i32* %14, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %14, align 4
  br label %36

36:                                               ; preds = %32, %24
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 6
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %38, align 8
  %40 = load i32, i32* %15, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %44, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %36
  %50 = load i32, i32* @MOV_TRUN_SAMPLE_SIZE, align 4
  %51 = load i32, i32* %14, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %14, align 4
  br label %53

53:                                               ; preds = %49, %36
  %54 = load i32, i32* %15, align 4
  %55 = load i32, i32* %11, align 4
  %56 = icmp sgt i32 %54, %55
  br i1 %56, label %57, label %74

57:                                               ; preds = %53
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 6
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %60, align 8
  %62 = load i32, i32* %15, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i64 %63
  %65 = call i32 @get_sample_flags(%struct.TYPE_8__* %58, %struct.TYPE_10__* %64)
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = icmp ne i32 %65, %68
  br i1 %69, label %70, label %74

70:                                               ; preds = %57
  %71 = load i32, i32* @MOV_TRUN_SAMPLE_FLAGS, align 4
  %72 = load i32, i32* %14, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %14, align 4
  br label %74

74:                                               ; preds = %70, %57, %53
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* %15, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %15, align 4
  br label %20

78:                                               ; preds = %20
  %79 = load i32, i32* %14, align 4
  %80 = load i32, i32* @MOV_TRUN_SAMPLE_FLAGS, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %103, label %83

83:                                               ; preds = %78
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 3
  %86 = load i64, i64* %85, align 8
  %87 = icmp sgt i64 %86, 0
  br i1 %87, label %88, label %103

88:                                               ; preds = %83
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 6
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i64 0
  %94 = call i32 @get_sample_flags(%struct.TYPE_8__* %89, %struct.TYPE_10__* %93)
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = icmp ne i32 %94, %97
  br i1 %98, label %99, label %103

99:                                               ; preds = %88
  %100 = load i32, i32* @MOV_TRUN_FIRST_SAMPLE_FLAGS, align 4
  %101 = load i32, i32* %14, align 4
  %102 = or i32 %101, %100
  store i32 %102, i32* %14, align 4
  br label %103

103:                                              ; preds = %99, %88, %83, %78
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 4
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* @MOV_TRACK_CTTS, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %114

110:                                              ; preds = %103
  %111 = load i32, i32* @MOV_TRUN_SAMPLE_CTS, align 4
  %112 = load i32, i32* %14, align 4
  %113 = or i32 %112, %111
  store i32 %113, i32* %14, align 4
  br label %114

114:                                              ; preds = %110, %103
  %115 = load i32*, i32** %7, align 8
  %116 = call i32 @avio_wb32(i32* %115, i32 0)
  %117 = load i32*, i32** %7, align 8
  %118 = call i32 @ffio_wfourcc(i32* %117, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %119 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = load i32, i32* @FF_MOV_FLAG_NEGATIVE_CTS_OFFSETS, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %114
  %126 = load i32*, i32** %7, align 8
  %127 = call i32 @avio_w8(i32* %126, i32 1)
  br label %131

128:                                              ; preds = %114
  %129 = load i32*, i32** %7, align 8
  %130 = call i32 @avio_w8(i32* %129, i32 0)
  br label %131

131:                                              ; preds = %128, %125
  %132 = load i32*, i32** %7, align 8
  %133 = load i32, i32* %14, align 4
  %134 = call i32 @avio_wb24(i32* %132, i32 %133)
  %135 = load i32*, i32** %7, align 8
  %136 = load i32, i32* %12, align 4
  %137 = load i32, i32* %11, align 4
  %138 = sub nsw i32 %136, %137
  %139 = call i32 @avio_wb32(i32* %135, i32 %138)
  %140 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %141 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = load i32, i32* @FF_MOV_FLAG_OMIT_TFHD_OFFSET, align 4
  %144 = and i32 %142, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %161

146:                                              ; preds = %131
  %147 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %148 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = load i32, i32* @FF_MOV_FLAG_DEFAULT_BASE_MOOF, align 4
  %151 = and i32 %149, %150
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %161, label %153

153:                                              ; preds = %146
  %154 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %155 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %154, i32 0, i32 1
  %156 = load i64, i64* %155, align 8
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %161, label %158

158:                                              ; preds = %153
  %159 = load i32*, i32** %7, align 8
  %160 = call i32 @avio_wb32(i32* %159, i32 0)
  br label %179

161:                                              ; preds = %153, %146, %131
  %162 = load i32*, i32** %7, align 8
  %163 = load i32, i32* %10, align 4
  %164 = add nsw i32 %163, 8
  %165 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %166 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %165, i32 0, i32 5
  %167 = load i32, i32* %166, align 4
  %168 = add nsw i32 %164, %167
  %169 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %170 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %169, i32 0, i32 6
  %171 = load %struct.TYPE_10__*, %struct.TYPE_10__** %170, align 8
  %172 = load i32, i32* %11, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %171, i64 %173
  %175 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = add nsw i32 %168, %176
  %178 = call i32 @avio_wb32(i32* %162, i32 %177)
  br label %179

179:                                              ; preds = %161, %158
  %180 = load i32, i32* %14, align 4
  %181 = load i32, i32* @MOV_TRUN_FIRST_SAMPLE_FLAGS, align 4
  %182 = and i32 %180, %181
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %195

184:                                              ; preds = %179
  %185 = load i32*, i32** %7, align 8
  %186 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %187 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %188 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %187, i32 0, i32 6
  %189 = load %struct.TYPE_10__*, %struct.TYPE_10__** %188, align 8
  %190 = load i32, i32* %11, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %189, i64 %191
  %193 = call i32 @get_sample_flags(%struct.TYPE_8__* %186, %struct.TYPE_10__* %192)
  %194 = call i32 @avio_wb32(i32* %185, i32 %193)
  br label %195

195:                                              ; preds = %184, %179
  %196 = load i32, i32* %11, align 4
  store i32 %196, i32* %15, align 4
  br label %197

197:                                              ; preds = %261, %195
  %198 = load i32, i32* %15, align 4
  %199 = load i32, i32* %12, align 4
  %200 = icmp slt i32 %198, %199
  br i1 %200, label %201, label %264

201:                                              ; preds = %197
  %202 = load i32, i32* %14, align 4
  %203 = load i32, i32* @MOV_TRUN_SAMPLE_DURATION, align 4
  %204 = and i32 %202, %203
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %212

206:                                              ; preds = %201
  %207 = load i32*, i32** %7, align 8
  %208 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %209 = load i32, i32* %15, align 4
  %210 = call i32 @get_cluster_duration(%struct.TYPE_8__* %208, i32 %209)
  %211 = call i32 @avio_wb32(i32* %207, i32 %210)
  br label %212

212:                                              ; preds = %206, %201
  %213 = load i32, i32* %14, align 4
  %214 = load i32, i32* @MOV_TRUN_SAMPLE_SIZE, align 4
  %215 = and i32 %213, %214
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %228

217:                                              ; preds = %212
  %218 = load i32*, i32** %7, align 8
  %219 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %220 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %219, i32 0, i32 6
  %221 = load %struct.TYPE_10__*, %struct.TYPE_10__** %220, align 8
  %222 = load i32, i32* %15, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %221, i64 %223
  %225 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 4
  %227 = call i32 @avio_wb32(i32* %218, i32 %226)
  br label %228

228:                                              ; preds = %217, %212
  %229 = load i32, i32* %14, align 4
  %230 = load i32, i32* @MOV_TRUN_SAMPLE_FLAGS, align 4
  %231 = and i32 %229, %230
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %244

233:                                              ; preds = %228
  %234 = load i32*, i32** %7, align 8
  %235 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %236 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %237 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %236, i32 0, i32 6
  %238 = load %struct.TYPE_10__*, %struct.TYPE_10__** %237, align 8
  %239 = load i32, i32* %15, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %238, i64 %240
  %242 = call i32 @get_sample_flags(%struct.TYPE_8__* %235, %struct.TYPE_10__* %241)
  %243 = call i32 @avio_wb32(i32* %234, i32 %242)
  br label %244

244:                                              ; preds = %233, %228
  %245 = load i32, i32* %14, align 4
  %246 = load i32, i32* @MOV_TRUN_SAMPLE_CTS, align 4
  %247 = and i32 %245, %246
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %249, label %260

249:                                              ; preds = %244
  %250 = load i32*, i32** %7, align 8
  %251 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %252 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %251, i32 0, i32 6
  %253 = load %struct.TYPE_10__*, %struct.TYPE_10__** %252, align 8
  %254 = load i32, i32* %15, align 4
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %253, i64 %255
  %257 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %256, i32 0, i32 2
  %258 = load i32, i32* %257, align 4
  %259 = call i32 @avio_wb32(i32* %250, i32 %258)
  br label %260

260:                                              ; preds = %249, %244
  br label %261

261:                                              ; preds = %260
  %262 = load i32, i32* %15, align 4
  %263 = add nsw i32 %262, 1
  store i32 %263, i32* %15, align 4
  br label %197

264:                                              ; preds = %197
  %265 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %266 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %265, i32 0, i32 1
  store i64 0, i64* %266, align 8
  %267 = load i32*, i32** %7, align 8
  %268 = load i32, i32* %13, align 4
  %269 = call i32 @update_size(i32* %267, i32 %268)
  ret i32 %269
}

declare dso_local i32 @avio_tell(i32*) #1

declare dso_local i32 @get_cluster_duration(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @get_sample_flags(%struct.TYPE_8__*, %struct.TYPE_10__*) #1

declare dso_local i32 @avio_wb32(i32*, i32) #1

declare dso_local i32 @ffio_wfourcc(i32*, i8*) #1

declare dso_local i32 @avio_w8(i32*, i32) #1

declare dso_local i32 @avio_wb24(i32*, i32) #1

declare dso_local i32 @update_size(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
