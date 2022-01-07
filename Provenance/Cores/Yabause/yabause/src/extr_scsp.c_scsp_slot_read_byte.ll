; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_scsp.c_scsp_slot_read_byte.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_scsp.c_scsp_slot_read_byte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Scsp = type { %struct.Slot* }
%struct.Slot = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @scsp_slot_read_byte(%struct.Scsp* %0, i32 %1) #0 {
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
  switch i32 %22, label %392 [
    i32 0, label %23
    i32 1, label %46
    i32 2, label %77
    i32 3, label %86
    i32 4, label %94
    i32 5, label %103
    i32 6, label %111
    i32 7, label %120
    i32 8, label %128
    i32 9, label %143
    i32 10, label %164
    i32 11, label %193
    i32 12, label %207
    i32 13, label %228
    i32 14, label %235
    i32 15, label %250
    i32 16, label %264
    i32 17, label %293
    i32 18, label %300
    i32 19, label %321
    i32 20, label %342
    i32 21, label %343
    i32 22, label %364
    i32 23, label %378
  ]

23:                                               ; preds = %2
  %24 = load %struct.Slot*, %struct.Slot** %6, align 8
  %25 = getelementptr inbounds %struct.Slot, %struct.Slot* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = shl i32 %27, 3
  %29 = load i32, i32* %8, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %8, align 4
  %31 = load %struct.Slot*, %struct.Slot** %6, align 8
  %32 = getelementptr inbounds %struct.Slot, %struct.Slot* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = shl i32 %34, 1
  %36 = load i32, i32* %8, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %8, align 4
  %38 = load %struct.Slot*, %struct.Slot** %6, align 8
  %39 = getelementptr inbounds %struct.Slot, %struct.Slot* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = ashr i32 %41, 1
  %43 = and i32 %42, 1
  %44 = load i32, i32* %8, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %8, align 4
  br label %392

46:                                               ; preds = %2
  %47 = load %struct.Slot*, %struct.Slot** %6, align 8
  %48 = getelementptr inbounds %struct.Slot, %struct.Slot* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = and i32 %50, 1
  %52 = shl i32 %51, 7
  %53 = load i32, i32* %8, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %8, align 4
  %55 = load %struct.Slot*, %struct.Slot** %6, align 8
  %56 = getelementptr inbounds %struct.Slot, %struct.Slot* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = shl i32 %58, 5
  %60 = load i32, i32* %8, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %8, align 4
  %62 = load %struct.Slot*, %struct.Slot** %6, align 8
  %63 = getelementptr inbounds %struct.Slot, %struct.Slot* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 4
  %65 = load i32, i32* %64, align 4
  %66 = shl i32 %65, 4
  %67 = load i32, i32* %8, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %8, align 4
  %69 = load %struct.Slot*, %struct.Slot** %6, align 8
  %70 = getelementptr inbounds %struct.Slot, %struct.Slot* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 5
  %72 = load i32, i32* %71, align 4
  %73 = and i32 %72, 983040
  %74 = ashr i32 %73, 16
  %75 = load i32, i32* %8, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %8, align 4
  br label %392

77:                                               ; preds = %2
  %78 = load %struct.Slot*, %struct.Slot** %6, align 8
  %79 = getelementptr inbounds %struct.Slot, %struct.Slot* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 5
  %81 = load i32, i32* %80, align 4
  %82 = and i32 %81, 65280
  %83 = ashr i32 %82, 8
  %84 = load i32, i32* %8, align 4
  %85 = or i32 %84, %83
  store i32 %85, i32* %8, align 4
  br label %392

86:                                               ; preds = %2
  %87 = load %struct.Slot*, %struct.Slot** %6, align 8
  %88 = getelementptr inbounds %struct.Slot, %struct.Slot* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 5
  %90 = load i32, i32* %89, align 4
  %91 = and i32 %90, 255
  %92 = load i32, i32* %8, align 4
  %93 = or i32 %92, %91
  store i32 %93, i32* %8, align 4
  br label %392

94:                                               ; preds = %2
  %95 = load %struct.Slot*, %struct.Slot** %6, align 8
  %96 = getelementptr inbounds %struct.Slot, %struct.Slot* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 6
  %98 = load i32, i32* %97, align 4
  %99 = and i32 %98, 65280
  %100 = ashr i32 %99, 8
  %101 = load i32, i32* %8, align 4
  %102 = or i32 %101, %100
  store i32 %102, i32* %8, align 4
  br label %392

