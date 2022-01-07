; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_vima.c_decode_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_vima.c_decode_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, i64* }

@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@AV_CH_LAYOUT_STEREO = common dso_local global i32 0, align 4
@AV_CH_LAYOUT_MONO = common dso_local global i32 0, align 4
@size_table = common dso_local global i32* null, align 8
@predict_table = common dso_local global i32* null, align 8
@ff_adpcm_step_table = common dso_local global i32* null, align 8
@step_index_tables = common dso_local global i64** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, i8*, i32*, %struct.TYPE_8__*)* @decode_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_frame(%struct.TYPE_10__* %0, i8* %1, i32* %2, %struct.TYPE_8__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_9__*, align 8
  %12 = alloca [2 x i32], align 4
  %13 = alloca i32, align 4
  %14 = alloca [2 x i32], align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_8__* %3, %struct.TYPE_8__** %9, align 8
  %28 = load i8*, i8** %7, align 8
  %29 = bitcast i8* %28 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %29, %struct.TYPE_9__** %11, align 8
  store i32 1, i32* %17, align 4
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp slt i32 %32, 13
  br i1 %33, label %34, label %36

34:                                               ; preds = %4
  %35 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %35, i32* %5, align 4
  br label %242

36:                                               ; preds = %4
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @init_get_bits8(i32* %10, i32 %39, i32 %42)
  store i32 %43, i32* %15, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %36
  %46 = load i32, i32* %15, align 4
  store i32 %46, i32* %5, align 4
  br label %242

47:                                               ; preds = %36
  %48 = call i32 @get_bits_long(i32* %10, i32 32)
  store i32 %48, i32* %13, align 4
  %49 = load i32, i32* %13, align 4
  %50 = icmp eq i32 %49, -1
  br i1 %50, label %51, label %54

51:                                               ; preds = %47
  %52 = call i32 @skip_bits_long(i32* %10, i32 32)
  %53 = call i32 @get_bits_long(i32* %10, i32 32)
  store i32 %53, i32* %13, align 4
  br label %54

54:                                               ; preds = %51, %47
  %55 = load i32, i32* %13, align 4
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = mul nsw i32 %58, 2
  %60 = icmp sgt i32 %55, %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %54
  %62 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %62, i32* %5, align 4
  br label %242

63:                                               ; preds = %54
  %64 = call i8* @get_sbits(i32* %10, i32 8)
  %65 = ptrtoint i8* %64 to i32
  %66 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 0
  store i32 %65, i32* %66, align 4
  %67 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 0
  %68 = load i32, i32* %67, align 4
  %69 = and i32 %68, 128
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %63
  %72 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 0
  %73 = load i32, i32* %72, align 4
  %74 = xor i32 %73, -1
  %75 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 0
  store i32 %74, i32* %75, align 4
  store i32 2, i32* %17, align 4
  br label %76

76:                                               ; preds = %71, %63
  %77 = load i32, i32* %17, align 4
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 0
  store i32 %77, i32* %79, align 4
  %80 = load i32, i32* %17, align 4
  %81 = icmp eq i32 %80, 2
  br i1 %81, label %82, label %84

82:                                               ; preds = %76
  %83 = load i32, i32* @AV_CH_LAYOUT_STEREO, align 4
  br label %86

84:                                               ; preds = %76
  %85 = load i32, i32* @AV_CH_LAYOUT_MONO, align 4
  br label %86

86:                                               ; preds = %84, %82
  %87 = phi i32 [ %83, %82 ], [ %85, %84 ]
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 1
  store i32 %87, i32* %89, align 4
  %90 = call i8* @get_sbits(i32* %10, i32 16)
  %91 = ptrtoint i8* %90 to i32
  %92 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  store i32 %91, i32* %92, align 4
  %93 = load i32, i32* %17, align 4
  %94 = icmp sgt i32 %93, 1
  br i1 %94, label %95, label %102

95:                                               ; preds = %86
  %96 = call i8* @get_sbits(i32* %10, i32 8)
  %97 = ptrtoint i8* %96 to i32
  %98 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 1
  store i32 %97, i32* %98, align 4
  %99 = call i8* @get_sbits(i32* %10, i32 16)
  %100 = ptrtoint i8* %99 to i32
  %101 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 1
  store i32 %100, i32* %101, align 4
  br label %102

102:                                              ; preds = %95, %86
  %103 = load i32, i32* %13, align 4
  %104 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 0
  store i32 %103, i32* %105, align 8
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %107 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %108 = call i32 @ff_get_buffer(%struct.TYPE_10__* %106, %struct.TYPE_9__* %107, i32 0)
  store i32 %108, i32* %15, align 4
  %109 = icmp slt i32 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %102
  %111 = load i32, i32* %15, align 4
  store i32 %111, i32* %5, align 4
  br label %242

112:                                              ; preds = %102
  store i32 0, i32* %16, align 4
  br label %113

113:                                              ; preds = %234, %112
  %114 = load i32, i32* %16, align 4
  %115 = load i32, i32* %17, align 4
  %116 = icmp slt i32 %114, %115
  br i1 %116, label %117, label %237

117:                                              ; preds = %113
  %118 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i32 0, i32 1
  %120 = load i64*, i64** %119, align 8
  %121 = getelementptr inbounds i64, i64* %120, i64 0
  %122 = load i64, i64* %121, align 8
  %123 = inttoptr i64 %122 to i32*
  %124 = load i32, i32* %16, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32, i32* %123, i64 %125
  store i32* %126, i32** %18, align 8
  %127 = load i32, i32* %16, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 %128
  %130 = load i32, i32* %129, align 4
  store i32 %130, i32* %19, align 4
  %131 = load i32, i32* %16, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 %132
  %134 = load i32, i32* %133, align 4
  store i32 %134, i32* %20, align 4
  store i32 0, i32* %21, align 4
  br label %135

135:                                              ; preds = %230, %117
  %136 = load i32, i32* %21, align 4
  %137 = load i32, i32* %13, align 4
  %138 = icmp slt i32 %136, %137
  br i1 %138, label %139, label %233

139:                                              ; preds = %135
  %140 = load i32, i32* %19, align 4
  %141 = call i32 @av_clip(i32 %140, i32 0, i32 88)
  store i32 %141, i32* %19, align 4
  %142 = load i32*, i32** @size_table, align 8
  %143 = load i32, i32* %19, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i32, i32* %142, i64 %144
  %146 = load i32, i32* %145, align 4
  store i32 %146, i32* %22, align 4
  %147 = load i32, i32* %22, align 4
  %148 = call i32 @get_bits(i32* %10, i32 %147)
  store i32 %148, i32* %23, align 4
  %149 = load i32, i32* %22, align 4
  %150 = sub nsw i32 %149, 1
  %151 = shl i32 1, %150
  store i32 %151, i32* %24, align 4
  %152 = load i32, i32* %24, align 4
  %153 = sub nsw i32 %152, 1
  store i32 %153, i32* %25, align 4
  %154 = load i32, i32* %23, align 4
  %155 = load i32, i32* %24, align 4
  %156 = and i32 %154, %155
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %162

158:                                              ; preds = %139
  %159 = load i32, i32* %24, align 4
  %160 = load i32, i32* %23, align 4
  %161 = xor i32 %160, %159
  store i32 %161, i32* %23, align 4
  br label %163

162:                                              ; preds = %139
  store i32 0, i32* %24, align 4
  br label %163

163:                                              ; preds = %162, %158
  %164 = load i32, i32* %23, align 4
  %165 = load i32, i32* %25, align 4
  %166 = icmp eq i32 %164, %165
  br i1 %166, label %167, label %170

167:                                              ; preds = %163
  %168 = call i8* @get_sbits(i32* %10, i32 16)
  %169 = ptrtoint i8* %168 to i32
  store i32 %169, i32* %20, align 4
  br label %209

170:                                              ; preds = %163
  %171 = load i32, i32* %23, align 4
  %172 = load i32, i32* %22, align 4
  %173 = sub nsw i32 7, %172
  %174 = shl i32 %171, %173
  %175 = load i32, i32* %19, align 4
  %176 = shl i32 %175, 6
  %177 = or i32 %174, %176
  store i32 %177, i32* %26, align 4
  %178 = load i32, i32* %26, align 4
  %179 = call i32 @av_clip(i32 %178, i32 0, i32 5785)
  store i32 %179, i32* %26, align 4
  %180 = load i32*, i32** @predict_table, align 8
  %181 = load i32, i32* %26, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i32, i32* %180, i64 %182
  %184 = load i32, i32* %183, align 4
  store i32 %184, i32* %27, align 4
  %185 = load i32, i32* %23, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %198

187:                                              ; preds = %170
  %188 = load i32*, i32** @ff_adpcm_step_table, align 8
  %189 = load i32, i32* %19, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i32, i32* %188, i64 %190
  %192 = load i32, i32* %191, align 4
  %193 = load i32, i32* %22, align 4
  %194 = sub nsw i32 %193, 1
  %195 = ashr i32 %192, %194
  %196 = load i32, i32* %27, align 4
  %197 = add nsw i32 %196, %195
  store i32 %197, i32* %27, align 4
  br label %198

198:                                              ; preds = %187, %170
  %199 = load i32, i32* %24, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %204

201:                                              ; preds = %198
  %202 = load i32, i32* %27, align 4
  %203 = sub nsw i32 0, %202
  store i32 %203, i32* %27, align 4
  br label %204

204:                                              ; preds = %201, %198
  %205 = load i32, i32* %20, align 4
  %206 = load i32, i32* %27, align 4
  %207 = add nsw i32 %205, %206
  %208 = call i32 @av_clip_int16(i32 %207)
  store i32 %208, i32* %20, align 4
  br label %209

209:                                              ; preds = %204, %167
  %210 = load i32, i32* %20, align 4
  %211 = load i32*, i32** %18, align 8
  store i32 %210, i32* %211, align 4
  %212 = load i32, i32* %17, align 4
  %213 = load i32*, i32** %18, align 8
  %214 = sext i32 %212 to i64
  %215 = getelementptr inbounds i32, i32* %213, i64 %214
  store i32* %215, i32** %18, align 8
  %216 = load i64**, i64*** @step_index_tables, align 8
  %217 = load i32, i32* %22, align 4
  %218 = sub nsw i32 %217, 2
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds i64*, i64** %216, i64 %219
  %221 = load i64*, i64** %220, align 8
  %222 = load i32, i32* %23, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds i64, i64* %221, i64 %223
  %225 = load i64, i64* %224, align 8
  %226 = load i32, i32* %19, align 4
  %227 = sext i32 %226 to i64
  %228 = add nsw i64 %227, %225
  %229 = trunc i64 %228 to i32
  store i32 %229, i32* %19, align 4
  br label %230

230:                                              ; preds = %209
  %231 = load i32, i32* %21, align 4
  %232 = add nsw i32 %231, 1
  store i32 %232, i32* %21, align 4
  br label %135

233:                                              ; preds = %135
  br label %234

234:                                              ; preds = %233
  %235 = load i32, i32* %16, align 4
  %236 = add nsw i32 %235, 1
  store i32 %236, i32* %16, align 4
  br label %113

237:                                              ; preds = %113
  %238 = load i32*, i32** %8, align 8
  store i32 1, i32* %238, align 4
  %239 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %240 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 4
  store i32 %241, i32* %5, align 4
  br label %242

242:                                              ; preds = %237, %110, %61, %45, %34
  %243 = load i32, i32* %5, align 4
  ret i32 %243
}

declare dso_local i32 @init_get_bits8(i32*, i32, i32) #1

declare dso_local i32 @get_bits_long(i32*, i32) #1

declare dso_local i32 @skip_bits_long(i32*, i32) #1

declare dso_local i8* @get_sbits(i32*, i32) #1

declare dso_local i32 @ff_get_buffer(%struct.TYPE_10__*, %struct.TYPE_9__*, i32) #1

declare dso_local i32 @av_clip(i32, i32, i32) #1

declare dso_local i32 @get_bits(i32*, i32) #1

declare dso_local i32 @av_clip_int16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
