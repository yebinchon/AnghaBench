; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_cbs_av1.c_cbs_av1_write_obu.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_cbs_av1.c_cbs_av1_write_obu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_32__ = type { %struct.TYPE_33__* }
%struct.TYPE_33__ = type { i64, i32*, i32 }
%struct.TYPE_31__ = type { i32, %struct.TYPE_35__* }
%struct.TYPE_35__ = type { i64, %struct.TYPE_30__, %struct.TYPE_27__ }
%struct.TYPE_30__ = type { i32, i32, %struct.TYPE_25__, %struct.TYPE_29__, %struct.TYPE_26__, i32, i32 }
%struct.TYPE_25__ = type { %struct.TYPE_34__ }
%struct.TYPE_34__ = type { i64, i32 }
%struct.TYPE_29__ = type { %struct.TYPE_28__ }
%struct.TYPE_28__ = type { %struct.TYPE_34__ }
%struct.TYPE_26__ = type { %struct.TYPE_34__ }
%struct.TYPE_27__ = type { i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@ENOSYS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"obu_size\00", align 1
@ENOSPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_32__*, %struct.TYPE_31__*, i32*)* @cbs_av1_write_obu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cbs_av1_write_obu(%struct.TYPE_32__* %0, %struct.TYPE_31__* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_32__*, align 8
  %6 = alloca %struct.TYPE_31__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_33__*, align 8
  %9 = alloca %struct.TYPE_35__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_34__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_32__* %0, %struct.TYPE_32__** %5, align 8
  store %struct.TYPE_31__* %1, %struct.TYPE_31__** %6, align 8
  store i32* %2, i32** %7, align 8
  %17 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_33__*, %struct.TYPE_33__** %18, align 8
  store %struct.TYPE_33__* %19, %struct.TYPE_33__** %8, align 8
  %20 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_35__*, %struct.TYPE_35__** %21, align 8
  store %struct.TYPE_35__* %22, %struct.TYPE_35__** %9, align 8
  %23 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  %24 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %24, i32 0, i32 0
  store i32 1, i32* %25, align 8
  %26 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %27 = load i32*, i32** %7, align 8
  %28 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %28, i32 0, i32 2
  %30 = call i32 @cbs_av1_write_obu_header(%struct.TYPE_32__* %26, i32* %27, %struct.TYPE_27__* %29)
  store i32 %30, i32* %13, align 4
  %31 = load i32, i32* %13, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %3
  %34 = load i32, i32* %13, align 4
  store i32 %34, i32* %4, align 4
  br label %338

35:                                               ; preds = %3
  %36 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %35
  %42 = load i32*, i32** %7, align 8
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %10, align 4
  %44 = load i32*, i32** %7, align 8
  %45 = call i32 @put_bits32(i32* %44, i32 0)
  %46 = load i32*, i32** %7, align 8
  %47 = call i32 @put_bits32(i32* %46, i32 0)
  br label %48

48:                                               ; preds = %41, %35
  store %struct.TYPE_34__* null, %struct.TYPE_34__** %11, align 8
  %49 = load i32*, i32** %7, align 8
  %50 = call i32 @put_bits_count(i32* %49)
  store i32 %50, i32* %14, align 4
  %51 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  switch i32 %54, label %191 [
    i32 131, label %55
    i32 130, label %91
    i32 135, label %100
    i32 132, label %100
    i32 129, label %118
    i32 136, label %134
    i32 128, label %151
    i32 134, label %167
    i32 133, label %179
  ]

55:                                               ; preds = %48
  %56 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %57 = load i32*, i32** %7, align 8
  %58 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  %59 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %59, i32 0, i32 6
  %61 = call i32 @cbs_av1_write_sequence_header_obu(%struct.TYPE_32__* %56, i32* %57, i32* %60)
  store i32 %61, i32* %13, align 4
  %62 = load i32, i32* %13, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %55
  %65 = load i32, i32* %13, align 4
  store i32 %65, i32* %4, align 4
  br label %338

66:                                               ; preds = %55
  %67 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %67, i32 0, i32 2
  %69 = call i32 @av_buffer_unref(i32* %68)
  %70 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %70, i32 0, i32 1
  store i32* null, i32** %71, align 8
  %72 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @av_buffer_ref(i32 %74)
  %76 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %76, i32 0, i32 2
  store i32 %75, i32* %77, align 8
  %78 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %85, label %82

82:                                               ; preds = %66
  %83 = load i32, i32* @ENOMEM, align 4
  %84 = call i32 @AVERROR(i32 %83)
  store i32 %84, i32* %4, align 4
  br label %338

85:                                               ; preds = %66
  %86 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  %87 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %87, i32 0, i32 6
  %89 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %90 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %89, i32 0, i32 1
  store i32* %88, i32** %90, align 8
  br label %194

91:                                               ; preds = %48
  %92 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %93 = load i32*, i32** %7, align 8
  %94 = call i32 @cbs_av1_write_temporal_delimiter_obu(%struct.TYPE_32__* %92, i32* %93)
  store i32 %94, i32* %13, align 4
  %95 = load i32, i32* %13, align 4
  %96 = icmp slt i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %91
  %98 = load i32, i32* %13, align 4
  store i32 %98, i32* %4, align 4
  br label %338

99:                                               ; preds = %91
  br label %194

100:                                              ; preds = %48, %48
  %101 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %102 = load i32*, i32** %7, align 8
  %103 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  %104 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %104, i32 0, i32 5
  %106 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  %107 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %106, i32 0, i32 2
  %108 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = icmp eq i32 %109, 132
  %111 = zext i1 %110 to i32
  %112 = call i32 @cbs_av1_write_frame_header_obu(%struct.TYPE_32__* %101, i32* %102, i32* %105, i32 %111, i32* null)
  store i32 %112, i32* %13, align 4
  %113 = load i32, i32* %13, align 4
  %114 = icmp slt i32 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %100
  %116 = load i32, i32* %13, align 4
  store i32 %116, i32* %4, align 4
  br label %338

117:                                              ; preds = %100
  br label %194

118:                                              ; preds = %48
  %119 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %120 = load i32*, i32** %7, align 8
  %121 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  %122 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %122, i32 0, i32 4
  %124 = call i32 @cbs_av1_write_tile_group_obu(%struct.TYPE_32__* %119, i32* %120, %struct.TYPE_26__* %123)
  store i32 %124, i32* %13, align 4
  %125 = load i32, i32* %13, align 4
  %126 = icmp slt i32 %125, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %118
  %128 = load i32, i32* %13, align 4
  store i32 %128, i32* %4, align 4
  br label %338

129:                                              ; preds = %118
  %130 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  %131 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %131, i32 0, i32 4
  %133 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %132, i32 0, i32 0
  store %struct.TYPE_34__* %133, %struct.TYPE_34__** %11, align 8
  br label %194

134:                                              ; preds = %48
  %135 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %136 = load i32*, i32** %7, align 8
  %137 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  %138 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %137, i32 0, i32 1
  %139 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %138, i32 0, i32 3
  %140 = call i32 @cbs_av1_write_frame_obu(%struct.TYPE_32__* %135, i32* %136, %struct.TYPE_29__* %139, i32* null)
  store i32 %140, i32* %13, align 4
  %141 = load i32, i32* %13, align 4
  %142 = icmp slt i32 %141, 0
  br i1 %142, label %143, label %145

143:                                              ; preds = %134
  %144 = load i32, i32* %13, align 4
  store i32 %144, i32* %4, align 4
  br label %338

145:                                              ; preds = %134
  %146 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  %147 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %146, i32 0, i32 1
  %148 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %147, i32 0, i32 3
  %149 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %149, i32 0, i32 0
  store %struct.TYPE_34__* %150, %struct.TYPE_34__** %11, align 8
  br label %194

151:                                              ; preds = %48
  %152 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %153 = load i32*, i32** %7, align 8
  %154 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  %155 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %154, i32 0, i32 1
  %156 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %155, i32 0, i32 2
  %157 = call i32 @cbs_av1_write_tile_list_obu(%struct.TYPE_32__* %152, i32* %153, %struct.TYPE_25__* %156)
  store i32 %157, i32* %13, align 4
  %158 = load i32, i32* %13, align 4
  %159 = icmp slt i32 %158, 0
  br i1 %159, label %160, label %162

160:                                              ; preds = %151
  %161 = load i32, i32* %13, align 4
  store i32 %161, i32* %4, align 4
  br label %338

162:                                              ; preds = %151
  %163 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  %164 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %163, i32 0, i32 1
  %165 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %164, i32 0, i32 2
  %166 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %165, i32 0, i32 0
  store %struct.TYPE_34__* %166, %struct.TYPE_34__** %11, align 8
  br label %194

167:                                              ; preds = %48
  %168 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %169 = load i32*, i32** %7, align 8
  %170 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  %171 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %170, i32 0, i32 1
  %172 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %171, i32 0, i32 1
  %173 = call i32 @cbs_av1_write_metadata_obu(%struct.TYPE_32__* %168, i32* %169, i32* %172)
  store i32 %173, i32* %13, align 4
  %174 = load i32, i32* %13, align 4
  %175 = icmp slt i32 %174, 0
  br i1 %175, label %176, label %178

176:                                              ; preds = %167
  %177 = load i32, i32* %13, align 4
  store i32 %177, i32* %4, align 4
  br label %338

178:                                              ; preds = %167
  br label %194

179:                                              ; preds = %48
  %180 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %181 = load i32*, i32** %7, align 8
  %182 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  %183 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %182, i32 0, i32 1
  %184 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %183, i32 0, i32 0
  %185 = call i32 @cbs_av1_write_padding_obu(%struct.TYPE_32__* %180, i32* %181, i32* %184)
  store i32 %185, i32* %13, align 4
  %186 = load i32, i32* %13, align 4
  %187 = icmp slt i32 %186, 0
  br i1 %187, label %188, label %190

188:                                              ; preds = %179
  %189 = load i32, i32* %13, align 4
  store i32 %189, i32* %4, align 4
  br label %338

190:                                              ; preds = %179
  br label %194

191:                                              ; preds = %48
  %192 = load i32, i32* @ENOSYS, align 4
  %193 = call i32 @AVERROR(i32 %192)
  store i32 %193, i32* %4, align 4
  br label %338

194:                                              ; preds = %190, %178, %162, %145, %129, %117, %99, %85
  %195 = load i32*, i32** %7, align 8
  %196 = call i32 @put_bits_count(i32* %195)
  store i32 %196, i32* %15, align 4
  %197 = load i32, i32* %15, align 4
  %198 = load i32, i32* %14, align 4
  %199 = sub nsw i32 %197, %198
  %200 = add nsw i32 %199, 7
  %201 = sdiv i32 %200, 8
  %202 = sext i32 %201 to i64
  store i64 %202, i64* %12, align 8
  %203 = load %struct.TYPE_34__*, %struct.TYPE_34__** %11, align 8
  %204 = icmp ne %struct.TYPE_34__* %203, null
  br i1 %204, label %205, label %213

205:                                              ; preds = %194
  %206 = load i64, i64* %12, align 8
  %207 = load %struct.TYPE_34__*, %struct.TYPE_34__** %11, align 8
  %208 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %207, i32 0, i32 0
  %209 = load i64, i64* %208, align 8
  %210 = add i64 %206, %209
  %211 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  %212 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %211, i32 0, i32 0
  store i64 %210, i64* %212, align 8
  br label %242

213:                                              ; preds = %194
  %214 = load i64, i64* %12, align 8
  %215 = icmp ugt i64 %214, 0
  br i1 %215, label %216, label %238

216:                                              ; preds = %213
  %217 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %218 = load i32*, i32** %7, align 8
  %219 = load i32, i32* %15, align 4
  %220 = srem i32 %219, 8
  %221 = sub nsw i32 8, %220
  %222 = call i32 @cbs_av1_write_trailing_bits(%struct.TYPE_32__* %217, i32* %218, i32 %221)
  store i32 %222, i32* %13, align 4
  %223 = load i32, i32* %13, align 4
  %224 = icmp slt i32 %223, 0
  br i1 %224, label %225, label %227

225:                                              ; preds = %216
  %226 = load i32, i32* %13, align 4
  store i32 %226, i32* %4, align 4
  br label %338

227:                                              ; preds = %216
  %228 = load i32*, i32** %7, align 8
  %229 = call i32 @put_bits_count(i32* %228)
  store i32 %229, i32* %15, align 4
  %230 = load i32, i32* %15, align 4
  %231 = load i32, i32* %14, align 4
  %232 = sub nsw i32 %230, %231
  %233 = add nsw i32 %232, 7
  %234 = sdiv i32 %233, 8
  %235 = sext i32 %234 to i64
  store i64 %235, i64* %12, align 8
  %236 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  %237 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %236, i32 0, i32 0
  store i64 %235, i64* %237, align 8
  br label %241

238:                                              ; preds = %213
  %239 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  %240 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %239, i32 0, i32 0
  store i64 0, i64* %240, align 8
  br label %241

241:                                              ; preds = %238, %227
  br label %242

242:                                              ; preds = %241, %205
  %243 = load i32*, i32** %7, align 8
  %244 = call i32 @put_bits_count(i32* %243)
  store i32 %244, i32* %15, align 4
  %245 = load i32, i32* %15, align 4
  %246 = srem i32 %245, 8
  %247 = icmp eq i32 %246, 0
  %248 = zext i1 %247 to i32
  %249 = call i32 @av_assert0(i32 %248)
  %250 = load i32*, i32** %7, align 8
  %251 = call i32 @flush_put_bits(i32* %250)
  %252 = load i32, i32* %14, align 4
  %253 = sdiv i32 %252, 8
  store i32 %253, i32* %14, align 4
  %254 = load i32, i32* %15, align 4
  %255 = sdiv i32 %254, 8
  store i32 %255, i32* %15, align 4
  %256 = load i32, i32* %10, align 4
  %257 = load i32*, i32** %7, align 8
  store i32 %256, i32* %257, align 4
  %258 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %259 = load i32*, i32** %7, align 8
  %260 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  %261 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %260, i32 0, i32 0
  %262 = load i64, i64* %261, align 8
  %263 = call i32 @cbs_av1_write_leb128(%struct.TYPE_32__* %258, i32* %259, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i64 %262)
  store i32 %263, i32* %13, align 4
  %264 = load i32, i32* %13, align 4
  %265 = icmp slt i32 %264, 0
  br i1 %265, label %266, label %268

266:                                              ; preds = %242
  %267 = load i32, i32* %13, align 4
  store i32 %267, i32* %4, align 4
  br label %338

268:                                              ; preds = %242
  %269 = load i32*, i32** %7, align 8
  %270 = call i32 @put_bits_count(i32* %269)
  %271 = sdiv i32 %270, 8
  store i32 %271, i32* %16, align 4
  %272 = load i32*, i32** %7, align 8
  %273 = call i32 @flush_put_bits(i32* %272)
  %274 = load i32, i32* %16, align 4
  %275 = load i32, i32* %14, align 4
  %276 = icmp sle i32 %274, %275
  %277 = zext i1 %276 to i32
  %278 = call i32 @av_assert0(i32 %277)
  %279 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  %280 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %279, i32 0, i32 0
  %281 = load i64, i64* %280, align 8
  %282 = mul i64 8, %281
  %283 = load i32*, i32** %7, align 8
  %284 = call i32 @put_bits_left(i32* %283)
  %285 = sext i32 %284 to i64
  %286 = icmp ugt i64 %282, %285
  br i1 %286, label %287, label %290

287:                                              ; preds = %268
  %288 = load i32, i32* @ENOSPC, align 4
  %289 = call i32 @AVERROR(i32 %288)
  store i32 %289, i32* %4, align 4
  br label %338

290:                                              ; preds = %268
  %291 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  %292 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %291, i32 0, i32 0
  %293 = load i64, i64* %292, align 8
  %294 = icmp ugt i64 %293, 0
  br i1 %294, label %295, label %337

295:                                              ; preds = %290
  %296 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %297 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %296, i32 0, i32 0
  %298 = load i64, i64* %297, align 8
  %299 = load i32, i32* %16, align 4
  %300 = sext i32 %299 to i64
  %301 = add nsw i64 %298, %300
  %302 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %303 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %302, i32 0, i32 0
  %304 = load i64, i64* %303, align 8
  %305 = load i32, i32* %14, align 4
  %306 = sext i32 %305 to i64
  %307 = add nsw i64 %304, %306
  %308 = load i64, i64* %12, align 8
  %309 = call i32 @memmove(i64 %301, i64 %307, i64 %308)
  %310 = load i32*, i32** %7, align 8
  %311 = load i64, i64* %12, align 8
  %312 = call i32 @skip_put_bytes(i32* %310, i64 %311)
  %313 = load %struct.TYPE_34__*, %struct.TYPE_34__** %11, align 8
  %314 = icmp ne %struct.TYPE_34__* %313, null
  br i1 %314, label %315, label %336

315:                                              ; preds = %295
  %316 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %317 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %316, i32 0, i32 0
  %318 = load i64, i64* %317, align 8
  %319 = load i32, i32* %16, align 4
  %320 = sext i32 %319 to i64
  %321 = add nsw i64 %318, %320
  %322 = load i64, i64* %12, align 8
  %323 = add i64 %321, %322
  %324 = load %struct.TYPE_34__*, %struct.TYPE_34__** %11, align 8
  %325 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %324, i32 0, i32 1
  %326 = load i32, i32* %325, align 8
  %327 = load %struct.TYPE_34__*, %struct.TYPE_34__** %11, align 8
  %328 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %327, i32 0, i32 0
  %329 = load i64, i64* %328, align 8
  %330 = call i32 @memcpy(i64 %323, i32 %326, i64 %329)
  %331 = load i32*, i32** %7, align 8
  %332 = load %struct.TYPE_34__*, %struct.TYPE_34__** %11, align 8
  %333 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %332, i32 0, i32 0
  %334 = load i64, i64* %333, align 8
  %335 = call i32 @skip_put_bytes(i32* %331, i64 %334)
  br label %336

336:                                              ; preds = %315, %295
  br label %337

337:                                              ; preds = %336, %290
  store i32 0, i32* %4, align 4
  br label %338

338:                                              ; preds = %337, %287, %266, %225, %191, %188, %176, %160, %143, %127, %115, %97, %82, %64, %33
  %339 = load i32, i32* %4, align 4
  ret i32 %339
}

