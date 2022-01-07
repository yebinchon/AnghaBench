; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_wavpack.c_wv_get_value_float.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_wavpack.c_wv_get_value_float.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i64 }
%union.anon = type { float }

@AV_INPUT_BUFFER_PADDING_SIZE = common dso_local global i32 0, align 4
@WV_FLT_SHIFT_ONES = common dso_local global i32 0, align 4
@WV_FLT_SHIFT_SAME = common dso_local global i32 0, align 4
@WV_FLT_SHIFT_SENT = common dso_local global i32 0, align 4
@WV_FLT_ZERO_SENT = common dso_local global i32 0, align 4
@WV_FLT_ZERO_SIGN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (float (%struct.TYPE_3__*, i32*, i32)* @wv_get_value_float to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal float @wv_get_value_float(%struct.TYPE_3__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca float, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %union.anon, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %10, align 4
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 4
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %32

21:                                               ; preds = %3
  store i32 33, i32* %11, align 4
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 3
  %24 = call i32 @get_bits_left(i32* %23)
  store i32 %24, i32* %12, align 4
  %25 = load i32, i32* %12, align 4
  %26 = load i32, i32* @AV_INPUT_BUFFER_PADDING_SIZE, align 4
  %27 = mul nsw i32 8, %26
  %28 = add nsw i32 %25, %27
  %29 = icmp slt i32 %28, 33
  br i1 %29, label %30, label %31

30:                                               ; preds = %21
  store float 0.000000e+00, float* %4, align 4
  br label %224

31:                                               ; preds = %21
  br label %32

32:                                               ; preds = %31, %3
  %33 = load i32, i32* %7, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %154

35:                                               ; preds = %32
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = shl i32 1, %38
  %40 = load i32, i32* %7, align 4
  %41 = mul i32 %40, %39
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = icmp slt i32 %42, 0
  %44 = zext i1 %43 to i32
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %9, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %35
  %48 = load i32, i32* %7, align 4
  %49 = sub i32 0, %48
  store i32 %49, i32* %7, align 4
  br label %50

50:                                               ; preds = %47, %35
  %51 = load i32, i32* %7, align 4
  %52 = icmp uge i32 %51, 16777216
  br i1 %52, label %53, label %69

53:                                               ; preds = %50
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 4
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %67

58:                                               ; preds = %53
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 3
  %61 = call i32 @get_bits1(i32* %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %58
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 3
  %66 = call i32 @get_bits(i32* %65, i32 23)
  store i32 %66, i32* %7, align 4
  br label %68

67:                                               ; preds = %58, %53
  store i32 0, i32* %7, align 4
  br label %68

68:                                               ; preds = %67, %63
  store i32 255, i32* %10, align 4
  br label %151

69:                                               ; preds = %50
  %70 = load i32, i32* %10, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %146

72:                                               ; preds = %69
  %73 = load i32, i32* %7, align 4
  %74 = call i32 @av_log2(i32 %73)
  %75 = sub nsw i32 23, %74
  store i32 %75, i32* %13, align 4
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  store i32 %78, i32* %10, align 4
  %79 = load i32, i32* %10, align 4
  %80 = load i32, i32* %13, align 4
  %81 = icmp sle i32 %79, %80
  br i1 %81, label %82, label %85

82:                                               ; preds = %72
  %83 = load i32, i32* %10, align 4
  %84 = add nsw i32 %83, -1
  store i32 %84, i32* %10, align 4
  store i32 %84, i32* %13, align 4
  br label %85

85:                                               ; preds = %82, %72
  %86 = load i32, i32* %13, align 4
  %87 = load i32, i32* %10, align 4
  %88 = sub nsw i32 %87, %86
  store i32 %88, i32* %10, align 4
  %89 = load i32, i32* %13, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %145

91:                                               ; preds = %85
  %92 = load i32, i32* %13, align 4
  %93 = load i32, i32* %7, align 4
  %94 = shl i32 %93, %92
  store i32 %94, i32* %7, align 4
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* @WV_FLT_SHIFT_ONES, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %118, label %101

101:                                              ; preds = %91
  %102 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 4
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %124

106:                                              ; preds = %101
  %107 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* @WV_FLT_SHIFT_SAME, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %124

113:                                              ; preds = %106
  %114 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 3
  %116 = call i32 @get_bits1(i32* %115)
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %124

118:                                              ; preds = %113, %91
  %119 = load i32, i32* %13, align 4
  %120 = shl i32 1, %119
  %121 = sub nsw i32 %120, 1
  %122 = load i32, i32* %7, align 4
  %123 = or i32 %122, %121
  store i32 %123, i32* %7, align 4
  br label %144

124:                                              ; preds = %113, %106, %101
  %125 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 4
  %127 = load i64, i64* %126, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %143

129:                                              ; preds = %124
  %130 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 8
  %133 = load i32, i32* @WV_FLT_SHIFT_SENT, align 4
  %134 = and i32 %132, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %143

136:                                              ; preds = %129
  %137 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %138 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %137, i32 0, i32 3
  %139 = load i32, i32* %13, align 4
  %140 = call i32 @get_bits(i32* %138, i32 %139)
  %141 = load i32, i32* %7, align 4
  %142 = or i32 %141, %140
  store i32 %142, i32* %7, align 4
  br label %143

143:                                              ; preds = %136, %129, %124
  br label %144

144:                                              ; preds = %143, %118
  br label %145

145:                                              ; preds = %144, %85
  br label %150

146:                                              ; preds = %69
  %147 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %148 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  store i32 %149, i32* %10, align 4
  br label %150

150:                                              ; preds = %146, %145
  br label %151

151:                                              ; preds = %150, %68
  %152 = load i32, i32* %7, align 4
  %153 = and i32 %152, 8388607
  store i32 %153, i32* %7, align 4
  br label %201

154:                                              ; preds = %32
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %155 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %156 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %155, i32 0, i32 4
  %157 = load i64, i64* %156, align 8
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %200

159:                                              ; preds = %154
  %160 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %161 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 8
  %163 = load i32, i32* @WV_FLT_ZERO_SENT, align 4
  %164 = and i32 %162, %163
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %200

166:                                              ; preds = %159
  %167 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %168 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %167, i32 0, i32 3
  %169 = call i32 @get_bits1(i32* %168)
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %187

171:                                              ; preds = %166
  %172 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %173 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %172, i32 0, i32 3
  %174 = call i32 @get_bits(i32* %173, i32 23)
  store i32 %174, i32* %7, align 4
  %175 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %176 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = icmp sge i32 %177, 25
  br i1 %178, label %179, label %183

179:                                              ; preds = %171
  %180 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %181 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %180, i32 0, i32 3
  %182 = call i32 @get_bits(i32* %181, i32 8)
  store i32 %182, i32* %10, align 4
  br label %183

183:                                              ; preds = %179, %171
  %184 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %185 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %184, i32 0, i32 3
  %186 = call i32 @get_bits1(i32* %185)
  store i32 %186, i32* %9, align 4
  br label %199

187:                                              ; preds = %166
  %188 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %189 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %188, i32 0, i32 2
  %190 = load i32, i32* %189, align 8
  %191 = load i32, i32* @WV_FLT_ZERO_SIGN, align 4
  %192 = and i32 %190, %191
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %198

194:                                              ; preds = %187
  %195 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %196 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %195, i32 0, i32 3
  %197 = call i32 @get_bits1(i32* %196)
  store i32 %197, i32* %9, align 4
  br label %198

198:                                              ; preds = %194, %187
  br label %199

199:                                              ; preds = %198, %183
  br label %200

200:                                              ; preds = %199, %159, %154
  br label %201

201:                                              ; preds = %200, %151
  %202 = load i32*, i32** %6, align 8
  %203 = load i32, i32* %202, align 4
  %204 = mul nsw i32 %203, 27
  %205 = load i32, i32* %7, align 4
  %206 = mul nsw i32 %205, 9
  %207 = add nsw i32 %204, %206
  %208 = load i32, i32* %10, align 4
  %209 = mul nsw i32 %208, 3
  %210 = add nsw i32 %207, %209
  %211 = load i32, i32* %9, align 4
  %212 = add i32 %210, %211
  %213 = load i32*, i32** %6, align 8
  store i32 %212, i32* %213, align 4
  %214 = load i32, i32* %9, align 4
  %215 = shl i32 %214, 31
  %216 = load i32, i32* %10, align 4
  %217 = shl i32 %216, 23
  %218 = or i32 %215, %217
  %219 = load i32, i32* %7, align 4
  %220 = or i32 %218, %219
  %221 = bitcast %union.anon* %8 to i32*
  store i32 %220, i32* %221, align 4
  %222 = bitcast %union.anon* %8 to float*
  %223 = load float, float* %222, align 4
  store float %223, float* %4, align 4
  br label %224

224:                                              ; preds = %201, %30
  %225 = load float, float* %4, align 4
  ret float %225
}

declare dso_local i32 @get_bits_left(i32*) #1

declare dso_local i32 @get_bits1(i32*) #1

declare dso_local i32 @get_bits(i32*, i32) #1

declare dso_local i32 @av_log2(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
