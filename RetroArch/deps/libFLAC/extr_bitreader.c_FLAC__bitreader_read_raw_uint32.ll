; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/libFLAC/extr_bitreader.c_FLAC__bitreader_read_raw_uint32.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/libFLAC/extr_bitreader.c_FLAC__bitreader_read_raw_uint32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32*, i32, i64, i64, i32, i32 }

@FLAC__BITS_PER_WORD = common dso_local global i32 0, align 4
@FLAC__WORD_ALL_ONES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @FLAC__bitreader_read_raw_uint32(%struct.TYPE_5__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %12 = icmp ne %struct.TYPE_5__* null, %11
  %13 = zext i1 %12 to i32
  %14 = call i32 @FLAC__ASSERT(i32 %13)
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = icmp ne i32* null, %17
  %19 = zext i1 %18 to i32
  %20 = call i32 @FLAC__ASSERT(i32 %19)
  %21 = load i32, i32* %7, align 4
  %22 = icmp ule i32 %21, 32
  %23 = zext i1 %22 to i32
  %24 = call i32 @FLAC__ASSERT(i32 %23)
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @FLAC__BITS_PER_WORD, align 4
  %29 = mul nsw i32 %27, %28
  %30 = mul nsw i32 %29, 2
  %31 = load i32, i32* %7, align 4
  %32 = icmp uge i32 %30, %31
  %33 = zext i1 %32 to i32
  %34 = call i32 @FLAC__ASSERT(i32 %33)
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 3
  %40 = load i64, i64* %39, align 8
  %41 = icmp ule i64 %37, %40
  %42 = zext i1 %41 to i32
  %43 = call i32 @FLAC__ASSERT(i32 %42)
  %44 = load i32, i32* @FLAC__BITS_PER_WORD, align 4
  %45 = icmp sge i32 %44, 32
  %46 = zext i1 %45 to i32
  %47 = call i32 @FLAC__ASSERT(i32 %46)
  %48 = load i32, i32* %7, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %3
  %51 = load i32*, i32** %6, align 8
  store i32 0, i32* %51, align 4
  store i32 1, i32* %4, align 4
  br label %276

52:                                               ; preds = %3
  br label %53

53:                                               ; preds = %83, %52
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 3
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = sub i64 %56, %59
  %61 = load i32, i32* @FLAC__BITS_PER_WORD, align 4
  %62 = sext i32 %61 to i64
  %63 = mul i64 %60, %62
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 8
  %67 = mul nsw i32 %66, 8
  %68 = sext i32 %67 to i64
  %69 = add i64 %63, %68
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 5
  %72 = load i32, i32* %71, align 4
  %73 = sext i32 %72 to i64
  %74 = sub i64 %69, %73
  %75 = load i32, i32* %7, align 4
  %76 = zext i32 %75 to i64
  %77 = icmp ult i64 %74, %76
  br i1 %77, label %78, label %84

78:                                               ; preds = %53
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %80 = call i32 @bitreader_read_from_client_(%struct.TYPE_5__* %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %83, label %82

82:                                               ; preds = %78
  store i32 0, i32* %4, align 4
  br label %276

83:                                               ; preds = %78
  br label %53

84:                                               ; preds = %53
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 3
  %90 = load i64, i64* %89, align 8
  %91 = icmp ult i64 %87, %90
  br i1 %91, label %92, label %211

92:                                               ; preds = %84
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 5
  %95 = load i32, i32* %94, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %179

97:                                               ; preds = %92
  %98 = load i32, i32* @FLAC__BITS_PER_WORD, align 4
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 5
  %101 = load i32, i32* %100, align 4
  %102 = sub nsw i32 %98, %101
  store i32 %102, i32* %8, align 4
  %103 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 0
  %105 = load i32*, i32** %104, align 8
  %106 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 2
  %108 = load i64, i64* %107, align 8
  %109 = getelementptr inbounds i32, i32* %105, i64 %108
  %110 = load i32, i32* %109, align 4
  store i32 %110, i32* %9, align 4
  %111 = load i32, i32* %7, align 4
  %112 = load i32, i32* %8, align 4
  %113 = icmp ult i32 %111, %112
  br i1 %113, label %114, label %132

114:                                              ; preds = %97
  %115 = load i32, i32* %9, align 4
  %116 = load i32, i32* @FLAC__WORD_ALL_ONES, align 4
  %117 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 5
  %119 = load i32, i32* %118, align 4
  %120 = lshr i32 %116, %119
  %121 = and i32 %115, %120
  %122 = load i32, i32* %8, align 4
  %123 = load i32, i32* %7, align 4
  %124 = sub i32 %122, %123
  %125 = lshr i32 %121, %124
  %126 = load i32*, i32** %6, align 8
  store i32 %125, i32* %126, align 4
  %127 = load i32, i32* %7, align 4
  %128 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 5
  %130 = load i32, i32* %129, align 4
  %131 = add i32 %130, %127
  store i32 %131, i32* %129, align 4
  store i32 1, i32* %4, align 4
  br label %276

132:                                              ; preds = %97
  %133 = load i32, i32* %9, align 4
  %134 = load i32, i32* @FLAC__WORD_ALL_ONES, align 4
  %135 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i32 0, i32 5
  %137 = load i32, i32* %136, align 4
  %138 = lshr i32 %134, %137
  %139 = and i32 %133, %138
  %140 = load i32*, i32** %6, align 8
  store i32 %139, i32* %140, align 4
  %141 = load i32, i32* %8, align 4
  %142 = load i32, i32* %7, align 4
  %143 = sub i32 %142, %141
  store i32 %143, i32* %7, align 4
  %144 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %145 = load i32, i32* %9, align 4
  %146 = call i32 @crc16_update_word_(%struct.TYPE_5__* %144, i32 %145)
  %147 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %148 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %147, i32 0, i32 2
  %149 = load i64, i64* %148, align 8
  %150 = add i64 %149, 1
  store i64 %150, i64* %148, align 8
  %151 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %152 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %151, i32 0, i32 5
  store i32 0, i32* %152, align 4
  %153 = load i32, i32* %7, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %178

155:                                              ; preds = %132
  %156 = load i32, i32* %7, align 4
  %157 = load i32*, i32** %6, align 8
  %158 = load i32, i32* %157, align 4
  %159 = shl i32 %158, %156
  store i32 %159, i32* %157, align 4
  %160 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %161 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %160, i32 0, i32 0
  %162 = load i32*, i32** %161, align 8
  %163 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %164 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %163, i32 0, i32 2
  %165 = load i64, i64* %164, align 8
  %166 = getelementptr inbounds i32, i32* %162, i64 %165
  %167 = load i32, i32* %166, align 4
  %168 = load i32, i32* @FLAC__BITS_PER_WORD, align 4
  %169 = load i32, i32* %7, align 4
  %170 = sub i32 %168, %169
  %171 = lshr i32 %167, %170
  %172 = load i32*, i32** %6, align 8
  %173 = load i32, i32* %172, align 4
  %174 = or i32 %173, %171
  store i32 %174, i32* %172, align 4
  %175 = load i32, i32* %7, align 4
  %176 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %177 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %176, i32 0, i32 5
  store i32 %175, i32* %177, align 4
  br label %178

178:                                              ; preds = %155, %132
  store i32 1, i32* %4, align 4
  br label %276

179:                                              ; preds = %92
  %180 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %181 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %180, i32 0, i32 0
  %182 = load i32*, i32** %181, align 8
  %183 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %184 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %183, i32 0, i32 2
  %185 = load i64, i64* %184, align 8
  %186 = getelementptr inbounds i32, i32* %182, i64 %185
  %187 = load i32, i32* %186, align 4
  store i32 %187, i32* %10, align 4
  %188 = load i32, i32* %7, align 4
  %189 = load i32, i32* @FLAC__BITS_PER_WORD, align 4
  %190 = icmp ult i32 %188, %189
  br i1 %190, label %191, label %201

191:                                              ; preds = %179
  %192 = load i32, i32* %10, align 4
  %193 = load i32, i32* @FLAC__BITS_PER_WORD, align 4
  %194 = load i32, i32* %7, align 4
  %195 = sub i32 %193, %194
  %196 = lshr i32 %192, %195
  %197 = load i32*, i32** %6, align 8
  store i32 %196, i32* %197, align 4
  %198 = load i32, i32* %7, align 4
  %199 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %200 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %199, i32 0, i32 5
  store i32 %198, i32* %200, align 4
  store i32 1, i32* %4, align 4
  br label %276

201:                                              ; preds = %179
  %202 = load i32, i32* %10, align 4
  %203 = load i32*, i32** %6, align 8
  store i32 %202, i32* %203, align 4
  %204 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %205 = load i32, i32* %10, align 4
  %206 = call i32 @crc16_update_word_(%struct.TYPE_5__* %204, i32 %205)
  %207 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %208 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %207, i32 0, i32 2
  %209 = load i64, i64* %208, align 8
  %210 = add i64 %209, 1
  store i64 %210, i64* %208, align 8
  store i32 1, i32* %4, align 4
  br label %276

211:                                              ; preds = %84
  %212 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %213 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %212, i32 0, i32 5
  %214 = load i32, i32* %213, align 4
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %257

216:                                              ; preds = %211
  %217 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %218 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %217, i32 0, i32 5
  %219 = load i32, i32* %218, align 4
  %220 = load i32, i32* %7, align 4
  %221 = add i32 %219, %220
  %222 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %223 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %222, i32 0, i32 4
  %224 = load i32, i32* %223, align 8
  %225 = mul nsw i32 %224, 8
  %226 = icmp ule i32 %221, %225
  %227 = zext i1 %226 to i32
  %228 = call i32 @FLAC__ASSERT(i32 %227)
  %229 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %230 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %229, i32 0, i32 0
  %231 = load i32*, i32** %230, align 8
  %232 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %233 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %232, i32 0, i32 2
  %234 = load i64, i64* %233, align 8
  %235 = getelementptr inbounds i32, i32* %231, i64 %234
  %236 = load i32, i32* %235, align 4
  %237 = load i32, i32* @FLAC__WORD_ALL_ONES, align 4
  %238 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %239 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %238, i32 0, i32 5
  %240 = load i32, i32* %239, align 4
  %241 = lshr i32 %237, %240
  %242 = and i32 %236, %241
  %243 = load i32, i32* @FLAC__BITS_PER_WORD, align 4
  %244 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %245 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %244, i32 0, i32 5
  %246 = load i32, i32* %245, align 4
  %247 = sub nsw i32 %243, %246
  %248 = load i32, i32* %7, align 4
  %249 = sub i32 %247, %248
  %250 = lshr i32 %242, %249
  %251 = load i32*, i32** %6, align 8
  store i32 %250, i32* %251, align 4
  %252 = load i32, i32* %7, align 4
  %253 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %254 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %253, i32 0, i32 5
  %255 = load i32, i32* %254, align 4
  %256 = add i32 %255, %252
  store i32 %256, i32* %254, align 4
  store i32 1, i32* %4, align 4
  br label %276

257:                                              ; preds = %211
  %258 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %259 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %258, i32 0, i32 0
  %260 = load i32*, i32** %259, align 8
  %261 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %262 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %261, i32 0, i32 2
  %263 = load i64, i64* %262, align 8
  %264 = getelementptr inbounds i32, i32* %260, i64 %263
  %265 = load i32, i32* %264, align 4
  %266 = load i32, i32* @FLAC__BITS_PER_WORD, align 4
  %267 = load i32, i32* %7, align 4
  %268 = sub i32 %266, %267
  %269 = lshr i32 %265, %268
  %270 = load i32*, i32** %6, align 8
  store i32 %269, i32* %270, align 4
  %271 = load i32, i32* %7, align 4
  %272 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %273 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %272, i32 0, i32 5
  %274 = load i32, i32* %273, align 4
  %275 = add i32 %274, %271
  store i32 %275, i32* %273, align 4
  store i32 1, i32* %4, align 4
  br label %276

276:                                              ; preds = %257, %216, %201, %191, %178, %114, %82, %50
  %277 = load i32, i32* %4, align 4
  ret i32 %277
}

declare dso_local i32 @FLAC__ASSERT(i32) #1

declare dso_local i32 @bitreader_read_from_client_(%struct.TYPE_5__*) #1

declare dso_local i32 @crc16_update_word_(%struct.TYPE_5__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
