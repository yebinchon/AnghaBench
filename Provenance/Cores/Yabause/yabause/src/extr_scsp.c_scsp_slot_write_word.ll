; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_scsp.c_scsp_slot_write_word.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_scsp.c_scsp_slot_write_word.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Scsp = type { %struct.Slot* }
%struct.Slot = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @scsp_slot_write_word(%struct.Scsp* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.Scsp*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.Slot*, align 8
  %9 = alloca i32, align 4
  store %struct.Scsp* %0, %struct.Scsp** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* %5, align 4
  %11 = ashr i32 %10, 5
  %12 = and i32 %11, 31
  store i32 %12, i32* %7, align 4
  %13 = load %struct.Scsp*, %struct.Scsp** %4, align 8
  %14 = getelementptr inbounds %struct.Scsp, %struct.Scsp* %13, i32 0, i32 0
  %15 = load %struct.Slot*, %struct.Slot** %14, align 8
  %16 = load i32, i32* %7, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.Slot, %struct.Slot* %15, i64 %17
  store %struct.Slot* %18, %struct.Slot** %8, align 8
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* %7, align 4
  %21 = mul nsw i32 32, %20
  %22 = sub nsw i32 %19, %21
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  %24 = ashr i32 %23, 1
  switch i32 %24, label %293 [
    i32 0, label %25
    i32 1, label %75
    i32 2, label %86
    i32 3, label %91
    i32 4, label %96
    i32 5, label %119
    i32 6, label %149
    i32 7, label %173
    i32 8, label %191
    i32 9, label %215
    i32 10, label %251
    i32 11, label %269
  ]

25:                                               ; preds = %3
  %26 = load i32, i32* %6, align 4
  %27 = ashr i32 %26, 11
  %28 = and i32 %27, 1
  %29 = load %struct.Slot*, %struct.Slot** %8, align 8
  %30 = getelementptr inbounds %struct.Slot, %struct.Slot* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  store i32 %28, i32* %31, align 4
  %32 = load i32, i32* %6, align 4
  %33 = and i32 %32, 4096
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %25
  %36 = load %struct.Scsp*, %struct.Scsp** %4, align 8
  %37 = call i32 @keyonex(%struct.Scsp* %36)
  br label %38

38:                                               ; preds = %35, %25
  %39 = load i32, i32* %6, align 4
  %40 = ashr i32 %39, 9
  %41 = and i32 %40, 3
  %42 = load %struct.Slot*, %struct.Slot** %8, align 8
  %43 = getelementptr inbounds %struct.Slot, %struct.Slot* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  store i32 %41, i32* %44, align 4
  %45 = load i32, i32* %6, align 4
  %46 = ashr i32 %45, 7
  %47 = and i32 %46, 3
  %48 = load %struct.Slot*, %struct.Slot** %8, align 8
  %49 = getelementptr inbounds %struct.Slot, %struct.Slot* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 2
  store i32 %47, i32* %50, align 4
  %51 = load i32, i32* %6, align 4
  %52 = ashr i32 %51, 5
  %53 = and i32 %52, 3
  %54 = load %struct.Slot*, %struct.Slot** %8, align 8
  %55 = getelementptr inbounds %struct.Slot, %struct.Slot* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 3
  store i32 %53, i32* %56, align 4
  %57 = load i32, i32* %6, align 4
  %58 = ashr i32 %57, 4
  %59 = and i32 %58, 1
  %60 = load %struct.Slot*, %struct.Slot** %8, align 8
  %61 = getelementptr inbounds %struct.Slot, %struct.Slot* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 4
  store i32 %59, i32* %62, align 4
  %63 = load %struct.Slot*, %struct.Slot** %8, align 8
  %64 = getelementptr inbounds %struct.Slot, %struct.Slot* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 5
  %66 = load i32, i32* %65, align 4
  %67 = and i32 %66, 65535
  %68 = load i32, i32* %6, align 4
  %69 = and i32 %68, 15
  %70 = shl i32 %69, 16
  %71 = or i32 %67, %70
  %72 = load %struct.Slot*, %struct.Slot** %8, align 8
  %73 = getelementptr inbounds %struct.Slot, %struct.Slot* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 5
  store i32 %71, i32* %74, align 4
  br label %294

75:                                               ; preds = %3
  %76 = load %struct.Slot*, %struct.Slot** %8, align 8
  %77 = getelementptr inbounds %struct.Slot, %struct.Slot* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 5
  %79 = load i32, i32* %78, align 4
  %80 = and i32 %79, 983040
  %81 = load i32, i32* %6, align 4
  %82 = or i32 %80, %81
  %83 = load %struct.Slot*, %struct.Slot** %8, align 8
  %84 = getelementptr inbounds %struct.Slot, %struct.Slot* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 5
  store i32 %82, i32* %85, align 4
  br label %294

86:                                               ; preds = %3
  %87 = load i32, i32* %6, align 4
  %88 = load %struct.Slot*, %struct.Slot** %8, align 8
  %89 = getelementptr inbounds %struct.Slot, %struct.Slot* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 6
  store i32 %87, i32* %90, align 4
  br label %294

91:                                               ; preds = %3
  %92 = load i32, i32* %6, align 4
  %93 = load %struct.Slot*, %struct.Slot** %8, align 8
  %94 = getelementptr inbounds %struct.Slot, %struct.Slot* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 7
  store i32 %92, i32* %95, align 4
  br label %294

96:                                               ; preds = %3
  %97 = load i32, i32* %6, align 4
  %98 = ashr i32 %97, 11
  %99 = load %struct.Slot*, %struct.Slot** %8, align 8
  %100 = getelementptr inbounds %struct.Slot, %struct.Slot* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 8
  store i32 %98, i32* %101, align 4
  %102 = load i32, i32* %6, align 4
  %103 = ashr i32 %102, 6
  %104 = and i32 %103, 31
  %105 = load %struct.Slot*, %struct.Slot** %8, align 8
  %106 = getelementptr inbounds %struct.Slot, %struct.Slot* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 9
  store i32 %104, i32* %107, align 4
  %108 = load i32, i32* %6, align 4
  %109 = ashr i32 %108, 5
  %110 = and i32 %109, 1
  %111 = load %struct.Slot*, %struct.Slot** %8, align 8
  %112 = getelementptr inbounds %struct.Slot, %struct.Slot* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 10
  store i32 %110, i32* %113, align 4
  %114 = load i32, i32* %6, align 4
  %115 = and i32 %114, 31
  %116 = load %struct.Slot*, %struct.Slot** %8, align 8
  %117 = getelementptr inbounds %struct.Slot, %struct.Slot* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 11
  store i32 %115, i32* %118, align 4
  br label %294

119:                                              ; preds = %3
  %120 = load i32, i32* %6, align 4
  %121 = ashr i32 %120, 15
  %122 = and i32 %121, 1
  %123 = load %struct.Slot*, %struct.Slot** %8, align 8
  %124 = getelementptr inbounds %struct.Slot, %struct.Slot* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 12
  store i32 %122, i32* %125, align 4
  %126 = load i32, i32* %6, align 4
  %127 = ashr i32 %126, 14
  %128 = and i32 %127, 1
  %129 = load %struct.Slot*, %struct.Slot** %8, align 8
  %130 = getelementptr inbounds %struct.Slot, %struct.Slot* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i32 0, i32 13
  store i32 %128, i32* %131, align 4
  %132 = load i32, i32* %6, align 4
  %133 = ashr i32 %132, 10
  %134 = and i32 %133, 15
  %135 = load %struct.Slot*, %struct.Slot** %8, align 8
  %136 = getelementptr inbounds %struct.Slot, %struct.Slot* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %136, i32 0, i32 14
  store i32 %134, i32* %137, align 4
  %138 = load i32, i32* %6, align 4
  %139 = ashr i32 %138, 5
  %140 = and i32 %139, 31
  %141 = load %struct.Slot*, %struct.Slot** %8, align 8
  %142 = getelementptr inbounds %struct.Slot, %struct.Slot* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i32 0, i32 15
  store i32 %140, i32* %143, align 4
  %144 = load i32, i32* %6, align 4
  %145 = and i32 %144, 31
  %146 = load %struct.Slot*, %struct.Slot** %8, align 8
  %147 = getelementptr inbounds %struct.Slot, %struct.Slot* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %147, i32 0, i32 16
  store i32 %145, i32* %148, align 4
  br label %294

149:                                              ; preds = %3
  %150 = load i32, i32* %6, align 4
  %151 = ashr i32 %150, 10
  %152 = and i32 %151, 3
  %153 = load %struct.Slot*, %struct.Slot** %8, align 8
  %154 = getelementptr inbounds %struct.Slot, %struct.Slot* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %154, i32 0, i32 17
  store i32 %152, i32* %155, align 4
  %156 = load i32, i32* %6, align 4
  %157 = ashr i32 %156, 9
  %158 = and i32 %157, 1
  %159 = load %struct.Slot*, %struct.Slot** %8, align 8
  %160 = getelementptr inbounds %struct.Slot, %struct.Slot* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %160, i32 0, i32 18
  store i32 %158, i32* %161, align 4
  %162 = load i32, i32* %6, align 4
  %163 = ashr i32 %162, 8
  %164 = and i32 %163, 1
  %165 = load %struct.Slot*, %struct.Slot** %8, align 8
  %166 = getelementptr inbounds %struct.Slot, %struct.Slot* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %166, i32 0, i32 19
  store i32 %164, i32* %167, align 4
  %168 = load i32, i32* %6, align 4
  %169 = and i32 %168, 255
  %170 = load %struct.Slot*, %struct.Slot** %8, align 8
  %171 = getelementptr inbounds %struct.Slot, %struct.Slot* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %171, i32 0, i32 20
  store i32 %169, i32* %172, align 4
  br label %294

173:                                              ; preds = %3
  %174 = load i32, i32* %6, align 4
  %175 = ashr i32 %174, 12
  %176 = and i32 %175, 15
  %177 = load %struct.Slot*, %struct.Slot** %8, align 8
  %178 = getelementptr inbounds %struct.Slot, %struct.Slot* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %178, i32 0, i32 21
  store i32 %176, i32* %179, align 4
  %180 = load i32, i32* %6, align 4
  %181 = ashr i32 %180, 6
  %182 = and i32 %181, 63
  %183 = load %struct.Slot*, %struct.Slot** %8, align 8
  %184 = getelementptr inbounds %struct.Slot, %struct.Slot* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %184, i32 0, i32 22
  store i32 %182, i32* %185, align 4
  %186 = load i32, i32* %6, align 4
  %187 = and i32 %186, 63
  %188 = load %struct.Slot*, %struct.Slot** %8, align 8
  %189 = getelementptr inbounds %struct.Slot, %struct.Slot* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %189, i32 0, i32 23
  store i32 %187, i32* %190, align 4
  br label %294

191:                                              ; preds = %3
  %192 = load i32, i32* %6, align 4
  %193 = ashr i32 %192, 15
  %194 = and i32 %193, 1
  %195 = load %struct.Slot*, %struct.Slot** %8, align 8
  %196 = getelementptr inbounds %struct.Slot, %struct.Slot* %195, i32 0, i32 0
  %197 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %196, i32 0, i32 24
  store i32 %194, i32* %197, align 4
  %198 = load i32, i32* %6, align 4
  %199 = ashr i32 %198, 10
  %200 = and i32 %199, 1
  %201 = load %struct.Slot*, %struct.Slot** %8, align 8
  %202 = getelementptr inbounds %struct.Slot, %struct.Slot* %201, i32 0, i32 0
  %203 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %202, i32 0, i32 25
  store i32 %200, i32* %203, align 4
  %204 = load i32, i32* %6, align 4
  %205 = ashr i32 %204, 11
  %206 = and i32 %205, 15
  %207 = load %struct.Slot*, %struct.Slot** %8, align 8
  %208 = getelementptr inbounds %struct.Slot, %struct.Slot* %207, i32 0, i32 0
  %209 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %208, i32 0, i32 26
  store i32 %206, i32* %209, align 4
  %210 = load i32, i32* %6, align 4
  %211 = and i32 %210, 1023
  %212 = load %struct.Slot*, %struct.Slot** %8, align 8
  %213 = getelementptr inbounds %struct.Slot, %struct.Slot* %212, i32 0, i32 0
  %214 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %213, i32 0, i32 27
  store i32 %211, i32* %214, align 4
  br label %294

215:                                              ; preds = %3
  %216 = load i32, i32* %6, align 4
  %217 = ashr i32 %216, 15
  %218 = and i32 %217, 1
  %219 = load %struct.Slot*, %struct.Slot** %8, align 8
  %220 = getelementptr inbounds %struct.Slot, %struct.Slot* %219, i32 0, i32 0
  %221 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %220, i32 0, i32 28
  store i32 %218, i32* %221, align 4
  %222 = load i32, i32* %6, align 4
  %223 = ashr i32 %222, 10
  %224 = and i32 %223, 31
  %225 = load %struct.Slot*, %struct.Slot** %8, align 8
  %226 = getelementptr inbounds %struct.Slot, %struct.Slot* %225, i32 0, i32 0
  %227 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %226, i32 0, i32 29
  store i32 %224, i32* %227, align 4
  %228 = load i32, i32* %6, align 4
  %229 = ashr i32 %228, 8
  %230 = and i32 %229, 3
  %231 = load %struct.Slot*, %struct.Slot** %8, align 8
  %232 = getelementptr inbounds %struct.Slot, %struct.Slot* %231, i32 0, i32 0
  %233 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %232, i32 0, i32 30
  store i32 %230, i32* %233, align 4
  %234 = load i32, i32* %6, align 4
  %235 = ashr i32 %234, 5
  %236 = and i32 %235, 7
  %237 = load %struct.Slot*, %struct.Slot** %8, align 8
  %238 = getelementptr inbounds %struct.Slot, %struct.Slot* %237, i32 0, i32 0
  %239 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %238, i32 0, i32 31
  store i32 %236, i32* %239, align 4
  %240 = load i32, i32* %6, align 4
  %241 = ashr i32 %240, 3
  %242 = and i32 %241, 3
  %243 = load %struct.Slot*, %struct.Slot** %8, align 8
  %244 = getelementptr inbounds %struct.Slot, %struct.Slot* %243, i32 0, i32 0
  %245 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %244, i32 0, i32 32
  store i32 %242, i32* %245, align 4
  %246 = load i32, i32* %6, align 4
  %247 = and i32 %246, 7
  %248 = load %struct.Slot*, %struct.Slot** %8, align 8
  %249 = getelementptr inbounds %struct.Slot, %struct.Slot* %248, i32 0, i32 0
  %250 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %249, i32 0, i32 33
  store i32 %247, i32* %250, align 4
  br label %294

251:                                              ; preds = %3
  %252 = load i32, i32* %6, align 4
  %253 = ashr i32 %252, 7
  %254 = and i32 %253, 1
  %255 = load %struct.Slot*, %struct.Slot** %8, align 8
  %256 = getelementptr inbounds %struct.Slot, %struct.Slot* %255, i32 0, i32 0
  %257 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %256, i32 0, i32 34
  store i32 %254, i32* %257, align 4
  %258 = load i32, i32* %6, align 4
  %259 = ashr i32 %258, 3
  %260 = and i32 %259, 15
  %261 = load %struct.Slot*, %struct.Slot** %8, align 8
  %262 = getelementptr inbounds %struct.Slot, %struct.Slot* %261, i32 0, i32 0
  %263 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %262, i32 0, i32 35
  store i32 %260, i32* %263, align 4
  %264 = load i32, i32* %6, align 4
  %265 = and i32 %264, 7
  %266 = load %struct.Slot*, %struct.Slot** %8, align 8
  %267 = getelementptr inbounds %struct.Slot, %struct.Slot* %266, i32 0, i32 0
  %268 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %267, i32 0, i32 36
  store i32 %265, i32* %268, align 4
  br label %294

269:                                              ; preds = %3
  %270 = load i32, i32* %6, align 4
  %271 = ashr i32 %270, 13
  %272 = and i32 %271, 7
  %273 = load %struct.Slot*, %struct.Slot** %8, align 8
  %274 = getelementptr inbounds %struct.Slot, %struct.Slot* %273, i32 0, i32 0
  %275 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %274, i32 0, i32 37
  store i32 %272, i32* %275, align 4
  %276 = load i32, i32* %6, align 4
  %277 = ashr i32 %276, 8
  %278 = and i32 %277, 31
  %279 = load %struct.Slot*, %struct.Slot** %8, align 8
  %280 = getelementptr inbounds %struct.Slot, %struct.Slot* %279, i32 0, i32 0
  %281 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %280, i32 0, i32 38
  store i32 %278, i32* %281, align 4
  %282 = load i32, i32* %6, align 4
  %283 = ashr i32 %282, 5
  %284 = and i32 %283, 7
  %285 = load %struct.Slot*, %struct.Slot** %8, align 8
  %286 = getelementptr inbounds %struct.Slot, %struct.Slot* %285, i32 0, i32 0
  %287 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %286, i32 0, i32 39
  store i32 %284, i32* %287, align 4
  %288 = load i32, i32* %6, align 4
  %289 = and i32 %288, 31
  %290 = load %struct.Slot*, %struct.Slot** %8, align 8
  %291 = getelementptr inbounds %struct.Slot, %struct.Slot* %290, i32 0, i32 0
  %292 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %291, i32 0, i32 40
  store i32 %289, i32* %292, align 4
  br label %294

293:                                              ; preds = %3
  br label %294

294:                                              ; preds = %293, %269, %251, %215, %191, %173, %149, %119, %96, %91, %86, %75, %38
  ret void
}

declare dso_local i32 @keyonex(%struct.Scsp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
