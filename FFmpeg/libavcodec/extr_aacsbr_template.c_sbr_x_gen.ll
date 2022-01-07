; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_aacsbr_template.c_sbr_x_gen.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_aacsbr_template.c_sbr_x_gen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32*, i32*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@ENVELOPE_ADJUSTMENT_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, [38 x [64 x i32]]*, [64 x [2 x i32]]*, [64 x [2 x i32]]*, [40 x [2 x i32]]*, i32)* @sbr_x_gen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sbr_x_gen(%struct.TYPE_5__* %0, [38 x [64 x i32]]* %1, [64 x [2 x i32]]* %2, [64 x [2 x i32]]* %3, [40 x [2 x i32]]* %4, i32 %5) #0 {
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca [38 x [64 x i32]]*, align 8
  %9 = alloca [64 x [2 x i32]]*, align 8
  %10 = alloca [64 x [2 x i32]]*, align 8
  %11 = alloca [40 x [2 x i32]]*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %7, align 8
  store [38 x [64 x i32]]* %1, [38 x [64 x i32]]** %8, align 8
  store [64 x [2 x i32]]* %2, [64 x [2 x i32]]** %9, align 8
  store [64 x [2 x i32]]* %3, [64 x [2 x i32]]** %10, align 8
  store [40 x [2 x i32]]* %4, [40 x [2 x i32]]** %11, align 8
  store i32 %5, i32* %12, align 4
  store i32 32, i32* %15, align 4
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 2
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = load i32, i32* %12, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = mul nsw i32 2, %24
  %26 = sub nsw i32 %25, 32
  %27 = call i32 @FFMAX(i32 %26, i32 0)
  store i32 %27, i32* %16, align 4
  %28 = load [38 x [64 x i32]]*, [38 x [64 x i32]]** %8, align 8
  %29 = bitcast [38 x [64 x i32]]* %28 to i32***
  %30 = call i32 @memset(i32*** %29, i32 0, i32 19456)
  store i32 0, i32* %13, align 4
  br label %31

31:                                               ; preds = %87, %6
  %32 = load i32, i32* %13, align 4
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp slt i32 %32, %37
  br i1 %38, label %39, label %90

39:                                               ; preds = %31
  store i32 0, i32* %14, align 4
  br label %40

40:                                               ; preds = %83, %39
  %41 = load i32, i32* %14, align 4
  %42 = load i32, i32* %16, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %86

44:                                               ; preds = %40
  %45 = load [40 x [2 x i32]]*, [40 x [2 x i32]]** %11, align 8
  %46 = load i32, i32* %13, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [40 x [2 x i32]], [40 x [2 x i32]]* %45, i64 %47
  %49 = load i32, i32* %14, align 4
  %50 = load i32, i32* @ENVELOPE_ADJUSTMENT_OFFSET, align 4
  %51 = add nsw i32 %49, %50
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [40 x [2 x i32]], [40 x [2 x i32]]* %48, i64 0, i64 %52
  %54 = getelementptr inbounds [2 x i32], [2 x i32]* %53, i64 0, i64 0
  %55 = load i32, i32* %54, align 4
  %56 = load [38 x [64 x i32]]*, [38 x [64 x i32]]** %8, align 8
  %57 = getelementptr inbounds [38 x [64 x i32]], [38 x [64 x i32]]* %56, i64 0
  %58 = load i32, i32* %14, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds [38 x [64 x i32]], [38 x [64 x i32]]* %57, i64 0, i64 %59
  %61 = load i32, i32* %13, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds [64 x i32], [64 x i32]* %60, i64 0, i64 %62
  store i32 %55, i32* %63, align 4
  %64 = load [40 x [2 x i32]]*, [40 x [2 x i32]]** %11, align 8
  %65 = load i32, i32* %13, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds [40 x [2 x i32]], [40 x [2 x i32]]* %64, i64 %66
  %68 = load i32, i32* %14, align 4
  %69 = load i32, i32* @ENVELOPE_ADJUSTMENT_OFFSET, align 4
  %70 = add nsw i32 %68, %69
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds [40 x [2 x i32]], [40 x [2 x i32]]* %67, i64 0, i64 %71
  %73 = getelementptr inbounds [2 x i32], [2 x i32]* %72, i64 0, i64 1
  %74 = load i32, i32* %73, align 4
  %75 = load [38 x [64 x i32]]*, [38 x [64 x i32]]** %8, align 8
  %76 = getelementptr inbounds [38 x [64 x i32]], [38 x [64 x i32]]* %75, i64 1
  %77 = load i32, i32* %14, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds [38 x [64 x i32]], [38 x [64 x i32]]* %76, i64 0, i64 %78
  %80 = load i32, i32* %13, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds [64 x i32], [64 x i32]* %79, i64 0, i64 %81
  store i32 %74, i32* %82, align 4
  br label %83

