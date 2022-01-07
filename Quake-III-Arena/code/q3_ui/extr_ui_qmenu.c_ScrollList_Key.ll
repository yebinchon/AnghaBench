; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/q3_ui/extr_ui_qmenu.c_ScrollList_Key.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/q3_ui/extr_ui_qmenu.c_ScrollList_Key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, i32 }
%struct.TYPE_16__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32**, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32, i32, i32, {}* }

@QMF_HASMOUSEFOCUS = common dso_local global i32 0, align 4
@SMALLCHAR_WIDTH = common dso_local global i32 0, align 4
@QMF_CENTER_JUSTIFY = common dso_local global i32 0, align 4
@SMALLCHAR_HEIGHT = common dso_local global i32 0, align 4
@uis = common dso_local global %struct.TYPE_17__ zeroinitializer, align 4
@QM_GOTFOCUS = common dso_local global i32 0, align 4
@menu_move_sound = common dso_local global i32 0, align 4
@menu_null_sound = common dso_local global i32 0, align 4
@menu_buzz_sound = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ScrollList_Key(%struct.TYPE_16__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %4, align 8
  store i32 %1, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  switch i32 %16, label %693 [
    i32 132, label %17
    i32 139, label %152
    i32 142, label %152
    i32 140, label %188
    i32 143, label %188
    i32 130, label %274
    i32 136, label %274
    i32 131, label %340
    i32 137, label %340
    i32 134, label %423
    i32 128, label %423
    i32 141, label %484
    i32 144, label %484
    i32 138, label %557
    i32 133, label %557
    i32 135, label %620
    i32 129, label %620
  ]

17:                                               ; preds = %2
  %18 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i32 0, i32 9
  %20 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @QMF_HASMOUSEFOCUS, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %151

25:                                               ; preds = %17
  %26 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %26, i32 0, i32 9
  %28 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %6, align 4
  %30 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %30, i32 0, i32 9
  %32 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  store i32 %33, i32* %7, align 4
  %34 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = add nsw i32 %36, %39
  %41 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = mul nsw i32 %40, %43
  %45 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = sub nsw i32 %44, %47
  %49 = load i32, i32* @SMALLCHAR_WIDTH, align 4
  %50 = mul nsw i32 %48, %49
  store i32 %50, i32* %8, align 4
  %51 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %51, i32 0, i32 9
  %53 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @QMF_CENTER_JUSTIFY, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %25
  %59 = load i32, i32* %8, align 4
  %60 = sdiv i32 %59, 2
  %61 = load i32, i32* %6, align 4
  %62 = sub nsw i32 %61, %60
  store i32 %62, i32* %6, align 4
  br label %63

63:                                               ; preds = %58, %25
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* %8, align 4
  %67 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @SMALLCHAR_HEIGHT, align 4
  %71 = mul nsw i32 %69, %70
  %72 = call i32 @UI_CursorInRect(i32 %64, i32 %65, i32 %66, i32 %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %149

74:                                               ; preds = %63
  %75 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @uis, i32 0, i32 1), align 4
  %76 = load i32, i32* %6, align 4
  %77 = sub nsw i32 %75, %76
  %78 = load i32, i32* @SMALLCHAR_WIDTH, align 4
  %79 = sdiv i32 %77, %78
  store i32 %79, i32* %12, align 4
  %80 = load i32, i32* %12, align 4
  %81 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = add nsw i32 %83, %86
  %88 = sdiv i32 %80, %87
  store i32 %88, i32* %14, align 4
  %89 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @uis, i32 0, i32 0), align 4
  %90 = load i32, i32* %7, align 4
  %91 = sub nsw i32 %89, %90
  %92 = load i32, i32* @SMALLCHAR_HEIGHT, align 4
  %93 = sdiv i32 %91, %92
  store i32 %93, i32* %13, align 4
  %94 = load i32, i32* %14, align 4
  %95 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 4
  %98 = mul nsw i32 %94, %97
  %99 = load i32, i32* %13, align 4
  %100 = add nsw i32 %98, %99
  store i32 %100, i32* %15, align 4
  %101 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %101, i32 0, i32 4
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* %15, align 4
  %105 = add nsw i32 %103, %104
  %106 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %106, i32 0, i32 5
  %108 = load i32, i32* %107, align 4
  %109 = icmp slt i32 %105, %108
  br i1 %109, label %110, label %148

110:                                              ; preds = %74
  %111 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %111, i32 0, i32 7
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %114, i32 0, i32 6
  store i32 %113, i32* %115, align 8
  %116 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %116, i32 0, i32 4
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* %15, align 4
  %120 = add nsw i32 %118, %119
  %121 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %121, i32 0, i32 7
  store i32 %120, i32* %122, align 4
  %123 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %123, i32 0, i32 6
  %125 = load i32, i32* %124, align 8
  %126 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %127 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %126, i32 0, i32 7
  %128 = load i32, i32* %127, align 4
  %129 = icmp ne i32 %125, %128
  br i1 %129, label %130, label %147