103:                                              ; preds = %2
  %104 = load %struct.Slot*, %struct.Slot** %6, align 8
  %105 = getelementptr inbounds %struct.Slot, %struct.Slot* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 6
  %107 = load i32, i32* %106, align 4
  %108 = and i32 %107, 255
  %109 = load i32, i32* %8, align 4
  %110 = or i32 %109, %108
  store i32 %110, i32* %8, align 4
  br label %392

111:                                              ; preds = %2
  %112 = load %struct.Slot*, %struct.Slot** %6, align 8
  %113 = getelementptr inbounds %struct.Slot, %struct.Slot* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 7
  %115 = load i32, i32* %114, align 4
  %116 = and i32 %115, 65280
  %117 = ashr i32 %116, 8
  %118 = load i32, i32* %8, align 4
  %119 = or i32 %118, %117
  store i32 %119, i32* %8, align 4
  br label %392

120:                                              ; preds = %2
  %121 = load %struct.Slot*, %struct.Slot** %6, align 8
  %122 = getelementptr inbounds %struct.Slot, %struct.Slot* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i32 0, i32 7
  %124 = load i32, i32* %123, align 4
  %125 = and i32 %124, 255
  %126 = load i32, i32* %8, align 4
  %127 = or i32 %126, %125
  store i32 %127, i32* %8, align 4
  br label %392

128:                                              ; preds = %2
  %129 = load %struct.Slot*, %struct.Slot** %6, align 8
  %130 = getelementptr inbounds %struct.Slot, %struct.Slot* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i32 0, i32 8
  %132 = load i32, i32* %131, align 4
  %133 = shl i32 %132, 3
  %134 = load i32, i32* %8, align 4
  %135 = or i32 %134, %133
  store i32 %135, i32* %8, align 4
  %136 = load %struct.Slot*, %struct.Slot** %6, align 8
  %137 = getelementptr inbounds %struct.Slot, %struct.Slot* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %137, i32 0, i32 9
  %139 = load i32, i32* %138, align 4
  %140 = ashr i32 %139, 2
  %141 = load i32, i32* %8, align 4
  %142 = or i32 %141, %140
  store i32 %142, i32* %8, align 4
  br label %392

143:                                              ; preds = %2
  %144 = load %struct.Slot*, %struct.Slot** %6, align 8
  %145 = getelementptr inbounds %struct.Slot, %struct.Slot* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %145, i32 0, i32 9
  %147 = load i32, i32* %146, align 4
  %148 = shl i32 %147, 6
  %149 = load i32, i32* %8, align 4
  %150 = or i32 %149, %148
  store i32 %150, i32* %8, align 4
  %151 = load %struct.Slot*, %struct.Slot** %6, align 8
  %152 = getelementptr inbounds %struct.Slot, %struct.Slot* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %152, i32 0, i32 10
  %154 = load i32, i32* %153, align 4
  %155 = shl i32 %154, 5
  %156 = load i32, i32* %8, align 4
  %157 = or i32 %156, %155
  store i32 %157, i32* %8, align 4
  %158 = load %struct.Slot*, %struct.Slot** %6, align 8
  %159 = getelementptr inbounds %struct.Slot, %struct.Slot* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %159, i32 0, i32 11
  %161 = load i32, i32* %160, align 4
  %162 = load i32, i32* %8, align 4
  %163 = or i32 %162, %161
  store i32 %163, i32* %8, align 4
  br label %392

164:                                              ; preds = %2
  %165 = load %struct.Slot*, %struct.Slot** %6, align 8
  %166 = getelementptr inbounds %struct.Slot, %struct.Slot* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %166, i32 0, i32 12
  %168 = load i32, i32* %167, align 4
  %169 = shl i32 %168, 7
  %170 = load i32, i32* %8, align 4
  %171 = or i32 %170, %169
  store i32 %171, i32* %8, align 4
  %172 = load %struct.Slot*, %struct.Slot** %6, align 8
  %173 = getelementptr inbounds %struct.Slot, %struct.Slot* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %173, i32 0, i32 13
  %175 = load i32, i32* %174, align 4
  %176 = shl i32 %175, 6
  %177 = load i32, i32* %8, align 4
  %178 = or i32 %177, %176
  store i32 %178, i32* %8, align 4
  %179 = load %struct.Slot*, %struct.Slot** %6, align 8
  %180 = getelementptr inbounds %struct.Slot, %struct.Slot* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %180, i32 0, i32 14
  %182 = load i32, i32* %181, align 4
  %183 = shl i32 %182, 2
  %184 = load i32, i32* %8, align 4
  %185 = or i32 %184, %183
  store i32 %185, i32* %8, align 4
  %186 = load %struct.Slot*, %struct.Slot** %6, align 8
  %187 = getelementptr inbounds %struct.Slot, %struct.Slot* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %187, i32 0, i32 15
  %189 = load i32, i32* %188, align 4
  %190 = ashr i32 %189, 3
  %191 = load i32, i32* %8, align 4
  %192 = or i32 %191, %190
  store i32 %192, i32* %8, align 4
  br label %392

