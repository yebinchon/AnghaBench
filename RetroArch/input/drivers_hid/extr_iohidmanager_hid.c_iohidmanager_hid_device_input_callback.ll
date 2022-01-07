; ModuleID = '/home/carl/AnghaBench/RetroArch/input/drivers_hid/extr_iohidmanager_hid.c_iohidmanager_hid_device_input_callback.c'
source_filename = "/home/carl/AnghaBench/RetroArch/input/drivers_hid/extr_iohidmanager_hid.c_iohidmanager_hid_device_input_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32**, float**, i32* }
%struct.iohidmanager_hid_adapter = type { i64, %struct.TYPE_4__*, %struct.TYPE_4__*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i64, %struct.TYPE_4__* }

@kIOHIDElementTypeInput_Axis = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i8*, i32)* @iohidmanager_hid_device_input_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iohidmanager_hid_device_input_callback(i8* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_3__*, align 8
  %10 = alloca %struct.iohidmanager_hid_adapter*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.TYPE_4__*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca float, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca float, align 4
  %29 = alloca i64, align 8
  %30 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %31 = call i64 (...) @hid_driver_get_data()
  %32 = inttoptr i64 %31 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %32, %struct.TYPE_3__** %9, align 8
  %33 = load i8*, i8** %5, align 8
  %34 = bitcast i8* %33 to %struct.iohidmanager_hid_adapter*
  store %struct.iohidmanager_hid_adapter* %34, %struct.iohidmanager_hid_adapter** %10, align 8
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @IOHIDValueGetElement(i32 %35)
  store i32 %36, i32* %11, align 4
  %37 = load i32, i32* %11, align 4
  %38 = call i32 @IOHIDElementGetType(i32 %37)
  %39 = sext i32 %38 to i64
  store i64 %39, i64* %12, align 8
  %40 = load i32, i32* %11, align 4
  %41 = call i32 @IOHIDElementGetUsagePage(i32 %40)
  %42 = sext i32 %41 to i64
  store i64 %42, i64* %13, align 8
  %43 = load i32, i32* %11, align 4
  %44 = call i32 @IOHIDElementGetUsage(i32 %43)
  %45 = sext i32 %44 to i64
  store i64 %45, i64* %14, align 8
  %46 = load i32, i32* %11, align 4
  %47 = call i32 @IOHIDElementGetCookie(i32 %46)
  %48 = sext i32 %47 to i64
  store i64 %48, i64* %15, align 8
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %16, align 8
  %49 = load i64, i64* %12, align 8
  %50 = icmp ne i64 %49, 128
  br i1 %50, label %51, label %61

51:                                               ; preds = %4
  %52 = load i64, i64* %12, align 8
  %53 = icmp ne i64 %52, 129
  br i1 %53, label %54, label %60

54:                                               ; preds = %51
  %55 = load i64, i64* %12, align 8
  %56 = load i64, i64* @kIOHIDElementTypeInput_Axis, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %54
  br label %487

59:                                               ; preds = %54
  br label %60

60:                                               ; preds = %59, %51
  br label %61

61:                                               ; preds = %60, %4
  store i32 0, i32* %17, align 4
  %62 = load i64, i64* %13, align 8
  switch i64 %62, label %425 [
    i64 132, label %63
    i64 133, label %352
    i64 134, label %352
    i64 131, label %356
  ]

63:                                               ; preds = %61
  %64 = load i64, i64* %12, align 8
  switch i64 %64, label %351 [
    i64 128, label %65
  ]

65:                                               ; preds = %63
  %66 = load i64, i64* %14, align 8
  switch i64 %66, label %287 [
    i64 130, label %67
  ]

67:                                               ; preds = %65
  %68 = load %struct.iohidmanager_hid_adapter*, %struct.iohidmanager_hid_adapter** %10, align 8
  %69 = getelementptr inbounds %struct.iohidmanager_hid_adapter, %struct.iohidmanager_hid_adapter* %68, i32 0, i32 3
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %69, align 8
  store %struct.TYPE_4__* %70, %struct.TYPE_4__** %16, align 8
  br label %71

71:                                               ; preds = %82, %67
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %73 = icmp ne %struct.TYPE_4__* %72, null
  br i1 %73, label %74, label %80

74:                                               ; preds = %71
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* %15, align 8
  %79 = icmp ne i64 %77, %78
  br label %80

80:                                               ; preds = %74, %71
  %81 = phi i1 [ false, %71 ], [ %79, %74 ]
  br i1 %81, label %82, label %86

82:                                               ; preds = %80
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 2
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %84, align 8
  store %struct.TYPE_4__* %85, %struct.TYPE_4__** %16, align 8
  br label %71

86:                                               ; preds = %80
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* %15, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %286

92:                                               ; preds = %86
  %93 = load i32, i32* %11, align 4
  %94 = call i32 @IOHIDElementGetLogicalMin(i32 %93)
  store i32 %94, i32* %18, align 4
  %95 = load i32, i32* %11, align 4
  %96 = call i32 @IOHIDElementGetLogicalMax(i32 %95)
  %97 = load i32, i32* %18, align 4
  %98 = sub nsw i32 %96, %97
  store i32 %98, i32* %19, align 4
  %99 = load i32, i32* %8, align 4
  %100 = call i32 @IOHIDValueGetIntegerValue(i32 %99)
  store i32 %100, i32* %20, align 4
  %101 = load i32, i32* %19, align 4
  %102 = icmp eq i32 %101, 3
  br i1 %102, label %103, label %106

103:                                              ; preds = %92
  %104 = load i32, i32* %20, align 4
  %105 = mul nsw i32 %104, 2
  store i32 %105, i32* %20, align 4
  br label %106

106:                                              ; preds = %103, %92
  %107 = load i32, i32* %18, align 4
  %108 = icmp eq i32 %107, 1
  br i1 %108, label %109, label %112

109:                                              ; preds = %106
  %110 = load i32, i32* %20, align 4
  %111 = add nsw i32 %110, -1
  store i32 %111, i32* %20, align 4
  br label %112

112:                                              ; preds = %109, %106
  %113 = load i32, i32* %20, align 4
  switch i32 %113, label %266 [
    i32 0, label %114
    i32 1, label %133
    i32 2, label %152
    i32 3, label %171
    i32 4, label %190
    i32 5, label %209
    i32 6, label %228
    i32 7, label %247
  ]

114:                                              ; preds = %112
  %115 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 0
  %117 = load i32**, i32*** %116, align 8
  %118 = load %struct.iohidmanager_hid_adapter*, %struct.iohidmanager_hid_adapter** %10, align 8
  %119 = getelementptr inbounds %struct.iohidmanager_hid_adapter, %struct.iohidmanager_hid_adapter* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = getelementptr inbounds i32*, i32** %117, i64 %120
  %122 = load i32*, i32** %121, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 0
  store i32 0, i32* %123, align 4
  %124 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 0
  %126 = load i32**, i32*** %125, align 8
  %127 = load %struct.iohidmanager_hid_adapter*, %struct.iohidmanager_hid_adapter** %10, align 8
  %128 = getelementptr inbounds %struct.iohidmanager_hid_adapter, %struct.iohidmanager_hid_adapter* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = getelementptr inbounds i32*, i32** %126, i64 %129
  %131 = load i32*, i32** %130, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 1
  store i32 -1, i32* %132, align 4
  br label %285

133:                                              ; preds = %112
  %134 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %134, i32 0, i32 0
  %136 = load i32**, i32*** %135, align 8
  %137 = load %struct.iohidmanager_hid_adapter*, %struct.iohidmanager_hid_adapter** %10, align 8
  %138 = getelementptr inbounds %struct.iohidmanager_hid_adapter, %struct.iohidmanager_hid_adapter* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = getelementptr inbounds i32*, i32** %136, i64 %139
  %141 = load i32*, i32** %140, align 8
  %142 = getelementptr inbounds i32, i32* %141, i64 0
  store i32 1, i32* %142, align 4
  %143 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %144 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %143, i32 0, i32 0
  %145 = load i32**, i32*** %144, align 8
  %146 = load %struct.iohidmanager_hid_adapter*, %struct.iohidmanager_hid_adapter** %10, align 8
  %147 = getelementptr inbounds %struct.iohidmanager_hid_adapter, %struct.iohidmanager_hid_adapter* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = getelementptr inbounds i32*, i32** %145, i64 %148
  %150 = load i32*, i32** %149, align 8
  %151 = getelementptr inbounds i32, i32* %150, i64 1
  store i32 -1, i32* %151, align 4
  br label %285

152:                                              ; preds = %112
  %153 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %154 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %153, i32 0, i32 0
  %155 = load i32**, i32*** %154, align 8
  %156 = load %struct.iohidmanager_hid_adapter*, %struct.iohidmanager_hid_adapter** %10, align 8
  %157 = getelementptr inbounds %struct.iohidmanager_hid_adapter, %struct.iohidmanager_hid_adapter* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = getelementptr inbounds i32*, i32** %155, i64 %158
  %160 = load i32*, i32** %159, align 8
  %161 = getelementptr inbounds i32, i32* %160, i64 0
  store i32 1, i32* %161, align 4
  %162 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %163 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %162, i32 0, i32 0
  %164 = load i32**, i32*** %163, align 8
  %165 = load %struct.iohidmanager_hid_adapter*, %struct.iohidmanager_hid_adapter** %10, align 8
  %166 = getelementptr inbounds %struct.iohidmanager_hid_adapter, %struct.iohidmanager_hid_adapter* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = getelementptr inbounds i32*, i32** %164, i64 %167
  %169 = load i32*, i32** %168, align 8
  %170 = getelementptr inbounds i32, i32* %169, i64 1
  store i32 0, i32* %170, align 4
  br label %285

171:                                              ; preds = %112
  %172 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %173 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %172, i32 0, i32 0
  %174 = load i32**, i32*** %173, align 8
  %175 = load %struct.iohidmanager_hid_adapter*, %struct.iohidmanager_hid_adapter** %10, align 8
  %176 = getelementptr inbounds %struct.iohidmanager_hid_adapter, %struct.iohidmanager_hid_adapter* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = getelementptr inbounds i32*, i32** %174, i64 %177
  %179 = load i32*, i32** %178, align 8
  %180 = getelementptr inbounds i32, i32* %179, i64 0
  store i32 1, i32* %180, align 4
  %181 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %182 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %181, i32 0, i32 0
  %183 = load i32**, i32*** %182, align 8
  %184 = load %struct.iohidmanager_hid_adapter*, %struct.iohidmanager_hid_adapter** %10, align 8
  %185 = getelementptr inbounds %struct.iohidmanager_hid_adapter, %struct.iohidmanager_hid_adapter* %184, i32 0, i32 0
  %186 = load i64, i64* %185, align 8
  %187 = getelementptr inbounds i32*, i32** %183, i64 %186
  %188 = load i32*, i32** %187, align 8
  %189 = getelementptr inbounds i32, i32* %188, i64 1
  store i32 1, i32* %189, align 4
  br label %285

190:                                              ; preds = %112
  %191 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %192 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %191, i32 0, i32 0
  %193 = load i32**, i32*** %192, align 8
  %194 = load %struct.iohidmanager_hid_adapter*, %struct.iohidmanager_hid_adapter** %10, align 8
  %195 = getelementptr inbounds %struct.iohidmanager_hid_adapter, %struct.iohidmanager_hid_adapter* %194, i32 0, i32 0
  %196 = load i64, i64* %195, align 8
  %197 = getelementptr inbounds i32*, i32** %193, i64 %196
  %198 = load i32*, i32** %197, align 8
  %199 = getelementptr inbounds i32, i32* %198, i64 0
  store i32 0, i32* %199, align 4
  %200 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %201 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %200, i32 0, i32 0
  %202 = load i32**, i32*** %201, align 8
  %203 = load %struct.iohidmanager_hid_adapter*, %struct.iohidmanager_hid_adapter** %10, align 8
  %204 = getelementptr inbounds %struct.iohidmanager_hid_adapter, %struct.iohidmanager_hid_adapter* %203, i32 0, i32 0
  %205 = load i64, i64* %204, align 8
  %206 = getelementptr inbounds i32*, i32** %202, i64 %205
  %207 = load i32*, i32** %206, align 8
  %208 = getelementptr inbounds i32, i32* %207, i64 1
  store i32 1, i32* %208, align 4
  br label %285

209:                                              ; preds = %112
  %210 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %211 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %210, i32 0, i32 0
  %212 = load i32**, i32*** %211, align 8
  %213 = load %struct.iohidmanager_hid_adapter*, %struct.iohidmanager_hid_adapter** %10, align 8
  %214 = getelementptr inbounds %struct.iohidmanager_hid_adapter, %struct.iohidmanager_hid_adapter* %213, i32 0, i32 0
  %215 = load i64, i64* %214, align 8
  %216 = getelementptr inbounds i32*, i32** %212, i64 %215
  %217 = load i32*, i32** %216, align 8
  %218 = getelementptr inbounds i32, i32* %217, i64 0
  store i32 -1, i32* %218, align 4
  %219 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %220 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %219, i32 0, i32 0
  %221 = load i32**, i32*** %220, align 8
  %222 = load %struct.iohidmanager_hid_adapter*, %struct.iohidmanager_hid_adapter** %10, align 8
  %223 = getelementptr inbounds %struct.iohidmanager_hid_adapter, %struct.iohidmanager_hid_adapter* %222, i32 0, i32 0
  %224 = load i64, i64* %223, align 8
  %225 = getelementptr inbounds i32*, i32** %221, i64 %224
  %226 = load i32*, i32** %225, align 8
  %227 = getelementptr inbounds i32, i32* %226, i64 1
  store i32 1, i32* %227, align 4
  br label %285

228:                                              ; preds = %112
  %229 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %230 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %229, i32 0, i32 0
  %231 = load i32**, i32*** %230, align 8
  %232 = load %struct.iohidmanager_hid_adapter*, %struct.iohidmanager_hid_adapter** %10, align 8
  %233 = getelementptr inbounds %struct.iohidmanager_hid_adapter, %struct.iohidmanager_hid_adapter* %232, i32 0, i32 0
  %234 = load i64, i64* %233, align 8
  %235 = getelementptr inbounds i32*, i32** %231, i64 %234
  %236 = load i32*, i32** %235, align 8
  %237 = getelementptr inbounds i32, i32* %236, i64 0
  store i32 -1, i32* %237, align 4
  %238 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %239 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %238, i32 0, i32 0
  %240 = load i32**, i32*** %239, align 8
  %241 = load %struct.iohidmanager_hid_adapter*, %struct.iohidmanager_hid_adapter** %10, align 8
  %242 = getelementptr inbounds %struct.iohidmanager_hid_adapter, %struct.iohidmanager_hid_adapter* %241, i32 0, i32 0
  %243 = load i64, i64* %242, align 8
  %244 = getelementptr inbounds i32*, i32** %240, i64 %243
  %245 = load i32*, i32** %244, align 8
  %246 = getelementptr inbounds i32, i32* %245, i64 1
  store i32 0, i32* %246, align 4
  br label %285

247:                                              ; preds = %112
  %248 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %249 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %248, i32 0, i32 0
  %250 = load i32**, i32*** %249, align 8
  %251 = load %struct.iohidmanager_hid_adapter*, %struct.iohidmanager_hid_adapter** %10, align 8
  %252 = getelementptr inbounds %struct.iohidmanager_hid_adapter, %struct.iohidmanager_hid_adapter* %251, i32 0, i32 0
  %253 = load i64, i64* %252, align 8
  %254 = getelementptr inbounds i32*, i32** %250, i64 %253
  %255 = load i32*, i32** %254, align 8
  %256 = getelementptr inbounds i32, i32* %255, i64 0
  store i32 -1, i32* %256, align 4
  %257 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %258 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %257, i32 0, i32 0
  %259 = load i32**, i32*** %258, align 8
  %260 = load %struct.iohidmanager_hid_adapter*, %struct.iohidmanager_hid_adapter** %10, align 8
  %261 = getelementptr inbounds %struct.iohidmanager_hid_adapter, %struct.iohidmanager_hid_adapter* %260, i32 0, i32 0
  %262 = load i64, i64* %261, align 8
  %263 = getelementptr inbounds i32*, i32** %259, i64 %262
  %264 = load i32*, i32** %263, align 8
  %265 = getelementptr inbounds i32, i32* %264, i64 1
  store i32 -1, i32* %265, align 4
  br label %285

266:                                              ; preds = %112
  %267 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %268 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %267, i32 0, i32 0
  %269 = load i32**, i32*** %268, align 8
  %270 = load %struct.iohidmanager_hid_adapter*, %struct.iohidmanager_hid_adapter** %10, align 8
  %271 = getelementptr inbounds %struct.iohidmanager_hid_adapter, %struct.iohidmanager_hid_adapter* %270, i32 0, i32 0
  %272 = load i64, i64* %271, align 8
  %273 = getelementptr inbounds i32*, i32** %269, i64 %272
  %274 = load i32*, i32** %273, align 8
  %275 = getelementptr inbounds i32, i32* %274, i64 0
  store i32 0, i32* %275, align 4
  %276 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %277 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %276, i32 0, i32 0
  %278 = load i32**, i32*** %277, align 8
  %279 = load %struct.iohidmanager_hid_adapter*, %struct.iohidmanager_hid_adapter** %10, align 8
  %280 = getelementptr inbounds %struct.iohidmanager_hid_adapter, %struct.iohidmanager_hid_adapter* %279, i32 0, i32 0
  %281 = load i64, i64* %280, align 8
  %282 = getelementptr inbounds i32*, i32** %278, i64 %281
  %283 = load i32*, i32** %282, align 8
  %284 = getelementptr inbounds i32, i32* %283, i64 1
  store i32 0, i32* %284, align 4
  br label %285

285:                                              ; preds = %266, %247, %228, %209, %190, %171, %152, %133, %114
  br label %286

286:                                              ; preds = %285, %86
  br label %350

287:                                              ; preds = %65
  %288 = load %struct.iohidmanager_hid_adapter*, %struct.iohidmanager_hid_adapter** %10, align 8
  %289 = getelementptr inbounds %struct.iohidmanager_hid_adapter, %struct.iohidmanager_hid_adapter* %288, i32 0, i32 2
  %290 = load %struct.TYPE_4__*, %struct.TYPE_4__** %289, align 8
  store %struct.TYPE_4__* %290, %struct.TYPE_4__** %16, align 8
  br label %291

291:                                              ; preds = %302, %287
  %292 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %293 = icmp ne %struct.TYPE_4__* %292, null
  br i1 %293, label %294, label %300

294:                                              ; preds = %291
  %295 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %296 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %295, i32 0, i32 0
  %297 = load i64, i64* %296, align 8
  %298 = load i64, i64* %15, align 8
  %299 = icmp ne i64 %297, %298
  br label %300

300:                                              ; preds = %294, %291
  %301 = phi i1 [ false, %291 ], [ %299, %294 ]
  br i1 %301, label %302, label %306

302:                                              ; preds = %300
  %303 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %304 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %303, i32 0, i32 2
  %305 = load %struct.TYPE_4__*, %struct.TYPE_4__** %304, align 8
  store %struct.TYPE_4__* %305, %struct.TYPE_4__** %16, align 8
  br label %291

306:                                              ; preds = %300
  %307 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %308 = icmp ne %struct.TYPE_4__* %307, null
  br i1 %308, label %309, label %348

309:                                              ; preds = %306
  %310 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %311 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %310, i32 0, i32 0
  %312 = load i64, i64* %311, align 8
  %313 = load i64, i64* %15, align 8
  %314 = icmp eq i64 %312, %313
  br i1 %314, label %315, label %347

315:                                              ; preds = %309
  %316 = load i32, i32* %11, align 4
  %317 = call i32 @IOHIDElementGetPhysicalMin(i32 %316)
  store i32 %317, i32* %21, align 4
  %318 = load i32, i32* %8, align 4
  %319 = call i32 @IOHIDValueGetIntegerValue(i32 %318)
  %320 = load i32, i32* %21, align 4
  %321 = sub nsw i32 %319, %320
  store i32 %321, i32* %22, align 4
  %322 = load i32, i32* %11, align 4
  %323 = call i32 @IOHIDElementGetPhysicalMax(i32 %322)
  %324 = load i32, i32* %21, align 4
  %325 = sub nsw i32 %323, %324
  store i32 %325, i32* %23, align 4
  %326 = load i32, i32* %22, align 4
  %327 = sitofp i32 %326 to float
  %328 = load i32, i32* %23, align 4
  %329 = sitofp i32 %328 to float
  %330 = fdiv float %327, %329
  store float %330, float* %24, align 4
  %331 = load float, float* %24, align 4
  %332 = fmul float %331, 2.000000e+00
  %333 = fsub float %332, 1.000000e+00
  %334 = fmul float %333, 3.276700e+04
  %335 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %336 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %335, i32 0, i32 1
  %337 = load float**, float*** %336, align 8
  %338 = load %struct.iohidmanager_hid_adapter*, %struct.iohidmanager_hid_adapter** %10, align 8
  %339 = getelementptr inbounds %struct.iohidmanager_hid_adapter, %struct.iohidmanager_hid_adapter* %338, i32 0, i32 0
  %340 = load i64, i64* %339, align 8
  %341 = getelementptr inbounds float*, float** %337, i64 %340
  %342 = load float*, float** %341, align 8
  %343 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %344 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %343, i32 0, i32 1
  %345 = load i64, i64* %344, align 8
  %346 = getelementptr inbounds float, float* %342, i64 %345
  store float %334, float* %346, align 4
  br label %347

347:                                              ; preds = %315, %309
  br label %349

348:                                              ; preds = %306
  store i32 1, i32* %17, align 4
  br label %349

349:                                              ; preds = %348, %347
  br label %350

350:                                              ; preds = %349, %286
  br label %351

351:                                              ; preds = %63, %350
  br label %425

352:                                              ; preds = %61, %61
  %353 = load i64, i64* %12, align 8
  switch i64 %353, label %355 [
    i64 128, label %354
    i64 129, label %354
  ]

354:                                              ; preds = %352, %352
  store i32 1, i32* %17, align 4
  br label %355

355:                                              ; preds = %352, %354
  br label %425

356:                                              ; preds = %61
  %357 = load i64, i64* %12, align 8
  switch i64 %357, label %424 [
    i64 128, label %358
  ]

358:                                              ; preds = %356
  %359 = load i64, i64* %14, align 8
  switch i64 %359, label %360 [
  ]

360:                                              ; preds = %358
  %361 = load %struct.iohidmanager_hid_adapter*, %struct.iohidmanager_hid_adapter** %10, align 8
  %362 = getelementptr inbounds %struct.iohidmanager_hid_adapter, %struct.iohidmanager_hid_adapter* %361, i32 0, i32 2
  %363 = load %struct.TYPE_4__*, %struct.TYPE_4__** %362, align 8
  store %struct.TYPE_4__* %363, %struct.TYPE_4__** %16, align 8
  br label %364

364:                                              ; preds = %375, %360
  %365 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %366 = icmp ne %struct.TYPE_4__* %365, null
  br i1 %366, label %367, label %373

367:                                              ; preds = %364
  %368 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %369 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %368, i32 0, i32 0
  %370 = load i64, i64* %369, align 8
  %371 = load i64, i64* %15, align 8
  %372 = icmp ne i64 %370, %371
  br label %373

373:                                              ; preds = %367, %364
  %374 = phi i1 [ false, %364 ], [ %372, %367 ]
  br i1 %374, label %375, label %379

375:                                              ; preds = %373
  %376 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %377 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %376, i32 0, i32 2
  %378 = load %struct.TYPE_4__*, %struct.TYPE_4__** %377, align 8
  store %struct.TYPE_4__* %378, %struct.TYPE_4__** %16, align 8
  br label %364

379:                                              ; preds = %373
  %380 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %381 = icmp ne %struct.TYPE_4__* %380, null
  br i1 %381, label %382, label %421

382:                                              ; preds = %379
  %383 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %384 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %383, i32 0, i32 0
  %385 = load i64, i64* %384, align 8
  %386 = load i64, i64* %15, align 8
  %387 = icmp eq i64 %385, %386
  br i1 %387, label %388, label %420

388:                                              ; preds = %382
  %389 = load i32, i32* %11, align 4
  %390 = call i32 @IOHIDElementGetPhysicalMin(i32 %389)
  store i32 %390, i32* %25, align 4
  %391 = load i32, i32* %8, align 4
  %392 = call i32 @IOHIDValueGetIntegerValue(i32 %391)
  %393 = load i32, i32* %25, align 4
  %394 = sub nsw i32 %392, %393
  store i32 %394, i32* %26, align 4
  %395 = load i32, i32* %11, align 4
  %396 = call i32 @IOHIDElementGetPhysicalMax(i32 %395)
  %397 = load i32, i32* %25, align 4
  %398 = sub nsw i32 %396, %397
  store i32 %398, i32* %27, align 4
  %399 = load i32, i32* %26, align 4
  %400 = sitofp i32 %399 to float
  %401 = load i32, i32* %27, align 4
  %402 = sitofp i32 %401 to float
  %403 = fdiv float %400, %402
  store float %403, float* %28, align 4
  %404 = load float, float* %28, align 4
  %405 = fmul float %404, 2.000000e+00
  %406 = fsub float %405, 1.000000e+00
  %407 = fmul float %406, 3.276700e+04
  %408 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %409 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %408, i32 0, i32 1
  %410 = load float**, float*** %409, align 8
  %411 = load %struct.iohidmanager_hid_adapter*, %struct.iohidmanager_hid_adapter** %10, align 8
  %412 = getelementptr inbounds %struct.iohidmanager_hid_adapter, %struct.iohidmanager_hid_adapter* %411, i32 0, i32 0
  %413 = load i64, i64* %412, align 8
  %414 = getelementptr inbounds float*, float** %410, i64 %413
  %415 = load float*, float** %414, align 8
  %416 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %417 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %416, i32 0, i32 1
  %418 = load i64, i64* %417, align 8
  %419 = getelementptr inbounds float, float* %415, i64 %418
  store float %407, float* %419, align 4
  br label %420

420:                                              ; preds = %388, %382
  br label %422

421:                                              ; preds = %379
  store i32 1, i32* %17, align 4
  br label %422

422:                                              ; preds = %421, %420
  br label %423

423:                                              ; preds = %422
  br label %424

424:                                              ; preds = %356, %423
  br label %425

425:                                              ; preds = %61, %424, %355, %351
  %426 = load i32, i32* %17, align 4
  %427 = icmp ne i32 %426, 0
  br i1 %427, label %428, label %487

428:                                              ; preds = %425
  store i64 0, i64* %29, align 8
  %429 = load %struct.iohidmanager_hid_adapter*, %struct.iohidmanager_hid_adapter** %10, align 8
  %430 = getelementptr inbounds %struct.iohidmanager_hid_adapter, %struct.iohidmanager_hid_adapter* %429, i32 0, i32 1
  %431 = load %struct.TYPE_4__*, %struct.TYPE_4__** %430, align 8
  store %struct.TYPE_4__* %431, %struct.TYPE_4__** %16, align 8
  br label %432

432:                                              ; preds = %443, %428
  %433 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %434 = icmp ne %struct.TYPE_4__* %433, null
  br i1 %434, label %435, label %441

435:                                              ; preds = %432
  %436 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %437 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %436, i32 0, i32 0
  %438 = load i64, i64* %437, align 8
  %439 = load i64, i64* %15, align 8
  %440 = icmp ne i64 %438, %439
  br label %441

441:                                              ; preds = %435, %432
  %442 = phi i1 [ false, %432 ], [ %440, %435 ]
  br i1 %442, label %443, label %449

443:                                              ; preds = %441
  %444 = load i64, i64* %29, align 8
  %445 = add nsw i64 %444, 1
  store i64 %445, i64* %29, align 8
  %446 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %447 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %446, i32 0, i32 2
  %448 = load %struct.TYPE_4__*, %struct.TYPE_4__** %447, align 8
  store %struct.TYPE_4__* %448, %struct.TYPE_4__** %16, align 8
  br label %432

449:                                              ; preds = %441
  %450 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %451 = icmp ne %struct.TYPE_4__* %450, null
  br i1 %451, label %452, label %486

452:                                              ; preds = %449
  %453 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %454 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %453, i32 0, i32 0
  %455 = load i64, i64* %454, align 8
  %456 = load i64, i64* %15, align 8
  %457 = icmp eq i64 %455, %456
  br i1 %457, label %458, label %486

458:                                              ; preds = %452
  %459 = load i32, i32* %8, align 4
  %460 = call i32 @IOHIDValueGetIntegerValue(i32 %459)
  store i32 %460, i32* %30, align 4
  %461 = load i32, i32* %30, align 4
  %462 = icmp ne i32 %461, 0
  br i1 %462, label %463, label %474

463:                                              ; preds = %458
  %464 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %465 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %464, i32 0, i32 2
  %466 = load i32*, i32** %465, align 8
  %467 = load %struct.iohidmanager_hid_adapter*, %struct.iohidmanager_hid_adapter** %10, align 8
  %468 = getelementptr inbounds %struct.iohidmanager_hid_adapter, %struct.iohidmanager_hid_adapter* %467, i32 0, i32 0
  %469 = load i64, i64* %468, align 8
  %470 = getelementptr inbounds i32, i32* %466, i64 %469
  %471 = load i32, i32* %470, align 4
  %472 = load i64, i64* %29, align 8
  %473 = call i32 @BIT64_SET(i32 %471, i64 %472)
  br label %485

474:                                              ; preds = %458
  %475 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %476 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %475, i32 0, i32 2
  %477 = load i32*, i32** %476, align 8
  %478 = load %struct.iohidmanager_hid_adapter*, %struct.iohidmanager_hid_adapter** %10, align 8
  %479 = getelementptr inbounds %struct.iohidmanager_hid_adapter, %struct.iohidmanager_hid_adapter* %478, i32 0, i32 0
  %480 = load i64, i64* %479, align 8
  %481 = getelementptr inbounds i32, i32* %477, i64 %480
  %482 = load i32, i32* %481, align 4
  %483 = load i64, i64* %29, align 8
  %484 = call i32 @BIT64_CLEAR(i32 %482, i64 %483)
  br label %485

485:                                              ; preds = %474, %463
  br label %486

486:                                              ; preds = %485, %452, %449
  br label %487

487:                                              ; preds = %58, %486, %425
  ret void
}

declare dso_local i64 @hid_driver_get_data(...) #1

declare dso_local i32 @IOHIDValueGetElement(i32) #1

declare dso_local i32 @IOHIDElementGetType(i32) #1

declare dso_local i32 @IOHIDElementGetUsagePage(i32) #1

declare dso_local i32 @IOHIDElementGetUsage(i32) #1

declare dso_local i32 @IOHIDElementGetCookie(i32) #1

declare dso_local i32 @IOHIDElementGetLogicalMin(i32) #1

declare dso_local i32 @IOHIDElementGetLogicalMax(i32) #1

declare dso_local i32 @IOHIDValueGetIntegerValue(i32) #1

declare dso_local i32 @IOHIDElementGetPhysicalMin(i32) #1

declare dso_local i32 @IOHIDElementGetPhysicalMax(i32) #1

declare dso_local i32 @BIT64_SET(i32, i64) #1

declare dso_local i32 @BIT64_CLEAR(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