83:                                               ; preds = %44
  %84 = load i32, i32* %14, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %14, align 4
  br label %40

86:                                               ; preds = %40
  br label %87

87:                                               ; preds = %86
  %88 = load i32, i32* %13, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %13, align 4
  br label %31

90:                                               ; preds = %31
  br label %91

91:                                               ; preds = %151, %90
  %92 = load i32, i32* %13, align 4
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 0
  %95 = load i32*, i32** %94, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 0
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 1
  %100 = load i32*, i32** %99, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 0
  %102 = load i32, i32* %101, align 4
  %103 = add nsw i32 %97, %102
  %104 = icmp slt i32 %92, %103
  br i1 %104, label %105, label %154

105:                                              ; preds = %91
  store i32 0, i32* %14, align 4
  br label %106

106:                                              ; preds = %147, %105
  %107 = load i32, i32* %14, align 4
  %108 = load i32, i32* %16, align 4
  %109 = icmp slt i32 %107, %108
  br i1 %109, label %110, label %150

110:                                              ; preds = %106
  %111 = load [64 x [2 x i32]]*, [64 x [2 x i32]]** %9, align 8
  %112 = load i32, i32* %14, align 4
  %113 = add nsw i32 %112, 32
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds [64 x [2 x i32]], [64 x [2 x i32]]* %111, i64 %114
  %116 = load i32, i32* %13, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds [64 x [2 x i32]], [64 x [2 x i32]]* %115, i64 0, i64 %117
  %119 = getelementptr inbounds [2 x i32], [2 x i32]* %118, i64 0, i64 0
  %120 = load i32, i32* %119, align 4
  %121 = load [38 x [64 x i32]]*, [38 x [64 x i32]]** %8, align 8
  %122 = getelementptr inbounds [38 x [64 x i32]], [38 x [64 x i32]]* %121, i64 0
  %123 = load i32, i32* %14, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds [38 x [64 x i32]], [38 x [64 x i32]]* %122, i64 0, i64 %124
  %126 = load i32, i32* %13, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds [64 x i32], [64 x i32]* %125, i64 0, i64 %127
  store i32 %120, i32* %128, align 4
  %129 = load [64 x [2 x i32]]*, [64 x [2 x i32]]** %9, align 8
  %130 = load i32, i32* %14, align 4
  %131 = add nsw i32 %130, 32
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds [64 x [2 x i32]], [64 x [2 x i32]]* %129, i64 %132
  %134 = load i32, i32* %13, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds [64 x [2 x i32]], [64 x [2 x i32]]* %133, i64 0, i64 %135
  %137 = getelementptr inbounds [2 x i32], [2 x i32]* %136, i64 0, i64 1
  %138 = load i32, i32* %137, align 4
  %139 = load [38 x [64 x i32]]*, [38 x [64 x i32]]** %8, align 8
  %140 = getelementptr inbounds [38 x [64 x i32]], [38 x [64 x i32]]* %139, i64 1
  %141 = load i32, i32* %14, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds [38 x [64 x i32]], [38 x [64 x i32]]* %140, i64 0, i64 %142
  %144 = load i32, i32* %13, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds [64 x i32], [64 x i32]* %143, i64 0, i64 %145
  store i32 %138, i32* %146, align 4
  br label %147

