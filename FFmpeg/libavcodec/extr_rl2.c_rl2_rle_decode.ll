; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_rl2.c_rl2_rle_decode.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_rl2.c_rl2_rle_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i32*, i32, i32*, i32, i32)* @rl2_rle_decode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rl2_rle_decode(%struct.TYPE_5__* %0, i32* %1, i32 %2, i32* %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %23 = load i32, i32* %12, align 4
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = srem i32 %23, %28
  store i32 %29, i32* %13, align 4
  %30 = load i32, i32* %12, align 4
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 1
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = sdiv i32 %30, %35
  store i32 %36, i32* %14, align 4
  %37 = load i32, i32* %11, align 4
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = sub nsw i32 %37, %42
  store i32 %43, i32* %15, align 4
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  store i32* %46, i32** %17, align 8
  %47 = load i32*, i32** %8, align 8
  %48 = load i32, i32* %9, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  store i32* %50, i32** %18, align 8
  %51 = load i32*, i32** %10, align 8
  %52 = load i32, i32* %11, align 4
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 1
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = mul nsw i32 %52, %57
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %51, i64 %59
  store i32* %60, i32** %19, align 8
  store i32 0, i32* %16, align 4
  br label %61

61:                                               ; preds = %92, %6
  %62 = load i32, i32* %16, align 4
  %63 = load i32, i32* %14, align 4
  %64 = icmp sle i32 %62, %63
  br i1 %64, label %65, label %95

65:                                               ; preds = %61
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = icmp ne i32* %68, null
  br i1 %69, label %70, label %79

70:                                               ; preds = %65
  %71 = load i32*, i32** %10, align 8
  %72 = load i32*, i32** %17, align 8
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 1
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @memcpy(i32* %71, i32* %72, i32 %77)
  br label %79

79:                                               ; preds = %70, %65
  %80 = load i32, i32* %11, align 4
  %81 = load i32*, i32** %10, align 8
  %82 = sext i32 %80 to i64
  %83 = getelementptr inbounds i32, i32* %81, i64 %82
  store i32* %83, i32** %10, align 8
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 1
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32*, i32** %17, align 8
  %90 = sext i32 %88 to i64
  %91 = getelementptr inbounds i32, i32* %89, i64 %90
  store i32* %91, i32** %17, align 8
  br label %92

92:                                               ; preds = %79
  %93 = load i32, i32* %16, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %16, align 4
  br label %61

95:                                               ; preds = %61
  %96 = load i32, i32* %13, align 4
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 1
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = sub nsw i32 %96, %101
  %103 = load i32*, i32** %17, align 8
  %104 = sext i32 %102 to i64
  %105 = getelementptr inbounds i32, i32* %103, i64 %104
  store i32* %105, i32** %17, align 8
  %106 = load i32*, i32** %10, align 8
  %107 = load i32, i32* %15, align 4
  %108 = sext i32 %107 to i64
  %109 = sub i64 0, %108
  %110 = getelementptr inbounds i32, i32* %106, i64 %109
  store i32* %110, i32** %20, align 8
  %111 = load i32, i32* %13, align 4
  %112 = load i32, i32* %11, align 4
  %113 = sub nsw i32 %111, %112
  %114 = load i32*, i32** %10, align 8
  %115 = sext i32 %113 to i64
  %116 = getelementptr inbounds i32, i32* %114, i64 %115
  store i32* %116, i32** %10, align 8
  br label %117

117:                                              ; preds = %205, %95
  %118 = load i32*, i32** %8, align 8
  %119 = load i32*, i32** %18, align 8
  %120 = icmp ult i32* %118, %119
  br i1 %120, label %121, label %206

121:                                              ; preds = %117
  %122 = load i32*, i32** %8, align 8
  %123 = getelementptr inbounds i32, i32* %122, i32 1
  store i32* %123, i32** %8, align 8
  %124 = load i32, i32* %122, align 4
  store i32 %124, i32* %21, align 4
  store i32 1, i32* %22, align 4
  %125 = load i32, i32* %21, align 4
  %126 = icmp sge i32 %125, 128
  br i1 %126, label %127, label %140

127:                                              ; preds = %121
  %128 = load i32*, i32** %8, align 8
  %129 = load i32*, i32** %18, align 8
  %130 = icmp uge i32* %128, %129
  br i1 %130, label %131, label %132

131:                                              ; preds = %127
  br label %206

132:                                              ; preds = %127
  %133 = load i32*, i32** %8, align 8
  %134 = getelementptr inbounds i32, i32* %133, i32 1
  store i32* %134, i32** %8, align 8
  %135 = load i32, i32* %133, align 4
  store i32 %135, i32* %22, align 4
  %136 = load i32, i32* %22, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %139, label %138

138:                                              ; preds = %132
  br label %206

139:                                              ; preds = %132
  br label %140

140:                                              ; preds = %139, %121
  %141 = load i32, i32* %22, align 4
  %142 = sext i32 %141 to i64
  %143 = load i32*, i32** %19, align 8
  %144 = load i32*, i32** %10, align 8
  %145 = ptrtoint i32* %143 to i64
  %146 = ptrtoint i32* %144 to i64
  %147 = sub i64 %145, %146
  %148 = sdiv exact i64 %147, 4
  %149 = icmp sge i64 %142, %148
  br i1 %149, label %150, label %151

150:                                              ; preds = %140
  br label %206

151:                                              ; preds = %140
  %152 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %153 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %152, i32 0, i32 0
  %154 = load i32*, i32** %153, align 8
  %155 = icmp ne i32* %154, null
  br i1 %155, label %156, label %159

156:                                              ; preds = %151
  %157 = load i32, i32* %21, align 4
  %158 = or i32 %157, 128
  store i32 %158, i32* %21, align 4
  br label %162

159:                                              ; preds = %151
  %160 = load i32, i32* %21, align 4
  %161 = and i32 %160, -129
  store i32 %161, i32* %21, align 4
  br label %162

162:                                              ; preds = %159, %156
  br label %163

163:                                              ; preds = %204, %162
  %164 = load i32, i32* %22, align 4
  %165 = add nsw i32 %164, -1
  store i32 %165, i32* %22, align 4
  %166 = icmp ne i32 %164, 0
  br i1 %166, label %167, label %205

167:                                              ; preds = %163
  %168 = load i32, i32* %21, align 4
  %169 = icmp eq i32 %168, 128
  br i1 %169, label %170, label %173

170:                                              ; preds = %167
  %171 = load i32*, i32** %17, align 8
  %172 = load i32, i32* %171, align 4
  br label %175

173:                                              ; preds = %167
  %174 = load i32, i32* %21, align 4
  br label %175

175:                                              ; preds = %173, %170
  %176 = phi i32 [ %172, %170 ], [ %174, %173 ]
  %177 = load i32*, i32** %10, align 8
  %178 = getelementptr inbounds i32, i32* %177, i32 1
  store i32* %178, i32** %10, align 8
  store i32 %176, i32* %177, align 4
  %179 = load i32*, i32** %17, align 8
  %180 = getelementptr inbounds i32, i32* %179, i32 1
  store i32* %180, i32** %17, align 8
  %181 = load i32*, i32** %10, align 8
  %182 = load i32*, i32** %20, align 8
  %183 = icmp eq i32* %181, %182
  br i1 %183, label %184, label %204

184:                                              ; preds = %175
  %185 = load i32, i32* %15, align 4
  %186 = load i32*, i32** %10, align 8
  %187 = sext i32 %185 to i64
  %188 = getelementptr inbounds i32, i32* %186, i64 %187
  store i32* %188, i32** %10, align 8
  %189 = load i32, i32* %11, align 4
  %190 = load i32*, i32** %20, align 8
  %191 = sext i32 %189 to i64
  %192 = getelementptr inbounds i32, i32* %190, i64 %191
  store i32* %192, i32** %20, align 8
  %193 = load i32, i32* %22, align 4
  %194 = sext i32 %193 to i64
  %195 = load i32*, i32** %19, align 8
  %196 = load i32*, i32** %10, align 8
  %197 = ptrtoint i32* %195 to i64
  %198 = ptrtoint i32* %196 to i64
  %199 = sub i64 %197, %198
  %200 = sdiv exact i64 %199, 4
  %201 = icmp sge i64 %194, %200
  br i1 %201, label %202, label %203

202:                                              ; preds = %184
  br label %205

203:                                              ; preds = %184
  br label %204

204:                                              ; preds = %203, %175
  br label %163

205:                                              ; preds = %202, %163
  br label %117

206:                                              ; preds = %150, %138, %131, %117
  %207 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %208 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %207, i32 0, i32 0
  %209 = load i32*, i32** %208, align 8
  %210 = icmp ne i32* %209, null
  br i1 %210, label %211, label %244

211:                                              ; preds = %206
  br label %212

212:                                              ; preds = %216, %211
  %213 = load i32*, i32** %10, align 8
  %214 = load i32*, i32** %19, align 8
  %215 = icmp ult i32* %213, %214
  br i1 %215, label %216, label %243

216:                                              ; preds = %212
  %217 = load i32*, i32** %10, align 8
  %218 = load i32*, i32** %17, align 8
  %219 = load i32*, i32** %20, align 8
  %220 = load i32*, i32** %10, align 8
  %221 = ptrtoint i32* %219 to i64
  %222 = ptrtoint i32* %220 to i64
  %223 = sub i64 %221, %222
  %224 = sdiv exact i64 %223, 4
  %225 = trunc i64 %224 to i32
  %226 = call i32 @memcpy(i32* %217, i32* %218, i32 %225)
  %227 = load i32*, i32** %20, align 8
  %228 = load i32*, i32** %10, align 8
  %229 = ptrtoint i32* %227 to i64
  %230 = ptrtoint i32* %228 to i64
  %231 = sub i64 %229, %230
  %232 = sdiv exact i64 %231, 4
  %233 = load i32*, i32** %17, align 8
  %234 = getelementptr inbounds i32, i32* %233, i64 %232
  store i32* %234, i32** %17, align 8
  %235 = load i32*, i32** %20, align 8
  %236 = load i32, i32* %15, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds i32, i32* %235, i64 %237
  store i32* %238, i32** %10, align 8
  %239 = load i32, i32* %11, align 4
  %240 = load i32*, i32** %20, align 8
  %241 = sext i32 %239 to i64
  %242 = getelementptr inbounds i32, i32* %240, i64 %241
  store i32* %242, i32** %20, align 8
  br label %212

243:                                              ; preds = %212
  br label %244

244:                                              ; preds = %243, %206
  ret void
}

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
