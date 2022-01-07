; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_hysteresis.c_hysteresis16.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_hysteresis.c_hysteresis16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, i32*, i32*, i32*, i32, i32, i32, i32, i32)* @hysteresis16 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hysteresis16(%struct.TYPE_7__* %0, i32* %1, i32* %2, i32* %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8) #0 {
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %10, align 8
  store i32* %1, i32** %11, align 8
  store i32* %2, i32** %12, align 8
  store i32* %3, i32** %13, align 8
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i32 %8, i32* %18, align 4
  %33 = load i32*, i32** %11, align 8
  store i32* %33, i32** %19, align 8
  %34 = load i32*, i32** %12, align 8
  store i32* %34, i32** %20, align 8
  %35 = load i32*, i32** %13, align 8
  store i32* %35, i32** %21, align 8
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %22, align 4
  %39 = load i32, i32* %14, align 4
  %40 = sdiv i32 %39, 2
  store i32 %40, i32* %14, align 4
  %41 = load i32, i32* %15, align 4
  %42 = sdiv i32 %41, 2
  store i32 %42, i32* %15, align 4
  %43 = load i32, i32* %16, align 4
  %44 = sdiv i32 %43, 2
  store i32 %44, i32* %16, align 4
  store i32 0, i32* %24, align 4
  br label %45

45:                                               ; preds = %222, %9
  %46 = load i32, i32* %24, align 4
  %47 = load i32, i32* %18, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %225

49:                                               ; preds = %45
  store i32 0, i32* %23, align 4
  br label %50

50:                                               ; preds = %218, %49
  %51 = load i32, i32* %23, align 4
  %52 = load i32, i32* %17, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %221

54:                                               ; preds = %50
  %55 = load i32*, i32** %19, align 8
  %56 = load i32, i32* %23, align 4
  %57 = load i32, i32* %24, align 4
  %58 = load i32, i32* %14, align 4
  %59 = mul nsw i32 %57, %58
  %60 = add nsw i32 %56, %59
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %55, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %22, align 4
  %65 = icmp sgt i32 %63, %64
  br i1 %65, label %66, label %217

66:                                               ; preds = %54
  %67 = load i32*, i32** %20, align 8
  %68 = load i32, i32* %23, align 4
  %69 = load i32, i32* %24, align 4
  %70 = load i32, i32* %15, align 4
  %71 = mul nsw i32 %69, %70
  %72 = add nsw i32 %68, %71
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %67, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %22, align 4
  %77 = icmp sgt i32 %75, %76
  br i1 %77, label %78, label %217