130:                                              ; preds = %110
  %131 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %132 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %131, i32 0, i32 9
  %133 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %132, i32 0, i32 3
  %134 = bitcast {}** %133 to i32 (%struct.TYPE_16__*, i32)**
  %135 = load i32 (%struct.TYPE_16__*, i32)*, i32 (%struct.TYPE_16__*, i32)** %134, align 8
  %136 = icmp ne i32 (%struct.TYPE_16__*, i32)* %135, null
  br i1 %136, label %137, label %147

137:                                              ; preds = %130
  %138 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %139 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %138, i32 0, i32 9
  %140 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %139, i32 0, i32 3
  %141 = bitcast {}** %140 to i32 (%struct.TYPE_16__*, i32)**
  %142 = load i32 (%struct.TYPE_16__*, i32)*, i32 (%struct.TYPE_16__*, i32)** %141, align 8
  %143 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %144 = load i32, i32* @QM_GOTFOCUS, align 4
  %145 = call i32 %142(%struct.TYPE_16__* %143, i32 %144)
  %146 = load i32, i32* @menu_move_sound, align 4
  store i32 %146, i32* %3, align 4
  br label %812

147:                                              ; preds = %130, %110
  br label %148

148:                                              ; preds = %147, %74
  br label %149

149:                                              ; preds = %148, %63
  %150 = load i32, i32* @menu_null_sound, align 4
  store i32 %150, i32* %3, align 4
  br label %812

151:                                              ; preds = %17
  br label %693

152:                                              ; preds = %2, %2
  %153 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %154 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %153, i32 0, i32 7
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %157 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %156, i32 0, i32 6
  store i32 %155, i32* %157, align 8
  %158 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %159 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %158, i32 0, i32 7
  store i32 0, i32* %159, align 4
  %160 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %161 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %160, i32 0, i32 4
  store i32 0, i32* %161, align 8
  %162 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %163 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %162, i32 0, i32 6
  %164 = load i32, i32* %163, align 8
  %165 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %166 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %165, i32 0, i32 7
  %167 = load i32, i32* %166, align 4
  %168 = icmp ne i32 %164, %167
  br i1 %168, label %169, label %186

169:                                              ; preds = %152
  %170 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %171 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %170, i32 0, i32 9
  %172 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %171, i32 0, i32 3
  %173 = bitcast {}** %172 to i32 (%struct.TYPE_16__*, i32)**
  %174 = load i32 (%struct.TYPE_16__*, i32)*, i32 (%struct.TYPE_16__*, i32)** %173, align 8
  %175 = icmp ne i32 (%struct.TYPE_16__*, i32)* %174, null
  br i1 %175, label %176, label %186

176:                                              ; preds = %169
  %177 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %178 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %177, i32 0, i32 9
  %179 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %178, i32 0, i32 3
  %180 = bitcast {}** %179 to i32 (%struct.TYPE_16__*, i32)**
  %181 = load i32 (%struct.TYPE_16__*, i32)*, i32 (%struct.TYPE_16__*, i32)** %180, align 8
  %182 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %183 = load i32, i32* @QM_GOTFOCUS, align 4
  %184 = call i32 %181(%struct.TYPE_16__* %182, i32 %183)
  %185 = load i32, i32* @menu_move_sound, align 4
  store i32 %185, i32* %3, align 4
  br label %812

186:                                              ; preds = %169, %152
  %187 = load i32, i32* @menu_buzz_sound, align 4
  store i32 %187, i32* %3, align 4
  br label %812

188:                                              ; preds = %2, %2
  %189 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %190 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %189, i32 0, i32 7
  %191 = load i32, i32* %190, align 4
  %192 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %193 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %192, i32 0, i32 6
  store i32 %191, i32* %193, align 8
  %194 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %195 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %194, i32 0, i32 5
  %196 = load i32, i32* %195, align 4
  %197 = sub nsw i32 %196, 1
  %198 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %199 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %198, i32 0, i32 7
  store i32 %197, i32* %199, align 4
  %200 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %201 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %200, i32 0, i32 2
  %202 = load i32, i32* %201, align 8
  %203 = icmp sgt i32 %202, 1
  br i1 %203, label %204, label %228

204:                                              ; preds = %188
  %205 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %206 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %205, i32 0, i32 7
  %207 = load i32, i32* %206, align 4
  %208 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %209 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %208, i32 0, i32 3
  %210 = load i32, i32* %209, align 4
  %211 = sdiv i32 %207, %210
  %212 = add nsw i32 %211, 1
  %213 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %214 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %213, i32 0, i32 3
  %215 = load i32, i32* %214, align 4
  %216 = mul nsw i32 %212, %215
  store i32 %216, i32* %11, align 4
  %217 = load i32, i32* %11, align 4
  %218 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %219 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %218, i32 0, i32 2
  %220 = load i32, i32* %219, align 8
  %221 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %222 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %221, i32 0, i32 3
  %223 = load i32, i32* %222, align 4
  %224 = mul nsw i32 %220, %223
  %225 = sub nsw i32 %217, %224
  %226 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %227 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %226, i32 0, i32 4
  store i32 %225, i32* %227, align 8
  br label %239

