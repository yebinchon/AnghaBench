; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_tiffenc.c_pack_yuv.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_tiffenc.c_pack_yuv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32*, i32 }
%struct.TYPE_6__ = type { i32*, i32** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, %struct.TYPE_6__*, i32*, i32)* @pack_yuv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pack_yuv(%struct.TYPE_5__* %0, %struct.TYPE_6__* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = sub nsw i32 %17, 1
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  %23 = load i32, i32* %22, align 4
  %24 = sdiv i32 %18, %23
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %12, align 4
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 1
  %28 = load i32**, i32*** %27, align 8
  %29 = getelementptr inbounds i32*, i32** %28, i64 1
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* %8, align 4
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 1
  %36 = load i32, i32* %35, align 4
  %37 = sdiv i32 %31, %36
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 1
  %42 = load i32, i32* %41, align 4
  %43 = mul nsw i32 %37, %42
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %30, i64 %44
  store i32* %45, i32** %13, align 8
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 1
  %48 = load i32**, i32*** %47, align 8
  %49 = getelementptr inbounds i32*, i32** %48, i64 2
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* %8, align 4
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 1
  %56 = load i32, i32* %55, align 4
  %57 = sdiv i32 %51, %56
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 2
  %62 = load i32, i32* %61, align 4
  %63 = mul nsw i32 %57, %62
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %50, i64 %64
  store i32* %65, i32** %14, align 8
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 1
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 0
  %73 = load i32, i32* %72, align 4
  %74 = srem i32 %68, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %87, label %76

76:                                               ; preds = %4
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 1
  %82 = load i32*, i32** %81, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 1
  %84 = load i32, i32* %83, align 4
  %85 = srem i32 %79, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %172

87:                                               ; preds = %76, %4
  store i32 0, i32* %9, align 4
  br label %88

88:                                               ; preds = %168, %87
  %89 = load i32, i32* %9, align 4
  %90 = load i32, i32* %12, align 4
  %91 = icmp slt i32 %89, %90
  br i1 %91, label %92, label %171

92:                                               ; preds = %88
  store i32 0, i32* %10, align 4
  br label %93

93:                                               ; preds = %154, %92
  %94 = load i32, i32* %10, align 4
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 1
  %97 = load i32*, i32** %96, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 1
  %99 = load i32, i32* %98, align 4
  %100 = icmp slt i32 %94, %99
  br i1 %100, label %101, label %157

101:                                              ; preds = %93
  store i32 0, i32* %11, align 4
  br label %102

102:                                              ; preds = %150, %101
  %103 = load i32, i32* %11, align 4
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 1
  %106 = load i32*, i32** %105, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 0
  %108 = load i32, i32* %107, align 4
  %109 = icmp slt i32 %103, %108
  br i1 %109, label %110, label %153

110:                                              ; preds = %102
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 1
  %113 = load i32**, i32*** %112, align 8
  %114 = getelementptr inbounds i32*, i32** %113, i64 0
  %115 = load i32*, i32** %114, align 8
  %116 = load i32, i32* %8, align 4
  %117 = load i32, i32* %10, align 4
  %118 = add nsw i32 %116, %117
  %119 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 8
  %122 = sub nsw i32 %121, 1
  %123 = call i64 @FFMIN(i32 %118, i32 %122)
  %124 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 0
  %126 = load i32*, i32** %125, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 0
  %128 = load i32, i32* %127, align 4
  %129 = sext i32 %128 to i64
  %130 = mul i64 %123, %129
  %131 = load i32, i32* %9, align 4
  %132 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i32 0, i32 1
  %134 = load i32*, i32** %133, align 8
  %135 = getelementptr inbounds i32, i32* %134, i64 0
  %136 = load i32, i32* %135, align 4
  %137 = mul nsw i32 %131, %136
  %138 = load i32, i32* %11, align 4
  %139 = add nsw i32 %137, %138
  %140 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %141 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = sub nsw i32 %142, 1
  %144 = call i64 @FFMIN(i32 %139, i32 %143)
  %145 = add i64 %130, %144
  %146 = getelementptr inbounds i32, i32* %115, i64 %145
  %147 = load i32, i32* %146, align 4
  %148 = load i32*, i32** %7, align 8
  %149 = getelementptr inbounds i32, i32* %148, i32 1
  store i32* %149, i32** %7, align 8
  store i32 %147, i32* %148, align 4
  br label %150

150:                                              ; preds = %110
  %151 = load i32, i32* %11, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %11, align 4
  br label %102

153:                                              ; preds = %102
  br label %154

154:                                              ; preds = %153
  %155 = load i32, i32* %10, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %10, align 4
  br label %93

157:                                              ; preds = %93
  %158 = load i32*, i32** %13, align 8
  %159 = getelementptr inbounds i32, i32* %158, i32 1
  store i32* %159, i32** %13, align 8
  %160 = load i32, i32* %158, align 4
  %161 = load i32*, i32** %7, align 8
  %162 = getelementptr inbounds i32, i32* %161, i32 1
  store i32* %162, i32** %7, align 8
  store i32 %160, i32* %161, align 4
  %163 = load i32*, i32** %14, align 8
  %164 = getelementptr inbounds i32, i32* %163, i32 1
  store i32* %164, i32** %14, align 8
  %165 = load i32, i32* %163, align 4
  %166 = load i32*, i32** %7, align 8
  %167 = getelementptr inbounds i32, i32* %166, i32 1
  store i32* %167, i32** %7, align 8
  store i32 %165, i32* %166, align 4
  br label %168

168:                                              ; preds = %157
  %169 = load i32, i32* %9, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %9, align 4
  br label %88

171:                                              ; preds = %88
  br label %247

172:                                              ; preds = %76
  store i32 0, i32* %9, align 4
  br label %173

173:                                              ; preds = %243, %172
  %174 = load i32, i32* %9, align 4
  %175 = load i32, i32* %12, align 4
  %176 = icmp slt i32 %174, %175
  br i1 %176, label %177, label %246

177:                                              ; preds = %173
  store i32 0, i32* %10, align 4
  br label %178

178:                                              ; preds = %229, %177
  %179 = load i32, i32* %10, align 4
  %180 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %181 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %180, i32 0, i32 1
  %182 = load i32*, i32** %181, align 8
  %183 = getelementptr inbounds i32, i32* %182, i64 1
  %184 = load i32, i32* %183, align 4
  %185 = icmp slt i32 %179, %184
  br i1 %185, label %186, label %232

186:                                              ; preds = %178
  store i32 0, i32* %11, align 4
  br label %187

187:                                              ; preds = %225, %186
  %188 = load i32, i32* %11, align 4
  %189 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %190 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %189, i32 0, i32 1
  %191 = load i32*, i32** %190, align 8
  %192 = getelementptr inbounds i32, i32* %191, i64 0
  %193 = load i32, i32* %192, align 4
  %194 = icmp slt i32 %188, %193
  br i1 %194, label %195, label %228

195:                                              ; preds = %187
  %196 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %197 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %196, i32 0, i32 1
  %198 = load i32**, i32*** %197, align 8
  %199 = getelementptr inbounds i32*, i32** %198, i64 0
  %200 = load i32*, i32** %199, align 8
  %201 = load i32, i32* %8, align 4
  %202 = load i32, i32* %10, align 4
  %203 = add nsw i32 %201, %202
  %204 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %205 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %204, i32 0, i32 0
  %206 = load i32*, i32** %205, align 8
  %207 = getelementptr inbounds i32, i32* %206, i64 0
  %208 = load i32, i32* %207, align 4
  %209 = mul nsw i32 %203, %208
  %210 = load i32, i32* %9, align 4
  %211 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %212 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %211, i32 0, i32 1
  %213 = load i32*, i32** %212, align 8
  %214 = getelementptr inbounds i32, i32* %213, i64 0
  %215 = load i32, i32* %214, align 4
  %216 = mul nsw i32 %210, %215
  %217 = add nsw i32 %209, %216
  %218 = load i32, i32* %11, align 4
  %219 = add nsw i32 %217, %218
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds i32, i32* %200, i64 %220
  %222 = load i32, i32* %221, align 4
  %223 = load i32*, i32** %7, align 8
  %224 = getelementptr inbounds i32, i32* %223, i32 1
  store i32* %224, i32** %7, align 8
  store i32 %222, i32* %223, align 4
  br label %225

225:                                              ; preds = %195
  %226 = load i32, i32* %11, align 4
  %227 = add nsw i32 %226, 1
  store i32 %227, i32* %11, align 4
  br label %187

228:                                              ; preds = %187
  br label %229

229:                                              ; preds = %228
  %230 = load i32, i32* %10, align 4
  %231 = add nsw i32 %230, 1
  store i32 %231, i32* %10, align 4
  br label %178

232:                                              ; preds = %178
  %233 = load i32*, i32** %13, align 8
  %234 = getelementptr inbounds i32, i32* %233, i32 1
  store i32* %234, i32** %13, align 8
  %235 = load i32, i32* %233, align 4
  %236 = load i32*, i32** %7, align 8
  %237 = getelementptr inbounds i32, i32* %236, i32 1
  store i32* %237, i32** %7, align 8
  store i32 %235, i32* %236, align 4
  %238 = load i32*, i32** %14, align 8
  %239 = getelementptr inbounds i32, i32* %238, i32 1
  store i32* %239, i32** %14, align 8
  %240 = load i32, i32* %238, align 4
  %241 = load i32*, i32** %7, align 8
  %242 = getelementptr inbounds i32, i32* %241, i32 1
  store i32* %242, i32** %7, align 8
  store i32 %240, i32* %241, align 4
  br label %243

243:                                              ; preds = %232
  %244 = load i32, i32* %9, align 4
  %245 = add nsw i32 %244, 1
  store i32 %245, i32* %9, align 4
  br label %173

246:                                              ; preds = %173
  br label %247

247:                                              ; preds = %246, %171
  ret void
}

declare dso_local i64 @FFMIN(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
