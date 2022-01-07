; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_cover_rect.c_blur.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_cover_rect.c_blur.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32*, i32**, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, %struct.TYPE_6__*, i32, i32)* @blur to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @blur(%struct.TYPE_5__* %0, %struct.TYPE_6__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %11, align 4
  br label %26

26:                                               ; preds = %237, %4
  %27 = load i32, i32* %11, align 4
  %28 = icmp slt i32 %27, 3
  br i1 %28, label %29, label %240

29:                                               ; preds = %26
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* %11, align 4
  %32 = icmp ne i32 %31, 0
  %33 = xor i1 %32, true
  %34 = xor i1 %33, true
  %35 = zext i1 %34 to i32
  %36 = ashr i32 %30, %35
  store i32 %36, i32* %12, align 4
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* %11, align 4
  %39 = icmp ne i32 %38, 0
  %40 = xor i1 %39, true
  %41 = xor i1 %40, true
  %42 = zext i1 %41 to i32
  %43 = ashr i32 %37, %42
  store i32 %43, i32* %13, align 4
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %11, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %14, align 4
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 1
  %53 = load i32**, i32*** %52, align 8
  %54 = load i32, i32* %11, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32*, i32** %53, i64 %55
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %12, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %13, align 4
  %62 = load i32, i32* %14, align 4
  %63 = mul nsw i32 %61, %62
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %60, i64 %64
  store i32* %65, i32** %15, align 8
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %11, align 4
  %70 = icmp ne i32 %69, 0
  %71 = xor i1 %70, true
  %72 = xor i1 %71, true
  %73 = zext i1 %72 to i32
  %74 = call i32 @AV_CEIL_RSHIFT(i32 %68, i32 %73)
  store i32 %74, i32* %16, align 4
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %11, align 4
  %79 = icmp ne i32 %78, 0
  %80 = xor i1 %79, true
  %81 = xor i1 %80, true
  %82 = zext i1 %81 to i32
  %83 = call i32 @AV_CEIL_RSHIFT(i32 %77, i32 %82)
  store i32 %83, i32* %17, align 4
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* %11, align 4
  %88 = icmp ne i32 %87, 0
  %89 = xor i1 %88, true
  %90 = xor i1 %89, true
  %91 = zext i1 %90 to i32
  %92 = call i32 @AV_CEIL_RSHIFT(i32 %86, i32 %91)
  store i32 %92, i32* %18, align 4
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* %11, align 4
  %97 = icmp ne i32 %96, 0
  %98 = xor i1 %97, true
  %99 = xor i1 %98, true
  %100 = zext i1 %99 to i32
  %101 = call i32 @AV_CEIL_RSHIFT(i32 %95, i32 %100)
  store i32 %101, i32* %19, align 4
  store i32 0, i32* %10, align 4
  br label %102

102:                                              ; preds = %233, %29
  %103 = load i32, i32* %10, align 4
  %104 = load i32, i32* %17, align 4
  %105 = icmp slt i32 %103, %104
  br i1 %105, label %106, label %236

106:                                              ; preds = %102
  store i32 0, i32* %9, align 4
  br label %107

107:                                              ; preds = %229, %106
  %108 = load i32, i32* %9, align 4
  %109 = load i32, i32* %16, align 4
  %110 = icmp slt i32 %108, %109
  br i1 %110, label %111, label %232

111:                                              ; preds = %107
  store i32 0, i32* %20, align 4
  store i32 0, i32* %21, align 4
  %112 = load i32, i32* %12, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %133

114:                                              ; preds = %111
  %115 = load i32, i32* %9, align 4
  %116 = add nsw i32 %115, 1
  %117 = sdiv i32 65536, %116
  store i32 %117, i32* %22, align 4
  %118 = load i32*, i32** %15, align 8
  %119 = load i32, i32* %10, align 4
  %120 = load i32, i32* %14, align 4
  %121 = mul nsw i32 %119, %120
  %122 = add nsw i32 -1, %121
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %118, i64 %123
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* %22, align 4
  %127 = mul nsw i32 %125, %126
  %128 = load i32, i32* %21, align 4
  %129 = add nsw i32 %128, %127
  store i32 %129, i32* %21, align 4
  %130 = load i32, i32* %22, align 4
  %131 = load i32, i32* %20, align 4
  %132 = add nsw i32 %131, %130
  store i32 %132, i32* %20, align 4
  br label %133

133:                                              ; preds = %114, %111
  %134 = load i32, i32* %13, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %154

136:                                              ; preds = %133
  %137 = load i32, i32* %10, align 4
  %138 = add nsw i32 %137, 1
  %139 = sdiv i32 65536, %138
  store i32 %139, i32* %23, align 4
  %140 = load i32*, i32** %15, align 8
  %141 = load i32, i32* %9, align 4
  %142 = load i32, i32* %14, align 4
  %143 = sub nsw i32 %141, %142
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i32, i32* %140, i64 %144
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* %23, align 4
  %148 = mul nsw i32 %146, %147
  %149 = load i32, i32* %21, align 4
  %150 = add nsw i32 %149, %148
  store i32 %150, i32* %21, align 4
  %151 = load i32, i32* %23, align 4
  %152 = load i32, i32* %20, align 4
  %153 = add nsw i32 %152, %151
  store i32 %153, i32* %20, align 4
  br label %154

154:                                              ; preds = %136, %133
  %155 = load i32, i32* %12, align 4
  %156 = load i32, i32* %16, align 4
  %157 = add nsw i32 %155, %156
  %158 = load i32, i32* %18, align 4
  %159 = icmp slt i32 %157, %158
  br i1 %159, label %160, label %181

160:                                              ; preds = %154
  %161 = load i32, i32* %16, align 4
  %162 = load i32, i32* %9, align 4
  %163 = sub nsw i32 %161, %162
  %164 = sdiv i32 65536, %163
  store i32 %164, i32* %24, align 4
  %165 = load i32*, i32** %15, align 8
  %166 = load i32, i32* %16, align 4
  %167 = load i32, i32* %10, align 4
  %168 = load i32, i32* %14, align 4
  %169 = mul nsw i32 %167, %168
  %170 = add nsw i32 %166, %169
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i32, i32* %165, i64 %171
  %173 = load i32, i32* %172, align 4
  %174 = load i32, i32* %24, align 4
  %175 = mul nsw i32 %173, %174
  %176 = load i32, i32* %21, align 4
  %177 = add nsw i32 %176, %175
  store i32 %177, i32* %21, align 4
  %178 = load i32, i32* %24, align 4
  %179 = load i32, i32* %20, align 4
  %180 = add nsw i32 %179, %178
  store i32 %180, i32* %20, align 4
  br label %181

181:                                              ; preds = %160, %154
  %182 = load i32, i32* %13, align 4
  %183 = load i32, i32* %17, align 4
  %184 = add nsw i32 %182, %183
  %185 = load i32, i32* %19, align 4
  %186 = icmp slt i32 %184, %185
  br i1 %186, label %187, label %208

187:                                              ; preds = %181
  %188 = load i32, i32* %17, align 4
  %189 = load i32, i32* %10, align 4
  %190 = sub nsw i32 %188, %189
  %191 = sdiv i32 65536, %190
  store i32 %191, i32* %25, align 4
  %192 = load i32*, i32** %15, align 8
  %193 = load i32, i32* %9, align 4
  %194 = load i32, i32* %17, align 4
  %195 = load i32, i32* %14, align 4
  %196 = mul nsw i32 %194, %195
  %197 = add nsw i32 %193, %196
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds i32, i32* %192, i64 %198
  %200 = load i32, i32* %199, align 4
  %201 = load i32, i32* %25, align 4
  %202 = mul nsw i32 %200, %201
  %203 = load i32, i32* %21, align 4
  %204 = add nsw i32 %203, %202
  store i32 %204, i32* %21, align 4
  %205 = load i32, i32* %25, align 4
  %206 = load i32, i32* %20, align 4
  %207 = add nsw i32 %206, %205
  store i32 %207, i32* %20, align 4
  br label %208

208:                                              ; preds = %187, %181
  %209 = load i32, i32* %20, align 4
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %218

211:                                              ; preds = %208
  %212 = load i32, i32* %21, align 4
  %213 = load i32, i32* %20, align 4
  %214 = ashr i32 %213, 1
  %215 = add nsw i32 %212, %214
  %216 = load i32, i32* %20, align 4
  %217 = sdiv i32 %215, %216
  br label %219

218:                                              ; preds = %208
  br label %219

219:                                              ; preds = %218, %211
  %220 = phi i32 [ %217, %211 ], [ 0, %218 ]
  %221 = load i32*, i32** %15, align 8
  %222 = load i32, i32* %9, align 4
  %223 = load i32, i32* %10, align 4
  %224 = load i32, i32* %14, align 4
  %225 = mul nsw i32 %223, %224
  %226 = add nsw i32 %222, %225
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds i32, i32* %221, i64 %227
  store i32 %220, i32* %228, align 4
  br label %229

229:                                              ; preds = %219
  %230 = load i32, i32* %9, align 4
  %231 = add nsw i32 %230, 1
  store i32 %231, i32* %9, align 4
  br label %107

232:                                              ; preds = %107
  br label %233

233:                                              ; preds = %232
  %234 = load i32, i32* %10, align 4
  %235 = add nsw i32 %234, 1
  store i32 %235, i32* %10, align 4
  br label %102

236:                                              ; preds = %102
  br label %237

237:                                              ; preds = %236
  %238 = load i32, i32* %11, align 4
  %239 = add nsw i32 %238, 1
  store i32 %239, i32* %11, align 4
  br label %26

240:                                              ; preds = %26
  ret void
}

declare dso_local i32 @AV_CEIL_RSHIFT(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