228:                                              ; preds = %188
  %229 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %230 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %229, i32 0, i32 7
  %231 = load i32, i32* %230, align 4
  %232 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %233 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %232, i32 0, i32 3
  %234 = load i32, i32* %233, align 4
  %235 = sub nsw i32 %234, 1
  %236 = sub nsw i32 %231, %235
  %237 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %238 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %237, i32 0, i32 4
  store i32 %236, i32* %238, align 8
  br label %239

239:                                              ; preds = %228, %204
  %240 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %241 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %240, i32 0, i32 4
  %242 = load i32, i32* %241, align 8
  %243 = icmp slt i32 %242, 0
  br i1 %243, label %244, label %247

244:                                              ; preds = %239
  %245 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %246 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %245, i32 0, i32 4
  store i32 0, i32* %246, align 8
  br label %247

247:                                              ; preds = %244, %239
  %248 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %249 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %248, i32 0, i32 6
  %250 = load i32, i32* %249, align 8
  %251 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %252 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %251, i32 0, i32 7
  %253 = load i32, i32* %252, align 4
  %254 = icmp ne i32 %250, %253
  br i1 %254, label %255, label %272

255:                                              ; preds = %247
  %256 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %257 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %256, i32 0, i32 9
  %258 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %257, i32 0, i32 3
  %259 = bitcast {}** %258 to i32 (%struct.TYPE_16__*, i32)**
  %260 = load i32 (%struct.TYPE_16__*, i32)*, i32 (%struct.TYPE_16__*, i32)** %259, align 8
  %261 = icmp ne i32 (%struct.TYPE_16__*, i32)* %260, null
  br i1 %261, label %262, label %272

262:                                              ; preds = %255
  %263 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %264 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %263, i32 0, i32 9
  %265 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %264, i32 0, i32 3
  %266 = bitcast {}** %265 to i32 (%struct.TYPE_16__*, i32)**
  %267 = load i32 (%struct.TYPE_16__*, i32)*, i32 (%struct.TYPE_16__*, i32)** %266, align 8
  %268 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %269 = load i32, i32* @QM_GOTFOCUS, align 4
  %270 = call i32 %267(%struct.TYPE_16__* %268, i32 %269)
  %271 = load i32, i32* @menu_move_sound, align 4
  store i32 %271, i32* %3, align 4
  br label %812

272:                                              ; preds = %255, %247
  %273 = load i32, i32* @menu_buzz_sound, align 4
  store i32 %273, i32* %3, align 4
  br label %812

274:                                              ; preds = %2, %2
  %275 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %276 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %275, i32 0, i32 2
  %277 = load i32, i32* %276, align 8
  %278 = icmp sgt i32 %277, 1
  br i1 %278, label %279, label %281

279:                                              ; preds = %274
  %280 = load i32, i32* @menu_null_sound, align 4
  store i32 %280, i32* %3, align 4
  br label %812

281:                                              ; preds = %274
  %282 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %283 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %282, i32 0, i32 7
  %284 = load i32, i32* %283, align 4
  %285 = icmp sgt i32 %284, 0
  br i1 %285, label %286, label %338

286:                                              ; preds = %281
  %287 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %288 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %287, i32 0, i32 7
  %289 = load i32, i32* %288, align 4
  %290 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %291 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %290, i32 0, i32 6
  store i32 %289, i32* %291, align 8
  %292 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %293 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %292, i32 0, i32 3
  %294 = load i32, i32* %293, align 4
  %295 = sub nsw i32 %294, 1
  %296 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %297 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %296, i32 0, i32 7
  %298 = load i32, i32* %297, align 4
  %299 = sub nsw i32 %298, %295
  store i32 %299, i32* %297, align 4
  %300 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %301 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %300, i32 0, i32 7
  %302 = load i32, i32* %301, align 4
  %303 = icmp slt i32 %302, 0
  br i1 %303, label %304, label %307

304:                                              ; preds = %286
  %305 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %306 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %305, i32 0, i32 7
  store i32 0, i32* %306, align 4
  br label %307

307:                                              ; preds = %304, %286
  %308 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %309 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %308, i32 0, i32 7
  %310 = load i32, i32* %309, align 4
  %311 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %312 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %311, i32 0, i32 4
  store i32 %310, i32* %312, align 8
  %313 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %314 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %313, i32 0, i32 4
  %315 = load i32, i32* %314, align 8
  %316 = icmp slt i32 %315, 0
  br i1 %316, label %317, label %320

317:                                              ; preds = %307
  %318 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %319 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %318, i32 0, i32 4
  store i32 0, i32* %319, align 8
  br label %320

320:                                              ; preds = %317, %307
  %321 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %322 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %321, i32 0, i32 9
  %323 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %322, i32 0, i32 3
  %324 = bitcast {}** %323 to i32 (%struct.TYPE_16__*, i32)**
  %325 = load i32 (%struct.TYPE_16__*, i32)*, i32 (%struct.TYPE_16__*, i32)** %324, align 8
  %326 = icmp ne i32 (%struct.TYPE_16__*, i32)* %325, null
  br i1 %326, label %327, label %336

