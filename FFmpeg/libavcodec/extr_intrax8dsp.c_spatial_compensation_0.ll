; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_intrax8dsp.c_spatial_compensation_0.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_intrax8dsp.c_spatial_compensation_0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@area2 = common dso_local global i32 0, align 4
@area4 = common dso_local global i32 0, align 4
@zero_prediction_weights = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32)* @spatial_compensation_0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @spatial_compensation_0(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [2 x [8 x i32]], align 16
  %14 = alloca [2 x [8 x i32]], align 16
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %15 = bitcast [2 x [8 x i32]]* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %15, i8 0, i64 64, i1 false)
  %16 = bitcast [2 x [8 x i32]]* %14 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %16, i8 0, i64 64, i1 false)
  store i32 0, i32* %7, align 4
  br label %17

17:                                               ; preds = %55, %3
  %18 = load i32, i32* %7, align 4
  %19 = icmp slt i32 %18, 8
  br i1 %19, label %20, label %58

20:                                               ; preds = %17
  %21 = load i32*, i32** %4, align 8
  %22 = load i32, i32* @area2, align 4
  %23 = add nsw i32 %22, 7
  %24 = load i32, i32* %7, align 4
  %25 = sub nsw i32 %23, %24
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %21, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = shl i32 %28, 4
  store i32 %29, i32* %12, align 4
  store i32 0, i32* %8, align 4
  br label %30

30:                                               ; preds = %51, %20
  %31 = load i32, i32* %8, align 4
  %32 = icmp slt i32 %31, 8
  br i1 %32, label %33, label %54

33:                                               ; preds = %30
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* %8, align 4
  %36 = sub nsw i32 %34, %35
  %37 = call i32 @abs(i32 %36)
  store i32 %37, i32* %11, align 4
  %38 = load i32, i32* %12, align 4
  %39 = load i32, i32* %11, align 4
  %40 = lshr i32 %39, 1
  %41 = ashr i32 %38, %40
  %42 = load i32, i32* %11, align 4
  %43 = and i32 %42, 1
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds [2 x [8 x i32]], [2 x [8 x i32]]* %13, i64 0, i64 %44
  %46 = load i32, i32* %8, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [8 x i32], [8 x i32]* %45, i64 0, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = add nsw i32 %49, %41
  store i32 %50, i32* %48, align 4
  br label %51

51:                                               ; preds = %33
  %52 = load i32, i32* %8, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %8, align 4
  br label %30

54:                                               ; preds = %30
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %7, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %7, align 4
  br label %17

58:                                               ; preds = %17
  store i32 0, i32* %7, align 4
  br label %59

59:                                               ; preds = %96, %58
  %60 = load i32, i32* %7, align 4
  %61 = icmp slt i32 %60, 8
  br i1 %61, label %62, label %99

62:                                               ; preds = %59
  %63 = load i32*, i32** %4, align 8
  %64 = load i32, i32* @area4, align 4
  %65 = load i32, i32* %7, align 4
  %66 = add nsw i32 %64, %65
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %63, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = shl i32 %69, 4
  store i32 %70, i32* %12, align 4
  store i32 0, i32* %8, align 4
  br label %71

71:                                               ; preds = %92, %62
  %72 = load i32, i32* %8, align 4
  %73 = icmp slt i32 %72, 8
  br i1 %73, label %74, label %95

74:                                               ; preds = %71
  %75 = load i32, i32* %7, align 4
  %76 = load i32, i32* %8, align 4
  %77 = sub nsw i32 %75, %76
  %78 = call i32 @abs(i32 %77)
  store i32 %78, i32* %11, align 4
  %79 = load i32, i32* %12, align 4
  %80 = load i32, i32* %11, align 4
  %81 = lshr i32 %80, 1
  %82 = ashr i32 %79, %81
  %83 = load i32, i32* %11, align 4
  %84 = and i32 %83, 1
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds [2 x [8 x i32]], [2 x [8 x i32]]* %14, i64 0, i64 %85
  %87 = load i32, i32* %8, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds [8 x i32], [8 x i32]* %86, i64 0, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = add nsw i32 %90, %82
  store i32 %91, i32* %89, align 4
  br label %92

92:                                               ; preds = %74
  %93 = load i32, i32* %8, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %8, align 4
  br label %71

95:                                               ; preds = %71
  br label %96

96:                                               ; preds = %95
  %97 = load i32, i32* %7, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %7, align 4
  br label %59

99:                                               ; preds = %59
  br label %100

100:                                              ; preds = %137, %99
  %101 = load i32, i32* %7, align 4
  %102 = icmp slt i32 %101, 10
  br i1 %102, label %103, label %140

