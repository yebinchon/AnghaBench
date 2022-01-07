; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/libz/extr_deflate.c_deflate_rle.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/libz/extr_deflate.c_deflate_rle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i64, i64, i64*, i32, i64, i64 }

@MAX_MATCH = common dso_local global i64 0, align 8
@Z_NO_FLUSH = common dso_local global i32 0, align 4
@need_more = common dso_local global i32 0, align 4
@MIN_MATCH = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"wild scan\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@Z_FINISH = common dso_local global i32 0, align 4
@finish_done = common dso_local global i32 0, align 4
@block_done = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i32)* @deflate_rle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @deflate_rle(%struct.TYPE_7__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i32 %1, i32* %5, align 4
  br label %10

10:                                               ; preds = %252, %2
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @MAX_MATCH, align 8
  %15 = icmp sle i64 %13, %14
  br i1 %15, label %16, label %37

16:                                               ; preds = %10
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %18 = call i32 @fill_window(%struct.TYPE_7__* %17)
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @MAX_MATCH, align 8
  %23 = icmp sle i64 %21, %22
  br i1 %23, label %24, label %30

24:                                               ; preds = %16
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @Z_NO_FLUSH, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = load i32, i32* @need_more, align 4
  store i32 %29, i32* %3, align 4
  br label %273

30:                                               ; preds = %24, %16
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  br label %253

36:                                               ; preds = %30
  br label %37

37:                                               ; preds = %36, %10
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 1
  store i64 0, i64* %39, align 8
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @MIN_MATCH, align 8
  %44 = icmp sge i64 %42, %43
  br i1 %44, label %45, label %184

45:                                               ; preds = %37
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = icmp sgt i64 %48, 0
  br i1 %49, label %50, label %184

50:                                               ; preds = %45
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 3
  %53 = load i64*, i64** %52, align 8
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = getelementptr inbounds i64, i64* %53, i64 %56
  %58 = getelementptr inbounds i64, i64* %57, i64 -1
  store i64* %58, i64** %8, align 8
  %59 = load i64*, i64** %8, align 8
  %60 = load i64, i64* %59, align 8
  store i64 %60, i64* %7, align 8
  %61 = load i64, i64* %7, align 8
  %62 = load i64*, i64** %8, align 8
  %63 = getelementptr inbounds i64, i64* %62, i32 1
  store i64* %63, i64** %8, align 8
  %64 = load i64, i64* %63, align 8
  %65 = icmp eq i64 %61, %64
  br i1 %65, label %66, label %170

66:                                               ; preds = %50
  %67 = load i64, i64* %7, align 8
  %68 = load i64*, i64** %8, align 8
  %69 = getelementptr inbounds i64, i64* %68, i32 1
  store i64* %69, i64** %8, align 8
  %70 = load i64, i64* %69, align 8
  %71 = icmp eq i64 %67, %70
  br i1 %71, label %72, label %170

72:                                               ; preds = %66
  %73 = load i64, i64* %7, align 8
  %74 = load i64*, i64** %8, align 8
  %75 = getelementptr inbounds i64, i64* %74, i32 1
  store i64* %75, i64** %8, align 8
  %76 = load i64, i64* %75, align 8
  %77 = icmp eq i64 %73, %76
  br i1 %77, label %78, label %170

78:                                               ; preds = %72
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 3
  %81 = load i64*, i64** %80, align 8
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = getelementptr inbounds i64, i64* %81, i64 %84
  %86 = load i64, i64* @MAX_MATCH, align 8
  %87 = getelementptr inbounds i64, i64* %85, i64 %86
  store i64* %87, i64** %9, align 8
  br label %88

88:                                               ; preds = %141, %78
  br label %89

89:                                               ; preds = %88
  %90 = load i64, i64* %7, align 8
  %91 = load i64*, i64** %8, align 8
  %92 = getelementptr inbounds i64, i64* %91, i32 1
  store i64* %92, i64** %8, align 8
  %93 = load i64, i64* %92, align 8
  %94 = icmp eq i64 %90, %93
  br i1 %94, label %95, label %141

95:                                               ; preds = %89
  %96 = load i64, i64* %7, align 8
  %97 = load i64*, i64** %8, align 8
  %98 = getelementptr inbounds i64, i64* %97, i32 1
  store i64* %98, i64** %8, align 8
  %99 = load i64, i64* %98, align 8
  %100 = icmp eq i64 %96, %99
  br i1 %100, label %101, label %141

101:                                              ; preds = %95
  %102 = load i64, i64* %7, align 8
  %103 = load i64*, i64** %8, align 8
  %104 = getelementptr inbounds i64, i64* %103, i32 1
  store i64* %104, i64** %8, align 8
  %105 = load i64, i64* %104, align 8
  %106 = icmp eq i64 %102, %105
  br i1 %106, label %107, label %141

107:                                              ; preds = %101
  %108 = load i64, i64* %7, align 8
  %109 = load i64*, i64** %8, align 8
  %110 = getelementptr inbounds i64, i64* %109, i32 1
  store i64* %110, i64** %8, align 8
  %111 = load i64, i64* %110, align 8
  %112 = icmp eq i64 %108, %111
  br i1 %112, label %113, label %141

113:                                              ; preds = %107
  %114 = load i64, i64* %7, align 8
  %115 = load i64*, i64** %8, align 8
  %116 = getelementptr inbounds i64, i64* %115, i32 1
  store i64* %116, i64** %8, align 8
  %117 = load i64, i64* %116, align 8
  %118 = icmp eq i64 %114, %117
  br i1 %118, label %119, label %141

119:                                              ; preds = %113
  %120 = load i64, i64* %7, align 8
  %121 = load i64*, i64** %8, align 8
  %122 = getelementptr inbounds i64, i64* %121, i32 1
  store i64* %122, i64** %8, align 8
  %123 = load i64, i64* %122, align 8
  %124 = icmp eq i64 %120, %123
  br i1 %124, label %125, label %141

125:                                              ; preds = %119
  %126 = load i64, i64* %7, align 8
  %127 = load i64*, i64** %8, align 8
  %128 = getelementptr inbounds i64, i64* %127, i32 1
  store i64* %128, i64** %8, align 8
  %129 = load i64, i64* %128, align 8
  %130 = icmp eq i64 %126, %129
  br i1 %130, label %131, label %141

131:                                              ; preds = %125
  %132 = load i64, i64* %7, align 8
  %133 = load i64*, i64** %8, align 8
  %134 = getelementptr inbounds i64, i64* %133, i32 1
  store i64* %134, i64** %8, align 8
  %135 = load i64, i64* %134, align 8
  %136 = icmp eq i64 %132, %135
  br i1 %136, label %137, label %141

137:                                              ; preds = %131
  %138 = load i64*, i64** %8, align 8
  %139 = load i64*, i64** %9, align 8
  %140 = icmp ult i64* %138, %139
  br label %141

141:                                              ; preds = %137, %131, %125, %119, %113, %107, %101, %95, %89
  %142 = phi i1 [ false, %131 ], [ false, %125 ], [ false, %119 ], [ false, %113 ], [ false, %107 ], [ false, %101 ], [ false, %95 ], [ false, %89 ], [ %140, %137 ]
  br i1 %142, label %88, label %143

143:                                              ; preds = %141
  %144 = load i64, i64* @MAX_MATCH, align 8
  %145 = load i64*, i64** %9, align 8
  %146 = load i64*, i64** %8, align 8
  %147 = ptrtoint i64* %145 to i64
  %148 = ptrtoint i64* %146 to i64
  %149 = sub i64 %147, %148
  %150 = sdiv exact i64 %149, 8
  %151 = trunc i64 %150 to i32
  %152 = sext i32 %151 to i64
  %153 = sub nsw i64 %144, %152
  %154 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %155 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %154, i32 0, i32 1
  store i64 %153, i64* %155, align 8
  %156 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %157 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %156, i32 0, i32 1
  %158 = load i64, i64* %157, align 8
  %159 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %160 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = icmp sgt i64 %158, %161
  br i1 %162, label %163, label %169

163:                                              ; preds = %143
  %164 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %165 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %168 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %167, i32 0, i32 1
  store i64 %166, i64* %168, align 8
  br label %169

169:                                              ; preds = %163, %143
  br label %170

170:                                              ; preds = %169, %72, %66, %50
  %171 = load i64*, i64** %8, align 8
  %172 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %173 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %172, i32 0, i32 3
  %174 = load i64*, i64** %173, align 8
  %175 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %176 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %175, i32 0, i32 4
  %177 = load i32, i32* %176, align 8
  %178 = sub nsw i32 %177, 1
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i64, i64* %174, i64 %179
  %181 = icmp ule i64* %171, %180
  %182 = zext i1 %181 to i32
  %183 = call i32 @Assert(i32 %182, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  br label %184

184:                                              ; preds = %170, %45, %37
  %185 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %186 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %185, i32 0, i32 1
  %187 = load i64, i64* %186, align 8
  %188 = load i64, i64* @MIN_MATCH, align 8
  %189 = icmp sge i64 %187, %188
  br i1 %189, label %190, label %215

190:                                              ; preds = %184
  %191 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %192 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %193 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %192, i32 0, i32 1
  %194 = load i64, i64* %193, align 8
  %195 = load i64, i64* @MIN_MATCH, align 8
  %196 = sub nsw i64 %194, %195
  %197 = load i32, i32* %6, align 4
  %198 = call i32 @_tr_tally_dist(%struct.TYPE_7__* %191, i32 1, i64 %196, i32 %197)
  %199 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %200 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %199, i32 0, i32 1
  %201 = load i64, i64* %200, align 8
  %202 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %203 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %202, i32 0, i32 0
  %204 = load i64, i64* %203, align 8
  %205 = sub nsw i64 %204, %201
  store i64 %205, i64* %203, align 8
  %206 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %207 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %206, i32 0, i32 1
  %208 = load i64, i64* %207, align 8
  %209 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %210 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %209, i32 0, i32 2
  %211 = load i64, i64* %210, align 8
  %212 = add nsw i64 %211, %208
  store i64 %212, i64* %210, align 8
  %213 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %214 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %213, i32 0, i32 1
  store i64 0, i64* %214, align 8
  br label %246

215:                                              ; preds = %184
  %216 = load i32, i32* @stderr, align 4
  %217 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %218 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %217, i32 0, i32 3
  %219 = load i64*, i64** %218, align 8
  %220 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %221 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %220, i32 0, i32 2
  %222 = load i64, i64* %221, align 8
  %223 = getelementptr inbounds i64, i64* %219, i64 %222
  %224 = load i64, i64* %223, align 8
  %225 = trunc i64 %224 to i32
  %226 = call i32 @Tracevv(i32 %225)
  %227 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %228 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %229 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %228, i32 0, i32 3
  %230 = load i64*, i64** %229, align 8
  %231 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %232 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %231, i32 0, i32 2
  %233 = load i64, i64* %232, align 8
  %234 = getelementptr inbounds i64, i64* %230, i64 %233
  %235 = load i64, i64* %234, align 8
  %236 = load i32, i32* %6, align 4
  %237 = call i32 @_tr_tally_lit(%struct.TYPE_7__* %227, i64 %235, i32 %236)
  %238 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %239 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %238, i32 0, i32 0
  %240 = load i64, i64* %239, align 8
  %241 = add nsw i64 %240, -1
  store i64 %241, i64* %239, align 8
  %242 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %243 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %242, i32 0, i32 2
  %244 = load i64, i64* %243, align 8
  %245 = add nsw i64 %244, 1
  store i64 %245, i64* %243, align 8
  br label %246

246:                                              ; preds = %215, %190
  %247 = load i32, i32* %6, align 4
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %249, label %252

249:                                              ; preds = %246
  %250 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %251 = call i32 @FLUSH_BLOCK(%struct.TYPE_7__* %250, i32 0)
  br label %252

252:                                              ; preds = %249, %246
  br label %10

253:                                              ; preds = %35
  %254 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %255 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %254, i32 0, i32 6
  store i64 0, i64* %255, align 8
  %256 = load i32, i32* %5, align 4
  %257 = load i32, i32* @Z_FINISH, align 4
  %258 = icmp eq i32 %256, %257
  br i1 %258, label %259, label %263

259:                                              ; preds = %253
  %260 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %261 = call i32 @FLUSH_BLOCK(%struct.TYPE_7__* %260, i32 1)
  %262 = load i32, i32* @finish_done, align 4
  store i32 %262, i32* %3, align 4
  br label %273

263:                                              ; preds = %253
  %264 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %265 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %264, i32 0, i32 5
  %266 = load i64, i64* %265, align 8
  %267 = icmp ne i64 %266, 0
  br i1 %267, label %268, label %271

268:                                              ; preds = %263
  %269 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %270 = call i32 @FLUSH_BLOCK(%struct.TYPE_7__* %269, i32 0)
  br label %271

271:                                              ; preds = %268, %263
  %272 = load i32, i32* @block_done, align 4
  store i32 %272, i32* %3, align 4
  br label %273

273:                                              ; preds = %271, %259, %28
  %274 = load i32, i32* %3, align 4
  ret i32 %274
}

declare dso_local i32 @fill_window(%struct.TYPE_7__*) #1

declare dso_local i32 @Assert(i32, i8*) #1

declare dso_local i32 @_tr_tally_dist(%struct.TYPE_7__*, i32, i64, i32) #1

declare dso_local i32 @Tracevv(i32) #1

declare dso_local i32 @_tr_tally_lit(%struct.TYPE_7__*, i64, i32) #1

declare dso_local i32 @FLUSH_BLOCK(%struct.TYPE_7__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
