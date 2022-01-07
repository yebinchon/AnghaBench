; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_stereo3d.c_interleave_cols_to_any.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_stereo3d.c_interleave_cols_to_any.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32*, i32*, i32*, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_9__ = type { i32*, i32** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*, i32*, i32, %struct.TYPE_9__*, %struct.TYPE_9__*, i32)* @interleave_cols_to_any to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @interleave_cols_to_any(%struct.TYPE_8__* %0, i32* %1, i32 %2, %struct.TYPE_9__* %3, %struct.TYPE_9__* %4, i32 %5) #0 {
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca %struct.TYPE_9__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.TYPE_9__* %3, %struct.TYPE_9__** %10, align 8
  store %struct.TYPE_9__* %4, %struct.TYPE_9__** %11, align 8
  store i32 %5, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %17

17:                                               ; preds = %256, %6
  %18 = load i32, i32* %13, align 4
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = load i32, i32* %9, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = icmp slt i32 %18, %25
  br i1 %26, label %27, label %259

27:                                               ; preds = %17
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 1
  %30 = load i32**, i32*** %29, align 8
  %31 = load i32, i32* %9, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32*, i32** %30, i64 %32
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* %13, align 4
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* %9, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = mul nsw i32 %35, %42
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %34, i64 %44
  %46 = load i32, i32* %12, align 4
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %9, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = mul nsw i32 %46, %53
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %45, i64 %55
  store i32* %56, i32** %15, align 8
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 1
  %59 = load i32**, i32*** %58, align 8
  %60 = load i32, i32* %9, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32*, i32** %59, i64 %61
  %63 = load i32*, i32** %62, align 8
  %64 = load i32*, i32** %8, align 8
  %65 = load i32, i32* %9, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %63, i64 %69
  %71 = load i32, i32* %13, align 4
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* %9, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = mul nsw i32 %71, %78
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 3
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = mul nsw i32 %79, %83
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %70, i64 %85
  store i32* %86, i32** %16, align 8
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 1
  %89 = load i32*, i32** %88, align 8
  %90 = load i32, i32* %9, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  %93 = load i32, i32* %92, align 4
  switch i32 %93, label %255 [
    i32 1, label %94
    i32 2, label %120
    i32 3, label %147
    i32 4, label %174
    i32 6, label %201
    i32 8, label %228
  ]

94:                                               ; preds = %27
  store i32 0, i32* %14, align 4
  br label %95

95:                                               ; preds = %116, %94
  %96 = load i32, i32* %14, align 4
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 2
  %99 = load i32*, i32** %98, align 8
  %100 = load i32, i32* %9, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %99, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = icmp slt i32 %96, %103
  br i1 %104, label %105, label %119

105:                                              ; preds = %95
  %106 = load i32*, i32** %15, align 8
  %107 = load i32, i32* %14, align 4
  %108 = mul nsw i32 %107, 2
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %106, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = load i32*, i32** %16, align 8
  %113 = load i32, i32* %14, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  store i32 %111, i32* %115, align 4
  br label %116

116:                                              ; preds = %105
  %117 = load i32, i32* %14, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %14, align 4
  br label %95

119:                                              ; preds = %95
  br label %255

120:                                              ; preds = %27
  store i32 0, i32* %14, align 4
  br label %121

121:                                              ; preds = %143, %120
  %122 = load i32, i32* %14, align 4
  %123 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 2
  %125 = load i32*, i32** %124, align 8
  %126 = load i32, i32* %9, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %125, i64 %127
  %129 = load i32, i32* %128, align 4
  %130 = icmp slt i32 %122, %129
  br i1 %130, label %131, label %146

131:                                              ; preds = %121
  %132 = load i32*, i32** %16, align 8
  %133 = load i32, i32* %14, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i32, i32* %132, i64 %134
  %136 = load i32*, i32** %15, align 8
  %137 = load i32, i32* %14, align 4
  %138 = mul nsw i32 %137, 2
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32, i32* %136, i64 %139
  %141 = call i32 @AV_RN16(i32* %140)
  %142 = call i32 @AV_WN16(i32* %135, i32 %141)
  br label %143

143:                                              ; preds = %131
  %144 = load i32, i32* %14, align 4
  %145 = add nsw i32 %144, 2
  store i32 %145, i32* %14, align 4
  br label %121

146:                                              ; preds = %121
  br label %255

147:                                              ; preds = %27
  store i32 0, i32* %14, align 4
  br label %148

148:                                              ; preds = %170, %147
  %149 = load i32, i32* %14, align 4
  %150 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %151 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %150, i32 0, i32 2
  %152 = load i32*, i32** %151, align 8
  %153 = load i32, i32* %9, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i32, i32* %152, i64 %154
  %156 = load i32, i32* %155, align 4
  %157 = icmp slt i32 %149, %156
  br i1 %157, label %158, label %173

158:                                              ; preds = %148
  %159 = load i32*, i32** %16, align 8
  %160 = load i32, i32* %14, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i32, i32* %159, i64 %161
  %163 = load i32*, i32** %15, align 8
  %164 = load i32, i32* %14, align 4
  %165 = mul nsw i32 %164, 2
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i32, i32* %163, i64 %166
  %168 = call i32 @AV_RB24(i32* %167)
  %169 = call i32 @AV_WB24(i32* %162, i32 %168)
  br label %170