103:                                              ; preds = %100
  %104 = load i32*, i32** %4, align 8
  %105 = load i32, i32* @area4, align 4
  %106 = load i32, i32* %7, align 4
  %107 = add nsw i32 %105, %106
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %104, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = shl i32 %110, 4
  store i32 %111, i32* %12, align 4
  store i32 5, i32* %8, align 4
  br label %112

112:                                              ; preds = %133, %103
  %113 = load i32, i32* %8, align 4
  %114 = icmp slt i32 %113, 8
  br i1 %114, label %115, label %136

115:                                              ; preds = %112
  %116 = load i32, i32* %7, align 4
  %117 = load i32, i32* %8, align 4
  %118 = sub nsw i32 %116, %117
  %119 = call i32 @abs(i32 %118)
  store i32 %119, i32* %11, align 4
  %120 = load i32, i32* %12, align 4
  %121 = load i32, i32* %11, align 4
  %122 = lshr i32 %121, 1
  %123 = ashr i32 %120, %122
  %124 = load i32, i32* %11, align 4
  %125 = and i32 %124, 1
  %126 = zext i32 %125 to i64
  %127 = getelementptr inbounds [2 x [8 x i32]], [2 x [8 x i32]]* %14, i64 0, i64 %126
  %128 = load i32, i32* %8, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds [8 x i32], [8 x i32]* %127, i64 0, i64 %129
  %131 = load i32, i32* %130, align 4
  %132 = add nsw i32 %131, %123
  store i32 %132, i32* %130, align 4
  br label %133

133:                                              ; preds = %115
  %134 = load i32, i32* %8, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %8, align 4
  br label %112

136:                                              ; preds = %112
  br label %137

137:                                              ; preds = %136
  %138 = load i32, i32* %7, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %7, align 4
  br label %100

140:                                              ; preds = %100
  br label %141

141:                                              ; preds = %178, %140
  %142 = load i32, i32* %7, align 4
  %143 = icmp slt i32 %142, 12
  br i1 %143, label %144, label %181

144:                                              ; preds = %141
  %145 = load i32*, i32** %4, align 8
  %146 = load i32, i32* @area4, align 4
  %147 = load i32, i32* %7, align 4
  %148 = add nsw i32 %146, %147
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i32, i32* %145, i64 %149
  %151 = load i32, i32* %150, align 4
  %152 = shl i32 %151, 4
  store i32 %152, i32* %12, align 4
  store i32 7, i32* %8, align 4
  br label %153

153:                                              ; preds = %174, %144
  %154 = load i32, i32* %8, align 4
  %155 = icmp slt i32 %154, 8
  br i1 %155, label %156, label %177

156:                                              ; preds = %153
  %157 = load i32, i32* %7, align 4
  %158 = load i32, i32* %8, align 4
  %159 = sub nsw i32 %157, %158
  %160 = call i32 @abs(i32 %159)
  store i32 %160, i32* %11, align 4
  %161 = load i32, i32* %12, align 4
  %162 = load i32, i32* %11, align 4
  %163 = lshr i32 %162, 1
  %164 = ashr i32 %161, %163
  %165 = load i32, i32* %11, align 4
  %166 = and i32 %165, 1
  %167 = zext i32 %166 to i64
  %168 = getelementptr inbounds [2 x [8 x i32]], [2 x [8 x i32]]* %14, i64 0, i64 %167
  %169 = load i32, i32* %8, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds [8 x i32], [8 x i32]* %168, i64 0, i64 %170
  %172 = load i32, i32* %171, align 4
  %173 = add nsw i32 %172, %164
  store i32 %173, i32* %171, align 4
  br label %174

174:                                              ; preds = %156
  %175 = load i32, i32* %8, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %8, align 4
  br label %153

177:                                              ; preds = %153
  br label %178

178:                                              ; preds = %177
  %179 = load i32, i32* %7, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %7, align 4
  br label %141

181:                                              ; preds = %141
  store i32 0, i32* %7, align 4
  br label %182

182:                                              ; preds = %214, %181
  %183 = load i32, i32* %7, align 4
  %184 = icmp slt i32 %183, 8
  br i1 %184, label %185, label %217