147:                                              ; preds = %110
  %148 = load i32, i32* %14, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %14, align 4
  br label %106

150:                                              ; preds = %106
  br label %151

151:                                              ; preds = %150
  %152 = load i32, i32* %13, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %13, align 4
  br label %91

154:                                              ; preds = %91
  store i32 0, i32* %13, align 4
  br label %155

155:                                              ; preds = %211, %154
  %156 = load i32, i32* %13, align 4
  %157 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %158 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %157, i32 0, i32 0
  %159 = load i32*, i32** %158, align 8
  %160 = getelementptr inbounds i32, i32* %159, i64 1
  %161 = load i32, i32* %160, align 4
  %162 = icmp slt i32 %156, %161
  br i1 %162, label %163, label %214

163:                                              ; preds = %155
  %164 = load i32, i32* %16, align 4
  store i32 %164, i32* %14, align 4
  br label %165

165:                                              ; preds = %207, %163
  %166 = load i32, i32* %14, align 4
  %167 = icmp slt i32 %166, 38
  br i1 %167, label %168, label %210

168:                                              ; preds = %165
  %169 = load [40 x [2 x i32]]*, [40 x [2 x i32]]** %11, align 8
  %170 = load i32, i32* %13, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds [40 x [2 x i32]], [40 x [2 x i32]]* %169, i64 %171
  %173 = load i32, i32* %14, align 4
  %174 = load i32, i32* @ENVELOPE_ADJUSTMENT_OFFSET, align 4
  %175 = add nsw i32 %173, %174
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds [40 x [2 x i32]], [40 x [2 x i32]]* %172, i64 0, i64 %176
  %178 = getelementptr inbounds [2 x i32], [2 x i32]* %177, i64 0, i64 0
  %179 = load i32, i32* %178, align 4
  %180 = load [38 x [64 x i32]]*, [38 x [64 x i32]]** %8, align 8
  %181 = getelementptr inbounds [38 x [64 x i32]], [38 x [64 x i32]]* %180, i64 0
  %182 = load i32, i32* %14, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds [38 x [64 x i32]], [38 x [64 x i32]]* %181, i64 0, i64 %183
  %185 = load i32, i32* %13, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds [64 x i32], [64 x i32]* %184, i64 0, i64 %186
  store i32 %179, i32* %187, align 4
  %188 = load [40 x [2 x i32]]*, [40 x [2 x i32]]** %11, align 8
  %189 = load i32, i32* %13, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds [40 x [2 x i32]], [40 x [2 x i32]]* %188, i64 %190
  %192 = load i32, i32* %14, align 4
  %193 = load i32, i32* @ENVELOPE_ADJUSTMENT_OFFSET, align 4
  %194 = add nsw i32 %192, %193
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds [40 x [2 x i32]], [40 x [2 x i32]]* %191, i64 0, i64 %195
  %197 = getelementptr inbounds [2 x i32], [2 x i32]* %196, i64 0, i64 1
  %198 = load i32, i32* %197, align 4
  %199 = load [38 x [64 x i32]]*, [38 x [64 x i32]]** %8, align 8
  %200 = getelementptr inbounds [38 x [64 x i32]], [38 x [64 x i32]]* %199, i64 1
  %201 = load i32, i32* %14, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds [38 x [64 x i32]], [38 x [64 x i32]]* %200, i64 0, i64 %202
  %204 = load i32, i32* %13, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds [64 x i32], [64 x i32]* %203, i64 0, i64 %205
  store i32 %198, i32* %206, align 4
  br label %207

207:                                              ; preds = %168
  %208 = load i32, i32* %14, align 4
  %209 = add nsw i32 %208, 1
  store i32 %209, i32* %14, align 4
  br label %165

210:                                              ; preds = %165
  br label %211

