; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_scsp.c_scsp_slot_read_word.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_scsp.c_scsp_slot_read_word.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Scsp = type { %struct.Slot* }
%struct.Slot = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @scsp_slot_read_word(%struct.Scsp* %0, i32 %1) #0 {
  %3 = alloca %struct.Scsp*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.Slot*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.Scsp* %0, %struct.Scsp** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = ashr i32 %9, 5
  %11 = and i32 %10, 31
  store i32 %11, i32* %5, align 4
  %12 = load %struct.Scsp*, %struct.Scsp** %3, align 8
  %13 = getelementptr inbounds %struct.Scsp, %struct.Scsp* %12, i32 0, i32 0
  %14 = load %struct.Slot*, %struct.Slot** %13, align 8
  %15 = load i32, i32* %5, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.Slot, %struct.Slot* %14, i64 %16
  store %struct.Slot* %17, %struct.Slot** %6, align 8
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* %5, align 4
  %20 = mul nsw i32 32, %19
  %21 = sub nsw i32 %18, %20
  store i32 %21, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %22 = load i32, i32* %7, align 4
  %23 = ashr i32 %22, 1
  switch i32 %23, label %315 [
    i32 0, label %24
    i32 1, label %68
    i32 2, label %74
    i32 3, label %79
    i32 4, label %84
    i32 5, label %112
    i32 6, label %147
    i32 7, label %175
    i32 8, label %196
    i32 9, label %224
    i32 10, label %266
    i32 11, label %287
  ]

24:                                               ; preds = %2
  %25 = load %struct.Slot*, %struct.Slot** %6, align 8
  %26 = getelementptr inbounds %struct.Slot, %struct.Slot* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = shl i32 %28, 11
  %30 = load i32, i32* %8, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %8, align 4
  %32 = load %struct.Slot*, %struct.Slot** %6, align 8
  %33 = getelementptr inbounds %struct.Slot, %struct.Slot* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = shl i32 %35, 9
  %37 = load i32, i32* %8, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %8, align 4
  %39 = load %struct.Slot*, %struct.Slot** %6, align 8
  %40 = getelementptr inbounds %struct.Slot, %struct.Slot* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = shl i32 %42, 7
  %44 = load i32, i32* %8, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %8, align 4
  %46 = load %struct.Slot*, %struct.Slot** %6, align 8
  %47 = getelementptr inbounds %struct.Slot, %struct.Slot* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = shl i32 %49, 5
  %51 = load i32, i32* %8, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %8, align 4
  %53 = load %struct.Slot*, %struct.Slot** %6, align 8
  %54 = getelementptr inbounds %struct.Slot, %struct.Slot* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 4
  %57 = shl i32 %56, 4
  %58 = load i32, i32* %8, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %8, align 4
  %60 = load %struct.Slot*, %struct.Slot** %6, align 8
  %61 = getelementptr inbounds %struct.Slot, %struct.Slot* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 5
  %63 = load i32, i32* %62, align 4
  %64 = ashr i32 %63, 16
  %65 = and i32 %64, 15
  %66 = load i32, i32* %8, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %8, align 4
  br label %315

68:                                               ; preds = %2
  %69 = load %struct.Slot*, %struct.Slot** %6, align 8
  %70 = getelementptr inbounds %struct.Slot, %struct.Slot* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 5
  %72 = load i32, i32* %71, align 4
  %73 = and i32 %72, 65535
  store i32 %73, i32* %8, align 4
  br label %315

74:                                               ; preds = %2
  %75 = load %struct.Slot*, %struct.Slot** %6, align 8
  %76 = getelementptr inbounds %struct.Slot, %struct.Slot* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 6
  %78 = load i32, i32* %77, align 4
  store i32 %78, i32* %8, align 4
  br label %315

79:                                               ; preds = %2
  %80 = load %struct.Slot*, %struct.Slot** %6, align 8
  %81 = getelementptr inbounds %struct.Slot, %struct.Slot* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 7
  %83 = load i32, i32* %82, align 4
  store i32 %83, i32* %8, align 4
  br label %315

