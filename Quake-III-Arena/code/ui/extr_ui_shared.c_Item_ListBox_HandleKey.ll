; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/ui/extr_ui_shared.c_Item_ListBox_HandleKey.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/ui/extr_ui_shared.c_Item_ListBox_HandleKey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 (i32)*, i64, i32 (i32, i32)*, i32, i32 }
%struct.TYPE_11__ = type { i32, i32, %struct.TYPE_9__, i64 }
%struct.TYPE_9__ = type { i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32, i64 }

@DC = common dso_local global %struct.TYPE_13__* null, align 8
@WINDOW_HASFOCUS = common dso_local global i32 0, align 4
@WINDOW_HORIZONTAL = common dso_local global i32 0, align 4
@K_LEFTARROW = common dso_local global i32 0, align 4
@K_KP_LEFTARROW = common dso_local global i32 0, align 4
@qtrue = common dso_local global i64 0, align 8
@K_RIGHTARROW = common dso_local global i32 0, align 4
@K_KP_RIGHTARROW = common dso_local global i32 0, align 4
@K_UPARROW = common dso_local global i32 0, align 4
@K_KP_UPARROW = common dso_local global i32 0, align 4
@K_DOWNARROW = common dso_local global i32 0, align 4
@K_KP_DOWNARROW = common dso_local global i32 0, align 4
@K_MOUSE1 = common dso_local global i32 0, align 4
@K_MOUSE2 = common dso_local global i32 0, align 4
@WINDOW_LB_LEFTARROW = common dso_local global i32 0, align 4
@WINDOW_LB_RIGHTARROW = common dso_local global i32 0, align 4
@WINDOW_LB_PGUP = common dso_local global i32 0, align 4
@WINDOW_LB_PGDN = common dso_local global i32 0, align 4
@WINDOW_LB_THUMB = common dso_local global i32 0, align 4
@lastListBoxClickTime = common dso_local global i64 0, align 8
@DOUBLE_CLICK_DELAY = common dso_local global i64 0, align 8
@K_HOME = common dso_local global i32 0, align 4
@K_KP_HOME = common dso_local global i32 0, align 4
@K_END = common dso_local global i32 0, align 4
@K_KP_END = common dso_local global i32 0, align 4
@K_PGUP = common dso_local global i32 0, align 4
@K_KP_PGUP = common dso_local global i32 0, align 4
@K_PGDN = common dso_local global i32 0, align 4
@K_KP_PGDN = common dso_local global i32 0, align 4
@qfalse = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @Item_ListBox_HandleKey(%struct.TYPE_11__* %0, i32 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_10__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 3
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %17, %struct.TYPE_10__** %10, align 8
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** @DC, align 8
  %19 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 0
  %20 = load i32 (i32)*, i32 (i32)** %19, align 8
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 %20(i32 %23)
  store i32 %24, i32* %11, align 4
  %25 = load i64, i64* %9, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %47, label %27

27:                                               ; preds = %4
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** @DC, align 8
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** @DC, align 8
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 8
  %37 = call i64 @Rect_ContainsPoint(%struct.TYPE_12__* %30, i32 %33, i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %817

39:                                               ; preds = %27
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @WINDOW_HASFOCUS, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %817

47:                                               ; preds = %39, %4
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %49 = call i32 @Item_ListBox_MaxScroll(%struct.TYPE_11__* %48)
  store i32 %49, i32* %12, align 4
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @WINDOW_HORIZONTAL, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %251

57:                                               ; preds = %47
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = sdiv i32 %62, %65
  store i32 %66, i32* %13, align 4
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* @K_LEFTARROW, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %74, label %70

70:                                               ; preds = %57
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* @K_KP_LEFTARROW, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %155

74:                                               ; preds = %70, %57
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 4
  %77 = load i32, i32* %76, align 8
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %140, label %79

79:                                               ; preds = %74
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = add nsw i32 %82, -1
  store i32 %83, i32* %81, align 4
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %79
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 1
  store i32 0, i32* %90, align 4
  br label %91

91:                                               ; preds = %88, %79
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = icmp slt i32 %94, %97
  br i1 %98, label %99, label %105

99:                                               ; preds = %91
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 2
  store i32 %102, i32* %104, align 8
  br label %105

105:                                              ; preds = %99, %91
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* %13, align 4
  %113 = add nsw i32 %111, %112
  %114 = icmp sge i32 %108, %113
  br i1 %114, label %115, label %124

115:                                              ; preds = %105
  %116 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* %13, align 4
  %120 = sub nsw i32 %118, %119
  %121 = add nsw i32 %120, 1
  %122 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 2
  store i32 %121, i32* %123, align 8
  br label %124

124:                                              ; preds = %115, %105
  %125 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %126 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %129 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %128, i32 0, i32 0
  store i32 %127, i32* %129, align 8
  %130 = load %struct.TYPE_13__*, %struct.TYPE_13__** @DC, align 8
  %131 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %130, i32 0, i32 2
  %132 = load i32 (i32, i32)*, i32 (i32, i32)** %131, align 8
  %133 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %134 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %137 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = call i32 %132(i32 %135, i32 %138)
  br label %153

140:                                              ; preds = %74
  %141 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %142 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 8
  %144 = add nsw i32 %143, -1
  store i32 %144, i32* %142, align 8
  %145 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %146 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 8
  %148 = icmp slt i32 %147, 0
  br i1 %148, label %149, label %152

149:                                              ; preds = %140
  %150 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %151 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %150, i32 0, i32 2
  store i32 0, i32* %151, align 8
  br label %152

152:                                              ; preds = %149, %140
  br label %153

153:                                              ; preds = %152, %124
  %154 = load i64, i64* @qtrue, align 8
  store i64 %154, i64* %5, align 8
  br label %819

155:                                              ; preds = %70
  %156 = load i32, i32* %7, align 4
  %157 = load i32, i32* @K_RIGHTARROW, align 4
  %158 = icmp eq i32 %156, %157
  br i1 %158, label %163, label %159

159:                                              ; preds = %155
  %160 = load i32, i32* %7, align 4
  %161 = load i32, i32* @K_KP_RIGHTARROW, align 4
  %162 = icmp eq i32 %160, %161
  br i1 %162, label %163, label %250

163:                                              ; preds = %159, %155
  %164 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %165 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %164, i32 0, i32 4
  %166 = load i32, i32* %165, align 8
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %232, label %168

168:                                              ; preds = %163
  %169 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %170 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %170, align 4
  %173 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %174 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %177 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %176, i32 0, i32 2
  %178 = load i32, i32* %177, align 8
  %179 = icmp slt i32 %175, %178
  br i1 %179, label %180, label %186

180:                                              ; preds = %168
  %181 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %182 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %185 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %184, i32 0, i32 2
  store i32 %183, i32* %185, align 8
  br label %186

186:                                              ; preds = %180, %168
  %187 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %188 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 4
  %190 = load i32, i32* %11, align 4
  %191 = icmp sge i32 %189, %190
  br i1 %191, label %192, label %197

192:                                              ; preds = %186
  %193 = load i32, i32* %11, align 4
  %194 = sub nsw i32 %193, 1
  %195 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %196 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %195, i32 0, i32 1
  store i32 %194, i32* %196, align 4
  br label %197

197:                                              ; preds = %192, %186
  %198 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %199 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 4
  %201 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %202 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %201, i32 0, i32 2
  %203 = load i32, i32* %202, align 8
  %204 = load i32, i32* %13, align 4
  %205 = add nsw i32 %203, %204
  %206 = icmp sge i32 %200, %205
  br i1 %206, label %207, label %216

207:                                              ; preds = %197
  %208 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %209 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %208, i32 0, i32 1
  %210 = load i32, i32* %209, align 4
  %211 = load i32, i32* %13, align 4
  %212 = sub nsw i32 %210, %211
  %213 = add nsw i32 %212, 1
  %214 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %215 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %214, i32 0, i32 2
  store i32 %213, i32* %215, align 8
  br label %216

216:                                              ; preds = %207, %197
  %217 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %218 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %217, i32 0, i32 1
  %219 = load i32, i32* %218, align 4
  %220 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %221 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %220, i32 0, i32 0
  store i32 %219, i32* %221, align 8
  %222 = load %struct.TYPE_13__*, %struct.TYPE_13__** @DC, align 8
  %223 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %222, i32 0, i32 2
  %224 = load i32 (i32, i32)*, i32 (i32, i32)** %223, align 8
  %225 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %226 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %225, i32 0, i32 1
  %227 = load i32, i32* %226, align 4
  %228 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %229 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 8
  %231 = call i32 %224(i32 %227, i32 %230)
  br label %248

232:                                              ; preds = %163
  %233 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %234 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %233, i32 0, i32 2
  %235 = load i32, i32* %234, align 8
  %236 = add nsw i32 %235, 1
  store i32 %236, i32* %234, align 8
  %237 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %238 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %237, i32 0, i32 2
  %239 = load i32, i32* %238, align 8
  %240 = load i32, i32* %11, align 4
  %241 = icmp sge i32 %239, %240
  br i1 %241, label %242, label %247

242:                                              ; preds = %232
  %243 = load i32, i32* %11, align 4
  %244 = sub nsw i32 %243, 1
  %245 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %246 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %245, i32 0, i32 2
  store i32 %244, i32* %246, align 8
  br label %247

247:                                              ; preds = %242, %232
  br label %248

248:                                              ; preds = %247, %216
  %249 = load i64, i64* @qtrue, align 8
  store i64 %249, i64* %5, align 8
  br label %819

250:                                              ; preds = %159
  br label %444

251:                                              ; preds = %47
  %252 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %253 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %252, i32 0, i32 2
  %254 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %253, i32 0, i32 1
  %255 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %254, i32 0, i32 1
  %256 = load i32, i32* %255, align 4
  %257 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %258 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %257, i32 0, i32 3
  %259 = load i32, i32* %258, align 4
  %260 = sdiv i32 %256, %259
  store i32 %260, i32* %13, align 4
  %261 = load i32, i32* %7, align 4
  %262 = load i32, i32* @K_UPARROW, align 4
  %263 = icmp eq i32 %261, %262
  br i1 %263, label %268, label %264

264:                                              ; preds = %251
  %265 = load i32, i32* %7, align 4
  %266 = load i32, i32* @K_KP_UPARROW, align 4
  %267 = icmp eq i32 %265, %266
  br i1 %267, label %268, label %349

268:                                              ; preds = %264, %251
  %269 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %270 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %269, i32 0, i32 4
  %271 = load i32, i32* %270, align 8
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %334, label %273

273:                                              ; preds = %268
  %274 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %275 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %274, i32 0, i32 1
  %276 = load i32, i32* %275, align 4
  %277 = add nsw i32 %276, -1
  store i32 %277, i32* %275, align 4
  %278 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %279 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %278, i32 0, i32 1
  %280 = load i32, i32* %279, align 4
  %281 = icmp slt i32 %280, 0
  br i1 %281, label %282, label %285

282:                                              ; preds = %273
  %283 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %284 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %283, i32 0, i32 1
  store i32 0, i32* %284, align 4
  br label %285

285:                                              ; preds = %282, %273
  %286 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %287 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %286, i32 0, i32 1
  %288 = load i32, i32* %287, align 4
  %289 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %290 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %289, i32 0, i32 2
  %291 = load i32, i32* %290, align 8
  %292 = icmp slt i32 %288, %291
  br i1 %292, label %293, label %299

293:                                              ; preds = %285
  %294 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %295 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %294, i32 0, i32 1
  %296 = load i32, i32* %295, align 4
  %297 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %298 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %297, i32 0, i32 2
  store i32 %296, i32* %298, align 8
  br label %299

299:                                              ; preds = %293, %285
  %300 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %301 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %300, i32 0, i32 1
  %302 = load i32, i32* %301, align 4
  %303 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %304 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %303, i32 0, i32 2
  %305 = load i32, i32* %304, align 8
  %306 = load i32, i32* %13, align 4
  %307 = add nsw i32 %305, %306
  %308 = icmp sge i32 %302, %307
  br i1 %308, label %309, label %318

309:                                              ; preds = %299
  %310 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %311 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %310, i32 0, i32 1
  %312 = load i32, i32* %311, align 4
  %313 = load i32, i32* %13, align 4
  %314 = sub nsw i32 %312, %313
  %315 = add nsw i32 %314, 1
  %316 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %317 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %316, i32 0, i32 2
  store i32 %315, i32* %317, align 8
  br label %318

318:                                              ; preds = %309, %299
  %319 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %320 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %319, i32 0, i32 1
  %321 = load i32, i32* %320, align 4
  %322 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %323 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %322, i32 0, i32 0
  store i32 %321, i32* %323, align 8
  %324 = load %struct.TYPE_13__*, %struct.TYPE_13__** @DC, align 8
  %325 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %324, i32 0, i32 2
  %326 = load i32 (i32, i32)*, i32 (i32, i32)** %325, align 8
  %327 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %328 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %327, i32 0, i32 1
  %329 = load i32, i32* %328, align 4
  %330 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %331 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %330, i32 0, i32 0
  %332 = load i32, i32* %331, align 8
  %333 = call i32 %326(i32 %329, i32 %332)
  br label %347

334:                                              ; preds = %268
  %335 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %336 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %335, i32 0, i32 2
  %337 = load i32, i32* %336, align 8
  %338 = add nsw i32 %337, -1
  store i32 %338, i32* %336, align 8
  %339 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %340 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %339, i32 0, i32 2
  %341 = load i32, i32* %340, align 8
  %342 = icmp slt i32 %341, 0
  br i1 %342, label %343, label %346

343:                                              ; preds = %334
  %344 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %345 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %344, i32 0, i32 2
  store i32 0, i32* %345, align 8
  br label %346

346:                                              ; preds = %343, %334
  br label %347

347:                                              ; preds = %346, %318
  %348 = load i64, i64* @qtrue, align 8
  store i64 %348, i64* %5, align 8
  br label %819

349:                                              ; preds = %264
  %350 = load i32, i32* %7, align 4
  %351 = load i32, i32* @K_DOWNARROW, align 4
  %352 = icmp eq i32 %350, %351
  br i1 %352, label %357, label %353

353:                                              ; preds = %349
  %354 = load i32, i32* %7, align 4
  %355 = load i32, i32* @K_KP_DOWNARROW, align 4
  %356 = icmp eq i32 %354, %355
  br i1 %356, label %357, label %443

357:                                              ; preds = %353, %349
  %358 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %359 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %358, i32 0, i32 4
  %360 = load i32, i32* %359, align 8
  %361 = icmp ne i32 %360, 0
  br i1 %361, label %426, label %362

362:                                              ; preds = %357
  %363 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %364 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %363, i32 0, i32 1
  %365 = load i32, i32* %364, align 4
  %366 = add nsw i32 %365, 1
  store i32 %366, i32* %364, align 4
  %367 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %368 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %367, i32 0, i32 1
  %369 = load i32, i32* %368, align 4
  %370 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %371 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %370, i32 0, i32 2
  %372 = load i32, i32* %371, align 8
  %373 = icmp slt i32 %369, %372
  br i1 %373, label %374, label %380

374:                                              ; preds = %362
  %375 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %376 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %375, i32 0, i32 1
  %377 = load i32, i32* %376, align 4
  %378 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %379 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %378, i32 0, i32 2
  store i32 %377, i32* %379, align 8
  br label %380

380:                                              ; preds = %374, %362
  %381 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %382 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %381, i32 0, i32 1
  %383 = load i32, i32* %382, align 4
  %384 = load i32, i32* %11, align 4
  %385 = icmp sge i32 %383, %384
  br i1 %385, label %386, label %391

386:                                              ; preds = %380
  %387 = load i32, i32* %11, align 4
  %388 = sub nsw i32 %387, 1
  %389 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %390 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %389, i32 0, i32 1
  store i32 %388, i32* %390, align 4
  br label %391

391:                                              ; preds = %386, %380
  %392 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %393 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %392, i32 0, i32 1
  %394 = load i32, i32* %393, align 4
  %395 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %396 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %395, i32 0, i32 2
  %397 = load i32, i32* %396, align 8
  %398 = load i32, i32* %13, align 4
  %399 = add nsw i32 %397, %398
  %400 = icmp sge i32 %394, %399
  br i1 %400, label %401, label %410

401:                                              ; preds = %391
  %402 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %403 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %402, i32 0, i32 1
  %404 = load i32, i32* %403, align 4
  %405 = load i32, i32* %13, align 4
  %406 = sub nsw i32 %404, %405
  %407 = add nsw i32 %406, 1
  %408 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %409 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %408, i32 0, i32 2
  store i32 %407, i32* %409, align 8
  br label %410

410:                                              ; preds = %401, %391
  %411 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %412 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %411, i32 0, i32 1
  %413 = load i32, i32* %412, align 4
  %414 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %415 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %414, i32 0, i32 0
  store i32 %413, i32* %415, align 8
  %416 = load %struct.TYPE_13__*, %struct.TYPE_13__** @DC, align 8
  %417 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %416, i32 0, i32 2
  %418 = load i32 (i32, i32)*, i32 (i32, i32)** %417, align 8
  %419 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %420 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %419, i32 0, i32 1
  %421 = load i32, i32* %420, align 4
  %422 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %423 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %422, i32 0, i32 0
  %424 = load i32, i32* %423, align 8
  %425 = call i32 %418(i32 %421, i32 %424)
  br label %441

426:                                              ; preds = %357
  %427 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %428 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %427, i32 0, i32 2
  %429 = load i32, i32* %428, align 8
  %430 = add nsw i32 %429, 1
  store i32 %430, i32* %428, align 8
  %431 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %432 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %431, i32 0, i32 2
  %433 = load i32, i32* %432, align 8
  %434 = load i32, i32* %12, align 4
  %435 = icmp sgt i32 %433, %434
  br i1 %435, label %436, label %440

436:                                              ; preds = %426
  %437 = load i32, i32* %12, align 4
  %438 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %439 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %438, i32 0, i32 2
  store i32 %437, i32* %439, align 8
  br label %440

440:                                              ; preds = %436, %426
  br label %441

441:                                              ; preds = %440, %410
  %442 = load i64, i64* @qtrue, align 8
  store i64 %442, i64* %5, align 8
  br label %819

443:                                              ; preds = %353
  br label %444

444:                                              ; preds = %443, %250
  %445 = load i32, i32* %7, align 4
  %446 = load i32, i32* @K_MOUSE1, align 4
  %447 = icmp eq i32 %445, %446
  br i1 %447, label %452, label %448

448:                                              ; preds = %444
  %449 = load i32, i32* %7, align 4
  %450 = load i32, i32* @K_MOUSE2, align 4
  %451 = icmp eq i32 %449, %450
  br i1 %451, label %452, label %604

452:                                              ; preds = %448, %444
  %453 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %454 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %453, i32 0, i32 2
  %455 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %454, i32 0, i32 0
  %456 = load i32, i32* %455, align 8
  %457 = load i32, i32* @WINDOW_LB_LEFTARROW, align 4
  %458 = and i32 %456, %457
  %459 = icmp ne i32 %458, 0
  br i1 %459, label %460, label %473

460:                                              ; preds = %452
  %461 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %462 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %461, i32 0, i32 2
  %463 = load i32, i32* %462, align 8
  %464 = add nsw i32 %463, -1
  store i32 %464, i32* %462, align 8
  %465 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %466 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %465, i32 0, i32 2
  %467 = load i32, i32* %466, align 8
  %468 = icmp slt i32 %467, 0
  br i1 %468, label %469, label %472

469:                                              ; preds = %460
  %470 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %471 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %470, i32 0, i32 2
  store i32 0, i32* %471, align 8
  br label %472

472:                                              ; preds = %469, %460
  br label %602

473:                                              ; preds = %452
  %474 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %475 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %474, i32 0, i32 2
  %476 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %475, i32 0, i32 0
  %477 = load i32, i32* %476, align 8
  %478 = load i32, i32* @WINDOW_LB_RIGHTARROW, align 4
  %479 = and i32 %477, %478
  %480 = icmp ne i32 %479, 0
  br i1 %480, label %481, label %496

481:                                              ; preds = %473
  %482 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %483 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %482, i32 0, i32 2
  %484 = load i32, i32* %483, align 8
  %485 = add nsw i32 %484, 1
  store i32 %485, i32* %483, align 8
  %486 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %487 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %486, i32 0, i32 2
  %488 = load i32, i32* %487, align 8
  %489 = load i32, i32* %12, align 4
  %490 = icmp sgt i32 %488, %489
  br i1 %490, label %491, label %495

491:                                              ; preds = %481
  %492 = load i32, i32* %12, align 4
  %493 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %494 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %493, i32 0, i32 2
  store i32 %492, i32* %494, align 8
  br label %495

495:                                              ; preds = %491, %481
  br label %601

496:                                              ; preds = %473
  %497 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %498 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %497, i32 0, i32 2
  %499 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %498, i32 0, i32 0
  %500 = load i32, i32* %499, align 8
  %501 = load i32, i32* @WINDOW_LB_PGUP, align 4
  %502 = and i32 %500, %501
  %503 = icmp ne i32 %502, 0
  br i1 %503, label %504, label %518

504:                                              ; preds = %496
  %505 = load i32, i32* %13, align 4
  %506 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %507 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %506, i32 0, i32 2
  %508 = load i32, i32* %507, align 8
  %509 = sub nsw i32 %508, %505
  store i32 %509, i32* %507, align 8
  %510 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %511 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %510, i32 0, i32 2
  %512 = load i32, i32* %511, align 8
  %513 = icmp slt i32 %512, 0
  br i1 %513, label %514, label %517

514:                                              ; preds = %504
  %515 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %516 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %515, i32 0, i32 2
  store i32 0, i32* %516, align 8
  br label %517

517:                                              ; preds = %514, %504
  br label %600

518:                                              ; preds = %496
  %519 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %520 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %519, i32 0, i32 2
  %521 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %520, i32 0, i32 0
  %522 = load i32, i32* %521, align 8
  %523 = load i32, i32* @WINDOW_LB_PGDN, align 4
  %524 = and i32 %522, %523
  %525 = icmp ne i32 %524, 0
  br i1 %525, label %526, label %542

526:                                              ; preds = %518
  %527 = load i32, i32* %13, align 4
  %528 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %529 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %528, i32 0, i32 2
  %530 = load i32, i32* %529, align 8
  %531 = add nsw i32 %530, %527
  store i32 %531, i32* %529, align 8
  %532 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %533 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %532, i32 0, i32 2
  %534 = load i32, i32* %533, align 8
  %535 = load i32, i32* %12, align 4
  %536 = icmp sgt i32 %534, %535
  br i1 %536, label %537, label %541

537:                                              ; preds = %526
  %538 = load i32, i32* %12, align 4
  %539 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %540 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %539, i32 0, i32 2
  store i32 %538, i32* %540, align 8
  br label %541

541:                                              ; preds = %537, %526
  br label %599

542:                                              ; preds = %518
  %543 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %544 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %543, i32 0, i32 2
  %545 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %544, i32 0, i32 0
  %546 = load i32, i32* %545, align 8
  %547 = load i32, i32* @WINDOW_LB_THUMB, align 4
  %548 = and i32 %546, %547
  %549 = icmp ne i32 %548, 0
  br i1 %549, label %550, label %551

550:                                              ; preds = %542
  br label %598

551:                                              ; preds = %542
  %552 = load %struct.TYPE_13__*, %struct.TYPE_13__** @DC, align 8
  %553 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %552, i32 0, i32 1
  %554 = load i64, i64* %553, align 8
  %555 = load i64, i64* @lastListBoxClickTime, align 8
  %556 = icmp slt i64 %554, %555
  br i1 %556, label %557, label %568

557:                                              ; preds = %551
  %558 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %559 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %558, i32 0, i32 5
  %560 = load i64, i64* %559, align 8
  %561 = icmp ne i64 %560, 0
  br i1 %561, label %562, label %568

562:                                              ; preds = %557
  %563 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %564 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %565 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %564, i32 0, i32 5
  %566 = load i64, i64* %565, align 8
  %567 = call i32 @Item_RunScript(%struct.TYPE_11__* %563, i64 %566)
  br label %568

568:                                              ; preds = %562, %557, %551
  %569 = load %struct.TYPE_13__*, %struct.TYPE_13__** @DC, align 8
  %570 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %569, i32 0, i32 1
  %571 = load i64, i64* %570, align 8
  %572 = load i64, i64* @DOUBLE_CLICK_DELAY, align 8
  %573 = add nsw i64 %571, %572
  store i64 %573, i64* @lastListBoxClickTime, align 8
  %574 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %575 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %574, i32 0, i32 0
  %576 = load i32, i32* %575, align 8
  %577 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %578 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %577, i32 0, i32 1
  %579 = load i32, i32* %578, align 4
  %580 = icmp ne i32 %576, %579
  br i1 %580, label %581, label %597

581:                                              ; preds = %568
  %582 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %583 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %582, i32 0, i32 1
  %584 = load i32, i32* %583, align 4
  %585 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %586 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %585, i32 0, i32 0
  store i32 %584, i32* %586, align 8
  %587 = load %struct.TYPE_13__*, %struct.TYPE_13__** @DC, align 8
  %588 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %587, i32 0, i32 2
  %589 = load i32 (i32, i32)*, i32 (i32, i32)** %588, align 8
  %590 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %591 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %590, i32 0, i32 1
  %592 = load i32, i32* %591, align 4
  %593 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %594 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %593, i32 0, i32 0
  %595 = load i32, i32* %594, align 8
  %596 = call i32 %589(i32 %592, i32 %595)
  br label %597

597:                                              ; preds = %581, %568
  br label %598

598:                                              ; preds = %597, %550
  br label %599

599:                                              ; preds = %598, %541
  br label %600

600:                                              ; preds = %599, %517
  br label %601

601:                                              ; preds = %600, %495
  br label %602

602:                                              ; preds = %601, %472
  %603 = load i64, i64* @qtrue, align 8
  store i64 %603, i64* %5, align 8
  br label %819

604:                                              ; preds = %448
  %605 = load i32, i32* %7, align 4
  %606 = load i32, i32* @K_HOME, align 4
  %607 = icmp eq i32 %605, %606
  br i1 %607, label %612, label %608

608:                                              ; preds = %604
  %609 = load i32, i32* %7, align 4
  %610 = load i32, i32* @K_KP_HOME, align 4
  %611 = icmp eq i32 %609, %610
  br i1 %611, label %612, label %616

612:                                              ; preds = %608, %604
  %613 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %614 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %613, i32 0, i32 2
  store i32 0, i32* %614, align 8
  %615 = load i64, i64* @qtrue, align 8
  store i64 %615, i64* %5, align 8
  br label %819

616:                                              ; preds = %608
  %617 = load i32, i32* %7, align 4
  %618 = load i32, i32* @K_END, align 4
  %619 = icmp eq i32 %617, %618
  br i1 %619, label %624, label %620

620:                                              ; preds = %616
  %621 = load i32, i32* %7, align 4
  %622 = load i32, i32* @K_KP_END, align 4
  %623 = icmp eq i32 %621, %622
  br i1 %623, label %624, label %629

624:                                              ; preds = %620, %616
  %625 = load i32, i32* %12, align 4
  %626 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %627 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %626, i32 0, i32 2
  store i32 %625, i32* %627, align 8
  %628 = load i64, i64* @qtrue, align 8
  store i64 %628, i64* %5, align 8
  br label %819

629:                                              ; preds = %620
  %630 = load i32, i32* %7, align 4
  %631 = load i32, i32* @K_PGUP, align 4
  %632 = icmp eq i32 %630, %631
  br i1 %632, label %637, label %633

633:                                              ; preds = %629
  %634 = load i32, i32* %7, align 4
  %635 = load i32, i32* @K_KP_PGUP, align 4
  %636 = icmp eq i32 %634, %635
  br i1 %636, label %637, label %720

637:                                              ; preds = %633, %629
  %638 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %639 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %638, i32 0, i32 4
  %640 = load i32, i32* %639, align 8
  %641 = icmp ne i32 %640, 0
  br i1 %641, label %704, label %642

642:                                              ; preds = %637
  %643 = load i32, i32* %13, align 4
  %644 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %645 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %644, i32 0, i32 1
  %646 = load i32, i32* %645, align 4
  %647 = sub nsw i32 %646, %643
  store i32 %647, i32* %645, align 4
  %648 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %649 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %648, i32 0, i32 1
  %650 = load i32, i32* %649, align 4
  %651 = icmp slt i32 %650, 0
  br i1 %651, label %652, label %655

652:                                              ; preds = %642
  %653 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %654 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %653, i32 0, i32 1
  store i32 0, i32* %654, align 4
  br label %655

655:                                              ; preds = %652, %642
  %656 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %657 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %656, i32 0, i32 1
  %658 = load i32, i32* %657, align 4
  %659 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %660 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %659, i32 0, i32 2
  %661 = load i32, i32* %660, align 8
  %662 = icmp slt i32 %658, %661
  br i1 %662, label %663, label %669

663:                                              ; preds = %655
  %664 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %665 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %664, i32 0, i32 1
  %666 = load i32, i32* %665, align 4
  %667 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %668 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %667, i32 0, i32 2
  store i32 %666, i32* %668, align 8
  br label %669

669:                                              ; preds = %663, %655
  %670 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %671 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %670, i32 0, i32 1
  %672 = load i32, i32* %671, align 4
  %673 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %674 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %673, i32 0, i32 2
  %675 = load i32, i32* %674, align 8
  %676 = load i32, i32* %13, align 4
  %677 = add nsw i32 %675, %676
  %678 = icmp sge i32 %672, %677
  br i1 %678, label %679, label %688

679:                                              ; preds = %669
  %680 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %681 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %680, i32 0, i32 1
  %682 = load i32, i32* %681, align 4
  %683 = load i32, i32* %13, align 4
  %684 = sub nsw i32 %682, %683
  %685 = add nsw i32 %684, 1
  %686 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %687 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %686, i32 0, i32 2
  store i32 %685, i32* %687, align 8
  br label %688

688:                                              ; preds = %679, %669
  %689 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %690 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %689, i32 0, i32 1
  %691 = load i32, i32* %690, align 4
  %692 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %693 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %692, i32 0, i32 0
  store i32 %691, i32* %693, align 8
  %694 = load %struct.TYPE_13__*, %struct.TYPE_13__** @DC, align 8
  %695 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %694, i32 0, i32 2
  %696 = load i32 (i32, i32)*, i32 (i32, i32)** %695, align 8
  %697 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %698 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %697, i32 0, i32 1
  %699 = load i32, i32* %698, align 4
  %700 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %701 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %700, i32 0, i32 0
  %702 = load i32, i32* %701, align 8
  %703 = call i32 %696(i32 %699, i32 %702)
  br label %718

704:                                              ; preds = %637
  %705 = load i32, i32* %13, align 4
  %706 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %707 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %706, i32 0, i32 2
  %708 = load i32, i32* %707, align 8
  %709 = sub nsw i32 %708, %705
  store i32 %709, i32* %707, align 8
  %710 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %711 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %710, i32 0, i32 2
  %712 = load i32, i32* %711, align 8
  %713 = icmp slt i32 %712, 0
  br i1 %713, label %714, label %717

714:                                              ; preds = %704
  %715 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %716 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %715, i32 0, i32 2
  store i32 0, i32* %716, align 8
  br label %717

717:                                              ; preds = %714, %704
  br label %718

718:                                              ; preds = %717, %688
  %719 = load i64, i64* @qtrue, align 8
  store i64 %719, i64* %5, align 8
  br label %819

720:                                              ; preds = %633
  %721 = load i32, i32* %7, align 4
  %722 = load i32, i32* @K_PGDN, align 4
  %723 = icmp eq i32 %721, %722
  br i1 %723, label %728, label %724

724:                                              ; preds = %720
  %725 = load i32, i32* %7, align 4
  %726 = load i32, i32* @K_KP_PGDN, align 4
  %727 = icmp eq i32 %725, %726
  br i1 %727, label %728, label %816

728:                                              ; preds = %724, %720
  %729 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %730 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %729, i32 0, i32 4
  %731 = load i32, i32* %730, align 8
  %732 = icmp ne i32 %731, 0
  br i1 %732, label %798, label %733

733:                                              ; preds = %728
  %734 = load i32, i32* %13, align 4
  %735 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %736 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %735, i32 0, i32 1
  %737 = load i32, i32* %736, align 4
  %738 = add nsw i32 %737, %734
  store i32 %738, i32* %736, align 4
  %739 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %740 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %739, i32 0, i32 1
  %741 = load i32, i32* %740, align 4
  %742 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %743 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %742, i32 0, i32 2
  %744 = load i32, i32* %743, align 8
  %745 = icmp slt i32 %741, %744
  br i1 %745, label %746, label %752

746:                                              ; preds = %733
  %747 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %748 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %747, i32 0, i32 1
  %749 = load i32, i32* %748, align 4
  %750 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %751 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %750, i32 0, i32 2
  store i32 %749, i32* %751, align 8
  br label %752

752:                                              ; preds = %746, %733
  %753 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %754 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %753, i32 0, i32 1
  %755 = load i32, i32* %754, align 4
  %756 = load i32, i32* %11, align 4
  %757 = icmp sge i32 %755, %756
  br i1 %757, label %758, label %763

758:                                              ; preds = %752
  %759 = load i32, i32* %11, align 4
  %760 = sub nsw i32 %759, 1
  %761 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %762 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %761, i32 0, i32 1
  store i32 %760, i32* %762, align 4
  br label %763

763:                                              ; preds = %758, %752
  %764 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %765 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %764, i32 0, i32 1
  %766 = load i32, i32* %765, align 4
  %767 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %768 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %767, i32 0, i32 2
  %769 = load i32, i32* %768, align 8
  %770 = load i32, i32* %13, align 4
  %771 = add nsw i32 %769, %770
  %772 = icmp sge i32 %766, %771
  br i1 %772, label %773, label %782

773:                                              ; preds = %763
  %774 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %775 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %774, i32 0, i32 1
  %776 = load i32, i32* %775, align 4
  %777 = load i32, i32* %13, align 4
  %778 = sub nsw i32 %776, %777
  %779 = add nsw i32 %778, 1
  %780 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %781 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %780, i32 0, i32 2
  store i32 %779, i32* %781, align 8
  br label %782

782:                                              ; preds = %773, %763
  %783 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %784 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %783, i32 0, i32 1
  %785 = load i32, i32* %784, align 4
  %786 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %787 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %786, i32 0, i32 0
  store i32 %785, i32* %787, align 8
  %788 = load %struct.TYPE_13__*, %struct.TYPE_13__** @DC, align 8
  %789 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %788, i32 0, i32 2
  %790 = load i32 (i32, i32)*, i32 (i32, i32)** %789, align 8
  %791 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %792 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %791, i32 0, i32 1
  %793 = load i32, i32* %792, align 4
  %794 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %795 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %794, i32 0, i32 0
  %796 = load i32, i32* %795, align 8
  %797 = call i32 %790(i32 %793, i32 %796)
  br label %814

798:                                              ; preds = %728
  %799 = load i32, i32* %13, align 4
  %800 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %801 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %800, i32 0, i32 2
  %802 = load i32, i32* %801, align 8
  %803 = add nsw i32 %802, %799
  store i32 %803, i32* %801, align 8
  %804 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %805 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %804, i32 0, i32 2
  %806 = load i32, i32* %805, align 8
  %807 = load i32, i32* %12, align 4
  %808 = icmp sgt i32 %806, %807
  br i1 %808, label %809, label %813

809:                                              ; preds = %798
  %810 = load i32, i32* %12, align 4
  %811 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %812 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %811, i32 0, i32 2
  store i32 %810, i32* %812, align 8
  br label %813

813:                                              ; preds = %809, %798
  br label %814

814:                                              ; preds = %813, %782
  %815 = load i64, i64* @qtrue, align 8
  store i64 %815, i64* %5, align 8
  br label %819

816:                                              ; preds = %724
  br label %817

817:                                              ; preds = %816, %39, %27
  %818 = load i64, i64* @qfalse, align 8
  store i64 %818, i64* %5, align 8
  br label %819

819:                                              ; preds = %817, %814, %718, %624, %612, %602, %441, %347, %248, %153
  %820 = load i64, i64* %5, align 8
  ret i64 %820
}

declare dso_local i64 @Rect_ContainsPoint(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @Item_ListBox_MaxScroll(%struct.TYPE_11__*) #1

declare dso_local i32 @Item_RunScript(%struct.TYPE_11__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