185:                                              ; preds = %182
  %186 = getelementptr inbounds [2 x [8 x i32]], [2 x [8 x i32]]* %14, i64 0, i64 1
  %187 = load i32, i32* %7, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds [8 x i32], [8 x i32]* %186, i64 0, i64 %188
  %190 = load i32, i32* %189, align 4
  %191 = mul nsw i32 %190, 181
  %192 = add nsw i32 %191, 128
  %193 = ashr i32 %192, 8
  %194 = getelementptr inbounds [2 x [8 x i32]], [2 x [8 x i32]]* %14, i64 0, i64 0
  %195 = load i32, i32* %7, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds [8 x i32], [8 x i32]* %194, i64 0, i64 %196
  %198 = load i32, i32* %197, align 4
  %199 = add nsw i32 %198, %193
  store i32 %199, i32* %197, align 4
  %200 = getelementptr inbounds [2 x [8 x i32]], [2 x [8 x i32]]* %13, i64 0, i64 1
  %201 = load i32, i32* %7, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds [8 x i32], [8 x i32]* %200, i64 0, i64 %202
  %204 = load i32, i32* %203, align 4
  %205 = mul nsw i32 %204, 181
  %206 = add nsw i32 %205, 128
  %207 = ashr i32 %206, 8
  %208 = getelementptr inbounds [2 x [8 x i32]], [2 x [8 x i32]]* %13, i64 0, i64 0
  %209 = load i32, i32* %7, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds [8 x i32], [8 x i32]* %208, i64 0, i64 %210
  %212 = load i32, i32* %211, align 4
  %213 = add nsw i32 %212, %207
  store i32 %213, i32* %211, align 4
  br label %214

214:                                              ; preds = %185
  %215 = load i32, i32* %7, align 4
  %216 = add nsw i32 %215, 1
  store i32 %216, i32* %7, align 4
  br label %182

217:                                              ; preds = %182
  store i32 0, i32* %10, align 4
  br label %218

218:                                              ; preds = %273, %217
  %219 = load i32, i32* %10, align 4
  %220 = icmp slt i32 %219, 8
  br i1 %220, label %221, label %276

221:                                              ; preds = %218
  store i32 0, i32* %9, align 4
  br label %222

222:                                              ; preds = %265, %221
  %223 = load i32, i32* %9, align 4
  %224 = icmp slt i32 %223, 8
  br i1 %224, label %225, label %268

225:                                              ; preds = %222
  %226 = getelementptr inbounds [2 x [8 x i32]], [2 x [8 x i32]]* %14, i64 0, i64 0
  %227 = load i32, i32* %9, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds [8 x i32], [8 x i32]* %226, i64 0, i64 %228
  %230 = load i32, i32* %229, align 4
  %231 = load i32*, i32** @zero_prediction_weights, align 8
  %232 = load i32, i32* %10, align 4
  %233 = mul nsw i32 %232, 16
  %234 = load i32, i32* %9, align 4
  %235 = mul nsw i32 %234, 2
  %236 = add nsw i32 %233, %235
  %237 = add nsw i32 %236, 0
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds i32, i32* %231, i64 %238
  %240 = load i32, i32* %239, align 4
  %241 = mul nsw i32 %230, %240
  %242 = getelementptr inbounds [2 x [8 x i32]], [2 x [8 x i32]]* %13, i64 0, i64 0
  %243 = load i32, i32* %10, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds [8 x i32], [8 x i32]* %242, i64 0, i64 %244
  %246 = load i32, i32* %245, align 4
  %247 = load i32*, i32** @zero_prediction_weights, align 8
  %248 = load i32, i32* %10, align 4
  %249 = mul nsw i32 %248, 16
  %250 = load i32, i32* %9, align 4
  %251 = mul nsw i32 %250, 2
  %252 = add nsw i32 %249, %251
  %253 = add nsw i32 %252, 1
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds i32, i32* %247, i64 %254
  %256 = load i32, i32* %255, align 4
  %257 = mul nsw i32 %246, %256
  %258 = add nsw i32 %241, %257
  %259 = add nsw i32 %258, 32768
  %260 = ashr i32 %259, 16
  %261 = load i32*, i32** %5, align 8
  %262 = load i32, i32* %9, align 4
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds i32, i32* %261, i64 %263
  store i32 %260, i32* %264, align 4
  br label %265

265:                                              ; preds = %225
  %266 = load i32, i32* %9, align 4
  %267 = add nsw i32 %266, 1
  store i32 %267, i32* %9, align 4
  br label %222

268:                                              ; preds = %222
  %269 = load i32, i32* %6, align 4
  %270 = load i32*, i32** %5, align 8
  %271 = sext i32 %269 to i64
  %272 = getelementptr inbounds i32, i32* %270, i64 %271
  store i32* %272, i32** %5, align 8
  br label %273

273:                                              ; preds = %268
  %274 = load i32, i32* %10, align 4
  %275 = add nsw i32 %274, 1
  store i32 %275, i32* %10, align 4
  br label %218

276:                                              ; preds = %218
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @abs(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