84:                                               ; preds = %2
  %85 = load %struct.Slot*, %struct.Slot** %6, align 8
  %86 = getelementptr inbounds %struct.Slot, %struct.Slot* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 8
  %88 = load i32, i32* %87, align 4
  %89 = shl i32 %88, 11
  %90 = load i32, i32* %8, align 4
  %91 = or i32 %90, %89
  store i32 %91, i32* %8, align 4
  %92 = load %struct.Slot*, %struct.Slot** %6, align 8
  %93 = getelementptr inbounds %struct.Slot, %struct.Slot* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 9
  %95 = load i32, i32* %94, align 4
  %96 = shl i32 %95, 6
  %97 = load i32, i32* %8, align 4
  %98 = or i32 %97, %96
  store i32 %98, i32* %8, align 4
  %99 = load %struct.Slot*, %struct.Slot** %6, align 8
  %100 = getelementptr inbounds %struct.Slot, %struct.Slot* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 10
  %102 = load i32, i32* %101, align 4
  %103 = shl i32 %102, 5
  %104 = load i32, i32* %8, align 4
  %105 = or i32 %104, %103
  store i32 %105, i32* %8, align 4
  %106 = load %struct.Slot*, %struct.Slot** %6, align 8
  %107 = getelementptr inbounds %struct.Slot, %struct.Slot* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 11
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* %8, align 4
  %111 = or i32 %110, %109
  store i32 %111, i32* %8, align 4
  br label %315

112:                                              ; preds = %2
  %113 = load %struct.Slot*, %struct.Slot** %6, align 8
  %114 = getelementptr inbounds %struct.Slot, %struct.Slot* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 12
  %116 = load i32, i32* %115, align 4
  %117 = shl i32 %116, 15
  %118 = load i32, i32* %8, align 4
  %119 = or i32 %118, %117
  store i32 %119, i32* %8, align 4
  %120 = load %struct.Slot*, %struct.Slot** %6, align 8
  %121 = getelementptr inbounds %struct.Slot, %struct.Slot* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 13
  %123 = load i32, i32* %122, align 4
  %124 = shl i32 %123, 14
  %125 = load i32, i32* %8, align 4
  %126 = or i32 %125, %124
  store i32 %126, i32* %8, align 4
  %127 = load %struct.Slot*, %struct.Slot** %6, align 8
  %128 = getelementptr inbounds %struct.Slot, %struct.Slot* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 14
  %130 = load i32, i32* %129, align 4
  %131 = shl i32 %130, 10
  %132 = load i32, i32* %8, align 4
  %133 = or i32 %132, %131
  store i32 %133, i32* %8, align 4
  %134 = load %struct.Slot*, %struct.Slot** %6, align 8
  %135 = getelementptr inbounds %struct.Slot, %struct.Slot* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %135, i32 0, i32 15
  %137 = load i32, i32* %136, align 4
  %138 = shl i32 %137, 5
  %139 = load i32, i32* %8, align 4
  %140 = or i32 %139, %138
  store i32 %140, i32* %8, align 4
  %141 = load %struct.Slot*, %struct.Slot** %6, align 8
  %142 = getelementptr inbounds %struct.Slot, %struct.Slot* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i32 0, i32 16
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* %8, align 4
  %146 = or i32 %145, %144
  store i32 %146, i32* %8, align 4
  br label %315

147:                                              ; preds = %2
  %148 = load %struct.Slot*, %struct.Slot** %6, align 8
  %149 = getelementptr inbounds %struct.Slot, %struct.Slot* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %149, i32 0, i32 17
  %151 = load i32, i32* %150, align 4
  %152 = shl i32 %151, 10
  %153 = load i32, i32* %8, align 4
  %154 = or i32 %153, %152
  store i32 %154, i32* %8, align 4
  %155 = load %struct.Slot*, %struct.Slot** %6, align 8
  %156 = getelementptr inbounds %struct.Slot, %struct.Slot* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %156, i32 0, i32 18
  %158 = load i32, i32* %157, align 4
  %159 = shl i32 %158, 9
  %160 = load i32, i32* %8, align 4
  %161 = or i32 %160, %159
  store i32 %161, i32* %8, align 4
  %162 = load %struct.Slot*, %struct.Slot** %6, align 8
  %163 = getelementptr inbounds %struct.Slot, %struct.Slot* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %163, i32 0, i32 19
  %165 = load i32, i32* %164, align 4
  %166 = shl i32 %165, 8
  %167 = load i32, i32* %8, align 4
  %168 = or i32 %167, %166
  store i32 %168, i32* %8, align 4
  %169 = load %struct.Slot*, %struct.Slot** %6, align 8
  %170 = getelementptr inbounds %struct.Slot, %struct.Slot* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %170, i32 0, i32 20
  %172 = load i32, i32* %171, align 4
  %173 = load i32, i32* %8, align 4
  %174 = or i32 %173, %172
  store i32 %174, i32* %8, align 4
  br label %315

