; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_g723_1dec.c_gen_fcb_excitation.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_g723_1dec.c_gen_fcb_excitation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i64, i32, i32, i32 }

@SUBFRAME_LEN = common dso_local global i32 0, align 4
@RATE_6300 = common dso_local global i32 0, align 4
@max_pos = common dso_local global i32* null, align 8
@PULSE_MAX = common dso_local global i32 0, align 4
@pulses = common dso_local global i32* null, align 8
@GRID_SIZE = common dso_local global i32 0, align 4
@combinatorial_table = common dso_local global i64** null, align 8
@fixed_cb_gain = common dso_local global i32* null, align 8
@pitch_contrib = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_3__*, i32, i32, i32)* @gen_fcb_excitation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gen_fcb_excitation(i32* %0, %struct.TYPE_3__* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %21 = load i32*, i32** %6, align 8
  %22 = load i32, i32* @SUBFRAME_LEN, align 4
  %23 = sext i32 %22 to i64
  %24 = mul i64 %23, 4
  %25 = trunc i64 %24 to i32
  %26 = call i32 @memset(i32* %21, i32 0, i32 %25)
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* @RATE_6300, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %153

30:                                               ; preds = %5
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32*, i32** @max_pos, align 8
  %35 = load i32, i32* %10, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = icmp sge i32 %33, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %30
  br label %258

41:                                               ; preds = %30
  %42 = load i32, i32* @PULSE_MAX, align 4
  %43 = load i32*, i32** @pulses, align 8
  %44 = load i32, i32* %10, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = sub nsw i32 %42, %47
  store i32 %48, i32* %13, align 4
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  store i32 %51, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %52

52:                                               ; preds = %140, %41
  %53 = load i32, i32* %12, align 4
  %54 = load i32, i32* @SUBFRAME_LEN, align 4
  %55 = load i32, i32* @GRID_SIZE, align 4
  %56 = sdiv i32 %54, %55
  %57 = icmp slt i32 %53, %56
  br i1 %57, label %58, label %143

58:                                               ; preds = %52
  %59 = load i64**, i64*** @combinatorial_table, align 8
  %60 = load i32, i32* %13, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i64*, i64** %59, i64 %61
  %63 = load i64*, i64** %62, align 8
  %64 = load i32, i32* %12, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i64, i64* %63, i64 %65
  %67 = load i64, i64* %66, align 8
  %68 = load i32, i32* %11, align 4
  %69 = sext i32 %68 to i64
  %70 = sub nsw i64 %69, %67
  %71 = trunc i64 %70 to i32
  store i32 %71, i32* %11, align 4
  %72 = load i32, i32* %11, align 4
  %73 = icmp sge i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %58
  br label %140

75:                                               ; preds = %58
  %76 = load i64**, i64*** @combinatorial_table, align 8
  %77 = load i32, i32* %13, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %13, align 4
  %79 = sext i32 %77 to i64
  %80 = getelementptr inbounds i64*, i64** %76, i64 %79
  %81 = load i64*, i64** %80, align 8
  %82 = load i32, i32* %12, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i64, i64* %81, i64 %83
  %85 = load i64, i64* %84, align 8
  %86 = load i32, i32* %11, align 4
  %87 = sext i32 %86 to i64
  %88 = add nsw i64 %87, %85
  %89 = trunc i64 %88 to i32
  store i32 %89, i32* %11, align 4
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @PULSE_MAX, align 4
  %94 = load i32, i32* %13, align 4
  %95 = sub nsw i32 %93, %94
  %96 = shl i32 1, %95
  %97 = and i32 %92, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %117

99:                                               ; preds = %75
  %100 = load i32*, i32** @fixed_cb_gain, align 8
  %101 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 3
  %103 = load i64, i64* %102, align 8
  %104 = getelementptr inbounds i32, i32* %100, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = sub nsw i32 0, %105
  %107 = load i32*, i32** %6, align 8
  %108 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* @GRID_SIZE, align 4
  %112 = load i32, i32* %12, align 4
  %113 = mul nsw i32 %111, %112
  %114 = add nsw i32 %110, %113
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %107, i64 %115
  store i32 %106, i32* %116, align 4
  br label %134

117:                                              ; preds = %75
  %118 = load i32*, i32** @fixed_cb_gain, align 8
  %119 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i32 0, i32 3
  %121 = load i64, i64* %120, align 8
  %122 = getelementptr inbounds i32, i32* %118, i64 %121
  %123 = load i32, i32* %122, align 4
  %124 = load i32*, i32** %6, align 8
  %125 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 8
  %128 = load i32, i32* @GRID_SIZE, align 4
  %129 = load i32, i32* %12, align 4
  %130 = mul nsw i32 %128, %129
  %131 = add nsw i32 %127, %130
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %124, i64 %132
  store i32 %123, i32* %133, align 4
  br label %134

134:                                              ; preds = %117, %99
  %135 = load i32, i32* %13, align 4
  %136 = load i32, i32* @PULSE_MAX, align 4
  %137 = icmp eq i32 %135, %136
  br i1 %137, label %138, label %139

138:                                              ; preds = %134
  br label %143

139:                                              ; preds = %134
  br label %140

140:                                              ; preds = %139, %74
  %141 = load i32, i32* %12, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %12, align 4
  br label %52

143:                                              ; preds = %138, %52
  %144 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %145 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %144, i32 0, i32 4
  %146 = load i32, i32* %145, align 8
  %147 = icmp eq i32 %146, 1
  br i1 %147, label %148, label %152

148:                                              ; preds = %143
  %149 = load i32*, i32** %6, align 8
  %150 = load i32, i32* %9, align 4
  %151 = call i32 @ff_g723_1_gen_dirac_train(i32* %149, i32 %150)
  br label %152

152:                                              ; preds = %148, %143
  br label %258

153:                                              ; preds = %5
  %154 = load i32*, i32** @fixed_cb_gain, align 8
  %155 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %156 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %155, i32 0, i32 3
  %157 = load i64, i64* %156, align 8
  %158 = getelementptr inbounds i32, i32* %154, i64 %157
  %159 = load i32, i32* %158, align 4
  store i32 %159, i32* %14, align 4
  %160 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %161 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 8
  store i32 %162, i32* %15, align 4
  %163 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %164 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  store i32 %165, i32* %16, align 4
  %166 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %167 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  store i32 %168, i32* %17, align 4
  store i32 0, i32* %12, align 4
  br label %169

169:                                              ; preds = %198, %153
  %170 = load i32, i32* %12, align 4
  %171 = icmp slt i32 %170, 8
  br i1 %171, label %172, label %201

172:                                              ; preds = %169
  %173 = load i32, i32* %17, align 4
  %174 = and i32 %173, 7
  %175 = shl i32 %174, 3
  %176 = load i32, i32* %15, align 4
  %177 = add nsw i32 %175, %176
  %178 = load i32, i32* %12, align 4
  %179 = add nsw i32 %177, %178
  store i32 %179, i32* %18, align 4
  %180 = load i32, i32* %16, align 4
  %181 = and i32 %180, 1
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %185

183:                                              ; preds = %172
  %184 = load i32, i32* %14, align 4
  br label %188

185:                                              ; preds = %172
  %186 = load i32, i32* %14, align 4
  %187 = sub nsw i32 0, %186
  br label %188

188:                                              ; preds = %185, %183
  %189 = phi i32 [ %184, %183 ], [ %187, %185 ]
  %190 = load i32*, i32** %6, align 8
  %191 = load i32, i32* %18, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds i32, i32* %190, i64 %192
  store i32 %189, i32* %193, align 4
  %194 = load i32, i32* %17, align 4
  %195 = ashr i32 %194, 3
  store i32 %195, i32* %17, align 4
  %196 = load i32, i32* %16, align 4
  %197 = ashr i32 %196, 1
  store i32 %197, i32* %16, align 4
  br label %198

198:                                              ; preds = %188
  %199 = load i32, i32* %12, align 4
  %200 = add nsw i32 %199, 2
  store i32 %200, i32* %12, align 4
  br label %169

201:                                              ; preds = %169
  %202 = load i32*, i32** @pitch_contrib, align 8
  %203 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %204 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %203, i32 0, i32 5
  %205 = load i32, i32* %204, align 4
  %206 = shl i32 %205, 1
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds i32, i32* %202, i64 %207
  %209 = load i32, i32* %208, align 4
  %210 = load i32, i32* %9, align 4
  %211 = add nsw i32 %209, %210
  %212 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %213 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %212, i32 0, i32 6
  %214 = load i32, i32* %213, align 8
  %215 = add nsw i32 %211, %214
  %216 = sub nsw i32 %215, 1
  store i32 %216, i32* %20, align 4
  %217 = load i32*, i32** @pitch_contrib, align 8
  %218 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %219 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %218, i32 0, i32 5
  %220 = load i32, i32* %219, align 4
  %221 = shl i32 %220, 1
  %222 = add nsw i32 %221, 1
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds i32, i32* %217, i64 %223
  %225 = load i32, i32* %224, align 4
  store i32 %225, i32* %19, align 4
  %226 = load i32, i32* %20, align 4
  %227 = load i32, i32* @SUBFRAME_LEN, align 4
  %228 = sub nsw i32 %227, 2
  %229 = icmp slt i32 %226, %228
  br i1 %229, label %230, label %257

230:                                              ; preds = %201
  %231 = load i32, i32* %20, align 4
  store i32 %231, i32* %12, align 4
  br label %232

232:                                              ; preds = %253, %230
  %233 = load i32, i32* %12, align 4
  %234 = load i32, i32* @SUBFRAME_LEN, align 4
  %235 = icmp slt i32 %233, %234
  br i1 %235, label %236, label %256

236:                                              ; preds = %232
  %237 = load i32, i32* %19, align 4
  %238 = load i32*, i32** %6, align 8
  %239 = load i32, i32* %12, align 4
  %240 = load i32, i32* %20, align 4
  %241 = sub nsw i32 %239, %240
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds i32, i32* %238, i64 %242
  %244 = load i32, i32* %243, align 4
  %245 = mul nsw i32 %237, %244
  %246 = ashr i32 %245, 15
  %247 = load i32*, i32** %6, align 8
  %248 = load i32, i32* %12, align 4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds i32, i32* %247, i64 %249
  %251 = load i32, i32* %250, align 4
  %252 = add nsw i32 %251, %246
  store i32 %252, i32* %250, align 4
  br label %253

253:                                              ; preds = %236
  %254 = load i32, i32* %12, align 4
  %255 = add nsw i32 %254, 1
  store i32 %255, i32* %12, align 4
  br label %232

256:                                              ; preds = %232
  br label %257

257:                                              ; preds = %256, %201
  br label %258

258:                                              ; preds = %40, %257, %152
  ret void
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @ff_g723_1_gen_dirac_train(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