211:                                              ; preds = %210
  %212 = load i32, i32* %13, align 4
  %213 = add nsw i32 %212, 1
  store i32 %213, i32* %13, align 4
  br label %155

214:                                              ; preds = %155
  br label %215

215:                                              ; preds = %273, %214
  %216 = load i32, i32* %13, align 4
  %217 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %218 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %217, i32 0, i32 0
  %219 = load i32*, i32** %218, align 8
  %220 = getelementptr inbounds i32, i32* %219, i64 1
  %221 = load i32, i32* %220, align 4
  %222 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %223 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %222, i32 0, i32 1
  %224 = load i32*, i32** %223, align 8
  %225 = getelementptr inbounds i32, i32* %224, i64 1
  %226 = load i32, i32* %225, align 4
  %227 = add nsw i32 %221, %226
  %228 = icmp slt i32 %216, %227
  br i1 %228, label %229, label %276

229:                                              ; preds = %215
  %230 = load i32, i32* %16, align 4
  store i32 %230, i32* %14, align 4
  br label %231

231:                                              ; preds = %269, %229
  %232 = load i32, i32* %14, align 4
  %233 = icmp slt i32 %232, 32
  br i1 %233, label %234, label %272

234:                                              ; preds = %231
  %235 = load [64 x [2 x i32]]*, [64 x [2 x i32]]** %10, align 8
  %236 = load i32, i32* %14, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds [64 x [2 x i32]], [64 x [2 x i32]]* %235, i64 %237
  %239 = load i32, i32* %13, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds [64 x [2 x i32]], [64 x [2 x i32]]* %238, i64 0, i64 %240
  %242 = getelementptr inbounds [2 x i32], [2 x i32]* %241, i64 0, i64 0
  %243 = load i32, i32* %242, align 4
  %244 = load [38 x [64 x i32]]*, [38 x [64 x i32]]** %8, align 8
  %245 = getelementptr inbounds [38 x [64 x i32]], [38 x [64 x i32]]* %244, i64 0
  %246 = load i32, i32* %14, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds [38 x [64 x i32]], [38 x [64 x i32]]* %245, i64 0, i64 %247
  %249 = load i32, i32* %13, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds [64 x i32], [64 x i32]* %248, i64 0, i64 %250
  store i32 %243, i32* %251, align 4
  %252 = load [64 x [2 x i32]]*, [64 x [2 x i32]]** %10, align 8
  %253 = load i32, i32* %14, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds [64 x [2 x i32]], [64 x [2 x i32]]* %252, i64 %254
  %256 = load i32, i32* %13, align 4
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds [64 x [2 x i32]], [64 x [2 x i32]]* %255, i64 0, i64 %257
  %259 = getelementptr inbounds [2 x i32], [2 x i32]* %258, i64 0, i64 1
  %260 = load i32, i32* %259, align 4
  %261 = load [38 x [64 x i32]]*, [38 x [64 x i32]]** %8, align 8
  %262 = getelementptr inbounds [38 x [64 x i32]], [38 x [64 x i32]]* %261, i64 1
  %263 = load i32, i32* %14, align 4
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds [38 x [64 x i32]], [38 x [64 x i32]]* %262, i64 0, i64 %264
  %266 = load i32, i32* %13, align 4
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds [64 x i32], [64 x i32]* %265, i64 0, i64 %267
  store i32 %260, i32* %268, align 4
  br label %269

269:                                              ; preds = %234
  %270 = load i32, i32* %14, align 4
  %271 = add nsw i32 %270, 1
  store i32 %271, i32* %14, align 4
  br label %231

272:                                              ; preds = %231
  br label %273

273:                                              ; preds = %272
  %274 = load i32, i32* %13, align 4
  %275 = add nsw i32 %274, 1
  store i32 %275, i32* %13, align 4
  br label %215

276:                                              ; preds = %215
  ret i32 0
}

declare dso_local i32 @FFMAX(i32, i32) #1

declare dso_local i32 @memset(i32***, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