175:                                              ; preds = %2
  %176 = load %struct.Slot*, %struct.Slot** %6, align 8
  %177 = getelementptr inbounds %struct.Slot, %struct.Slot* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %177, i32 0, i32 21
  %179 = load i32, i32* %178, align 4
  %180 = shl i32 %179, 12
  %181 = load i32, i32* %8, align 4
  %182 = or i32 %181, %180
  store i32 %182, i32* %8, align 4
  %183 = load %struct.Slot*, %struct.Slot** %6, align 8
  %184 = getelementptr inbounds %struct.Slot, %struct.Slot* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %184, i32 0, i32 22
  %186 = load i32, i32* %185, align 4
  %187 = shl i32 %186, 6
  %188 = load i32, i32* %8, align 4
  %189 = or i32 %188, %187
  store i32 %189, i32* %8, align 4
  %190 = load %struct.Slot*, %struct.Slot** %6, align 8
  %191 = getelementptr inbounds %struct.Slot, %struct.Slot* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %191, i32 0, i32 23
  %193 = load i32, i32* %192, align 4
  %194 = load i32, i32* %8, align 4
  %195 = or i32 %194, %193
  store i32 %195, i32* %8, align 4
  br label %315

196:                                              ; preds = %2
  %197 = load %struct.Slot*, %struct.Slot** %6, align 8
  %198 = getelementptr inbounds %struct.Slot, %struct.Slot* %197, i32 0, i32 0
  %199 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %198, i32 0, i32 24
  %200 = load i32, i32* %199, align 4
  %201 = shl i32 %200, 15
  %202 = load i32, i32* %8, align 4
  %203 = or i32 %202, %201
  store i32 %203, i32* %8, align 4
  %204 = load %struct.Slot*, %struct.Slot** %6, align 8
  %205 = getelementptr inbounds %struct.Slot, %struct.Slot* %204, i32 0, i32 0
  %206 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %205, i32 0, i32 25
  %207 = load i32, i32* %206, align 4
  %208 = shl i32 %207, 11
  %209 = load i32, i32* %8, align 4
  %210 = or i32 %209, %208
  store i32 %210, i32* %8, align 4
  %211 = load %struct.Slot*, %struct.Slot** %6, align 8
  %212 = getelementptr inbounds %struct.Slot, %struct.Slot* %211, i32 0, i32 0
  %213 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %212, i32 0, i32 26
  %214 = load i32, i32* %213, align 4
  %215 = shl i32 %214, 10
  %216 = load i32, i32* %8, align 4
  %217 = or i32 %216, %215
  store i32 %217, i32* %8, align 4
  %218 = load %struct.Slot*, %struct.Slot** %6, align 8
  %219 = getelementptr inbounds %struct.Slot, %struct.Slot* %218, i32 0, i32 0
  %220 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %219, i32 0, i32 27
  %221 = load i32, i32* %220, align 4
  %222 = load i32, i32* %8, align 4
  %223 = or i32 %222, %221
  store i32 %223, i32* %8, align 4
  br label %315

224:                                              ; preds = %2
  %225 = load %struct.Slot*, %struct.Slot** %6, align 8
  %226 = getelementptr inbounds %struct.Slot, %struct.Slot* %225, i32 0, i32 0
  %227 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %226, i32 0, i32 28
  %228 = load i32, i32* %227, align 4
  %229 = shl i32 %228, 15
  %230 = load i32, i32* %8, align 4
  %231 = or i32 %230, %229
  store i32 %231, i32* %8, align 4
  %232 = load %struct.Slot*, %struct.Slot** %6, align 8
  %233 = getelementptr inbounds %struct.Slot, %struct.Slot* %232, i32 0, i32 0
  %234 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %233, i32 0, i32 29
  %235 = load i32, i32* %234, align 4
  %236 = shl i32 %235, 10
  %237 = load i32, i32* %8, align 4
  %238 = or i32 %237, %236
  store i32 %238, i32* %8, align 4
  %239 = load %struct.Slot*, %struct.Slot** %6, align 8
  %240 = getelementptr inbounds %struct.Slot, %struct.Slot* %239, i32 0, i32 0
  %241 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %240, i32 0, i32 30
  %242 = load i32, i32* %241, align 4
  %243 = shl i32 %242, 8
  %244 = load i32, i32* %8, align 4
  %245 = or i32 %244, %243
  store i32 %245, i32* %8, align 4
  %246 = load %struct.Slot*, %struct.Slot** %6, align 8
  %247 = getelementptr inbounds %struct.Slot, %struct.Slot* %246, i32 0, i32 0
  %248 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %247, i32 0, i32 31
  %249 = load i32, i32* %248, align 4
  %250 = shl i32 %249, 5
  %251 = load i32, i32* %8, align 4
  %252 = or i32 %251, %250
  store i32 %252, i32* %8, align 4
  %253 = load %struct.Slot*, %struct.Slot** %6, align 8
  %254 = getelementptr inbounds %struct.Slot, %struct.Slot* %253, i32 0, i32 0
  %255 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %254, i32 0, i32 32
  %256 = load i32, i32* %255, align 4
  %257 = shl i32 %256, 3
  %258 = load i32, i32* %8, align 4
  %259 = or i32 %258, %257
  store i32 %259, i32* %8, align 4
  %260 = load %struct.Slot*, %struct.Slot** %6, align 8
  %261 = getelementptr inbounds %struct.Slot, %struct.Slot* %260, i32 0, i32 0
  %262 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %261, i32 0, i32 33
  %263 = load i32, i32* %262, align 4
  %264 = load i32, i32* %8, align 4
  %265 = or i32 %264, %263
  store i32 %265, i32* %8, align 4
  br label %315

