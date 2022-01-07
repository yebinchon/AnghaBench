; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_mpc.c_mpc_read_packet.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_mpc.c_mpc_read_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32*, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i32, i32 }
%struct.TYPE_11__ = type { i32*, i32, i32, i64 }

@AVERROR_EOF = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@AVINDEX_KEYFRAME = common dso_local global i32 0, align 4
@SEEK_CUR = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, %struct.TYPE_11__*)* @mpc_read_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpc_read_packet(%struct.TYPE_12__* %0, %struct.TYPE_11__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %5, align 8
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 2
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  store %struct.TYPE_10__* %16, %struct.TYPE_10__** %6, align 8
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %11, align 4
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = icmp sge i32 %22, %25
  br i1 %26, label %27, label %34

27:                                               ; preds = %2
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = load i32, i32* @AVERROR_EOF, align 4
  store i32 %33, i32* %3, align 4
  br label %271

34:                                               ; preds = %27, %2
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = add nsw i32 %40, 1
  %42 = icmp ne i32 %37, %41
  br i1 %42, label %43, label %71

43:                                               ; preds = %34
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 5
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %48, align 8
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @SEEK_SET, align 4
  %58 = call i32 @avio_seek(i32 %46, i32 %56, i32 %57)
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 5
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %60, align 8
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 3
  store i32 %68, i32* %70, align 4
  br label %71

71:                                               ; preds = %43, %34
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 2
  store i32 %74, i32* %76, align 8
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %78, align 8
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  store i32 %83, i32* %10, align 4
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @avio_tell(i32 %86)
  store i32 %87, i32* %13, align 4
  %88 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @avio_rl32(i32 %90)
  store i32 %91, i32* %12, align 4
  %92 = load i32, i32* %10, align 4
  %93 = icmp sle i32 %92, 12
  br i1 %93, label %94, label %100

94:                                               ; preds = %71
  %95 = load i32, i32* %12, align 4
  %96 = load i32, i32* %10, align 4
  %97 = sub nsw i32 12, %96
  %98 = lshr i32 %95, %97
  %99 = and i32 %98, 1048575
  store i32 %99, i32* %9, align 4
  br label %114

100:                                              ; preds = %71
  %101 = load i32, i32* %12, align 4
  %102 = load i32, i32* %10, align 4
  %103 = sub nsw i32 %102, 12
  %104 = shl i32 %101, %103
  %105 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = call i32 @avio_rl32(i32 %107)
  %109 = load i32, i32* %10, align 4
  %110 = sub nsw i32 44, %109
  %111 = ashr i32 %108, %110
  %112 = or i32 %104, %111
  %113 = and i32 %112, 1048575
  store i32 %113, i32* %9, align 4
  br label %114

114:                                              ; preds = %100, %94
  %115 = load i32, i32* %10, align 4
  %116 = add nsw i32 %115, 20
  store i32 %116, i32* %10, align 4
  %117 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = load i32, i32* %13, align 4
  %121 = load i32, i32* @SEEK_SET, align 4
  %122 = call i32 @avio_seek(i32 %119, i32 %120, i32 %121)
  %123 = load i32, i32* %9, align 4
  %124 = load i32, i32* %10, align 4
  %125 = add nsw i32 %123, %124
  %126 = add nsw i32 %125, 31
  %127 = and i32 %126, -32
  %128 = ashr i32 %127, 3
  store i32 %128, i32* %8, align 4
  %129 = load i32, i32* %11, align 4
  %130 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %131 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %130, i32 0, i32 4
  %132 = load i32, i32* %131, align 8
  %133 = icmp eq i32 %129, %132
  br i1 %133, label %134, label %179

134:                                              ; preds = %114
  %135 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %136 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %179

139:                                              ; preds = %134
  %140 = load i32, i32* %13, align 4
  %141 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %142 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %141, i32 0, i32 5
  %143 = load %struct.TYPE_9__*, %struct.TYPE_9__** %142, align 8
  %144 = load i32, i32* %11, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %143, i64 %145
  %147 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %146, i32 0, i32 0
  store i32 %140, i32* %147, align 4
  %148 = load i32, i32* %8, align 4
  %149 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %150 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %149, i32 0, i32 5
  %151 = load %struct.TYPE_9__*, %struct.TYPE_9__** %150, align 8
  %152 = load i32, i32* %11, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %151, i64 %153
  %155 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %154, i32 0, i32 2
  store i32 %148, i32* %155, align 4
  %156 = load i32, i32* %10, align 4
  %157 = sub nsw i32 %156, 20
  %158 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %159 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %158, i32 0, i32 5
  %160 = load %struct.TYPE_9__*, %struct.TYPE_9__** %159, align 8
  %161 = load i32, i32* %11, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %160, i64 %162
  %164 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %163, i32 0, i32 1
  store i32 %157, i32* %164, align 4
  %165 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %166 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %165, i32 0, i32 1
  %167 = load i32*, i32** %166, align 8
  %168 = getelementptr inbounds i32, i32* %167, i64 0
  %169 = load i32, i32* %168, align 4
  %170 = load i32, i32* %11, align 4
  %171 = load i32, i32* %11, align 4
  %172 = load i32, i32* %8, align 4
  %173 = load i32, i32* @AVINDEX_KEYFRAME, align 4
  %174 = call i32 @av_add_index_entry(i32 %169, i32 %170, i32 %171, i32 %172, i32 0, i32 %173)
  %175 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %176 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %175, i32 0, i32 4
  %177 = load i32, i32* %176, align 8
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %176, align 8
  br label %179

179:                                              ; preds = %139, %134, %114
  %180 = load i32, i32* %10, align 4
  %181 = load i32, i32* %9, align 4
  %182 = add nsw i32 %180, %181
  %183 = and i32 %182, 31
  %184 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %185 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %184, i32 0, i32 3
  store i32 %183, i32* %185, align 4
  %186 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %187 = load i32, i32* %8, align 4
  %188 = add nsw i32 %187, 4
  %189 = call i32 @av_new_packet(%struct.TYPE_11__* %186, i32 %188)
  store i32 %189, i32* %7, align 4
  %190 = icmp slt i32 %189, 0
  br i1 %190, label %191, label %193

191:                                              ; preds = %179
  %192 = load i32, i32* %7, align 4
  store i32 %192, i32* %3, align 4
  br label %271

193:                                              ; preds = %179
  %194 = load i32, i32* %10, align 4
  %195 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %196 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %195, i32 0, i32 0
  %197 = load i32*, i32** %196, align 8
  %198 = getelementptr inbounds i32, i32* %197, i64 0
  store i32 %194, i32* %198, align 4
  %199 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %200 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 8
  %202 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %203 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %202, i32 0, i32 1
  %204 = load i32, i32* %203, align 4
  %205 = icmp sgt i32 %201, %204
  br i1 %205, label %206, label %211

206:                                              ; preds = %193
  %207 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %208 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %207, i32 0, i32 1
  %209 = load i32, i32* %208, align 4
  %210 = icmp ne i32 %209, 0
  br label %211

211:                                              ; preds = %206, %193
  %212 = phi i1 [ false, %193 ], [ %210, %206 ]
  %213 = zext i1 %212 to i32
  %214 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %215 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %214, i32 0, i32 0
  %216 = load i32*, i32** %215, align 8
  %217 = getelementptr inbounds i32, i32* %216, i64 1
  store i32 %213, i32* %217, align 4
  %218 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %219 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %218, i32 0, i32 0
  %220 = load i32*, i32** %219, align 8
  %221 = getelementptr inbounds i32, i32* %220, i64 2
  store i32 0, i32* %221, align 4
  %222 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %223 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %222, i32 0, i32 0
  %224 = load i32*, i32** %223, align 8
  %225 = getelementptr inbounds i32, i32* %224, i64 3
  store i32 0, i32* %225, align 4
  %226 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %227 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %226, i32 0, i32 3
  store i64 0, i64* %227, align 8
  %228 = load i32, i32* %11, align 4
  %229 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %230 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %229, i32 0, i32 1
  store i32 %228, i32* %230, align 8
  %231 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %232 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 8
  %234 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %235 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %234, i32 0, i32 0
  %236 = load i32*, i32** %235, align 8
  %237 = getelementptr inbounds i32, i32* %236, i64 4
  %238 = load i32, i32* %8, align 4
  %239 = call i32 @avio_read(i32 %233, i32* %237, i32 %238)
  store i32 %239, i32* %7, align 4
  %240 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %241 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %240, i32 0, i32 3
  %242 = load i32, i32* %241, align 4
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %250

244:                                              ; preds = %211
  %245 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %246 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 8
  %248 = load i32, i32* @SEEK_CUR, align 4
  %249 = call i32 @avio_seek(i32 %247, i32 -4, i32 %248)
  br label %250

250:                                              ; preds = %244, %211
  %251 = load i32, i32* %7, align 4
  %252 = load i32, i32* %8, align 4
  %253 = icmp slt i32 %251, %252
  br i1 %253, label %254, label %266

254:                                              ; preds = %250
  %255 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %256 = call i32 @av_packet_unref(%struct.TYPE_11__* %255)
  %257 = load i32, i32* %7, align 4
  %258 = icmp slt i32 %257, 0
  br i1 %258, label %259, label %261

259:                                              ; preds = %254
  %260 = load i32, i32* %7, align 4
  br label %264

261:                                              ; preds = %254
  %262 = load i32, i32* @EIO, align 4
  %263 = call i32 @AVERROR(i32 %262)
  br label %264

264:                                              ; preds = %261, %259
  %265 = phi i32 [ %260, %259 ], [ %263, %261 ]
  store i32 %265, i32* %3, align 4
  br label %271

266:                                              ; preds = %250
  %267 = load i32, i32* %7, align 4
  %268 = add nsw i32 %267, 4
  %269 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %270 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %269, i32 0, i32 2
  store i32 %268, i32* %270, align 4
  store i32 0, i32* %3, align 4
  br label %271

271:                                              ; preds = %266, %264, %191, %32
  %272 = load i32, i32* %3, align 4
  ret i32 %272
}

declare dso_local i32 @avio_seek(i32, i32, i32) #1

declare dso_local i32 @avio_tell(i32) #1

declare dso_local i32 @avio_rl32(i32) #1

declare dso_local i32 @av_add_index_entry(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @av_new_packet(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @avio_read(i32, i32*, i32) #1

declare dso_local i32 @av_packet_unref(%struct.TYPE_11__*) #1

declare dso_local i32 @AVERROR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
