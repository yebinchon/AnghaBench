; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_edgedetect.c_non_maximum_suppression.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_edgedetect.c_non_maximum_suppression.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32*, i32, i32*, i32, i32*, i32)* @non_maximum_suppression to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @non_maximum_suppression(i32 %0, i32 %1, i32* %2, i32 %3, i32* %4, i32 %5, i32* %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32 %0, i32* %9, align 4
  store i32 %1, i32* %10, align 4
  store i32* %2, i32** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32* %4, i32** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32* %6, i32** %15, align 8
  store i32 %7, i32* %16, align 4
  store i32 1, i32* %18, align 4
  br label %19

19:                                               ; preds = %237, %8
  %20 = load i32, i32* %18, align 4
  %21 = load i32, i32* %10, align 4
  %22 = sub nsw i32 %21, 1
  %23 = icmp slt i32 %20, %22
  br i1 %23, label %24, label %240

24:                                               ; preds = %19
  %25 = load i32, i32* %12, align 4
  %26 = load i32*, i32** %11, align 8
  %27 = sext i32 %25 to i64
  %28 = getelementptr inbounds i32, i32* %26, i64 %27
  store i32* %28, i32** %11, align 8
  %29 = load i32, i32* %14, align 4
  %30 = load i32*, i32** %13, align 8
  %31 = sext i32 %29 to i64
  %32 = getelementptr inbounds i32, i32* %30, i64 %31
  store i32* %32, i32** %13, align 8
  %33 = load i32, i32* %16, align 4
  %34 = load i32*, i32** %15, align 8
  %35 = sext i32 %33 to i64
  %36 = getelementptr inbounds i32, i32* %34, i64 %35
  store i32* %36, i32** %15, align 8
  store i32 1, i32* %17, align 4
  br label %37

37:                                               ; preds = %233, %24
  %38 = load i32, i32* %17, align 4
  %39 = load i32, i32* %9, align 4
  %40 = sub nsw i32 %39, 1
  %41 = icmp slt i32 %38, %40
  br i1 %41, label %42, label %236

42:                                               ; preds = %37
  %43 = load i32*, i32** %13, align 8
  %44 = load i32, i32* %17, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  switch i32 %47, label %232 [
    i32 130, label %48
    i32 131, label %94
    i32 129, label %140
    i32 128, label %186
  ]

48:                                               ; preds = %42
  br label %49

49:                                               ; preds = %48
  %50 = load i32*, i32** %15, align 8
  %51 = load i32, i32* %17, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = load i32*, i32** %15, align 8
  %56 = load i32, i32* %16, align 4
  %57 = mul nsw i32 1, %56
  %58 = load i32, i32* %17, align 4
  %59 = add nsw i32 %57, %58
  %60 = add nsw i32 %59, -1
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %55, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = icmp sgt i32 %54, %63
  br i1 %64, label %65, label %92

65:                                               ; preds = %49
  %66 = load i32*, i32** %15, align 8
  %67 = load i32, i32* %17, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = load i32*, i32** %15, align 8
  %72 = load i32, i32* %16, align 4
  %73 = mul nsw i32 -1, %72
  %74 = load i32, i32* %17, align 4
  %75 = add nsw i32 %73, %74
  %76 = add nsw i32 %75, 1
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %71, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = icmp sgt i32 %70, %79
  br i1 %80, label %81, label %92

81:                                               ; preds = %65
  %82 = load i32*, i32** %15, align 8
  %83 = load i32, i32* %17, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = call i32 (i32, ...) bitcast (i32 (...)* @av_clip_uint8 to i32 (i32, ...)*)(i32 %86)
  %88 = load i32*, i32** %11, align 8
  %89 = load i32, i32* %17, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  store i32 %87, i32* %91, align 4
  br label %92

92:                                               ; preds = %81, %65, %49
  br label %93

93:                                               ; preds = %92
  br label %232

94:                                               ; preds = %42
  br label %95

95:                                               ; preds = %94
  %96 = load i32*, i32** %15, align 8
  %97 = load i32, i32* %17, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %96, i64 %98
  %100 = load i32, i32* %99, align 4
  %101 = load i32*, i32** %15, align 8
  %102 = load i32, i32* %16, align 4
  %103 = mul nsw i32 -1, %102
  %104 = load i32, i32* %17, align 4
  %105 = add nsw i32 %103, %104
  %106 = add nsw i32 %105, -1
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %101, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = icmp sgt i32 %100, %109
  br i1 %110, label %111, label %138

111:                                              ; preds = %95
  %112 = load i32*, i32** %15, align 8
  %113 = load i32, i32* %17, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = load i32*, i32** %15, align 8
  %118 = load i32, i32* %16, align 4
  %119 = mul nsw i32 1, %118
  %120 = load i32, i32* %17, align 4
  %121 = add nsw i32 %119, %120
  %122 = add nsw i32 %121, 1
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %117, i64 %123
  %125 = load i32, i32* %124, align 4
  %126 = icmp sgt i32 %116, %125
  br i1 %126, label %127, label %138

127:                                              ; preds = %111
  %128 = load i32*, i32** %15, align 8
  %129 = load i32, i32* %17, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %128, i64 %130
  %132 = load i32, i32* %131, align 4
  %133 = call i32 (i32, ...) bitcast (i32 (...)* @av_clip_uint8 to i32 (i32, ...)*)(i32 %132)
  %134 = load i32*, i32** %11, align 8
  %135 = load i32, i32* %17, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32, i32* %134, i64 %136
  store i32 %133, i32* %137, align 4
  br label %138

138:                                              ; preds = %127, %111, %95
  br label %139

139:                                              ; preds = %138
  br label %232

140:                                              ; preds = %42
  br label %141

141:                                              ; preds = %140
  %142 = load i32*, i32** %15, align 8
  %143 = load i32, i32* %17, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i32, i32* %142, i64 %144
  %146 = load i32, i32* %145, align 4
  %147 = load i32*, i32** %15, align 8
  %148 = load i32, i32* %16, align 4
  %149 = mul nsw i32 0, %148
  %150 = load i32, i32* %17, align 4
  %151 = add nsw i32 %149, %150
  %152 = add nsw i32 %151, -1
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i32, i32* %147, i64 %153
  %155 = load i32, i32* %154, align 4
  %156 = icmp sgt i32 %146, %155
  br i1 %156, label %157, label %184

157:                                              ; preds = %141
  %158 = load i32*, i32** %15, align 8
  %159 = load i32, i32* %17, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i32, i32* %158, i64 %160
  %162 = load i32, i32* %161, align 4
  %163 = load i32*, i32** %15, align 8
  %164 = load i32, i32* %16, align 4
  %165 = mul nsw i32 0, %164
  %166 = load i32, i32* %17, align 4
  %167 = add nsw i32 %165, %166
  %168 = add nsw i32 %167, 1
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i32, i32* %163, i64 %169
  %171 = load i32, i32* %170, align 4
  %172 = icmp sgt i32 %162, %171
  br i1 %172, label %173, label %184

173:                                              ; preds = %157
  %174 = load i32*, i32** %15, align 8
  %175 = load i32, i32* %17, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i32, i32* %174, i64 %176
  %178 = load i32, i32* %177, align 4
  %179 = call i32 (i32, ...) bitcast (i32 (...)* @av_clip_uint8 to i32 (i32, ...)*)(i32 %178)
  %180 = load i32*, i32** %11, align 8
  %181 = load i32, i32* %17, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i32, i32* %180, i64 %182
  store i32 %179, i32* %183, align 4
  br label %184

184:                                              ; preds = %173, %157, %141
  br label %185

185:                                              ; preds = %184
  br label %232

186:                                              ; preds = %42
  br label %187

187:                                              ; preds = %186
  %188 = load i32*, i32** %15, align 8
  %189 = load i32, i32* %17, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i32, i32* %188, i64 %190
  %192 = load i32, i32* %191, align 4
  %193 = load i32*, i32** %15, align 8
  %194 = load i32, i32* %16, align 4
  %195 = mul nsw i32 -1, %194
  %196 = load i32, i32* %17, align 4
  %197 = add nsw i32 %195, %196
  %198 = add nsw i32 %197, 0
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds i32, i32* %193, i64 %199
  %201 = load i32, i32* %200, align 4
  %202 = icmp sgt i32 %192, %201
  br i1 %202, label %203, label %230

203:                                              ; preds = %187
  %204 = load i32*, i32** %15, align 8
  %205 = load i32, i32* %17, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds i32, i32* %204, i64 %206
  %208 = load i32, i32* %207, align 4
  %209 = load i32*, i32** %15, align 8
  %210 = load i32, i32* %16, align 4
  %211 = mul nsw i32 1, %210
  %212 = load i32, i32* %17, align 4
  %213 = add nsw i32 %211, %212
  %214 = add nsw i32 %213, 0
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds i32, i32* %209, i64 %215
  %217 = load i32, i32* %216, align 4
  %218 = icmp sgt i32 %208, %217
  br i1 %218, label %219, label %230

219:                                              ; preds = %203
  %220 = load i32*, i32** %15, align 8
  %221 = load i32, i32* %17, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds i32, i32* %220, i64 %222
  %224 = load i32, i32* %223, align 4
  %225 = call i32 (i32, ...) bitcast (i32 (...)* @av_clip_uint8 to i32 (i32, ...)*)(i32 %224)
  %226 = load i32*, i32** %11, align 8
  %227 = load i32, i32* %17, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds i32, i32* %226, i64 %228
  store i32 %225, i32* %229, align 4
  br label %230

230:                                              ; preds = %219, %203, %187
  br label %231

231:                                              ; preds = %230
  br label %232

232:                                              ; preds = %42, %231, %185, %139, %93
  br label %233

233:                                              ; preds = %232
  %234 = load i32, i32* %17, align 4
  %235 = add nsw i32 %234, 1
  store i32 %235, i32* %17, align 4
  br label %37

236:                                              ; preds = %37
  br label %237

237:                                              ; preds = %236
  %238 = load i32, i32* %18, align 4
  %239 = add nsw i32 %238, 1
  store i32 %239, i32* %18, align 4
  br label %19

240:                                              ; preds = %19
  ret void
}

declare dso_local i32 @av_clip_uint8(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