193:                                              ; preds = %2
  %194 = load %struct.Slot*, %struct.Slot** %6, align 8
  %195 = getelementptr inbounds %struct.Slot, %struct.Slot* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %195, i32 0, i32 15
  %197 = load i32, i32* %196, align 4
  %198 = shl i32 %197, 5
  %199 = load i32, i32* %8, align 4
  %200 = or i32 %199, %198
  store i32 %200, i32* %8, align 4
  %201 = load %struct.Slot*, %struct.Slot** %6, align 8
  %202 = getelementptr inbounds %struct.Slot, %struct.Slot* %201, i32 0, i32 0
  %203 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %202, i32 0, i32 16
  %204 = load i32, i32* %203, align 4
  %205 = load i32, i32* %8, align 4
  %206 = or i32 %205, %204
  store i32 %206, i32* %8, align 4
  br label %392

207:                                              ; preds = %2
  %208 = load %struct.Slot*, %struct.Slot** %6, align 8
  %209 = getelementptr inbounds %struct.Slot, %struct.Slot* %208, i32 0, i32 0
  %210 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %209, i32 0, i32 17
  %211 = load i32, i32* %210, align 4
  %212 = shl i32 %211, 2
  %213 = load i32, i32* %8, align 4
  %214 = or i32 %213, %212
  store i32 %214, i32* %8, align 4
  %215 = load %struct.Slot*, %struct.Slot** %6, align 8
  %216 = getelementptr inbounds %struct.Slot, %struct.Slot* %215, i32 0, i32 0
  %217 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %216, i32 0, i32 18
  %218 = load i32, i32* %217, align 4
  %219 = shl i32 %218, 1
  %220 = load i32, i32* %8, align 4
  %221 = or i32 %220, %219
  store i32 %221, i32* %8, align 4
  %222 = load %struct.Slot*, %struct.Slot** %6, align 8
  %223 = getelementptr inbounds %struct.Slot, %struct.Slot* %222, i32 0, i32 0
  %224 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %223, i32 0, i32 19
  %225 = load i32, i32* %224, align 4
  %226 = load i32, i32* %8, align 4
  %227 = or i32 %226, %225
  store i32 %227, i32* %8, align 4
  br label %392

228:                                              ; preds = %2
  %229 = load %struct.Slot*, %struct.Slot** %6, align 8
  %230 = getelementptr inbounds %struct.Slot, %struct.Slot* %229, i32 0, i32 0
  %231 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %230, i32 0, i32 20
  %232 = load i32, i32* %231, align 4
  %233 = load i32, i32* %8, align 4
  %234 = or i32 %233, %232
  store i32 %234, i32* %8, align 4
  br label %392

235:                                              ; preds = %2
  %236 = load %struct.Slot*, %struct.Slot** %6, align 8
  %237 = getelementptr inbounds %struct.Slot, %struct.Slot* %236, i32 0, i32 0
  %238 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %237, i32 0, i32 21
  %239 = load i32, i32* %238, align 4
  %240 = shl i32 %239, 4
  %241 = load i32, i32* %8, align 4
  %242 = or i32 %241, %240
  store i32 %242, i32* %8, align 4
  %243 = load %struct.Slot*, %struct.Slot** %6, align 8
  %244 = getelementptr inbounds %struct.Slot, %struct.Slot* %243, i32 0, i32 0
  %245 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %244, i32 0, i32 22
  %246 = load i32, i32* %245, align 4
  %247 = ashr i32 %246, 2
  %248 = load i32, i32* %8, align 4
  %249 = or i32 %248, %247
  store i32 %249, i32* %8, align 4
  br label %392