327:                                              ; preds = %320
  %328 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %329 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %328, i32 0, i32 9
  %330 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %329, i32 0, i32 3
  %331 = bitcast {}** %330 to i32 (%struct.TYPE_16__*, i32)**
  %332 = load i32 (%struct.TYPE_16__*, i32)*, i32 (%struct.TYPE_16__*, i32)** %331, align 8
  %333 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %334 = load i32, i32* @QM_GOTFOCUS, align 4
  %335 = call i32 %332(%struct.TYPE_16__* %333, i32 %334)
  br label %336

336:                                              ; preds = %327, %320
  %337 = load i32, i32* @menu_move_sound, align 4
  store i32 %337, i32* %3, align 4
  br label %812

338:                                              ; preds = %281
  %339 = load i32, i32* @menu_buzz_sound, align 4
  store i32 %339, i32* %3, align 4
  br label %812

340:                                              ; preds = %2, %2
  %341 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %342 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %341, i32 0, i32 2
  %343 = load i32, i32* %342, align 8
  %344 = icmp sgt i32 %343, 1
  br i1 %344, label %345, label %347

345:                                              ; preds = %340
  %346 = load i32, i32* @menu_null_sound, align 4
  store i32 %346, i32* %3, align 4
  br label %812

347:                                              ; preds = %340
  %348 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %349 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %348, i32 0, i32 7
  %350 = load i32, i32* %349, align 4
  %351 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %352 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %351, i32 0, i32 5
  %353 = load i32, i32* %352, align 4
  %354 = sub nsw i32 %353, 1
  %355 = icmp slt i32 %350, %354
  br i1 %355, label %356, label %421

356:                                              ; preds = %347
  %357 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %358 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %357, i32 0, i32 7
  %359 = load i32, i32* %358, align 4
  %360 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %361 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %360, i32 0, i32 6
  store i32 %359, i32* %361, align 8
  %362 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %363 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %362, i32 0, i32 3
  %364 = load i32, i32* %363, align 4
  %365 = sub nsw i32 %364, 1
  %366 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %367 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %366, i32 0, i32 7
  %368 = load i32, i32* %367, align 4
  %369 = add nsw i32 %368, %365
  store i32 %369, i32* %367, align 4
  %370 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %371 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %370, i32 0, i32 7
  %372 = load i32, i32* %371, align 4
  %373 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %374 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %373, i32 0, i32 5
  %375 = load i32, i32* %374, align 4
  %376 = sub nsw i32 %375, 1
  %377 = icmp sgt i32 %372, %376
  br i1 %377, label %378, label %385

378:                                              ; preds = %356
  %379 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %380 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %379, i32 0, i32 5
  %381 = load i32, i32* %380, align 4
  %382 = sub nsw i32 %381, 1
  %383 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %384 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %383, i32 0, i32 7
  store i32 %382, i32* %384, align 4
  br label %385

385:                                              ; preds = %378, %356
  %386 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %387 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %386, i32 0, i32 7
  %388 = load i32, i32* %387, align 4
  %389 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %390 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %389, i32 0, i32 3
  %391 = load i32, i32* %390, align 4
  %392 = sub nsw i32 %391, 1
  %393 = sub nsw i32 %388, %392
  %394 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %395 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %394, i32 0, i32 4
  store i32 %393, i32* %395, align 8
  %396 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %397 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %396, i32 0, i32 4
  %398 = load i32, i32* %397, align 8
  %399 = icmp slt i32 %398, 0
  br i1 %399, label %400, label %403

400:                                              ; preds = %385
  %401 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %402 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %401, i32 0, i32 4
  store i32 0, i32* %402, align 8
  br label %403

403:                                              ; preds = %400, %385
  %404 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %405 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %404, i32 0, i32 9
  %406 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %405, i32 0, i32 3
  %407 = bitcast {}** %406 to i32 (%struct.TYPE_16__*, i32)**
  %408 = load i32 (%struct.TYPE_16__*, i32)*, i32 (%struct.TYPE_16__*, i32)** %407, align 8
  %409 = icmp ne i32 (%struct.TYPE_16__*, i32)* %408, null
  br i1 %409, label %410, label %419

410:                                              ; preds = %403
  %411 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %412 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %411, i32 0, i32 9
  %413 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %412, i32 0, i32 3
  %414 = bitcast {}** %413 to i32 (%struct.TYPE_16__*, i32)**
  %415 = load i32 (%struct.TYPE_16__*, i32)*, i32 (%struct.TYPE_16__*, i32)** %414, align 8
  %416 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %417 = load i32, i32* @QM_GOTFOCUS, align 4
  %418 = call i32 %415(%struct.TYPE_16__* %416, i32 %417)
  br label %419

419:                                              ; preds = %410, %403
  %420 = load i32, i32* @menu_move_sound, align 4
  store i32 %420, i32* %3, align 4
  br label %812

421:                                              ; preds = %347
  %422 = load i32, i32* @menu_buzz_sound, align 4
  store i32 %422, i32* %3, align 4
  br label %812

423:                                              ; preds = %2, %2
  %424 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %425 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %424, i32 0, i32 7
  %426 = load i32, i32* %425, align 4
  %427 = icmp eq i32 %426, 0
  br i1 %427, label %428, label %430