declare dso_local i32 @cbs_av1_write_obu_header(%struct.TYPE_32__*, i32*, %struct.TYPE_27__*) #1

declare dso_local i32 @put_bits32(i32*, i32) #1

declare dso_local i32 @put_bits_count(i32*) #1

declare dso_local i32 @cbs_av1_write_sequence_header_obu(%struct.TYPE_32__*, i32*, i32*) #1

declare dso_local i32 @av_buffer_unref(i32*) #1

declare dso_local i32 @av_buffer_ref(i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @cbs_av1_write_temporal_delimiter_obu(%struct.TYPE_32__*, i32*) #1

declare dso_local i32 @cbs_av1_write_frame_header_obu(%struct.TYPE_32__*, i32*, i32*, i32, i32*) #1

declare dso_local i32 @cbs_av1_write_tile_group_obu(%struct.TYPE_32__*, i32*, %struct.TYPE_26__*) #1

declare dso_local i32 @cbs_av1_write_frame_obu(%struct.TYPE_32__*, i32*, %struct.TYPE_29__*, i32*) #1

declare dso_local i32 @cbs_av1_write_tile_list_obu(%struct.TYPE_32__*, i32*, %struct.TYPE_25__*) #1

declare dso_local i32 @cbs_av1_write_metadata_obu(%struct.TYPE_32__*, i32*, i32*) #1

declare dso_local i32 @cbs_av1_write_padding_obu(%struct.TYPE_32__*, i32*, i32*) #1

declare dso_local i32 @cbs_av1_write_trailing_bits(%struct.TYPE_32__*, i32*, i32) #1

declare dso_local i32 @av_assert0(i32) #1

declare dso_local i32 @flush_put_bits(i32*) #1

declare dso_local i32 @cbs_av1_write_leb128(%struct.TYPE_32__*, i32*, i8*, i64) #1

declare dso_local i32 @put_bits_left(i32*) #1

declare dso_local i32 @memmove(i64, i64, i64) #1

declare dso_local i32 @skip_put_bytes(i32*, i64) #1

declare dso_local i32 @memcpy(i64, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