250:                                              ; preds = %2
  %251 = load %struct.Slot*, %struct.Slot** %6, align 8
  %252 = getelementptr inbounds %struct.Slot, %struct.Slot* %251, i32 0, i32 0
  %253 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %252, i32 0, i32 22
  %254 = load i32, i32* %253, align 4
  %255 = shl i32 %254, 6
  %256 = load i32, i32* %8, align 4
  %257 = or i32 %256, %255
  store i32 %257, i32* %8, align 4
  %258 = load %struct.Slot*, %struct.Slot** %6, align 8
  %259 = getelementptr inbounds %struct.Slot, %struct.Slot* %258, i32 0, i32 0
  %260 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %259, i32 0, i32 23
  %261 = load i32, i32* %260, align 4
  %262 = load i32, i32* %8, align 4
  %263 = or i32 %262, %261
  store i32 %263, i32* %8, align 4
  br label %392

264:                                              ; preds = %2
  %265 = load %struct.Slot*, %struct.Slot** %6, align 8
  %266 = getelementptr inbounds %struct.Slot, %struct.Slot* %265, i32 0, i32 0
  %267 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %266, i32 0, i32 24
  %268 = load i32, i32* %267, align 4
  %269 = shl i32 %268, 7
  %270 = load i32, i32* %8, align 4
  %271 = or i32 %270, %269
  store i32 %271, i32* %8, align 4
  %272 = load %struct.Slot*, %struct.Slot** %6, align 8
  %273 = getelementptr inbounds %struct.Slot, %struct.Slot* %272, i32 0, i32 0
  %274 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %273, i32 0, i32 25
  %275 = load i32, i32* %274, align 4
  %276 = shl i32 %275, 3
  %277 = load i32, i32* %8, align 4
  %278 = or i32 %277, %276
  store i32 %278, i32* %8, align 4
  %279 = load %struct.Slot*, %struct.Slot** %6, align 8
  %280 = getelementptr inbounds %struct.Slot, %struct.Slot* %279, i32 0, i32 0
  %281 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %280, i32 0, i32 26
  %282 = load i32, i32* %281, align 4
  %283 = shl i32 %282, 2
  %284 = load i32, i32* %8, align 4
  %285 = or i32 %284, %283
  store i32 %285, i32* %8, align 4
  %286 = load %struct.Slot*, %struct.Slot** %6, align 8
  %287 = getelementptr inbounds %struct.Slot, %struct.Slot* %286, i32 0, i32 0
  %288 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %287, i32 0, i32 27
  %289 = load i32, i32* %288, align 4
  %290 = ashr i32 %289, 8
  %291 = load i32, i32* %8, align 4
  %292 = or i32 %291, %290
  store i32 %292, i32* %8, align 4
  br label %392

293:                                              ; preds = %2
  %294 = load %struct.Slot*, %struct.Slot** %6, align 8
  %295 = getelementptr inbounds %struct.Slot, %struct.Slot* %294, i32 0, i32 0
  %296 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %295, i32 0, i32 27
  %297 = load i32, i32* %296, align 4
  %298 = load i32, i32* %8, align 4
  %299 = or i32 %298, %297
  store i32 %299, i32* %8, align 4
  br label %392

300:                                              ; preds = %2
  %301 = load %struct.Slot*, %struct.Slot** %6, align 8
  %302 = getelementptr inbounds %struct.Slot, %struct.Slot* %301, i32 0, i32 0
  %303 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %302, i32 0, i32 28
  %304 = load i32, i32* %303, align 4
  %305 = shl i32 %304, 7
  %306 = load i32, i32* %8, align 4
  %307 = or i32 %306, %305
  store i32 %307, i32* %8, align 4
  %308 = load %struct.Slot*, %struct.Slot** %6, align 8
  %309 = getelementptr inbounds %struct.Slot, %struct.Slot* %308, i32 0, i32 0
  %310 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %309, i32 0, i32 29
  %311 = load i32, i32* %310, align 4
  %312 = shl i32 %311, 2
  %313 = load i32, i32* %8, align 4
  %314 = or i32 %313, %312
  store i32 %314, i32* %8, align 4
  %315 = load %struct.Slot*, %struct.Slot** %6, align 8
  %316 = getelementptr inbounds %struct.Slot, %struct.Slot* %315, i32 0, i32 0
  %317 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %316, i32 0, i32 30
  %318 = load i32, i32* %317, align 4
  %319 = load i32, i32* %8, align 4
  %320 = or i32 %319, %318
  store i32 %320, i32* %8, align 4
  br label %392