428:                                              ; preds = %423
  %429 = load i32, i32* @menu_buzz_sound, align 4
  store i32 %429, i32* %3, align 4
  br label %812

430:                                              ; preds = %423
  %431 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %432 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %431, i32 0, i32 7
  %433 = load i32, i32* %432, align 4
  %434 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %435 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %434, i32 0, i32 6
  store i32 %433, i32* %435, align 8
  %436 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %437 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %436, i32 0, i32 7
  %438 = load i32, i32* %437, align 4
  %439 = add nsw i32 %438, -1
  store i32 %439, i32* %437, align 4
  %440 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %441 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %440, i32 0, i32 7
  %442 = load i32, i32* %441, align 4
  %443 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %444 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %443, i32 0, i32 4
  %445 = load i32, i32* %444, align 8
  %446 = icmp slt i32 %442, %445
  br i1 %446, label %447, label %466

447:                                              ; preds = %430
  %448 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %449 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %448, i32 0, i32 2
  %450 = load i32, i32* %449, align 8
  %451 = icmp eq i32 %450, 1
  br i1 %451, label %452, label %457

452:                                              ; preds = %447
  %453 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %454 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %453, i32 0, i32 4
  %455 = load i32, i32* %454, align 8
  %456 = add nsw i32 %455, -1
  store i32 %456, i32* %454, align 8
  br label %465

457:                                              ; preds = %447
  %458 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %459 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %458, i32 0, i32 3
  %460 = load i32, i32* %459, align 4
  %461 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %462 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %461, i32 0, i32 4
  %463 = load i32, i32* %462, align 8
  %464 = sub nsw i32 %463, %460
  store i32 %464, i32* %462, align 8
  br label %465

465:                                              ; preds = %457, %452
  br label %466

466:                                              ; preds = %465, %430
  %467 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %468 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %467, i32 0, i32 9
  %469 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %468, i32 0, i32 3
  %470 = bitcast {}** %469 to i32 (%struct.TYPE_16__*, i32)**
  %471 = load i32 (%struct.TYPE_16__*, i32)*, i32 (%struct.TYPE_16__*, i32)** %470, align 8
  %472 = icmp ne i32 (%struct.TYPE_16__*, i32)* %471, null
  br i1 %472, label %473, label %482

473:                                              ; preds = %466
  %474 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %475 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %474, i32 0, i32 9
  %476 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %475, i32 0, i32 3
  %477 = bitcast {}** %476 to i32 (%struct.TYPE_16__*, i32)**
  %478 = load i32 (%struct.TYPE_16__*, i32)*, i32 (%struct.TYPE_16__*, i32)** %477, align 8
  %479 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %480 = load i32, i32* @QM_GOTFOCUS, align 4
  %481 = call i32 %478(%struct.TYPE_16__* %479, i32 %480)
  br label %482

482:                                              ; preds = %473, %466
  %483 = load i32, i32* @menu_move_sound, align 4
  store i32 %483, i32* %3, align 4
  br label %812

484:                                              ; preds = %2, %2
  %485 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %486 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %485, i32 0, i32 7
  %487 = load i32, i32* %486, align 4
  %488 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %489 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %488, i32 0, i32 5
  %490 = load i32, i32* %489, align 4
  %491 = sub nsw i32 %490, 1
  %492 = icmp eq i32 %487, %491
  br i1 %492, label %493, label %495

493:                                              ; preds = %484
  %494 = load i32, i32* @menu_buzz_sound, align 4
  store i32 %494, i32* %3, align 4
  br label %812

495:                                              ; preds = %484
  %496 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %497 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %496, i32 0, i32 7
  %498 = load i32, i32* %497, align 4
  %499 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %500 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %499, i32 0, i32 6
  store i32 %498, i32* %500, align 8
  %501 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %502 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %501, i32 0, i32 7
  %503 = load i32, i32* %502, align 4
  %504 = add nsw i32 %503, 1
  store i32 %504, i32* %502, align 4
  %505 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %506 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %505, i32 0, i32 7
  %507 = load i32, i32* %506, align 4
  %508 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %509 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %508, i32 0, i32 4
  %510 = load i32, i32* %509, align 8
  %511 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %512 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %511, i32 0, i32 2
  %513 = load i32, i32* %512, align 8
  %514 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %515 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %514, i32 0, i32 3
  %516 = load i32, i32* %515, align 4
  %517 = mul nsw i32 %513, %516
  %518 = add nsw i32 %510, %517
  %519 = icmp sge i32 %507, %518
  br i1 %519, label %520, label %539

520:                                              ; preds = %495
  %521 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %522 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %521, i32 0, i32 2
  %523 = load i32, i32* %522, align 8
  %524 = icmp eq i32 %523, 1
  br i1 %524, label %525, label %530

525:                                              ; preds = %520
  %526 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %527 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %526, i32 0, i32 4
  %528 = load i32, i32* %527, align 8
  %529 = add nsw i32 %528, 1
  store i32 %529, i32* %527, align 8
  br label %538

