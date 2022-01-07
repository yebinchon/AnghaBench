; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/ui/extr_ui_shared.c_Item_ListBox_OverLB.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/ui/extr_ui_shared.c_Item_ListBox_OverLB.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 (i32)* }
%struct.TYPE_12__ = type { %struct.TYPE_10__, i64, i32 }
%struct.TYPE_10__ = type { i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32, i32, i32 }
%struct.TYPE_11__ = type { i32, i32, i32, i32 }

@DC = common dso_local global %struct.TYPE_13__* null, align 8
@WINDOW_HORIZONTAL = common dso_local global i32 0, align 4
@SCROLLBAR_SIZE = common dso_local global i32 0, align 4
@WINDOW_LB_LEFTARROW = common dso_local global i32 0, align 4
@WINDOW_LB_RIGHTARROW = common dso_local global i32 0, align 4
@WINDOW_LB_THUMB = common dso_local global i32 0, align 4
@WINDOW_LB_PGUP = common dso_local global i32 0, align 4
@WINDOW_LB_PGDN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Item_ListBox_OverLB(%struct.TYPE_12__* %0, float %1, float %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca %struct.TYPE_11__, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %5, align 8
  store float %1, float* %6, align 4
  store float %2, float* %7, align 4
  %12 = load %struct.TYPE_13__*, %struct.TYPE_13__** @DC, align 8
  %13 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 0
  %14 = load i32 (i32)*, i32 (i32)** %13, align 8
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = call i32 %14(i32 %17)
  store i32 %18, i32* %11, align 4
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to i32*
  store i32* %22, i32** %9, align 8
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @WINDOW_HORIZONTAL, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %138

30:                                               ; preds = %3
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 0
  store i32 %35, i32* %36, align 4
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = add nsw i32 %41, %46
  %48 = load i32, i32* @SCROLLBAR_SIZE, align 4
  %49 = sub nsw i32 %47, %48
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 1
  store i32 %49, i32* %50, align 4
  %51 = load i32, i32* @SCROLLBAR_SIZE, align 4
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 3
  store i32 %51, i32* %52, align 4
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 2
  store i32 %51, i32* %53, align 4
  %54 = load float, float* %6, align 4
  %55 = load float, float* %7, align 4
  %56 = call i64 @Rect_ContainsPoint(%struct.TYPE_11__* %8, float %54, float %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %30
  %59 = load i32, i32* @WINDOW_LB_LEFTARROW, align 4
  store i32 %59, i32* %4, align 4
  br label %247

60:                                               ; preds = %30
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = add nsw i32 %65, %70
  %72 = load i32, i32* @SCROLLBAR_SIZE, align 4
  %73 = sub nsw i32 %71, %72
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 0
  store i32 %73, i32* %74, align 4
  %75 = load float, float* %6, align 4
  %76 = load float, float* %7, align 4
  %77 = call i64 @Rect_ContainsPoint(%struct.TYPE_11__* %8, float %75, float %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %60
  %80 = load i32, i32* @WINDOW_LB_RIGHTARROW, align 4
  store i32 %80, i32* %4, align 4
  br label %247

81:                                               ; preds = %60
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %83 = call i32 @Item_ListBox_ThumbPosition(%struct.TYPE_12__* %82)
  store i32 %83, i32* %10, align 4
  %84 = load i32, i32* %10, align 4
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 0
  store i32 %84, i32* %85, align 4
  %86 = load float, float* %6, align 4
  %87 = load float, float* %7, align 4
  %88 = call i64 @Rect_ContainsPoint(%struct.TYPE_11__* %8, float %86, float %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %81
  %91 = load i32, i32* @WINDOW_LB_THUMB, align 4
  store i32 %91, i32* %4, align 4
  br label %247

92:                                               ; preds = %81
  %93 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @SCROLLBAR_SIZE, align 4
  %99 = add nsw i32 %97, %98
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 0
  store i32 %99, i32* %100, align 4
  %101 = load i32, i32* %10, align 4
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = sub nsw i32 %101, %103
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 3
  store i32 %104, i32* %105, align 4
  %106 = load float, float* %6, align 4
  %107 = load float, float* %7, align 4
  %108 = call i64 @Rect_ContainsPoint(%struct.TYPE_11__* %8, float %106, float %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %92
  %111 = load i32, i32* @WINDOW_LB_PGUP, align 4
  store i32 %111, i32* %4, align 4
  br label %247

112:                                              ; preds = %92
  %113 = load i32, i32* %10, align 4
  %114 = load i32, i32* @SCROLLBAR_SIZE, align 4
  %115 = add nsw i32 %113, %114
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 0
  store i32 %115, i32* %116, align 4
  %117 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %118 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i32 0, i32 3
  %126 = load i32, i32* %125, align 4
  %127 = add nsw i32 %121, %126
  %128 = load i32, i32* @SCROLLBAR_SIZE, align 4
  %129 = sub nsw i32 %127, %128
  %130 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 3
  store i32 %129, i32* %130, align 4
  %131 = load float, float* %6, align 4
  %132 = load float, float* %7, align 4
  %133 = call i64 @Rect_ContainsPoint(%struct.TYPE_11__* %8, float %131, float %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %137

135:                                              ; preds = %112
  %136 = load i32, i32* @WINDOW_LB_PGDN, align 4
  store i32 %136, i32* %4, align 4
  br label %247

137:                                              ; preds = %112
  br label %246

138:                                              ; preds = %3
  %139 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %140 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %145 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %145, i32 0, i32 1
  %147 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %146, i32 0, i32 3
  %148 = load i32, i32* %147, align 4
  %149 = add nsw i32 %143, %148
  %150 = load i32, i32* @SCROLLBAR_SIZE, align 4
  %151 = sub nsw i32 %149, %150
  %152 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 0
  store i32 %151, i32* %152, align 4
  %153 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %154 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %154, i32 0, i32 1
  %156 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 1
  store i32 %157, i32* %158, align 4
  %159 = load i32, i32* @SCROLLBAR_SIZE, align 4
  %160 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 3
  store i32 %159, i32* %160, align 4
  %161 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 2
  store i32 %159, i32* %161, align 4
  %162 = load float, float* %6, align 4
  %163 = load float, float* %7, align 4
  %164 = call i64 @Rect_ContainsPoint(%struct.TYPE_11__* %8, float %162, float %163)
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %168

166:                                              ; preds = %138
  %167 = load i32, i32* @WINDOW_LB_LEFTARROW, align 4
  store i32 %167, i32* %4, align 4
  br label %247

168:                                              ; preds = %138
  %169 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %170 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %170, i32 0, i32 1
  %172 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %175 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %175, i32 0, i32 1
  %177 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %176, i32 0, i32 2
  %178 = load i32, i32* %177, align 4
  %179 = add nsw i32 %173, %178
  %180 = load i32, i32* @SCROLLBAR_SIZE, align 4
  %181 = sub nsw i32 %179, %180
  %182 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 1
  store i32 %181, i32* %182, align 4
  %183 = load float, float* %6, align 4
  %184 = load float, float* %7, align 4
  %185 = call i64 @Rect_ContainsPoint(%struct.TYPE_11__* %8, float %183, float %184)
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %189

187:                                              ; preds = %168
  %188 = load i32, i32* @WINDOW_LB_RIGHTARROW, align 4
  store i32 %188, i32* %4, align 4
  br label %247

189:                                              ; preds = %168
  %190 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %191 = call i32 @Item_ListBox_ThumbPosition(%struct.TYPE_12__* %190)
  store i32 %191, i32* %10, align 4
  %192 = load i32, i32* %10, align 4
  %193 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 1
  store i32 %192, i32* %193, align 4
  %194 = load float, float* %6, align 4
  %195 = load float, float* %7, align 4
  %196 = call i64 @Rect_ContainsPoint(%struct.TYPE_11__* %8, float %194, float %195)
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %200

198:                                              ; preds = %189
  %199 = load i32, i32* @WINDOW_LB_THUMB, align 4
  store i32 %199, i32* %4, align 4
  br label %247

200:                                              ; preds = %189
  %201 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %202 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %201, i32 0, i32 0
  %203 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %202, i32 0, i32 1
  %204 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 4
  %206 = load i32, i32* @SCROLLBAR_SIZE, align 4
  %207 = add nsw i32 %205, %206
  %208 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 1
  store i32 %207, i32* %208, align 4
  %209 = load i32, i32* %10, align 4
  %210 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 1
  %211 = load i32, i32* %210, align 4
  %212 = sub nsw i32 %209, %211
  %213 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 2
  store i32 %212, i32* %213, align 4
  %214 = load float, float* %6, align 4
  %215 = load float, float* %7, align 4
  %216 = call i64 @Rect_ContainsPoint(%struct.TYPE_11__* %8, float %214, float %215)
  %217 = icmp ne i64 %216, 0
  br i1 %217, label %218, label %220

218:                                              ; preds = %200
  %219 = load i32, i32* @WINDOW_LB_PGUP, align 4
  store i32 %219, i32* %4, align 4
  br label %247

220:                                              ; preds = %200
  %221 = load i32, i32* %10, align 4
  %222 = load i32, i32* @SCROLLBAR_SIZE, align 4
  %223 = add nsw i32 %221, %222
  %224 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 1
  store i32 %223, i32* %224, align 4
  %225 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %226 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %225, i32 0, i32 0
  %227 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %226, i32 0, i32 1
  %228 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %227, i32 0, i32 1
  %229 = load i32, i32* %228, align 4
  %230 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %231 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %230, i32 0, i32 0
  %232 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %231, i32 0, i32 1
  %233 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %232, i32 0, i32 2
  %234 = load i32, i32* %233, align 4
  %235 = add nsw i32 %229, %234
  %236 = load i32, i32* @SCROLLBAR_SIZE, align 4
  %237 = sub nsw i32 %235, %236
  %238 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 2
  store i32 %237, i32* %238, align 4
  %239 = load float, float* %6, align 4
  %240 = load float, float* %7, align 4
  %241 = call i64 @Rect_ContainsPoint(%struct.TYPE_11__* %8, float %239, float %240)
  %242 = icmp ne i64 %241, 0
  br i1 %242, label %243, label %245

243:                                              ; preds = %220
  %244 = load i32, i32* @WINDOW_LB_PGDN, align 4
  store i32 %244, i32* %4, align 4
  br label %247

245:                                              ; preds = %220
  br label %246

246:                                              ; preds = %245, %137
  store i32 0, i32* %4, align 4
  br label %247

247:                                              ; preds = %246, %243, %218, %198, %187, %166, %135, %110, %90, %79, %58
  %248 = load i32, i32* %4, align 4
  ret i32 %248
}

declare dso_local i64 @Rect_ContainsPoint(%struct.TYPE_11__*, float, float) #1

declare dso_local i32 @Item_ListBox_ThumbPosition(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