266:                                              ; preds = %2
  %267 = load %struct.Slot*, %struct.Slot** %6, align 8
  %268 = getelementptr inbounds %struct.Slot, %struct.Slot* %267, i32 0, i32 0
  %269 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %268, i32 0, i32 34
  %270 = load i32, i32* %269, align 4
  %271 = shl i32 %270, 7
  %272 = load i32, i32* %8, align 4
  %273 = or i32 %272, %271
  store i32 %273, i32* %8, align 4
  %274 = load %struct.Slot*, %struct.Slot** %6, align 8
  %275 = getelementptr inbounds %struct.Slot, %struct.Slot* %274, i32 0, i32 0
  %276 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %275, i32 0, i32 35
  %277 = load i32, i32* %276, align 4
  %278 = shl i32 %277, 3
  %279 = load i32, i32* %8, align 4
  %280 = or i32 %279, %278
  store i32 %280, i32* %8, align 4
  %281 = load %struct.Slot*, %struct.Slot** %6, align 8
  %282 = getelementptr inbounds %struct.Slot, %struct.Slot* %281, i32 0, i32 0
  %283 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %282, i32 0, i32 36
  %284 = load i32, i32* %283, align 4
  %285 = load i32, i32* %8, align 4
  %286 = or i32 %285, %284
  store i32 %286, i32* %8, align 4
  br label %315

287:                                              ; preds = %2
  %288 = load %struct.Slot*, %struct.Slot** %6, align 8
  %289 = getelementptr inbounds %struct.Slot, %struct.Slot* %288, i32 0, i32 0
  %290 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %289, i32 0, i32 37
  %291 = load i32, i32* %290, align 4
  %292 = shl i32 %291, 13
  %293 = load i32, i32* %8, align 4
  %294 = or i32 %293, %292
  store i32 %294, i32* %8, align 4
  %295 = load %struct.Slot*, %struct.Slot** %6, align 8
  %296 = getelementptr inbounds %struct.Slot, %struct.Slot* %295, i32 0, i32 0
  %297 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %296, i32 0, i32 38
  %298 = load i32, i32* %297, align 4
  %299 = shl i32 %298, 8
  %300 = load i32, i32* %8, align 4
  %301 = or i32 %300, %299
  store i32 %301, i32* %8, align 4
  %302 = load %struct.Slot*, %struct.Slot** %6, align 8
  %303 = getelementptr inbounds %struct.Slot, %struct.Slot* %302, i32 0, i32 0
  %304 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %303, i32 0, i32 39
  %305 = load i32, i32* %304, align 4
  %306 = shl i32 %305, 5
  %307 = load i32, i32* %8, align 4
  %308 = or i32 %307, %306
  store i32 %308, i32* %8, align 4
  %309 = load %struct.Slot*, %struct.Slot** %6, align 8
  %310 = getelementptr inbounds %struct.Slot, %struct.Slot* %309, i32 0, i32 0
  %311 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %310, i32 0, i32 40
  %312 = load i32, i32* %311, align 4
  %313 = load i32, i32* %8, align 4
  %314 = or i32 %313, %312
  store i32 %314, i32* %8, align 4
  br label %315

315:                                              ; preds = %2, %287, %266, %224, %196, %175, %147, %112, %84, %79, %74, %68, %24
  %316 = load i32, i32* %8, align 4
  ret i32 %316
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