530:                                              ; preds = %520
  %531 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %532 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %531, i32 0, i32 3
  %533 = load i32, i32* %532, align 4
  %534 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %535 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %534, i32 0, i32 4
  %536 = load i32, i32* %535, align 8
  %537 = add nsw i32 %536, %533
  store i32 %537, i32* %535, align 8
  br label %538

538:                                              ; preds = %530, %525
  br label %539

539:                                              ; preds = %538, %495
  %540 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %541 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %540, i32 0, i32 9
  %542 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %541, i32 0, i32 3
  %543 = bitcast {}** %542 to i32 (%struct.TYPE_16__*, i32)**
  %544 = load i32 (%struct.TYPE_16__*, i32)*, i32 (%struct.TYPE_16__*, i32)** %543, align 8
  %545 = icmp ne i32 (%struct.TYPE_16__*, i32)* %544, null
  br i1 %545, label %546, label %555

546:                                              ; preds = %539
  %547 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %548 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %547, i32 0, i32 9
  %549 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %548, i32 0, i32 3
  %550 = bitcast {}** %549 to i32 (%struct.TYPE_16__*, i32)**
  %551 = load i32 (%struct.TYPE_16__*, i32)*, i32 (%struct.TYPE_16__*, i32)** %550, align 8
  %552 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %553 = load i32, i32* @QM_GOTFOCUS, align 4
  %554 = call i32 %551(%struct.TYPE_16__* %552, i32 %553)
  br label %555

555:                                              ; preds = %546, %539
  %556 = load i32, i32* @menu_move_sound, align 4
  store i32 %556, i32* %3, align 4
  br label %812

557:                                              ; preds = %2, %2
  %558 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %559 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %558, i32 0, i32 2
  %560 = load i32, i32* %559, align 8
  %561 = icmp eq i32 %560, 1
  br i1 %561, label %562, label %564

562:                                              ; preds = %557
  %563 = load i32, i32* @menu_null_sound, align 4
  store i32 %563, i32* %3, align 4
  br label %812

564:                                              ; preds = %557
  %565 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %566 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %565, i32 0, i32 7
  %567 = load i32, i32* %566, align 4
  %568 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %569 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %568, i32 0, i32 3
  %570 = load i32, i32* %569, align 4
  %571 = icmp slt i32 %567, %570
  br i1 %571, label %572, label %574

572:                                              ; preds = %564
  %573 = load i32, i32* @menu_buzz_sound, align 4
  store i32 %573, i32* %3, align 4
  br label %812

574:                                              ; preds = %564
  %575 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %576 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %575, i32 0, i32 7
  %577 = load i32, i32* %576, align 4
  %578 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %579 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %578, i32 0, i32 6
  store i32 %577, i32* %579, align 8
  %580 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %581 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %580, i32 0, i32 3
  %582 = load i32, i32* %581, align 4
  %583 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %584 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %583, i32 0, i32 7
  %585 = load i32, i32* %584, align 4
  %586 = sub nsw i32 %585, %582
  store i32 %586, i32* %584, align 4
  %587 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %588 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %587, i32 0, i32 7
  %589 = load i32, i32* %588, align 4
  %590 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %591 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %590, i32 0, i32 4
  %592 = load i32, i32* %591, align 8
  %593 = icmp slt i32 %589, %592
  br i1 %593, label %594, label %602

594:                                              ; preds = %574
  %595 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %596 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %595, i32 0, i32 3
  %597 = load i32, i32* %596, align 4
  %598 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %599 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %598, i32 0, i32 4
  %600 = load i32, i32* %599, align 8
  %601 = sub nsw i32 %600, %597
  store i32 %601, i32* %599, align 8
  br label %602

602:                                              ; preds = %594, %574
  %603 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %604 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %603, i32 0, i32 9
  %605 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %604, i32 0, i32 3
  %606 = bitcast {}** %605 to i32 (%struct.TYPE_16__*, i32)**
  %607 = load i32 (%struct.TYPE_16__*, i32)*, i32 (%struct.TYPE_16__*, i32)** %606, align 8
  %608 = icmp ne i32 (%struct.TYPE_16__*, i32)* %607, null
  br i1 %608, label %609, label %618

609:                                              ; preds = %602
  %610 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %611 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %610, i32 0, i32 9
  %612 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %611, i32 0, i32 3
  %613 = bitcast {}** %612 to i32 (%struct.TYPE_16__*, i32)**
  %614 = load i32 (%struct.TYPE_16__*, i32)*, i32 (%struct.TYPE_16__*, i32)** %613, align 8
  %615 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %616 = load i32, i32* @QM_GOTFOCUS, align 4
  %617 = call i32 %614(%struct.TYPE_16__* %615, i32 %616)
  br label %618

618:                                              ; preds = %609, %602
  %619 = load i32, i32* @menu_move_sound, align 4
  store i32 %619, i32* %3, align 4
  br label %812

620:                                              ; preds = %2, %2
  %621 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %622 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %621, i32 0, i32 2
  %623 = load i32, i32* %622, align 8
  %624 = icmp eq i32 %623, 1
  br i1 %624, label %625, label %627

625:                                              ; preds = %620
  %626 = load i32, i32* @menu_null_sound, align 4
  store i32 %626, i32* %3, align 4
  br label %812

