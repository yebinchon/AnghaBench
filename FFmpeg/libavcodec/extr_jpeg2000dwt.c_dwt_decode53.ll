; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_jpeg2000dwt.c_dwt_decode53.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_jpeg2000dwt.c_dwt_decode53.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32**, i32, i32*, i32** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32*)* @dwt_decode53 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dwt_decode53(%struct.TYPE_3__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32* %1, i32** %4, align 8
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32**, i32*** %19, align 8
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = sub nsw i32 %23, 1
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32*, i32** %20, i64 %25
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %6, align 4
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 2
  %32 = load i32*, i32** %31, align 8
  store i32* %32, i32** %7, align 8
  %33 = load i32*, i32** %7, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 3
  store i32* %34, i32** %7, align 8
  store i32 0, i32* %5, align 4
  br label %35

35:                                               ; preds = %262, %2
  %36 = load i32, i32* %5, align 4
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = icmp slt i32 %36, %39
  br i1 %40, label %41, label %265

41:                                               ; preds = %35
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32**, i32*** %43, align 8
  %45 = load i32, i32* %5, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32*, i32** %44, i64 %46
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 0
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %8, align 4
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i32**, i32*** %52, align 8
  %54 = load i32, i32* %5, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32*, i32** %53, i64 %55
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 1
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %9, align 4
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 3
  %62 = load i32**, i32*** %61, align 8
  %63 = load i32, i32* %5, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32*, i32** %62, i64 %64
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 0
  %68 = load i32, i32* %67, align 4
  store i32 %68, i32* %10, align 4
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 3
  %71 = load i32**, i32*** %70, align 8
  %72 = load i32, i32* %5, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32*, i32** %71, i64 %73
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 1
  %77 = load i32, i32* %76, align 4
  store i32 %77, i32* %11, align 4
  %78 = load i32*, i32** %7, align 8
  %79 = load i32, i32* %10, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  store i32* %81, i32** %13, align 8
  store i32 0, i32* %12, align 4
  br label %82

82:                                               ; preds = %166, %41
  %83 = load i32, i32* %12, align 4
  %84 = load i32, i32* %9, align 4
  %85 = icmp slt i32 %83, %84
  br i1 %85, label %86, label %169

86:                                               ; preds = %82
  store i32 0, i32* %15, align 4
  %87 = load i32, i32* %10, align 4
  store i32 %87, i32* %14, align 4
  br label %88

88:                                               ; preds = %106, %86
  %89 = load i32, i32* %14, align 4
  %90 = load i32, i32* %8, align 4
  %91 = icmp slt i32 %89, %90
  br i1 %91, label %92, label %111

92:                                               ; preds = %88
  %93 = load i32*, i32** %4, align 8
  %94 = load i32, i32* %6, align 4
  %95 = load i32, i32* %12, align 4
  %96 = mul nsw i32 %94, %95
  %97 = load i32, i32* %15, align 4
  %98 = add nsw i32 %96, %97
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %93, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = load i32*, i32** %13, align 8
  %103 = load i32, i32* %14, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %102, i64 %104
  store i32 %101, i32* %105, align 4
  br label %106

106:                                              ; preds = %92
  %107 = load i32, i32* %14, align 4
  %108 = add nsw i32 %107, 2
  store i32 %108, i32* %14, align 4
  %109 = load i32, i32* %15, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %15, align 4
  br label %88

111:                                              ; preds = %88
  %112 = load i32, i32* %10, align 4
  %113 = sub nsw i32 1, %112
  store i32 %113, i32* %14, align 4
  br label %114

114:                                              ; preds = %132, %111
  %115 = load i32, i32* %14, align 4
  %116 = load i32, i32* %8, align 4
  %117 = icmp slt i32 %115, %116
  br i1 %117, label %118, label %137

118:                                              ; preds = %114
  %119 = load i32*, i32** %4, align 8
  %120 = load i32, i32* %6, align 4
  %121 = load i32, i32* %12, align 4
  %122 = mul nsw i32 %120, %121
  %123 = load i32, i32* %15, align 4
  %124 = add nsw i32 %122, %123
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32, i32* %119, i64 %125
  %127 = load i32, i32* %126, align 4
  %128 = load i32*, i32** %13, align 8
  %129 = load i32, i32* %14, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %128, i64 %130
  store i32 %127, i32* %131, align 4
  br label %132

132:                                              ; preds = %118
  %133 = load i32, i32* %14, align 4
  %134 = add nsw i32 %133, 2
  store i32 %134, i32* %14, align 4
  %135 = load i32, i32* %15, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %15, align 4
  br label %114

137:                                              ; preds = %114
  %138 = load i32*, i32** %7, align 8
  %139 = load i32, i32* %10, align 4
  %140 = load i32, i32* %10, align 4
  %141 = load i32, i32* %8, align 4
  %142 = add nsw i32 %140, %141
  %143 = call i32 @sr_1d53(i32* %138, i32 %139, i32 %142)
  store i32 0, i32* %14, align 4
  br label %144

144:                                              ; preds = %162, %137
  %145 = load i32, i32* %14, align 4
  %146 = load i32, i32* %8, align 4
  %147 = icmp slt i32 %145, %146
  br i1 %147, label %148, label %165

148:                                              ; preds = %144
  %149 = load i32*, i32** %13, align 8
  %150 = load i32, i32* %14, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i32, i32* %149, i64 %151
  %153 = load i32, i32* %152, align 4
  %154 = load i32*, i32** %4, align 8
  %155 = load i32, i32* %6, align 4
  %156 = load i32, i32* %12, align 4
  %157 = mul nsw i32 %155, %156
  %158 = load i32, i32* %14, align 4
  %159 = add nsw i32 %157, %158
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i32, i32* %154, i64 %160
  store i32 %153, i32* %161, align 4
  br label %162

162:                                              ; preds = %148
  %163 = load i32, i32* %14, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %14, align 4
  br label %144

165:                                              ; preds = %144
  br label %166

166:                                              ; preds = %165
  %167 = load i32, i32* %12, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %12, align 4
  br label %82

169:                                              ; preds = %82
  %170 = load i32*, i32** %7, align 8
  %171 = load i32, i32* %11, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i32, i32* %170, i64 %172
  store i32* %173, i32** %13, align 8
  store i32 0, i32* %12, align 4
  br label %174

174:                                              ; preds = %258, %169
  %175 = load i32, i32* %12, align 4
  %176 = load i32, i32* %8, align 4
  %177 = icmp slt i32 %175, %176
  br i1 %177, label %178, label %261

178:                                              ; preds = %174
  store i32 0, i32* %17, align 4
  %179 = load i32, i32* %11, align 4
  store i32 %179, i32* %16, align 4
  br label %180

180:                                              ; preds = %198, %178
  %181 = load i32, i32* %16, align 4
  %182 = load i32, i32* %9, align 4
  %183 = icmp slt i32 %181, %182
  br i1 %183, label %184, label %203

184:                                              ; preds = %180
  %185 = load i32*, i32** %4, align 8
  %186 = load i32, i32* %6, align 4
  %187 = load i32, i32* %17, align 4
  %188 = mul nsw i32 %186, %187
  %189 = load i32, i32* %12, align 4
  %190 = add nsw i32 %188, %189
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i32, i32* %185, i64 %191
  %193 = load i32, i32* %192, align 4
  %194 = load i32*, i32** %13, align 8
  %195 = load i32, i32* %16, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds i32, i32* %194, i64 %196
  store i32 %193, i32* %197, align 4
  br label %198

198:                                              ; preds = %184
  %199 = load i32, i32* %16, align 4
  %200 = add nsw i32 %199, 2
  store i32 %200, i32* %16, align 4
  %201 = load i32, i32* %17, align 4
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* %17, align 4
  br label %180

203:                                              ; preds = %180
  %204 = load i32, i32* %11, align 4
  %205 = sub nsw i32 1, %204
  store i32 %205, i32* %16, align 4
  br label %206

206:                                              ; preds = %224, %203
  %207 = load i32, i32* %16, align 4
  %208 = load i32, i32* %9, align 4
  %209 = icmp slt i32 %207, %208
  br i1 %209, label %210, label %229

210:                                              ; preds = %206
  %211 = load i32*, i32** %4, align 8
  %212 = load i32, i32* %6, align 4
  %213 = load i32, i32* %17, align 4
  %214 = mul nsw i32 %212, %213
  %215 = load i32, i32* %12, align 4
  %216 = add nsw i32 %214, %215
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds i32, i32* %211, i64 %217
  %219 = load i32, i32* %218, align 4
  %220 = load i32*, i32** %13, align 8
  %221 = load i32, i32* %16, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds i32, i32* %220, i64 %222
  store i32 %219, i32* %223, align 4
  br label %224

224:                                              ; preds = %210
  %225 = load i32, i32* %16, align 4
  %226 = add nsw i32 %225, 2
  store i32 %226, i32* %16, align 4
  %227 = load i32, i32* %17, align 4
  %228 = add nsw i32 %227, 1
  store i32 %228, i32* %17, align 4
  br label %206

229:                                              ; preds = %206
  %230 = load i32*, i32** %7, align 8
  %231 = load i32, i32* %11, align 4
  %232 = load i32, i32* %11, align 4
  %233 = load i32, i32* %9, align 4
  %234 = add nsw i32 %232, %233
  %235 = call i32 @sr_1d53(i32* %230, i32 %231, i32 %234)
  store i32 0, i32* %16, align 4
  br label %236

236:                                              ; preds = %254, %229
  %237 = load i32, i32* %16, align 4
  %238 = load i32, i32* %9, align 4
  %239 = icmp slt i32 %237, %238
  br i1 %239, label %240, label %257

240:                                              ; preds = %236
  %241 = load i32*, i32** %13, align 8
  %242 = load i32, i32* %16, align 4
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds i32, i32* %241, i64 %243
  %245 = load i32, i32* %244, align 4
  %246 = load i32*, i32** %4, align 8
  %247 = load i32, i32* %6, align 4
  %248 = load i32, i32* %16, align 4
  %249 = mul nsw i32 %247, %248
  %250 = load i32, i32* %12, align 4
  %251 = add nsw i32 %249, %250
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds i32, i32* %246, i64 %252
  store i32 %245, i32* %253, align 4
  br label %254

254:                                              ; preds = %240
  %255 = load i32, i32* %16, align 4
  %256 = add nsw i32 %255, 1
  store i32 %256, i32* %16, align 4
  br label %236

257:                                              ; preds = %236
  br label %258

258:                                              ; preds = %257
  %259 = load i32, i32* %12, align 4
  %260 = add nsw i32 %259, 1
  store i32 %260, i32* %12, align 4
  br label %174

261:                                              ; preds = %174
  br label %262

262:                                              ; preds = %261
  %263 = load i32, i32* %5, align 4
  %264 = add nsw i32 %263, 1
  store i32 %264, i32* %5, align 4
  br label %35

265:                                              ; preds = %35
  ret void
}

declare dso_local i32 @sr_1d53(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
