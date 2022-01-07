; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_apedec.c_decode_array_0000.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_apedec.c_decode_array_0000.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, i32*, i32*, %struct.TYPE_5__*, i32)* @decode_array_0000 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @decode_array_0000(%struct.TYPE_6__* %0, i32* %1, i32* %2, %struct.TYPE_5__* %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_5__* %3, %struct.TYPE_5__** %9, align 8
  store i32 %4, i32* %10, align 4
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  store i32 0, i32* %15, align 4
  store i32 0, i32* %11, align 4
  br label %16

16:                                               ; preds = %38, %5
  %17 = load i32, i32* %11, align 4
  %18 = load i32, i32* %10, align 4
  %19 = call i32 @FFMIN(i32 %18, i32 5)
  %20 = icmp slt i32 %17, %19
  br i1 %20, label %21, label %41

21:                                               ; preds = %16
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 1
  %24 = call i32 @get_rice_ook(i32* %23, i32 10)
  %25 = load i32*, i32** %8, align 8
  %26 = load i32, i32* %11, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  store i32 %24, i32* %28, align 4
  %29 = load i32*, i32** %8, align 8
  %30 = load i32, i32* %11, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = add nsw i32 %36, %33
  store i32 %37, i32* %35, align 4
  br label %38

38:                                               ; preds = %21
  %39 = load i32, i32* %11, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %11, align 4
  br label %16

41:                                               ; preds = %16
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = sdiv i32 %44, 10
  %46 = call i8* @av_log2(i32 %45)
  %47 = getelementptr i8, i8* %46, i64 1
  %48 = ptrtoint i8* %47 to i32
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 4
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = icmp sge i32 %53, 24
  br i1 %54, label %55, label %56

55:                                               ; preds = %41
  br label %244

56:                                               ; preds = %41
  br label %57

57:                                               ; preds = %100, %56
  %58 = load i32, i32* %11, align 4
  %59 = load i32, i32* %10, align 4
  %60 = call i32 @FFMIN(i32 %59, i32 64)
  %61 = icmp slt i32 %58, %60
  br i1 %61, label %62, label %103

62:                                               ; preds = %57
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 1
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @get_rice_ook(i32* %64, i32 %67)
  %69 = load i32*, i32** %8, align 8
  %70 = load i32, i32* %11, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  store i32 %68, i32* %72, align 4
  %73 = load i32*, i32** %8, align 8
  %74 = load i32, i32* %11, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = add nsw i32 %80, %77
  store i32 %81, i32* %79, align 4
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %11, align 4
  %86 = add nsw i32 %85, 1
  %87 = mul nsw i32 %86, 2
  %88 = sdiv i32 %84, %87
  %89 = call i8* @av_log2(i32 %88)
  %90 = getelementptr i8, i8* %89, i64 1
  %91 = ptrtoint i8* %90 to i32
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 1
  store i32 %91, i32* %93, align 4
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = icmp sge i32 %96, 24
  br i1 %97, label %98, label %99

98:                                               ; preds = %62
  br label %244

99:                                               ; preds = %62
  br label %100

100:                                              ; preds = %99
  %101 = load i32, i32* %11, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %11, align 4
  br label %57

103:                                              ; preds = %57
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = add nsw i32 %106, 7
  %108 = shl i32 1, %107
  store i32 %108, i32* %12, align 4
  %109 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %119

113:                                              ; preds = %103
  %114 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = add nsw i32 %116, 6
  %118 = shl i32 1, %117
  br label %120

119:                                              ; preds = %103
  br label %120

120:                                              ; preds = %119, %113
  %121 = phi i32 [ %118, %113 ], [ 0, %119 ]
  store i32 %121, i32* %13, align 4
  br label %122

122:                                              ; preds = %213, %120
  %123 = load i32, i32* %11, align 4
  %124 = load i32, i32* %10, align 4
  %125 = icmp slt i32 %123, %124
  br i1 %125, label %126, label %216

126:                                              ; preds = %122
  %127 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 1
  %129 = call i32 @get_bits_left(i32* %128)
  %130 = icmp slt i32 %129, 1
  br i1 %130, label %131, label %134

131:                                              ; preds = %126
  %132 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 0
  store i32 1, i32* %133, align 4
  br label %244

134:                                              ; preds = %126
  %135 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 1
  %137 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %138 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @get_rice_ook(i32* %136, i32 %139)
  %141 = load i32*, i32** %8, align 8
  %142 = load i32, i32* %11, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %141, i64 %143
  store i32 %140, i32* %144, align 4
  %145 = load i32*, i32** %8, align 8
  %146 = load i32, i32* %11, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i32, i32* %145, i64 %147
  %149 = load i32, i32* %148, align 4
  %150 = load i32*, i32** %8, align 8
  %151 = load i32, i32* %11, align 4
  %152 = sub nsw i32 %151, 64
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i32, i32* %150, i64 %153
  %155 = load i32, i32* %154, align 4
  %156 = sub nsw i32 %149, %155
  %157 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %158 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = add nsw i32 %159, %156
  store i32 %160, i32* %158, align 4
  br label %161

161:                                              ; preds = %180, %134
  %162 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %163 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = load i32, i32* %13, align 4
  %166 = icmp ult i32 %164, %165
  br i1 %166, label %167, label %184

167:                                              ; preds = %161
  %168 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %169 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = add nsw i32 %170, -1
  store i32 %171, i32* %169, align 4
  %172 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %173 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %179

176:                                              ; preds = %167
  %177 = load i32, i32* %13, align 4
  %178 = lshr i32 %177, 1
  br label %180

179:                                              ; preds = %167
  br label %180

180:                                              ; preds = %179, %176
  %181 = phi i32 [ %178, %176 ], [ 0, %179 ]
  store i32 %181, i32* %13, align 4
  %182 = load i32, i32* %12, align 4
  %183 = lshr i32 %182, 1
  store i32 %183, i32* %12, align 4
  br label %161

184:                                              ; preds = %161
  br label %185

185:                                              ; preds = %210, %184
  %186 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %187 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 4
  %189 = load i32, i32* %12, align 4
  %190 = icmp uge i32 %188, %189
  br i1 %190, label %191, label %212

191:                                              ; preds = %185
  %192 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %193 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 4
  %195 = add nsw i32 %194, 1
  store i32 %195, i32* %193, align 4
  %196 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %197 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 4
  %199 = icmp sgt i32 %198, 24
  br i1 %199, label %200, label %201

200:                                              ; preds = %191
  br label %244

201:                                              ; preds = %191
  %202 = load i32, i32* %12, align 4
  %203 = shl i32 %202, 1
  store i32 %203, i32* %12, align 4
  %204 = load i32, i32* %13, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %209

206:                                              ; preds = %201
  %207 = load i32, i32* %13, align 4
  %208 = shl i32 %207, 1
  br label %210

209:                                              ; preds = %201
  br label %210

210:                                              ; preds = %209, %206
  %211 = phi i32 [ %208, %206 ], [ 128, %209 ]
  store i32 %211, i32* %13, align 4
  br label %185

212:                                              ; preds = %185
  br label %213

213:                                              ; preds = %212
  %214 = load i32, i32* %11, align 4
  %215 = add nsw i32 %214, 1
  store i32 %215, i32* %11, align 4
  br label %122

216:                                              ; preds = %122
  store i32 0, i32* %11, align 4
  br label %217

217:                                              ; preds = %241, %216
  %218 = load i32, i32* %11, align 4
  %219 = load i32, i32* %10, align 4
  %220 = icmp slt i32 %218, %219
  br i1 %220, label %221, label %244

221:                                              ; preds = %217
  %222 = load i32*, i32** %8, align 8
  %223 = load i32, i32* %11, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds i32, i32* %222, i64 %224
  %226 = load i32, i32* %225, align 4
  %227 = ashr i32 %226, 1
  %228 = load i32*, i32** %8, align 8
  %229 = load i32, i32* %11, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds i32, i32* %228, i64 %230
  %232 = load i32, i32* %231, align 4
  %233 = and i32 %232, 1
  %234 = sub nsw i32 %233, 1
  %235 = xor i32 %227, %234
  %236 = add nsw i32 %235, 1
  %237 = load i32*, i32** %8, align 8
  %238 = load i32, i32* %11, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds i32, i32* %237, i64 %239
  store i32 %236, i32* %240, align 4
  br label %241

241:                                              ; preds = %221
  %242 = load i32, i32* %11, align 4
  %243 = add nsw i32 %242, 1
  store i32 %243, i32* %11, align 4
  br label %217

244:                                              ; preds = %55, %98, %131, %200, %217
  ret void
}

declare dso_local i32 @FFMIN(i32, i32) #1

declare dso_local i32 @get_rice_ook(i32*, i32) #1

declare dso_local i8* @av_log2(i32) #1

declare dso_local i32 @get_bits_left(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