627:                                              ; preds = %620
  %628 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %629 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %628, i32 0, i32 7
  %630 = load i32, i32* %629, align 4
  %631 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %632 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %631, i32 0, i32 3
  %633 = load i32, i32* %632, align 4
  %634 = add nsw i32 %630, %633
  store i32 %634, i32* %11, align 4
  %635 = load i32, i32* %11, align 4
  %636 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %637 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %636, i32 0, i32 5
  %638 = load i32, i32* %637, align 4
  %639 = icmp sge i32 %635, %638
  br i1 %639, label %640, label %642

640:                                              ; preds = %627
  %641 = load i32, i32* @menu_buzz_sound, align 4
  store i32 %641, i32* %3, align 4
  br label %812

642:                                              ; preds = %627
  %643 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %644 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %643, i32 0, i32 7
  %645 = load i32, i32* %644, align 4
  %646 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %647 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %646, i32 0, i32 6
  store i32 %645, i32* %647, align 8
  %648 = load i32, i32* %11, align 4
  %649 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %650 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %649, i32 0, i32 7
  store i32 %648, i32* %650, align 4
  %651 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %652 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %651, i32 0, i32 7
  %653 = load i32, i32* %652, align 4
  %654 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %655 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %654, i32 0, i32 4
  %656 = load i32, i32* %655, align 8
  %657 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %658 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %657, i32 0, i32 2
  %659 = load i32, i32* %658, align 8
  %660 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %661 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %660, i32 0, i32 3
  %662 = load i32, i32* %661, align 4
  %663 = mul nsw i32 %659, %662
  %664 = add nsw i32 %656, %663
  %665 = sub nsw i32 %664, 1
  %666 = icmp sgt i32 %653, %665
  br i1 %666, label %667, label %675

667:                                              ; preds = %642
  %668 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %669 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %668, i32 0, i32 3
  %670 = load i32, i32* %669, align 4
  %671 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %672 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %671, i32 0, i32 4
  %673 = load i32, i32* %672, align 8
  %674 = add nsw i32 %673, %670
  store i32 %674, i32* %672, align 8
  br label %675

675:                                              ; preds = %667, %642
  %676 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %677 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %676, i32 0, i32 9
  %678 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %677, i32 0, i32 3
  %679 = bitcast {}** %678 to i32 (%struct.TYPE_16__*, i32)**
  %680 = load i32 (%struct.TYPE_16__*, i32)*, i32 (%struct.TYPE_16__*, i32)** %679, align 8
  %681 = icmp ne i32 (%struct.TYPE_16__*, i32)* %680, null
  br i1 %681, label %682, label %691

682:                                              ; preds = %675
  %683 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %684 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %683, i32 0, i32 9
  %685 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %684, i32 0, i32 3
  %686 = bitcast {}** %685 to i32 (%struct.TYPE_16__*, i32)**
  %687 = load i32 (%struct.TYPE_16__*, i32)*, i32 (%struct.TYPE_16__*, i32)** %686, align 8
  %688 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %689 = load i32, i32* @QM_GOTFOCUS, align 4
  %690 = call i32 %687(%struct.TYPE_16__* %688, i32 %689)
  br label %691

691:                                              ; preds = %682, %675
  %692 = load i32, i32* @menu_move_sound, align 4
  store i32 %692, i32* %3, align 4
  br label %812

693:                                              ; preds = %2, %151
  %694 = load i32, i32* %5, align 4
  %695 = call i32 @Q_isprint(i32 %694)
  %696 = icmp ne i32 %695, 0
  br i1 %696, label %698, label %697

697:                                              ; preds = %693
  store i32 0, i32* %3, align 4
  br label %812

698:                                              ; preds = %693
  %699 = load i32, i32* %5, align 4
  %700 = call i64 @Q_isupper(i32 %699)
  %701 = icmp ne i64 %700, 0
  br i1 %701, label %702, label %705

702:                                              ; preds = %698
  %703 = load i32, i32* %5, align 4
  %704 = sub nsw i32 %703, -32
  store i32 %704, i32* %5, align 4
  br label %705

705:                                              ; preds = %702, %698
  store i32 1, i32* %9, align 4
  br label %706

706:                                              ; preds = %807, %705
  %707 = load i32, i32* %9, align 4
  %708 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %709 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %708, i32 0, i32 5
  %710 = load i32, i32* %709, align 4
  %711 = icmp sle i32 %707, %710
  br i1 %711, label %712, label %810

712:                                              ; preds = %706
  %713 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %714 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %713, i32 0, i32 7
  %715 = load i32, i32* %714, align 4
  %716 = load i32, i32* %9, align 4
  %717 = add nsw i32 %715, %716
  %718 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %719 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %718, i32 0, i32 5
  %720 = load i32, i32* %719, align 4
  %721 = srem i32 %717, %720
  store i32 %721, i32* %10, align 4
  %722 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %723 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %722, i32 0, i32 8
  %724 = load i32**, i32*** %723, align 8
  %725 = load i32, i32* %10, align 4
  %726 = sext i32 %725 to i64
  %727 = getelementptr inbounds i32*, i32** %724, i64 %726
  %728 = load i32*, i32** %727, align 8
  %729 = getelementptr inbounds i32, i32* %728, i64 0
  %730 = load i32, i32* %729, align 4
  store i32 %730, i32* %11, align 4
  %731 = load i32, i32* %11, align 4
  %732 = call i64 @Q_isupper(i32 %731)
  %733 = icmp ne i64 %732, 0
  br i1 %733, label %734, label %737

