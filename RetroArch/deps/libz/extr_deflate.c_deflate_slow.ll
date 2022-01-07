; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/libz/extr_deflate.c_deflate_slow.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/libz/extr_deflate.c_deflate_slow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, i64, i32, i32, i64, i64, i64, i64, i32, i32, i64, i32*, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i64 }

@MIN_LOOKAHEAD = common dso_local global i64 0, align 8
@Z_NO_FLUSH = common dso_local global i32 0, align 4
@need_more = common dso_local global i32 0, align 4
@NIL = common dso_local global i64 0, align 8
@MIN_MATCH = common dso_local global i32 0, align 4
@Z_FILTERED = common dso_local global i64 0, align 8
@TOO_FAR = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"no flush?\00", align 1
@Z_FINISH = common dso_local global i32 0, align 4
@finish_done = common dso_local global i32 0, align 4
@block_done = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, i32)* @deflate_slow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @deflate_slow(%struct.TYPE_13__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store i32 %1, i32* %5, align 4
  br label %9

9:                                                ; preds = %281, %2
  %10 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @MIN_LOOKAHEAD, align 8
  %14 = icmp slt i64 %12, %13
  br i1 %14, label %15, label %36

15:                                               ; preds = %9
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %17 = call i32 @fill_window(%struct.TYPE_13__* %16)
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @MIN_LOOKAHEAD, align 8
  %22 = icmp slt i64 %20, %21
  br i1 %22, label %23, label %29

23:                                               ; preds = %15
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @Z_NO_FLUSH, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = load i32, i32* @need_more, align 4
  store i32 %28, i32* %3, align 4
  br label %356

29:                                               ; preds = %23, %15
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  br label %282

35:                                               ; preds = %29
  br label %36

36:                                               ; preds = %35, %9
  %37 = load i64, i64* @NIL, align 8
  store i64 %37, i64* %6, align 8
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i32, i32* @MIN_MATCH, align 4
  %42 = sext i32 %41 to i64
  %43 = icmp sge i64 %40, %42
  br i1 %43, label %44, label %51

44:                                               ; preds = %36
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* %6, align 8
  %50 = call i32 @INSERT_STRING(%struct.TYPE_13__* %45, i64 %48, i64 %49)
  br label %51

51:                                               ; preds = %44, %36
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 2
  store i32 %54, i32* %56, align 8
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i32 0, i32 5
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i32 0, i32 4
  store i64 %59, i64* %61, align 8
  %62 = load i32, i32* @MIN_MATCH, align 4
  %63 = sub nsw i32 %62, 1
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i32 0, i32 3
  store i32 %63, i32* %65, align 4
  %66 = load i64, i64* %6, align 8
  %67 = load i64, i64* @NIL, align 8
  %68 = icmp ne i64 %66, %67
  br i1 %68, label %69, label %125

69:                                               ; preds = %51
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = sext i32 %72 to i64
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 6
  %76 = load i64, i64* %75, align 8
  %77 = icmp slt i64 %73, %76
  br i1 %77, label %78, label %125

78:                                               ; preds = %69
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* %6, align 8
  %83 = sub nsw i64 %81, %82
  %84 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %85 = call i64 @MAX_DIST(%struct.TYPE_13__* %84)
  %86 = icmp sle i64 %83, %85
  br i1 %86, label %87, label %125

87:                                               ; preds = %78
  %88 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %89 = load i64, i64* %6, align 8
  %90 = call i32 @longest_match(%struct.TYPE_13__* %88, i64 %89)
  %91 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %91, i32 0, i32 3
  store i32 %90, i32* %92, align 4
  %93 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 4
  %96 = icmp sle i32 %95, 5
  br i1 %96, label %97, label %124

97:                                               ; preds = %87
  %98 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %98, i32 0, i32 7
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @Z_FILTERED, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %119, label %103

103:                                              ; preds = %97
  %104 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @MIN_MATCH, align 4
  %108 = icmp eq i32 %106, %107
  br i1 %108, label %109, label %124

109:                                              ; preds = %103
  %110 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %113, i32 0, i32 5
  %115 = load i64, i64* %114, align 8
  %116 = sub nsw i64 %112, %115
  %117 = load i64, i64* @TOO_FAR, align 8
  %118 = icmp sgt i64 %116, %117
  br i1 %118, label %119, label %124

119:                                              ; preds = %109, %97
  %120 = load i32, i32* @MIN_MATCH, align 4
  %121 = sub nsw i32 %120, 1
  %122 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %122, i32 0, i32 3
  store i32 %121, i32* %123, align 4
  br label %124

124:                                              ; preds = %119, %109, %103, %87
  br label %125

125:                                              ; preds = %124, %78, %69, %51
  %126 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %127 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 8
  %129 = load i32, i32* @MIN_MATCH, align 4
  %130 = icmp sge i32 %128, %129
  br i1 %130, label %131, label %217

131:                                              ; preds = %125
  %132 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %132, i32 0, i32 3
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %136 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 8
  %138 = icmp sle i32 %134, %137
  br i1 %138, label %139, label %217

139:                                              ; preds = %131
  %140 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %141 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %140, i32 0, i32 1
  %142 = load i64, i64* %141, align 8
  %143 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %144 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = add nsw i64 %142, %145
  %147 = load i32, i32* @MIN_MATCH, align 4
  %148 = sext i32 %147 to i64
  %149 = sub nsw i64 %146, %148
  store i64 %149, i64* %8, align 8
  %150 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %151 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %152 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %151, i32 0, i32 1
  %153 = load i64, i64* %152, align 8
  %154 = sub nsw i64 %153, 1
  %155 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %156 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %155, i32 0, i32 4
  %157 = load i64, i64* %156, align 8
  %158 = sub nsw i64 %154, %157
  %159 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %160 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 8
  %162 = load i32, i32* @MIN_MATCH, align 4
  %163 = sub nsw i32 %161, %162
  %164 = load i32, i32* %7, align 4
  %165 = call i32 @_tr_tally_dist(%struct.TYPE_13__* %150, i64 %158, i32 %163, i32 %164)
  %166 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %167 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %166, i32 0, i32 2
  %168 = load i32, i32* %167, align 8
  %169 = sub nsw i32 %168, 1
  %170 = sext i32 %169 to i64
  %171 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %172 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %171, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = sub nsw i64 %173, %170
  store i64 %174, i64* %172, align 8
  %175 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %176 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %175, i32 0, i32 2
  %177 = load i32, i32* %176, align 8
  %178 = sub nsw i32 %177, 2
  store i32 %178, i32* %176, align 8
  br label %179

179:                                              ; preds = %194, %139
  %180 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %181 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %180, i32 0, i32 1
  %182 = load i64, i64* %181, align 8
  %183 = add nsw i64 %182, 1
  store i64 %183, i64* %181, align 8
  %184 = load i64, i64* %8, align 8
  %185 = icmp sle i64 %183, %184
  br i1 %185, label %186, label %193

186:                                              ; preds = %179
  %187 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %188 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %189 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %188, i32 0, i32 1
  %190 = load i64, i64* %189, align 8
  %191 = load i64, i64* %6, align 8
  %192 = call i32 @INSERT_STRING(%struct.TYPE_13__* %187, i64 %190, i64 %191)
  br label %193

193:                                              ; preds = %186, %179
  br label %194

194:                                              ; preds = %193
  %195 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %196 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %195, i32 0, i32 2
  %197 = load i32, i32* %196, align 8
  %198 = add nsw i32 %197, -1
  store i32 %198, i32* %196, align 8
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %179, label %200

200:                                              ; preds = %194
  %201 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %202 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %201, i32 0, i32 8
  store i32 0, i32* %202, align 8
  %203 = load i32, i32* @MIN_MATCH, align 4
  %204 = sub nsw i32 %203, 1
  %205 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %206 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %205, i32 0, i32 3
  store i32 %204, i32* %206, align 4
  %207 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %208 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %207, i32 0, i32 1
  %209 = load i64, i64* %208, align 8
  %210 = add nsw i64 %209, 1
  store i64 %210, i64* %208, align 8
  %211 = load i32, i32* %7, align 4
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %216

213:                                              ; preds = %200
  %214 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %215 = call i32 @FLUSH_BLOCK(%struct.TYPE_13__* %214, i32 0)
  br label %216

216:                                              ; preds = %213, %200
  br label %281

217:                                              ; preds = %131, %125
  %218 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %219 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %218, i32 0, i32 8
  %220 = load i32, i32* %219, align 8
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %269

222:                                              ; preds = %217
  %223 = load i32, i32* @stderr, align 4
  %224 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %225 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %224, i32 0, i32 11
  %226 = load i32*, i32** %225, align 8
  %227 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %228 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %227, i32 0, i32 1
  %229 = load i64, i64* %228, align 8
  %230 = sub nsw i64 %229, 1
  %231 = getelementptr inbounds i32, i32* %226, i64 %230
  %232 = load i32, i32* %231, align 4
  %233 = call i32 @Tracevv(i32 %232)
  %234 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %235 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %236 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %235, i32 0, i32 11
  %237 = load i32*, i32** %236, align 8
  %238 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %239 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %238, i32 0, i32 1
  %240 = load i64, i64* %239, align 8
  %241 = sub nsw i64 %240, 1
  %242 = getelementptr inbounds i32, i32* %237, i64 %241
  %243 = load i32, i32* %242, align 4
  %244 = load i32, i32* %7, align 4
  %245 = call i32 @_tr_tally_lit(%struct.TYPE_13__* %234, i32 %243, i32 %244)
  %246 = load i32, i32* %7, align 4
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %251

248:                                              ; preds = %222
  %249 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %250 = call i32 @FLUSH_BLOCK_ONLY(%struct.TYPE_13__* %249, i32 0)
  br label %251

251:                                              ; preds = %248, %222
  %252 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %253 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %252, i32 0, i32 1
  %254 = load i64, i64* %253, align 8
  %255 = add nsw i64 %254, 1
  store i64 %255, i64* %253, align 8
  %256 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %257 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %256, i32 0, i32 0
  %258 = load i64, i64* %257, align 8
  %259 = add nsw i64 %258, -1
  store i64 %259, i64* %257, align 8
  %260 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %261 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %260, i32 0, i32 12
  %262 = load %struct.TYPE_12__*, %struct.TYPE_12__** %261, align 8
  %263 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %262, i32 0, i32 0
  %264 = load i64, i64* %263, align 8
  %265 = icmp eq i64 %264, 0
  br i1 %265, label %266, label %268

266:                                              ; preds = %251
  %267 = load i32, i32* @need_more, align 4
  store i32 %267, i32* %3, align 4
  br label %356

268:                                              ; preds = %251
  br label %280

269:                                              ; preds = %217
  %270 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %271 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %270, i32 0, i32 8
  store i32 1, i32* %271, align 8
  %272 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %273 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %272, i32 0, i32 1
  %274 = load i64, i64* %273, align 8
  %275 = add nsw i64 %274, 1
  store i64 %275, i64* %273, align 8
  %276 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %277 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %276, i32 0, i32 0
  %278 = load i64, i64* %277, align 8
  %279 = add nsw i64 %278, -1
  store i64 %279, i64* %277, align 8
  br label %280

280:                                              ; preds = %269, %268
  br label %281

281:                                              ; preds = %280, %216
  br label %9

282:                                              ; preds = %34
  %283 = load i32, i32* %5, align 4
  %284 = load i32, i32* @Z_NO_FLUSH, align 4
  %285 = icmp ne i32 %283, %284
  %286 = zext i1 %285 to i32
  %287 = call i32 @Assert(i32 %286, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %288 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %289 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %288, i32 0, i32 8
  %290 = load i32, i32* %289, align 8
  %291 = icmp ne i32 %290, 0
  br i1 %291, label %292, label %318

292:                                              ; preds = %282
  %293 = load i32, i32* @stderr, align 4
  %294 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %295 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %294, i32 0, i32 11
  %296 = load i32*, i32** %295, align 8
  %297 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %298 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %297, i32 0, i32 1
  %299 = load i64, i64* %298, align 8
  %300 = sub nsw i64 %299, 1
  %301 = getelementptr inbounds i32, i32* %296, i64 %300
  %302 = load i32, i32* %301, align 4
  %303 = call i32 @Tracevv(i32 %302)
  %304 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %305 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %306 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %305, i32 0, i32 11
  %307 = load i32*, i32** %306, align 8
  %308 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %309 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %308, i32 0, i32 1
  %310 = load i64, i64* %309, align 8
  %311 = sub nsw i64 %310, 1
  %312 = getelementptr inbounds i32, i32* %307, i64 %311
  %313 = load i32, i32* %312, align 4
  %314 = load i32, i32* %7, align 4
  %315 = call i32 @_tr_tally_lit(%struct.TYPE_13__* %304, i32 %313, i32 %314)
  %316 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %317 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %316, i32 0, i32 8
  store i32 0, i32* %317, align 8
  br label %318

318:                                              ; preds = %292, %282
  %319 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %320 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %319, i32 0, i32 1
  %321 = load i64, i64* %320, align 8
  %322 = load i32, i32* @MIN_MATCH, align 4
  %323 = sub nsw i32 %322, 1
  %324 = sext i32 %323 to i64
  %325 = icmp slt i64 %321, %324
  br i1 %325, label %326, label %330

326:                                              ; preds = %318
  %327 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %328 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %327, i32 0, i32 1
  %329 = load i64, i64* %328, align 8
  br label %334

330:                                              ; preds = %318
  %331 = load i32, i32* @MIN_MATCH, align 4
  %332 = sub nsw i32 %331, 1
  %333 = sext i32 %332 to i64
  br label %334

334:                                              ; preds = %330, %326
  %335 = phi i64 [ %329, %326 ], [ %333, %330 ]
  %336 = trunc i64 %335 to i32
  %337 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %338 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %337, i32 0, i32 9
  store i32 %336, i32* %338, align 4
  %339 = load i32, i32* %5, align 4
  %340 = load i32, i32* @Z_FINISH, align 4
  %341 = icmp eq i32 %339, %340
  br i1 %341, label %342, label %346

342:                                              ; preds = %334
  %343 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %344 = call i32 @FLUSH_BLOCK(%struct.TYPE_13__* %343, i32 1)
  %345 = load i32, i32* @finish_done, align 4
  store i32 %345, i32* %3, align 4
  br label %356

346:                                              ; preds = %334
  %347 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %348 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %347, i32 0, i32 10
  %349 = load i64, i64* %348, align 8
  %350 = icmp ne i64 %349, 0
  br i1 %350, label %351, label %354

351:                                              ; preds = %346
  %352 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %353 = call i32 @FLUSH_BLOCK(%struct.TYPE_13__* %352, i32 0)
  br label %354

354:                                              ; preds = %351, %346
  %355 = load i32, i32* @block_done, align 4
  store i32 %355, i32* %3, align 4
  br label %356

356:                                              ; preds = %354, %342, %266, %27
  %357 = load i32, i32* %3, align 4
  ret i32 %357
}

declare dso_local i32 @fill_window(%struct.TYPE_13__*) #1

declare dso_local i32 @INSERT_STRING(%struct.TYPE_13__*, i64, i64) #1

declare dso_local i64 @MAX_DIST(%struct.TYPE_13__*) #1

declare dso_local i32 @longest_match(%struct.TYPE_13__*, i64) #1

declare dso_local i32 @_tr_tally_dist(%struct.TYPE_13__*, i64, i32, i32) #1

declare dso_local i32 @FLUSH_BLOCK(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @Tracevv(i32) #1

declare dso_local i32 @_tr_tally_lit(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @FLUSH_BLOCK_ONLY(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @Assert(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