170:                                              ; preds = %158
  %171 = load i32, i32* %14, align 4
  %172 = add nsw i32 %171, 3
  store i32 %172, i32* %14, align 4
  br label %148

173:                                              ; preds = %148
  br label %255

174:                                              ; preds = %27
  store i32 0, i32* %14, align 4
  br label %175

175:                                              ; preds = %197, %174
  %176 = load i32, i32* %14, align 4
  %177 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %178 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %177, i32 0, i32 2
  %179 = load i32*, i32** %178, align 8
  %180 = load i32, i32* %9, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i32, i32* %179, i64 %181
  %183 = load i32, i32* %182, align 4
  %184 = icmp slt i32 %176, %183
  br i1 %184, label %185, label %200

185:                                              ; preds = %175
  %186 = load i32*, i32** %16, align 8
  %187 = load i32, i32* %14, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i32, i32* %186, i64 %188
  %190 = load i32*, i32** %15, align 8
  %191 = load i32, i32* %14, align 4
  %192 = mul nsw i32 %191, 2
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i32, i32* %190, i64 %193
  %195 = call i32 @AV_RN32(i32* %194)
  %196 = call i32 @AV_WN32(i32* %189, i32 %195)
  br label %197

197:                                              ; preds = %185
  %198 = load i32, i32* %14, align 4
  %199 = add nsw i32 %198, 4
  store i32 %199, i32* %14, align 4
  br label %175

200:                                              ; preds = %175
  br label %255

201:                                              ; preds = %27
  store i32 0, i32* %14, align 4
  br label %202

202:                                              ; preds = %224, %201
  %203 = load i32, i32* %14, align 4
  %204 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %205 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %204, i32 0, i32 2
  %206 = load i32*, i32** %205, align 8
  %207 = load i32, i32* %9, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds i32, i32* %206, i64 %208
  %210 = load i32, i32* %209, align 4
  %211 = icmp slt i32 %203, %210
  br i1 %211, label %212, label %227

212:                                              ; preds = %202
  %213 = load i32*, i32** %16, align 8
  %214 = load i32, i32* %14, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds i32, i32* %213, i64 %215
  %217 = load i32*, i32** %15, align 8
  %218 = load i32, i32* %14, align 4
  %219 = mul nsw i32 %218, 2
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds i32, i32* %217, i64 %220
  %222 = call i32 @AV_RB48(i32* %221)
  %223 = call i32 @AV_WB48(i32* %216, i32 %222)
  br label %224

224:                                              ; preds = %212
  %225 = load i32, i32* %14, align 4
  %226 = add nsw i32 %225, 6
  store i32 %226, i32* %14, align 4
  br label %202

227:                                              ; preds = %202
  br label %255

228:                                              ; preds = %27
  store i32 0, i32* %14, align 4
  br label %229

229:                                              ; preds = %251, %228
  %230 = load i32, i32* %14, align 4
  %231 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %232 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %231, i32 0, i32 2
  %233 = load i32*, i32** %232, align 8
  %234 = load i32, i32* %9, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds i32, i32* %233, i64 %235
  %237 = load i32, i32* %236, align 4
  %238 = icmp slt i32 %230, %237
  br i1 %238, label %239, label %254

239:                                              ; preds = %229
  %240 = load i32*, i32** %16, align 8
  %241 = load i32, i32* %14, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds i32, i32* %240, i64 %242
  %244 = load i32*, i32** %15, align 8
  %245 = load i32, i32* %14, align 4
  %246 = mul nsw i32 %245, 2
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds i32, i32* %244, i64 %247
  %249 = call i32 @AV_RN64(i32* %248)
  %250 = call i32 @AV_WN64(i32* %243, i32 %249)
  br label %251

251:                                              ; preds = %239
  %252 = load i32, i32* %14, align 4
  %253 = add nsw i32 %252, 8
  store i32 %253, i32* %14, align 4
  br label %229

254:                                              ; preds = %229
  br label %255

255:                                              ; preds = %27, %254, %227, %200, %173, %146, %119
  br label %256

256:                                              ; preds = %255
  %257 = load i32, i32* %13, align 4
  %258 = add nsw i32 %257, 1
  store i32 %258, i32* %13, align 4
  br label %17

259:                                              ; preds = %17
  ret void
}

declare dso_local i32 @AV_WN16(i32*, i32) #1

declare dso_local i32 @AV_RN16(i32*) #1

declare dso_local i32 @AV_WB24(i32*, i32) #1

declare dso_local i32 @AV_RB24(i32*) #1

declare dso_local i32 @AV_WN32(i32*, i32) #1

declare dso_local i32 @AV_RN32(i32*) #1

declare dso_local i32 @AV_WB48(i32*, i32) #1

declare dso_local i32 @AV_RB48(i32*) #1

declare dso_local i32 @AV_WN64(i32*, i32) #1

declare dso_local i32 @AV_RN64(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