734:                                              ; preds = %712
  %735 = load i32, i32* %11, align 4
  %736 = sub nsw i32 %735, -32
  store i32 %736, i32* %11, align 4
  br label %737

737:                                              ; preds = %734, %712
  %738 = load i32, i32* %11, align 4
  %739 = load i32, i32* %5, align 4
  %740 = icmp eq i32 %738, %739
  br i1 %740, label %741, label %806

741:                                              ; preds = %737
  %742 = load i32, i32* %10, align 4
  %743 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %744 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %743, i32 0, i32 4
  %745 = load i32, i32* %744, align 8
  %746 = icmp slt i32 %742, %745
  br i1 %746, label %747, label %751

747:                                              ; preds = %741
  %748 = load i32, i32* %10, align 4
  %749 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %750 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %749, i32 0, i32 4
  store i32 %748, i32* %750, align 8
  br label %772

751:                                              ; preds = %741
  %752 = load i32, i32* %10, align 4
  %753 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %754 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %753, i32 0, i32 4
  %755 = load i32, i32* %754, align 8
  %756 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %757 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %756, i32 0, i32 3
  %758 = load i32, i32* %757, align 4
  %759 = add nsw i32 %755, %758
  %760 = sub nsw i32 %759, 1
  %761 = icmp sgt i32 %752, %760
  br i1 %761, label %762, label %771

762:                                              ; preds = %751
  %763 = load i32, i32* %10, align 4
  %764 = add nsw i32 %763, 1
  %765 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %766 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %765, i32 0, i32 3
  %767 = load i32, i32* %766, align 4
  %768 = sub nsw i32 %764, %767
  %769 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %770 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %769, i32 0, i32 4
  store i32 %768, i32* %770, align 8
  br label %771

771:                                              ; preds = %762, %751
  br label %772

772:                                              ; preds = %771, %747
  %773 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %774 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %773, i32 0, i32 7
  %775 = load i32, i32* %774, align 4
  %776 = load i32, i32* %10, align 4
  %777 = icmp ne i32 %775, %776
  br i1 %777, label %778, label %804

778:                                              ; preds = %772
  %779 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %780 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %779, i32 0, i32 7
  %781 = load i32, i32* %780, align 4
  %782 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %783 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %782, i32 0, i32 6
  store i32 %781, i32* %783, align 8
  %784 = load i32, i32* %10, align 4
  %785 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %786 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %785, i32 0, i32 7
  store i32 %784, i32* %786, align 4
  %787 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %788 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %787, i32 0, i32 9
  %789 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %788, i32 0, i32 3
  %790 = bitcast {}** %789 to i32 (%struct.TYPE_16__*, i32)**
  %791 = load i32 (%struct.TYPE_16__*, i32)*, i32 (%struct.TYPE_16__*, i32)** %790, align 8
  %792 = icmp ne i32 (%struct.TYPE_16__*, i32)* %791, null
  br i1 %792, label %793, label %802

793:                                              ; preds = %778
  %794 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %795 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %794, i32 0, i32 9
  %796 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %795, i32 0, i32 3
  %797 = bitcast {}** %796 to i32 (%struct.TYPE_16__*, i32)**
  %798 = load i32 (%struct.TYPE_16__*, i32)*, i32 (%struct.TYPE_16__*, i32)** %797, align 8
  %799 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %800 = load i32, i32* @QM_GOTFOCUS, align 4
  %801 = call i32 %798(%struct.TYPE_16__* %799, i32 %800)
  br label %802

802:                                              ; preds = %793, %778
  %803 = load i32, i32* @menu_move_sound, align 4
  store i32 %803, i32* %3, align 4
  br label %812

804:                                              ; preds = %772
  %805 = load i32, i32* @menu_buzz_sound, align 4
  store i32 %805, i32* %3, align 4
  br label %812

806:                                              ; preds = %737
  br label %807

807:                                              ; preds = %806
  %808 = load i32, i32* %9, align 4
  %809 = add nsw i32 %808, 1
  store i32 %809, i32* %9, align 4
  br label %706

810:                                              ; preds = %706
  %811 = load i32, i32* @menu_buzz_sound, align 4
  store i32 %811, i32* %3, align 4
  br label %812

812:                                              ; preds = %810, %804, %802, %697, %691, %640, %625, %618, %572, %562, %555, %493, %482, %428, %421, %419, %345, %338, %336, %279, %272, %262, %186, %176, %149, %137
  %813 = load i32, i32* %3, align 4
  ret i32 %813
}

declare dso_local i32 @UI_CursorInRect(i32, i32, i32, i32) #1

declare dso_local i32 @Q_isprint(i32) #1

declare dso_local i64 @Q_isupper(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
