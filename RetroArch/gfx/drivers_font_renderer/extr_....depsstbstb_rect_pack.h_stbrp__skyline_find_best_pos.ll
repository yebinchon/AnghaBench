; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers_font_renderer/extr_....depsstbstb_rect_pack.h_stbrp__skyline_find_best_pos.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers_font_renderer/extr_....depsstbstb_rect_pack.h_stbrp__skyline_find_best_pos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, %struct.TYPE_8__* }
%struct.TYPE_9__ = type { i32, i64, i64, i32, %struct.TYPE_8__* }
%struct.TYPE_10__ = type { i32, i32, %struct.TYPE_8__** }

@STBRP_HEURISTIC_Skyline_BL_sortHeight = common dso_local global i64 0, align 8
@STBRP_HEURISTIC_Skyline_BF_sortHeight = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast ({ i64, %struct.TYPE_8__** } (%struct.TYPE_9__*, i32, i32)* @stbrp__skyline_find_best_pos to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal { i64, %struct.TYPE_8__** } @stbrp__skyline_find_best_pos(%struct.TYPE_9__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_10__, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_8__**, align 8
  %12 = alloca %struct.TYPE_8__*, align 8
  %13 = alloca %struct.TYPE_8__*, align 8
  %14 = alloca %struct.TYPE_8__**, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 1073741824, i32* %8, align 4
  store i32 1073741824, i32* %10, align 4
  store %struct.TYPE_8__** null, %struct.TYPE_8__*** %14, align 8
  %20 = load i32, i32* %6, align 4
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = add nsw i32 %20, %23
  %25 = sub nsw i32 %24, 1
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = srem i32 %26, %29
  %31 = load i32, i32* %6, align 4
  %32 = sub nsw i32 %31, %30
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = srem i32 %33, %36
  %38 = icmp eq i32 %37, 0
  %39 = zext i1 %38 to i32
  %40 = call i32 @STBRP_ASSERT(i32 %39)
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 4
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %42, align 8
  store %struct.TYPE_8__* %43, %struct.TYPE_8__** %12, align 8
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 4
  store %struct.TYPE_8__** %45, %struct.TYPE_8__*** %11, align 8
  br label %46

46:                                               ; preds = %105, %3
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i32, i32* %6, align 4
  %51 = sext i32 %50 to i64
  %52 = add nsw i64 %49, %51
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = icmp sle i64 %52, %55
  br i1 %56, label %57, label %111

57:                                               ; preds = %46
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = trunc i64 %62 to i32
  %64 = load i32, i32* %6, align 4
  %65 = call i32 @stbrp__skyline_find_min_y(%struct.TYPE_9__* %58, %struct.TYPE_8__* %59, i32 %63, i32 %64, i32* %15)
  store i32 %65, i32* %16, align 4
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @STBRP_HEURISTIC_Skyline_BL_sortHeight, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %79

71:                                               ; preds = %57
  %72 = load i32, i32* %16, align 4
  %73 = load i32, i32* %10, align 4
  %74 = icmp slt i32 %72, %73
  br i1 %74, label %75, label %78

75:                                               ; preds = %71
  %76 = load i32, i32* %16, align 4
  store i32 %76, i32* %10, align 4
  %77 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %11, align 8
  store %struct.TYPE_8__** %77, %struct.TYPE_8__*** %14, align 8
  br label %78

78:                                               ; preds = %75, %71
  br label %105

79:                                               ; preds = %57
  %80 = load i32, i32* %16, align 4
  %81 = load i32, i32* %7, align 4
  %82 = add nsw i32 %80, %81
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 8
  %86 = icmp sle i32 %82, %85
  br i1 %86, label %87, label %104

87:                                               ; preds = %79
  %88 = load i32, i32* %16, align 4
  %89 = load i32, i32* %10, align 4
  %90 = icmp slt i32 %88, %89
  br i1 %90, label %99, label %91

91:                                               ; preds = %87
  %92 = load i32, i32* %16, align 4
  %93 = load i32, i32* %10, align 4
  %94 = icmp eq i32 %92, %93
  br i1 %94, label %95, label %103

95:                                               ; preds = %91
  %96 = load i32, i32* %15, align 4
  %97 = load i32, i32* %8, align 4
  %98 = icmp slt i32 %96, %97
  br i1 %98, label %99, label %103

99:                                               ; preds = %95, %87
  %100 = load i32, i32* %16, align 4
  store i32 %100, i32* %10, align 4
  %101 = load i32, i32* %15, align 4
  store i32 %101, i32* %8, align 4
  %102 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %11, align 8
  store %struct.TYPE_8__** %102, %struct.TYPE_8__*** %14, align 8
  br label %103

103:                                              ; preds = %99, %95, %91
  br label %104

104:                                              ; preds = %103, %79
  br label %105

105:                                              ; preds = %104, %78
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 1
  store %struct.TYPE_8__** %107, %struct.TYPE_8__*** %11, align 8
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 1
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %109, align 8
  store %struct.TYPE_8__* %110, %struct.TYPE_8__** %12, align 8
  br label %46

111:                                              ; preds = %46
  %112 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %14, align 8
  %113 = icmp eq %struct.TYPE_8__** %112, null
  br i1 %113, label %114, label %115

114:                                              ; preds = %111
  br label %120

115:                                              ; preds = %111
  %116 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %14, align 8
  %117 = load %struct.TYPE_8__*, %struct.TYPE_8__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  br label %120

120:                                              ; preds = %115, %114
  %121 = phi i64 [ 0, %114 ], [ %119, %115 ]
  %122 = trunc i64 %121 to i32
  store i32 %122, i32* %9, align 4
  %123 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %123, i32 0, i32 2
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* @STBRP_HEURISTIC_Skyline_BF_sortHeight, align 8
  %127 = icmp eq i64 %125, %126
  br i1 %127, label %128, label %248

128:                                              ; preds = %120
  %129 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %129, i32 0, i32 4
  %131 = load %struct.TYPE_8__*, %struct.TYPE_8__** %130, align 8
  store %struct.TYPE_8__* %131, %struct.TYPE_8__** %13, align 8
  %132 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %132, i32 0, i32 4
  %134 = load %struct.TYPE_8__*, %struct.TYPE_8__** %133, align 8
  store %struct.TYPE_8__* %134, %struct.TYPE_8__** %12, align 8
  %135 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %136 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %135, i32 0, i32 4
  store %struct.TYPE_8__** %136, %struct.TYPE_8__*** %11, align 8
  br label %137

137:                                              ; preds = %144, %128
  %138 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = load i32, i32* %6, align 4
  %142 = sext i32 %141 to i64
  %143 = icmp slt i64 %140, %142
  br i1 %143, label %144, label %148

144:                                              ; preds = %137
  %145 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %146 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %145, i32 0, i32 1
  %147 = load %struct.TYPE_8__*, %struct.TYPE_8__** %146, align 8
  store %struct.TYPE_8__* %147, %struct.TYPE_8__** %13, align 8
  br label %137

148:                                              ; preds = %137
  br label %149

149:                                              ; preds = %243, %148
  %150 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %151 = icmp ne %struct.TYPE_8__* %150, null
  br i1 %151, label %152, label %247

152:                                              ; preds = %149
  %153 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %154 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = load i32, i32* %6, align 4
  %157 = sext i32 %156 to i64
  %158 = sub nsw i64 %155, %157
  %159 = trunc i64 %158 to i32
  store i32 %159, i32* %17, align 4
  %160 = load i32, i32* %17, align 4
  %161 = icmp sge i32 %160, 0
  %162 = zext i1 %161 to i32
  %163 = call i32 @STBRP_ASSERT(i32 %162)
  br label %164

164:                                              ; preds = %173, %152
  %165 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %166 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %165, i32 0, i32 1
  %167 = load %struct.TYPE_8__*, %struct.TYPE_8__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = load i32, i32* %17, align 4
  %171 = sext i32 %170 to i64
  %172 = icmp sle i64 %169, %171
  br i1 %172, label %173, label %179

173:                                              ; preds = %164
  %174 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %175 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %174, i32 0, i32 1
  store %struct.TYPE_8__** %175, %struct.TYPE_8__*** %11, align 8
  %176 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %177 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %176, i32 0, i32 1
  %178 = load %struct.TYPE_8__*, %struct.TYPE_8__** %177, align 8
  store %struct.TYPE_8__* %178, %struct.TYPE_8__** %12, align 8
  br label %164

179:                                              ; preds = %164
  %180 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %181 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %180, i32 0, i32 1
  %182 = load %struct.TYPE_8__*, %struct.TYPE_8__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %182, i32 0, i32 0
  %184 = load i64, i64* %183, align 8
  %185 = load i32, i32* %17, align 4
  %186 = sext i32 %185 to i64
  %187 = icmp sgt i64 %184, %186
  br i1 %187, label %188, label %195

188:                                              ; preds = %179
  %189 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %190 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %189, i32 0, i32 0
  %191 = load i64, i64* %190, align 8
  %192 = load i32, i32* %17, align 4
  %193 = sext i32 %192 to i64
  %194 = icmp sle i64 %191, %193
  br label %195

195:                                              ; preds = %188, %179
  %196 = phi i1 [ false, %179 ], [ %194, %188 ]
  %197 = zext i1 %196 to i32
  %198 = call i32 @STBRP_ASSERT(i32 %197)
  %199 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %200 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %201 = load i32, i32* %17, align 4
  %202 = load i32, i32* %6, align 4
  %203 = call i32 @stbrp__skyline_find_min_y(%struct.TYPE_9__* %199, %struct.TYPE_8__* %200, i32 %201, i32 %202, i32* %19)
  store i32 %203, i32* %18, align 4
  %204 = load i32, i32* %18, align 4
  %205 = load i32, i32* %7, align 4
  %206 = add nsw i32 %204, %205
  %207 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %208 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %207, i32 0, i32 3
  %209 = load i32, i32* %208, align 8
  %210 = icmp slt i32 %206, %209
  br i1 %210, label %211, label %243

211:                                              ; preds = %195
  %212 = load i32, i32* %18, align 4
  %213 = load i32, i32* %10, align 4
  %214 = icmp sle i32 %212, %213
  br i1 %214, label %215, label %242

215:                                              ; preds = %211
  %216 = load i32, i32* %18, align 4
  %217 = load i32, i32* %10, align 4
  %218 = icmp slt i32 %216, %217
  br i1 %218, label %231, label %219

219:                                              ; preds = %215
  %220 = load i32, i32* %19, align 4
  %221 = load i32, i32* %8, align 4
  %222 = icmp slt i32 %220, %221
  br i1 %222, label %231, label %223

223:                                              ; preds = %219
  %224 = load i32, i32* %19, align 4
  %225 = load i32, i32* %8, align 4
  %226 = icmp eq i32 %224, %225
  br i1 %226, label %227, label %241

227:                                              ; preds = %223
  %228 = load i32, i32* %17, align 4
  %229 = load i32, i32* %9, align 4
  %230 = icmp slt i32 %228, %229
  br i1 %230, label %231, label %241

231:                                              ; preds = %227, %219, %215
  %232 = load i32, i32* %17, align 4
  store i32 %232, i32* %9, align 4
  %233 = load i32, i32* %18, align 4
  %234 = load i32, i32* %10, align 4
  %235 = icmp sle i32 %233, %234
  %236 = zext i1 %235 to i32
  %237 = call i32 @STBRP_ASSERT(i32 %236)
  %238 = load i32, i32* %18, align 4
  store i32 %238, i32* %10, align 4
  %239 = load i32, i32* %19, align 4
  store i32 %239, i32* %8, align 4
  %240 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %11, align 8
  store %struct.TYPE_8__** %240, %struct.TYPE_8__*** %14, align 8
  br label %241

241:                                              ; preds = %231, %227, %223
  br label %242

242:                                              ; preds = %241, %211
  br label %243

243:                                              ; preds = %242, %195
  %244 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %245 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %244, i32 0, i32 1
  %246 = load %struct.TYPE_8__*, %struct.TYPE_8__** %245, align 8
  store %struct.TYPE_8__* %246, %struct.TYPE_8__** %13, align 8
  br label %149

247:                                              ; preds = %149
  br label %248

248:                                              ; preds = %247, %120
  %249 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %14, align 8
  %250 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %4, i32 0, i32 2
  store %struct.TYPE_8__** %249, %struct.TYPE_8__*** %250, align 8
  %251 = load i32, i32* %9, align 4
  %252 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %4, i32 0, i32 0
  store i32 %251, i32* %252, align 8
  %253 = load i32, i32* %10, align 4
  %254 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %4, i32 0, i32 1
  store i32 %253, i32* %254, align 4
  %255 = bitcast %struct.TYPE_10__* %4 to { i64, %struct.TYPE_8__** }*
  %256 = load { i64, %struct.TYPE_8__** }, { i64, %struct.TYPE_8__** }* %255, align 8
  ret { i64, %struct.TYPE_8__** } %256
}

declare dso_local i32 @STBRP_ASSERT(i32) #1

declare dso_local i32 @stbrp__skyline_find_min_y(%struct.TYPE_9__*, %struct.TYPE_8__*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
