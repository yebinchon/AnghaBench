; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_motion_est.c_ff_fix_long_mvs.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_motion_est.c_ff_fix_long_mvs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32, i32, i32, i32*, i64, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@FMT_MPEG1 = common dso_local global i64 0, align 8
@CANDIDATE_MB_TYPE_INTRA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_fix_long_mvs(%struct.TYPE_6__* %0, i32* %1, i32 %2, [2 x i32]* %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca [2 x i32]*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_7__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store [2 x i32]* %3, [2 x i32]** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 6
  store %struct.TYPE_7__* %23, %struct.TYPE_7__** %15, align 8
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @FMT_MPEG1, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %34, label %29

29:                                               ; preds = %7
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 5
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br label %34

34:                                               ; preds = %29, %7
  %35 = phi i1 [ true, %7 ], [ %33, %29 ]
  %36 = zext i1 %35 to i64
  %37 = select i1 %35, i32 8, i32 16
  %38 = load i32, i32* %12, align 4
  %39 = shl i32 %37, %38
  store i32 %39, i32* %19, align 4
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %60

46:                                               ; preds = %34
  %47 = load i32, i32* %19, align 4
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = icmp sgt i32 %47, %52
  br i1 %53, label %54, label %60

54:                                               ; preds = %46
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %19, align 4
  br label %60

60:                                               ; preds = %54, %46, %34
  %61 = load i32, i32* %19, align 4
  store i32 %61, i32* %17, align 4
  %62 = load i32*, i32** %9, align 8
  %63 = icmp ne i32* %62, null
  br i1 %63, label %64, label %67

64:                                               ; preds = %60
  %65 = load i32, i32* %19, align 4
  %66 = ashr i32 %65, 1
  br label %69

67:                                               ; preds = %60
  %68 = load i32, i32* %19, align 4
  br label %69

69:                                               ; preds = %67, %64
  %70 = phi i32 [ %66, %64 ], [ %68, %67 ]
  store i32 %70, i32* %18, align 4
  store i32 0, i32* %16, align 4
  br label %71

71:                                               ; preds = %267, %69
  %72 = load i32, i32* %16, align 4
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = icmp slt i32 %72, %75
  br i1 %76, label %77, label %270

77:                                               ; preds = %71
  %78 = load i32, i32* %16, align 4
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = mul nsw i32 %78, %81
  store i32 %82, i32* %21, align 4
  store i32 0, i32* %20, align 4
  br label %83

83:                                               ; preds = %263, %77
  %84 = load i32, i32* %20, align 4
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 8
  %88 = icmp slt i32 %84, %87
  br i1 %88, label %89, label %266

89:                                               ; preds = %83
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 4
  %92 = load i32*, i32** %91, align 8
  %93 = load i32, i32* %21, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* %13, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %260

100:                                              ; preds = %89
  %101 = load i32*, i32** %9, align 8
  %102 = icmp ne i32* %101, null
  br i1 %102, label %103, label %111

103:                                              ; preds = %100
  %104 = load i32*, i32** %9, align 8
  %105 = load i32, i32* %21, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %104, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* %10, align 4
  %110 = icmp eq i32 %108, %109
  br i1 %110, label %111, label %259

111:                                              ; preds = %103, %100
  %112 = load [2 x i32]*, [2 x i32]** %11, align 8
  %113 = load i32, i32* %21, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds [2 x i32], [2 x i32]* %112, i64 %114
  %116 = getelementptr inbounds [2 x i32], [2 x i32]* %115, i64 0, i64 0
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* %17, align 4
  %119 = icmp sge i32 %117, %118
  br i1 %119, label %149, label %120

120:                                              ; preds = %111
  %121 = load [2 x i32]*, [2 x i32]** %11, align 8
  %122 = load i32, i32* %21, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds [2 x i32], [2 x i32]* %121, i64 %123
  %125 = getelementptr inbounds [2 x i32], [2 x i32]* %124, i64 0, i64 0
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* %17, align 4
  %128 = sub nsw i32 0, %127
  %129 = icmp slt i32 %126, %128
  br i1 %129, label %149, label %130

130:                                              ; preds = %120
  %131 = load [2 x i32]*, [2 x i32]** %11, align 8
  %132 = load i32, i32* %21, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds [2 x i32], [2 x i32]* %131, i64 %133
  %135 = getelementptr inbounds [2 x i32], [2 x i32]* %134, i64 0, i64 1
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* %18, align 4
  %138 = icmp sge i32 %136, %137
  br i1 %138, label %149, label %139

139:                                              ; preds = %130
  %140 = load [2 x i32]*, [2 x i32]** %11, align 8
  %141 = load i32, i32* %21, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds [2 x i32], [2 x i32]* %140, i64 %142
  %144 = getelementptr inbounds [2 x i32], [2 x i32]* %143, i64 0, i64 1
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* %18, align 4
  %147 = sub nsw i32 0, %146
  %148 = icmp slt i32 %145, %147
  br i1 %148, label %149, label %258

149:                                              ; preds = %139, %130, %120, %111
  %150 = load i32, i32* %14, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %227

152:                                              ; preds = %149
  %153 = load [2 x i32]*, [2 x i32]** %11, align 8
  %154 = load i32, i32* %21, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds [2 x i32], [2 x i32]* %153, i64 %155
  %157 = getelementptr inbounds [2 x i32], [2 x i32]* %156, i64 0, i64 0
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* %17, align 4
  %160 = sub nsw i32 %159, 1
  %161 = icmp sgt i32 %158, %160
  br i1 %161, label %162, label %170

162:                                              ; preds = %152
  %163 = load i32, i32* %17, align 4
  %164 = sub nsw i32 %163, 1
  %165 = load [2 x i32]*, [2 x i32]** %11, align 8
  %166 = load i32, i32* %21, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds [2 x i32], [2 x i32]* %165, i64 %167
  %169 = getelementptr inbounds [2 x i32], [2 x i32]* %168, i64 0, i64 0
  store i32 %164, i32* %169, align 4
  br label %189

170:                                              ; preds = %152
  %171 = load [2 x i32]*, [2 x i32]** %11, align 8
  %172 = load i32, i32* %21, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds [2 x i32], [2 x i32]* %171, i64 %173
  %175 = getelementptr inbounds [2 x i32], [2 x i32]* %174, i64 0, i64 0
  %176 = load i32, i32* %175, align 4
  %177 = load i32, i32* %17, align 4
  %178 = sub nsw i32 0, %177
  %179 = icmp slt i32 %176, %178
  br i1 %179, label %180, label %188

180:                                              ; preds = %170
  %181 = load i32, i32* %17, align 4
  %182 = sub nsw i32 0, %181
  %183 = load [2 x i32]*, [2 x i32]** %11, align 8
  %184 = load i32, i32* %21, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds [2 x i32], [2 x i32]* %183, i64 %185
  %187 = getelementptr inbounds [2 x i32], [2 x i32]* %186, i64 0, i64 0
  store i32 %182, i32* %187, align 4
  br label %188

188:                                              ; preds = %180, %170
  br label %189

189:                                              ; preds = %188, %162
  %190 = load [2 x i32]*, [2 x i32]** %11, align 8
  %191 = load i32, i32* %21, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds [2 x i32], [2 x i32]* %190, i64 %192
  %194 = getelementptr inbounds [2 x i32], [2 x i32]* %193, i64 0, i64 1
  %195 = load i32, i32* %194, align 4
  %196 = load i32, i32* %18, align 4
  %197 = sub nsw i32 %196, 1
  %198 = icmp sgt i32 %195, %197
  br i1 %198, label %199, label %207

199:                                              ; preds = %189
  %200 = load i32, i32* %18, align 4
  %201 = sub nsw i32 %200, 1
  %202 = load [2 x i32]*, [2 x i32]** %11, align 8
  %203 = load i32, i32* %21, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds [2 x i32], [2 x i32]* %202, i64 %204
  %206 = getelementptr inbounds [2 x i32], [2 x i32]* %205, i64 0, i64 1
  store i32 %201, i32* %206, align 4
  br label %226

207:                                              ; preds = %189
  %208 = load [2 x i32]*, [2 x i32]** %11, align 8
  %209 = load i32, i32* %21, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds [2 x i32], [2 x i32]* %208, i64 %210
  %212 = getelementptr inbounds [2 x i32], [2 x i32]* %211, i64 0, i64 1
  %213 = load i32, i32* %212, align 4
  %214 = load i32, i32* %18, align 4
  %215 = sub nsw i32 0, %214
  %216 = icmp slt i32 %213, %215
  br i1 %216, label %217, label %225

217:                                              ; preds = %207
  %218 = load i32, i32* %18, align 4
  %219 = sub nsw i32 0, %218
  %220 = load [2 x i32]*, [2 x i32]** %11, align 8
  %221 = load i32, i32* %21, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds [2 x i32], [2 x i32]* %220, i64 %222
  %224 = getelementptr inbounds [2 x i32], [2 x i32]* %223, i64 0, i64 1
  store i32 %219, i32* %224, align 4
  br label %225

225:                                              ; preds = %217, %207
  br label %226

226:                                              ; preds = %225, %199
  br label %257

227:                                              ; preds = %149
  %228 = load i32, i32* %13, align 4
  %229 = xor i32 %228, -1
  %230 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %231 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %230, i32 0, i32 4
  %232 = load i32*, i32** %231, align 8
  %233 = load i32, i32* %21, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds i32, i32* %232, i64 %234
  %236 = load i32, i32* %235, align 4
  %237 = and i32 %236, %229
  store i32 %237, i32* %235, align 4
  %238 = load i32, i32* @CANDIDATE_MB_TYPE_INTRA, align 4
  %239 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %240 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %239, i32 0, i32 4
  %241 = load i32*, i32** %240, align 8
  %242 = load i32, i32* %21, align 4
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds i32, i32* %241, i64 %243
  %245 = load i32, i32* %244, align 4
  %246 = or i32 %245, %238
  store i32 %246, i32* %244, align 4
  %247 = load [2 x i32]*, [2 x i32]** %11, align 8
  %248 = load i32, i32* %21, align 4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds [2 x i32], [2 x i32]* %247, i64 %249
  %251 = getelementptr inbounds [2 x i32], [2 x i32]* %250, i64 0, i64 1
  store i32 0, i32* %251, align 4
  %252 = load [2 x i32]*, [2 x i32]** %11, align 8
  %253 = load i32, i32* %21, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds [2 x i32], [2 x i32]* %252, i64 %254
  %256 = getelementptr inbounds [2 x i32], [2 x i32]* %255, i64 0, i64 0
  store i32 0, i32* %256, align 4
  br label %257

257:                                              ; preds = %227, %226
  br label %258

258:                                              ; preds = %257, %139
  br label %259

259:                                              ; preds = %258, %103
  br label %260

260:                                              ; preds = %259, %89
  %261 = load i32, i32* %21, align 4
  %262 = add nsw i32 %261, 1
  store i32 %262, i32* %21, align 4
  br label %263

263:                                              ; preds = %260
  %264 = load i32, i32* %20, align 4
  %265 = add nsw i32 %264, 1
  store i32 %265, i32* %20, align 4
  br label %83

266:                                              ; preds = %83
  br label %267

267:                                              ; preds = %266
  %268 = load i32, i32* %16, align 4
  %269 = add nsw i32 %268, 1
  store i32 %269, i32* %16, align 4
  br label %71

270:                                              ; preds = %71
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
