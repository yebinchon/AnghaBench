; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dcaenc.c_subband_transform.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dcaenc.c_subband_transform.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32*, i32***, i32, i32*, i32** }

@SUBBAND_SAMPLES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32*)* @subband_transform to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @subband_transform(%struct.TYPE_3__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [512 x i32], align 16
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [64 x i32], align 16
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %5, align 4
  br label %17

17:                                               ; preds = %246, %2
  %18 = load i32, i32* %5, align 4
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp slt i32 %18, %21
  br i1 %22, label %23, label %249

23:                                               ; preds = %17
  store i32 0, i32* %11, align 4
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %12, align 4
  %31 = getelementptr inbounds [512 x i32], [512 x i32]* %10, i64 0, i64 0
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 5
  %34 = load i32**, i32*** %33, align 8
  %35 = load i32, i32* %5, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32*, i32** %34, i64 %36
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  %40 = call i32 @memcpy(i32* %31, i32* %39, i32 2048)
  store i32 0, i32* %6, align 4
  br label %41

41:                                               ; preds = %242, %23
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* @SUBBAND_SAMPLES, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %245

45:                                               ; preds = %41
  %46 = getelementptr inbounds [64 x i32], [64 x i32]* %13, i64 0, i64 0
  %47 = call i32 @memset(i32* %46, i32 0, i32 256)
  store i32 0, i32* %8, align 4
  %48 = load i32, i32* %11, align 4
  store i32 %48, i32* %7, align 4
  store i32 0, i32* %9, align 4
  br label %49

49:                                               ; preds = %70, %45
  %50 = load i32, i32* %7, align 4
  %51 = icmp slt i32 %50, 512
  br i1 %51, label %52, label %78

52:                                               ; preds = %49
  %53 = load i32, i32* %7, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [512 x i32], [512 x i32]* %10, i64 0, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 4
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* %9, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @mul32(i32 %56, i32 %63)
  %65 = load i32, i32* %8, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds [64 x i32], [64 x i32]* %13, i64 0, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = add nsw i32 %68, %64
  store i32 %69, i32* %67, align 4
  br label %70

70:                                               ; preds = %52
  %71 = load i32, i32* %8, align 4
  %72 = add nsw i32 %71, 1
  %73 = and i32 %72, 63
  store i32 %73, i32* %8, align 4
  %74 = load i32, i32* %7, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %7, align 4
  %76 = load i32, i32* %9, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %9, align 4
  br label %49

78:                                               ; preds = %49
  store i32 0, i32* %7, align 4
  br label %79

79:                                               ; preds = %101, %78
  %80 = load i32, i32* %7, align 4
  %81 = load i32, i32* %11, align 4
  %82 = icmp slt i32 %80, %81
  br i1 %82, label %83, label %109

83:                                               ; preds = %79
  %84 = load i32, i32* %7, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds [512 x i32], [512 x i32]* %10, i64 0, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 4
  %90 = load i32*, i32** %89, align 8
  %91 = load i32, i32* %9, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @mul32(i32 %87, i32 %94)
  %96 = load i32, i32* %8, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds [64 x i32], [64 x i32]* %13, i64 0, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = add nsw i32 %99, %95
  store i32 %100, i32* %98, align 4
  br label %101

101:                                              ; preds = %83
  %102 = load i32, i32* %8, align 4
  %103 = add nsw i32 %102, 1
  %104 = and i32 %103, 63
  store i32 %104, i32* %8, align 4
  %105 = load i32, i32* %7, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %7, align 4
  %107 = load i32, i32* %9, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %9, align 4
  br label %79

109:                                              ; preds = %79
  store i32 16, i32* %8, align 4
  br label %110

110:                                              ; preds = %127, %109
  %111 = load i32, i32* %8, align 4
  %112 = icmp slt i32 %111, 32
  br i1 %112, label %113, label %130

113:                                              ; preds = %110
  %114 = load i32, i32* %8, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds [64 x i32], [64 x i32]* %13, i64 0, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* %8, align 4
  %119 = sub nsw i32 31, %118
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds [64 x i32], [64 x i32]* %13, i64 0, i64 %120
  %122 = load i32, i32* %121, align 4
  %123 = sub nsw i32 %117, %122
  %124 = load i32, i32* %8, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds [64 x i32], [64 x i32]* %13, i64 0, i64 %125
  store i32 %123, i32* %126, align 4
  br label %127

127:                                              ; preds = %113
  %128 = load i32, i32* %8, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %8, align 4
  br label %110

130:                                              ; preds = %110
  store i32 32, i32* %8, align 4
  br label %131

131:                                              ; preds = %148, %130
  %132 = load i32, i32* %8, align 4
  %133 = icmp slt i32 %132, 48
  br i1 %133, label %134, label %151

134:                                              ; preds = %131
  %135 = load i32, i32* %8, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds [64 x i32], [64 x i32]* %13, i64 0, i64 %136
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* %8, align 4
  %140 = sub nsw i32 95, %139
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds [64 x i32], [64 x i32]* %13, i64 0, i64 %141
  %143 = load i32, i32* %142, align 4
  %144 = add nsw i32 %138, %143
  %145 = load i32, i32* %8, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds [64 x i32], [64 x i32]* %13, i64 0, i64 %146
  store i32 %144, i32* %147, align 4
  br label %148

148:                                              ; preds = %134
  %149 = load i32, i32* %8, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %8, align 4
  br label %131

151:                                              ; preds = %131
  store i32 0, i32* %15, align 4
  br label %152

152:                                              ; preds = %208, %151
  %153 = load i32, i32* %15, align 4
  %154 = icmp slt i32 %153, 32
  br i1 %154, label %155, label %211

155:                                              ; preds = %152
  store i32 0, i32* %14, align 4
  store i32 16, i32* %7, align 4
  br label %156

156:                                              ; preds = %179, %155
  %157 = load i32, i32* %7, align 4
  %158 = icmp slt i32 %157, 48
  br i1 %158, label %159, label %182

159:                                              ; preds = %156
  %160 = load i32, i32* %15, align 4
  %161 = mul nsw i32 2, %160
  %162 = add nsw i32 %161, 1
  %163 = load i32, i32* %7, align 4
  %164 = add nsw i32 %163, 16
  %165 = mul nsw i32 2, %164
  %166 = add nsw i32 %165, 1
  %167 = mul nsw i32 %162, %166
  store i32 %167, i32* %16, align 4
  %168 = load i32, i32* %7, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds [64 x i32], [64 x i32]* %13, i64 0, i64 %169
  %171 = load i32, i32* %170, align 4
  %172 = load i32, i32* %16, align 4
  %173 = shl i32 %172, 3
  %174 = call i32 @COS_T(i32 %173)
  %175 = call i32 @mul32(i32 %171, i32 %174)
  %176 = ashr i32 %175, 3
  %177 = load i32, i32* %14, align 4
  %178 = add nsw i32 %177, %176
  store i32 %178, i32* %14, align 4
  br label %179

179:                                              ; preds = %159
  %180 = load i32, i32* %7, align 4
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %7, align 4
  br label %156

182:                                              ; preds = %156
  %183 = load i32, i32* %15, align 4
  %184 = add nsw i32 %183, 1
  %185 = and i32 %184, 2
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %190

187:                                              ; preds = %182
  %188 = load i32, i32* %14, align 4
  %189 = sub nsw i32 0, %188
  br label %192

190:                                              ; preds = %182
  %191 = load i32, i32* %14, align 4
  br label %192

192:                                              ; preds = %190, %187
  %193 = phi i32 [ %189, %187 ], [ %191, %190 ]
  %194 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %195 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %194, i32 0, i32 2
  %196 = load i32***, i32**** %195, align 8
  %197 = load i32, i32* %5, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds i32**, i32*** %196, i64 %198
  %200 = load i32**, i32*** %199, align 8
  %201 = load i32, i32* %15, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds i32*, i32** %200, i64 %202
  %204 = load i32*, i32** %203, align 8
  %205 = load i32, i32* %6, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds i32, i32* %204, i64 %206
  store i32 %193, i32* %207, align 4
  br label %208

208:                                              ; preds = %192
  %209 = load i32, i32* %15, align 4
  %210 = add nsw i32 %209, 1
  store i32 %210, i32* %15, align 4
  br label %152

211:                                              ; preds = %152
  store i32 0, i32* %7, align 4
  br label %212

212:                                              ; preds = %235, %211
  %213 = load i32, i32* %7, align 4
  %214 = icmp slt i32 %213, 32
  br i1 %214, label %215, label %238

215:                                              ; preds = %212
  %216 = load i32*, i32** %4, align 8
  %217 = load i32, i32* %6, align 4
  %218 = mul nsw i32 %217, 32
  %219 = load i32, i32* %7, align 4
  %220 = add nsw i32 %218, %219
  %221 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %222 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %221, i32 0, i32 3
  %223 = load i32, i32* %222, align 8
  %224 = mul nsw i32 %220, %223
  %225 = load i32, i32* %12, align 4
  %226 = add nsw i32 %224, %225
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds i32, i32* %216, i64 %227
  %229 = load i32, i32* %228, align 4
  %230 = load i32, i32* %7, align 4
  %231 = load i32, i32* %11, align 4
  %232 = add nsw i32 %230, %231
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds [512 x i32], [512 x i32]* %10, i64 0, i64 %233
  store i32 %229, i32* %234, align 4
  br label %235

235:                                              ; preds = %215
  %236 = load i32, i32* %7, align 4
  %237 = add nsw i32 %236, 1
  store i32 %237, i32* %7, align 4
  br label %212

238:                                              ; preds = %212
  %239 = load i32, i32* %11, align 4
  %240 = add nsw i32 %239, 32
  %241 = and i32 %240, 511
  store i32 %241, i32* %11, align 4
  br label %242

242:                                              ; preds = %238
  %243 = load i32, i32* %6, align 4
  %244 = add nsw i32 %243, 1
  store i32 %244, i32* %6, align 4
  br label %41

245:                                              ; preds = %41
  br label %246

246:                                              ; preds = %245
  %247 = load i32, i32* %5, align 4
  %248 = add nsw i32 %247, 1
  store i32 %248, i32* %5, align 4
  br label %17

249:                                              ; preds = %17
  ret void
}

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @mul32(i32, i32) #1

declare dso_local i32 @COS_T(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
