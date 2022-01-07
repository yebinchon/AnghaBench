; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_vorbisenc.c_put_codebook_header.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_vorbisenc.c_put_codebook_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32*, i32, i32*, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_3__*)* @put_codebook_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @put_codebook_header(i32* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  store i32 0, i32* %6, align 4
  %12 = load i32*, i32** %3, align 8
  %13 = call i32 @put_bits(i32* %12, i32 24, i32 5653314)
  %14 = load i32*, i32** %3, align 8
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @put_bits(i32* %14, i32 16, i32 %17)
  %19 = load i32*, i32** %3, align 8
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @put_bits(i32* %19, i32 24, i32 %22)
  store i32 1, i32* %5, align 4
  br label %24

24:                                               ; preds = %49, %2
  %25 = load i32, i32* %5, align 4
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = icmp slt i32 %25, %28
  br i1 %29, label %30, label %52

30:                                               ; preds = %24
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 2
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %5, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 2
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* %5, align 4
  %42 = sub nsw i32 %41, 1
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %40, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = icmp slt i32 %37, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %30
  br label %52

48:                                               ; preds = %30
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %5, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %5, align 4
  br label %24

52:                                               ; preds = %47, %24
  %53 = load i32, i32* %5, align 4
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = icmp eq i32 %53, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %52
  store i32 1, i32* %6, align 4
  br label %59

59:                                               ; preds = %58, %52
  %60 = load i32*, i32** %3, align 8
  %61 = load i32, i32* %6, align 4
  %62 = call i32 @put_bits(i32* %60, i32 1, i32 %61)
  %63 = load i32, i32* %6, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %123

65:                                               ; preds = %59
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 2
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 0
  %70 = load i32, i32* %69, align 4
  store i32 %70, i32* %7, align 4
  %71 = load i32*, i32** %3, align 8
  %72 = load i32, i32* %7, align 4
  %73 = sub nsw i32 %72, 1
  %74 = call i32 @put_bits(i32* %71, i32 5, i32 %73)
  store i32 0, i32* %5, align 4
  br label %75

75:                                               ; preds = %107, %65
  %76 = load i32, i32* %5, align 4
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = icmp slt i32 %76, %79
  br i1 %80, label %81, label %122

81:                                               ; preds = %75
  store i32 0, i32* %8, align 4
  br label %82

82:                                               ; preds = %104, %81
  %83 = load i32, i32* %8, align 4
  %84 = load i32, i32* %5, align 4
  %85 = add nsw i32 %83, %84
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = icmp slt i32 %85, %88
  br i1 %89, label %90, label %107

90:                                               ; preds = %82
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 2
  %93 = load i32*, i32** %92, align 8
  %94 = load i32, i32* %8, align 4
  %95 = load i32, i32* %5, align 4
  %96 = add nsw i32 %94, %95
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %93, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* %7, align 4
  %101 = icmp ne i32 %99, %100
  br i1 %101, label %102, label %103

102:                                              ; preds = %90
  br label %107

103:                                              ; preds = %90
  br label %104

104:                                              ; preds = %103
  %105 = load i32, i32* %8, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %8, align 4
  br label %82

107:                                              ; preds = %102, %82
  %108 = load i32*, i32** %3, align 8
  %109 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* %5, align 4
  %113 = sub nsw i32 %111, %112
  %114 = call i32 @ilog(i32 %113)
  %115 = load i32, i32* %8, align 4
  %116 = call i32 @put_bits(i32* %108, i32 %114, i32 %115)
  %117 = load i32, i32* %8, align 4
  %118 = load i32, i32* %5, align 4
  %119 = add nsw i32 %118, %117
  store i32 %119, i32* %5, align 4
  %120 = load i32, i32* %7, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %7, align 4
  br label %75

122:                                              ; preds = %75
  br label %203

123:                                              ; preds = %59
  store i32 0, i32* %9, align 4
  store i32 0, i32* %5, align 4
  br label %124

124:                                              ; preds = %141, %123
  %125 = load i32, i32* %5, align 4
  %126 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = icmp slt i32 %125, %128
  br i1 %129, label %130, label %144

130:                                              ; preds = %124
  %131 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i32 0, i32 2
  %133 = load i32*, i32** %132, align 8
  %134 = load i32, i32* %5, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32, i32* %133, i64 %135
  %137 = load i32, i32* %136, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %140, label %139

139:                                              ; preds = %130
  br label %144

140:                                              ; preds = %130
  br label %141

141:                                              ; preds = %140
  %142 = load i32, i32* %5, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %5, align 4
  br label %124

144:                                              ; preds = %139, %124
  %145 = load i32, i32* %5, align 4
  %146 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %147 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = icmp ne i32 %145, %148
  br i1 %149, label %150, label %151

150:                                              ; preds = %144
  store i32 1, i32* %9, align 4
  br label %151

151:                                              ; preds = %150, %144
  %152 = load i32*, i32** %3, align 8
  %153 = load i32, i32* %9, align 4
  %154 = call i32 @put_bits(i32* %152, i32 1, i32 %153)
  store i32 0, i32* %5, align 4
  br label %155

155:                                              ; preds = %199, %151
  %156 = load i32, i32* %5, align 4
  %157 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %158 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = icmp slt i32 %156, %159
  br i1 %160, label %161, label %202

161:                                              ; preds = %155
  %162 = load i32, i32* %9, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %178

164:                                              ; preds = %161
  %165 = load i32*, i32** %3, align 8
  %166 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %167 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %166, i32 0, i32 2
  %168 = load i32*, i32** %167, align 8
  %169 = load i32, i32* %5, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i32, i32* %168, i64 %170
  %172 = load i32, i32* %171, align 4
  %173 = icmp ne i32 %172, 0
  %174 = xor i1 %173, true
  %175 = xor i1 %174, true
  %176 = zext i1 %175 to i32
  %177 = call i32 @put_bits(i32* %165, i32 1, i32 %176)
  br label %178

178:                                              ; preds = %164, %161
  %179 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %180 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %179, i32 0, i32 2
  %181 = load i32*, i32** %180, align 8
  %182 = load i32, i32* %5, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i32, i32* %181, i64 %183
  %185 = load i32, i32* %184, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %198

187:                                              ; preds = %178
  %188 = load i32*, i32** %3, align 8
  %189 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %190 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %189, i32 0, i32 2
  %191 = load i32*, i32** %190, align 8
  %192 = load i32, i32* %5, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i32, i32* %191, i64 %193
  %195 = load i32, i32* %194, align 4
  %196 = sub nsw i32 %195, 1
  %197 = call i32 @put_bits(i32* %188, i32 5, i32 %196)
  br label %198

198:                                              ; preds = %187, %178
  br label %199

199:                                              ; preds = %198
  %200 = load i32, i32* %5, align 4
  %201 = add nsw i32 %200, 1
  store i32 %201, i32* %5, align 4
  br label %155

202:                                              ; preds = %155
  br label %203

203:                                              ; preds = %202, %122
  %204 = load i32*, i32** %3, align 8
  %205 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %206 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %205, i32 0, i32 3
  %207 = load i32, i32* %206, align 8
  %208 = call i32 @put_bits(i32* %204, i32 4, i32 %207)
  %209 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %210 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %209, i32 0, i32 3
  %211 = load i32, i32* %210, align 8
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %287

213:                                              ; preds = %203
  %214 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %215 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %214, i32 0, i32 3
  %216 = load i32, i32* %215, align 8
  %217 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %218 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 8
  %220 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %221 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %220, i32 0, i32 1
  %222 = load i32, i32* %221, align 4
  %223 = call i32 @cb_lookup_vals(i32 %216, i32 %219, i32 %222)
  store i32 %223, i32* %10, align 4
  %224 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %225 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %224, i32 0, i32 4
  %226 = load i32*, i32** %225, align 8
  %227 = getelementptr inbounds i32, i32* %226, i64 0
  %228 = load i32, i32* %227, align 4
  %229 = call i32 @ilog(i32 %228)
  store i32 %229, i32* %11, align 4
  store i32 1, i32* %5, align 4
  br label %230

230:                                              ; preds = %245, %213
  %231 = load i32, i32* %5, align 4
  %232 = load i32, i32* %10, align 4
  %233 = icmp slt i32 %231, %232
  br i1 %233, label %234, label %248

234:                                              ; preds = %230
  %235 = load i32, i32* %11, align 4
  %236 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %237 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %236, i32 0, i32 4
  %238 = load i32*, i32** %237, align 8
  %239 = load i32, i32* %5, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds i32, i32* %238, i64 %240
  %242 = load i32, i32* %241, align 4
  %243 = call i32 @ilog(i32 %242)
  %244 = call i32 @FFMAX(i32 %235, i32 %243)
  store i32 %244, i32* %11, align 4
  br label %245

245:                                              ; preds = %234
  %246 = load i32, i32* %5, align 4
  %247 = add nsw i32 %246, 1
  store i32 %247, i32* %5, align 4
  br label %230

248:                                              ; preds = %230
  %249 = load i32*, i32** %3, align 8
  %250 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %251 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %250, i32 0, i32 7
  %252 = load i32, i32* %251, align 8
  %253 = call i32 @put_float(i32* %249, i32 %252)
  %254 = load i32*, i32** %3, align 8
  %255 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %256 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %255, i32 0, i32 6
  %257 = load i32, i32* %256, align 4
  %258 = call i32 @put_float(i32* %254, i32 %257)
  %259 = load i32*, i32** %3, align 8
  %260 = load i32, i32* %11, align 4
  %261 = sub nsw i32 %260, 1
  %262 = call i32 @put_bits(i32* %259, i32 4, i32 %261)
  %263 = load i32*, i32** %3, align 8
  %264 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %265 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %264, i32 0, i32 5
  %266 = load i32, i32* %265, align 8
  %267 = call i32 @put_bits(i32* %263, i32 1, i32 %266)
  store i32 0, i32* %5, align 4
  br label %268

268:                                              ; preds = %283, %248
  %269 = load i32, i32* %5, align 4
  %270 = load i32, i32* %10, align 4
  %271 = icmp slt i32 %269, %270
  br i1 %271, label %272, label %286

272:                                              ; preds = %268
  %273 = load i32*, i32** %3, align 8
  %274 = load i32, i32* %11, align 4
  %275 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %276 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %275, i32 0, i32 4
  %277 = load i32*, i32** %276, align 8
  %278 = load i32, i32* %5, align 4
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds i32, i32* %277, i64 %279
  %281 = load i32, i32* %280, align 4
  %282 = call i32 @put_bits(i32* %273, i32 %274, i32 %281)
  br label %283

283:                                              ; preds = %272
  %284 = load i32, i32* %5, align 4
  %285 = add nsw i32 %284, 1
  store i32 %285, i32* %5, align 4
  br label %268

286:                                              ; preds = %268
  br label %287

287:                                              ; preds = %286, %203
  ret void
}

declare dso_local i32 @put_bits(i32*, i32, i32) #1

declare dso_local i32 @ilog(i32) #1

declare dso_local i32 @cb_lookup_vals(i32, i32, i32) #1

declare dso_local i32 @FFMAX(i32, i32) #1

declare dso_local i32 @put_float(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