78:                                               ; preds = %66
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %80 = load i32, i32* %23, align 4
  %81 = load i32, i32* %24, align 4
  %82 = load i32, i32* %17, align 4
  %83 = call i32 @passed(%struct.TYPE_7__* %79, i32 %80, i32 %81, i32 %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %217, label %85

85:                                               ; preds = %78
  %86 = load i32*, i32** %20, align 8
  %87 = load i32, i32* %23, align 4
  %88 = load i32, i32* %24, align 4
  %89 = load i32, i32* %15, align 4
  %90 = mul nsw i32 %88, %89
  %91 = add nsw i32 %87, %90
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %86, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = load i32*, i32** %21, align 8
  %96 = load i32, i32* %23, align 4
  %97 = load i32, i32* %24, align 4
  %98 = load i32, i32* %16, align 4
  %99 = mul nsw i32 %97, %98
  %100 = add nsw i32 %96, %99
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %95, i64 %101
  store i32 %94, i32* %102, align 4
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %104 = load i32, i32* %23, align 4
  %105 = load i32, i32* %24, align 4
  %106 = load i32, i32* %17, align 4
  %107 = call i32 @push(%struct.TYPE_7__* %103, i32 %104, i32 %105, i32 %106)
  br label %108

108:                                              ; preds = %215, %85
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %110 = call i32 @is_empty(%struct.TYPE_7__* %109)
  %111 = icmp ne i32 %110, 0
  %112 = xor i1 %111, true
  br i1 %112, label %113, label %216

113:                                              ; preds = %108
  %114 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %115 = call i32 @pop(%struct.TYPE_7__* %114, i32* %25, i32* %26)
  %116 = load i32, i32* %25, align 4
  %117 = icmp sgt i32 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %113
  %119 = load i32, i32* %25, align 4
  %120 = sub nsw i32 %119, 1
  br label %122

121:                                              ; preds = %113
  br label %122

122:                                              ; preds = %121, %118
  %123 = phi i32 [ %120, %118 ], [ 0, %121 ]
  store i32 %123, i32* %27, align 4
  %124 = load i32, i32* %25, align 4
  %125 = load i32, i32* %17, align 4
  %126 = sub nsw i32 %125, 1
  %127 = icmp slt i32 %124, %126
  br i1 %127, label %128, label %131

128:                                              ; preds = %122
  %129 = load i32, i32* %25, align 4
  %130 = add nsw i32 %129, 1
  br label %133

131:                                              ; preds = %122
  %132 = load i32, i32* %25, align 4
  br label %133

133:                                              ; preds = %131, %128
  %134 = phi i32 [ %130, %128 ], [ %132, %131 ]
  store i32 %134, i32* %28, align 4
  %135 = load i32, i32* %26, align 4
  %136 = icmp sgt i32 %135, 0
  br i1 %136, label %137, label %140

137:                                              ; preds = %133
  %138 = load i32, i32* %26, align 4
  %139 = sub nsw i32 %138, 1
  br label %141

140:                                              ; preds = %133
  br label %141

141:                                              ; preds = %140, %137
  %142 = phi i32 [ %139, %137 ], [ 0, %140 ]
  store i32 %142, i32* %29, align 4
  %143 = load i32, i32* %26, align 4
  %144 = load i32, i32* %18, align 4
  %145 = sub nsw i32 %144, 1
  %146 = icmp slt i32 %143, %145
  br i1 %146, label %147, label %150

147:                                              ; preds = %141
  %148 = load i32, i32* %26, align 4
  %149 = add nsw i32 %148, 1
  br label %152

150:                                              ; preds = %141
  %151 = load i32, i32* %26, align 4
  br label %152

152:                                              ; preds = %150, %147
  %153 = phi i32 [ %149, %147 ], [ %151, %150 ]
  store i32 %153, i32* %30, align 4
  %154 = load i32, i32* %29, align 4
  store i32 %154, i32* %31, align 4
  br label %155

155:                                              ; preds = %212, %152
  %156 = load i32, i32* %31, align 4
  %157 = load i32, i32* %30, align 4
  %158 = icmp sle i32 %156, %157
  br i1 %158, label %159, label %215

159:                                              ; preds = %155
  %160 = load i32, i32* %27, align 4
  store i32 %160, i32* %32, align 4
  br label %161

161:                                              ; preds = %208, %159
  %162 = load i32, i32* %32, align 4
  %163 = load i32, i32* %28, align 4
  %164 = icmp sle i32 %162, %163
  br i1 %164, label %165, label %211

165:                                              ; preds = %161
  %166 = load i32*, i32** %20, align 8
  %167 = load i32, i32* %32, align 4
  %168 = load i32, i32* %31, align 4
  %169 = load i32, i32* %15, align 4
  %170 = mul nsw i32 %168, %169
  %171 = add nsw i32 %167, %170
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i32, i32* %166, i64 %172
  %174 = load i32, i32* %173, align 4
  %175 = load i32, i32* %22, align 4
  %176 = icmp sgt i32 %174, %175
  br i1 %176, label %177, label %207

177:                                              ; preds = %165
  %178 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %179 = load i32, i32* %32, align 4
  %180 = load i32, i32* %31, align 4
  %181 = load i32, i32* %17, align 4
  %182 = call i32 @passed(%struct.TYPE_7__* %178, i32 %179, i32 %180, i32 %181)
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %207, label %184

184:                                              ; preds = %177
  %185 = load i32*, i32** %20, align 8
  %186 = load i32, i32* %32, align 4
  %187 = load i32, i32* %31, align 4
  %188 = load i32, i32* %15, align 4
  %189 = mul nsw i32 %187, %188
  %190 = add nsw i32 %186, %189
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i32, i32* %185, i64 %191
  %193 = load i32, i32* %192, align 4
  %194 = load i32*, i32** %21, align 8
  %195 = load i32, i32* %32, align 4
  %196 = load i32, i32* %31, align 4
  %197 = load i32, i32* %16, align 4
  %198 = mul nsw i32 %196, %197
  %199 = add nsw i32 %195, %198
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds i32, i32* %194, i64 %200
  store i32 %193, i32* %201, align 4
  %202 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %203 = load i32, i32* %32, align 4
  %204 = load i32, i32* %31, align 4
  %205 = load i32, i32* %17, align 4
  %206 = call i32 @push(%struct.TYPE_7__* %202, i32 %203, i32 %204, i32 %205)
  br label %207

207:                                              ; preds = %184, %177, %165
  br label %208

208:                                              ; preds = %207
  %209 = load i32, i32* %32, align 4
  %210 = add nsw i32 %209, 1
  store i32 %210, i32* %32, align 4
  br label %161

211:                                              ; preds = %161
  br label %212

212:                                              ; preds = %211
  %213 = load i32, i32* %31, align 4
  %214 = add nsw i32 %213, 1
  store i32 %214, i32* %31, align 4
  br label %155

215:                                              ; preds = %155
  br label %108

216:                                              ; preds = %108
  br label %217

217:                                              ; preds = %216, %78, %66, %54
  br label %218

218:                                              ; preds = %217
  %219 = load i32, i32* %23, align 4
  %220 = add nsw i32 %219, 1
  store i32 %220, i32* %23, align 4
  br label %50

221:                                              ; preds = %50
  br label %222

222:                                              ; preds = %221
  %223 = load i32, i32* %24, align 4
  %224 = add nsw i32 %223, 1
  store i32 %224, i32* %24, align 4
  br label %45

225:                                              ; preds = %45
  ret void
}

declare dso_local i32 @passed(%struct.TYPE_7__*, i32, i32, i32) #1

declare dso_local i32 @push(%struct.TYPE_7__*, i32, i32, i32) #1

declare dso_local i32 @is_empty(%struct.TYPE_7__*) #1

declare dso_local i32 @pop(%struct.TYPE_7__*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