321:                                              ; preds = %2
  %322 = load %struct.Slot*, %struct.Slot** %6, align 8
  %323 = getelementptr inbounds %struct.Slot, %struct.Slot* %322, i32 0, i32 0
  %324 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %323, i32 0, i32 31
  %325 = load i32, i32* %324, align 4
  %326 = shl i32 %325, 5
  %327 = load i32, i32* %8, align 4
  %328 = or i32 %327, %326
  store i32 %328, i32* %8, align 4
  %329 = load %struct.Slot*, %struct.Slot** %6, align 8
  %330 = getelementptr inbounds %struct.Slot, %struct.Slot* %329, i32 0, i32 0
  %331 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %330, i32 0, i32 32
  %332 = load i32, i32* %331, align 4
  %333 = shl i32 %332, 3
  %334 = load i32, i32* %8, align 4
  %335 = or i32 %334, %333
  store i32 %335, i32* %8, align 4
  %336 = load %struct.Slot*, %struct.Slot** %6, align 8
  %337 = getelementptr inbounds %struct.Slot, %struct.Slot* %336, i32 0, i32 0
  %338 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %337, i32 0, i32 33
  %339 = load i32, i32* %338, align 4
  %340 = load i32, i32* %8, align 4
  %341 = or i32 %340, %339
  store i32 %341, i32* %8, align 4
  br label %392

342:                                              ; preds = %2
  br label %392

343:                                              ; preds = %2
  %344 = load %struct.Slot*, %struct.Slot** %6, align 8
  %345 = getelementptr inbounds %struct.Slot, %struct.Slot* %344, i32 0, i32 0
  %346 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %345, i32 0, i32 34
  %347 = load i32, i32* %346, align 4
  %348 = shl i32 %347, 7
  %349 = load i32, i32* %8, align 4
  %350 = or i32 %349, %348
  store i32 %350, i32* %8, align 4
  %351 = load %struct.Slot*, %struct.Slot** %6, align 8
  %352 = getelementptr inbounds %struct.Slot, %struct.Slot* %351, i32 0, i32 0
  %353 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %352, i32 0, i32 35
  %354 = load i32, i32* %353, align 4
  %355 = shl i32 %354, 3
  %356 = load i32, i32* %8, align 4
  %357 = or i32 %356, %355
  store i32 %357, i32* %8, align 4
  %358 = load %struct.Slot*, %struct.Slot** %6, align 8
  %359 = getelementptr inbounds %struct.Slot, %struct.Slot* %358, i32 0, i32 0
  %360 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %359, i32 0, i32 36
  %361 = load i32, i32* %360, align 4
  %362 = load i32, i32* %8, align 4
  %363 = or i32 %362, %361
  store i32 %363, i32* %8, align 4
  br label %392

364:                                              ; preds = %2
  %365 = load %struct.Slot*, %struct.Slot** %6, align 8
  %366 = getelementptr inbounds %struct.Slot, %struct.Slot* %365, i32 0, i32 0
  %367 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %366, i32 0, i32 37
  %368 = load i32, i32* %367, align 4
  %369 = shl i32 %368, 5
  %370 = load i32, i32* %8, align 4
  %371 = or i32 %370, %369
  store i32 %371, i32* %8, align 4
  %372 = load %struct.Slot*, %struct.Slot** %6, align 8
  %373 = getelementptr inbounds %struct.Slot, %struct.Slot* %372, i32 0, i32 0
  %374 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %373, i32 0, i32 38
  %375 = load i32, i32* %374, align 4
  %376 = load i32, i32* %8, align 4
  %377 = or i32 %376, %375
  store i32 %377, i32* %8, align 4
  br label %392

378:                                              ; preds = %2
  %379 = load %struct.Slot*, %struct.Slot** %6, align 8
  %380 = getelementptr inbounds %struct.Slot, %struct.Slot* %379, i32 0, i32 0
  %381 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %380, i32 0, i32 39
  %382 = load i32, i32* %381, align 4
  %383 = shl i32 %382, 5
  %384 = load i32, i32* %8, align 4
  %385 = or i32 %384, %383
  store i32 %385, i32* %8, align 4
  %386 = load %struct.Slot*, %struct.Slot** %6, align 8
  %387 = getelementptr inbounds %struct.Slot, %struct.Slot* %386, i32 0, i32 0
  %388 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %387, i32 0, i32 40
  %389 = load i32, i32* %388, align 4
  %390 = load i32, i32* %8, align 4
  %391 = or i32 %390, %389
  store i32 %391, i32* %8, align 4
  br label %392

392:                                              ; preds = %2, %378, %364, %343, %342, %321, %300, %293, %264, %250, %235, %228, %207, %193, %164, %143, %128, %120, %111, %103, %94, %86, %77, %46, %23
  %393 = load i32, i32* %8, align 4
  ret i32 %393
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
