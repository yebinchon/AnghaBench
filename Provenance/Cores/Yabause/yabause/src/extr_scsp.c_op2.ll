; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_scsp.c_op2.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_scsp.c_op2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Slot = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i64, i32, i32, i32 }
%struct.Scsp = type { i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @op2(%struct.Slot* %0, %struct.Scsp* %1) #0 {
  %3 = alloca %struct.Slot*, align 8
  %4 = alloca %struct.Scsp*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.Slot* %0, %struct.Slot** %3, align 8
  store %struct.Scsp* %1, %struct.Scsp** %4, align 8
  store i32 0, i32* %5, align 4
  %13 = load %struct.Slot*, %struct.Slot** %3, align 8
  %14 = getelementptr inbounds %struct.Slot, %struct.Slot* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = ashr i32 %16, 18
  store i32 %17, i32* %6, align 4
  %18 = load %struct.Slot*, %struct.Slot** %3, align 8
  %19 = getelementptr inbounds %struct.Slot, %struct.Slot* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = icmp sgt i32 %21, 959
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  br label %319

24:                                               ; preds = %2
  %25 = load %struct.Slot*, %struct.Slot** %3, align 8
  %26 = getelementptr inbounds %struct.Slot, %struct.Slot* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %68

30:                                               ; preds = %24
  %31 = load %struct.Slot*, %struct.Slot** %3, align 8
  %32 = load %struct.Slot*, %struct.Slot** %3, align 8
  %33 = getelementptr inbounds %struct.Slot, %struct.Slot* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 7
  %35 = load i32, i32* %34, align 8
  %36 = call i64 @get_slot(%struct.Slot* %31, i32 %35)
  store i64 %36, i64* %7, align 8
  %37 = load %struct.Slot*, %struct.Slot** %3, align 8
  %38 = load %struct.Slot*, %struct.Slot** %3, align 8
  %39 = getelementptr inbounds %struct.Slot, %struct.Slot* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 6
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @get_slot(%struct.Slot* %37, i32 %41)
  store i64 %42, i64* %8, align 8
  %43 = load %struct.Scsp*, %struct.Scsp** %4, align 8
  %44 = getelementptr inbounds %struct.Scsp, %struct.Scsp* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = load i64, i64* %7, align 8
  %47 = getelementptr inbounds i32, i32* %45, i64 %46
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %9, align 4
  %49 = load %struct.Scsp*, %struct.Scsp** %4, align 8
  %50 = getelementptr inbounds %struct.Scsp, %struct.Scsp* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = load i64, i64* %8, align 8
  %53 = getelementptr inbounds i32, i32* %51, i64 %52
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %10, align 4
  %55 = load i32, i32* %9, align 4
  %56 = load i32, i32* %10, align 4
  %57 = add nsw i32 %55, %56
  %58 = sdiv i32 %57, 2
  store i32 %58, i32* %11, align 4
  %59 = load %struct.Slot*, %struct.Slot** %3, align 8
  %60 = getelementptr inbounds %struct.Slot, %struct.Slot* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = sub nsw i32 15, %62
  store i32 %63, i32* %12, align 4
  %64 = load i32, i32* %12, align 4
  %65 = load i32, i32* %11, align 4
  %66 = ashr i32 %65, %64
  store i32 %66, i32* %11, align 4
  %67 = load i32, i32* %11, align 4
  store i32 %67, i32* %5, align 4
  br label %68

68:                                               ; preds = %30, %24
  %69 = load %struct.Slot*, %struct.Slot** %3, align 8
  %70 = getelementptr inbounds %struct.Slot, %struct.Slot* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %95

74:                                               ; preds = %68
  %75 = load i32, i32* %6, align 4
  %76 = load %struct.Slot*, %struct.Slot** %3, align 8
  %77 = getelementptr inbounds %struct.Slot, %struct.Slot* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = add nsw i32 %79, %75
  store i32 %80, i32* %78, align 8
  %81 = load %struct.Slot*, %struct.Slot** %3, align 8
  %82 = getelementptr inbounds %struct.Slot, %struct.Slot* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.Slot*, %struct.Slot** %3, align 8
  %86 = getelementptr inbounds %struct.Slot, %struct.Slot* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = icmp sge i32 %84, %88
  br i1 %89, label %90, label %94

90:                                               ; preds = %74
  %91 = load %struct.Slot*, %struct.Slot** %3, align 8
  %92 = getelementptr inbounds %struct.Slot, %struct.Slot* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 1
  store i32 1023, i32* %93, align 4
  br label %94

94:                                               ; preds = %90, %74
  br label %280

95:                                               ; preds = %68
  %96 = load %struct.Slot*, %struct.Slot** %3, align 8
  %97 = getelementptr inbounds %struct.Slot, %struct.Slot* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = icmp eq i32 %99, 1
  br i1 %100, label %101, label %126

101:                                              ; preds = %95
  %102 = load i32, i32* %6, align 4
  %103 = load %struct.Slot*, %struct.Slot** %3, align 8
  %104 = getelementptr inbounds %struct.Slot, %struct.Slot* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = add nsw i32 %106, %102
  store i32 %107, i32* %105, align 8
  %108 = load %struct.Slot*, %struct.Slot** %3, align 8
  %109 = getelementptr inbounds %struct.Slot, %struct.Slot* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.Slot*, %struct.Slot** %3, align 8
  %113 = getelementptr inbounds %struct.Slot, %struct.Slot* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  %116 = icmp sge i32 %111, %115
  br i1 %116, label %117, label %125

117:                                              ; preds = %101
  %118 = load %struct.Slot*, %struct.Slot** %3, align 8
  %119 = getelementptr inbounds %struct.Slot, %struct.Slot* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i32 0, i32 3
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.Slot*, %struct.Slot** %3, align 8
  %123 = getelementptr inbounds %struct.Slot, %struct.Slot* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 2
  store i32 %121, i32* %124, align 8
  br label %125

125:                                              ; preds = %117, %101
  br label %279

126:                                              ; preds = %95
  %127 = load %struct.Slot*, %struct.Slot** %3, align 8
  %128 = getelementptr inbounds %struct.Slot, %struct.Slot* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = icmp eq i32 %130, 2
  br i1 %131, label %132, label %200

132:                                              ; preds = %126
  %133 = load %struct.Slot*, %struct.Slot** %3, align 8
  %134 = getelementptr inbounds %struct.Slot, %struct.Slot* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 3
  %136 = load i32, i32* %135, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %145, label %138

138:                                              ; preds = %132
  %139 = load i32, i32* %6, align 4
  %140 = load %struct.Slot*, %struct.Slot** %3, align 8
  %141 = getelementptr inbounds %struct.Slot, %struct.Slot* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 8
  %144 = add nsw i32 %143, %139
  store i32 %144, i32* %142, align 8
  br label %152

145:                                              ; preds = %132
  %146 = load i32, i32* %6, align 4
  %147 = load %struct.Slot*, %struct.Slot** %3, align 8
  %148 = getelementptr inbounds %struct.Slot, %struct.Slot* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 8
  %151 = sub nsw i32 %150, %146
  store i32 %151, i32* %149, align 8
  br label %152

152:                                              ; preds = %145, %138
  %153 = load %struct.Slot*, %struct.Slot** %3, align 8
  %154 = getelementptr inbounds %struct.Slot, %struct.Slot* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %154, i32 0, i32 3
  %156 = load i32, i32* %155, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %180, label %158

158:                                              ; preds = %152
  %159 = load %struct.Slot*, %struct.Slot** %3, align 8
  %160 = getelementptr inbounds %struct.Slot, %struct.Slot* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 8
  %163 = load %struct.Slot*, %struct.Slot** %3, align 8
  %164 = getelementptr inbounds %struct.Slot, %struct.Slot* %163, i32 0, i32 1
  %165 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %164, i32 0, i32 2
  %166 = load i32, i32* %165, align 8
  %167 = icmp sge i32 %162, %166
  br i1 %167, label %168, label %179

168:                                              ; preds = %158
  %169 = load %struct.Slot*, %struct.Slot** %3, align 8
  %170 = getelementptr inbounds %struct.Slot, %struct.Slot* %169, i32 0, i32 1
  %171 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %170, i32 0, i32 2
  %172 = load i32, i32* %171, align 8
  %173 = load %struct.Slot*, %struct.Slot** %3, align 8
  %174 = getelementptr inbounds %struct.Slot, %struct.Slot* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %174, i32 0, i32 2
  store i32 %172, i32* %175, align 8
  %176 = load %struct.Slot*, %struct.Slot** %3, align 8
  %177 = getelementptr inbounds %struct.Slot, %struct.Slot* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %177, i32 0, i32 3
  store i32 1, i32* %178, align 4
  br label %179

179:                                              ; preds = %168, %158
  br label %199

180:                                              ; preds = %152
  %181 = load %struct.Slot*, %struct.Slot** %3, align 8
  %182 = getelementptr inbounds %struct.Slot, %struct.Slot* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %182, i32 0, i32 2
  %184 = load i32, i32* %183, align 8
  %185 = load %struct.Slot*, %struct.Slot** %3, align 8
  %186 = getelementptr inbounds %struct.Slot, %struct.Slot* %185, i32 0, i32 1
  %187 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %186, i32 0, i32 3
  %188 = load i32, i32* %187, align 4
  %189 = icmp sle i32 %184, %188
  br i1 %189, label %190, label %198

190:                                              ; preds = %180
  %191 = load %struct.Slot*, %struct.Slot** %3, align 8
  %192 = getelementptr inbounds %struct.Slot, %struct.Slot* %191, i32 0, i32 1
  %193 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %192, i32 0, i32 2
  %194 = load i32, i32* %193, align 8
  %195 = load %struct.Slot*, %struct.Slot** %3, align 8
  %196 = getelementptr inbounds %struct.Slot, %struct.Slot* %195, i32 0, i32 0
  %197 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %196, i32 0, i32 2
  store i32 %194, i32* %197, align 8
  br label %198

198:                                              ; preds = %190, %180
  br label %199

199:                                              ; preds = %198, %179
  br label %278

200:                                              ; preds = %126
  %201 = load %struct.Slot*, %struct.Slot** %3, align 8
  %202 = getelementptr inbounds %struct.Slot, %struct.Slot* %201, i32 0, i32 1
  %203 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %202, i32 0, i32 1
  %204 = load i32, i32* %203, align 4
  %205 = icmp eq i32 %204, 3
  br i1 %205, label %206, label %277

206:                                              ; preds = %200
  %207 = load %struct.Slot*, %struct.Slot** %3, align 8
  %208 = getelementptr inbounds %struct.Slot, %struct.Slot* %207, i32 0, i32 0
  %209 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %208, i32 0, i32 3
  %210 = load i32, i32* %209, align 4
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %219, label %212

212:                                              ; preds = %206
  %213 = load i32, i32* %6, align 4
  %214 = load %struct.Slot*, %struct.Slot** %3, align 8
  %215 = getelementptr inbounds %struct.Slot, %struct.Slot* %214, i32 0, i32 0
  %216 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %215, i32 0, i32 2
  %217 = load i32, i32* %216, align 8
  %218 = add nsw i32 %217, %213
  store i32 %218, i32* %216, align 8
  br label %226

219:                                              ; preds = %206
  %220 = load i32, i32* %6, align 4
  %221 = load %struct.Slot*, %struct.Slot** %3, align 8
  %222 = getelementptr inbounds %struct.Slot, %struct.Slot* %221, i32 0, i32 0
  %223 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %222, i32 0, i32 2
  %224 = load i32, i32* %223, align 8
  %225 = sub nsw i32 %224, %220
  store i32 %225, i32* %223, align 8
  br label %226

226:                                              ; preds = %219, %212
  %227 = load %struct.Slot*, %struct.Slot** %3, align 8
  %228 = getelementptr inbounds %struct.Slot, %struct.Slot* %227, i32 0, i32 0
  %229 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %228, i32 0, i32 3
  %230 = load i32, i32* %229, align 4
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %254, label %232

232:                                              ; preds = %226
  %233 = load %struct.Slot*, %struct.Slot** %3, align 8
  %234 = getelementptr inbounds %struct.Slot, %struct.Slot* %233, i32 0, i32 0
  %235 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %234, i32 0, i32 2
  %236 = load i32, i32* %235, align 8
  %237 = load %struct.Slot*, %struct.Slot** %3, align 8
  %238 = getelementptr inbounds %struct.Slot, %struct.Slot* %237, i32 0, i32 1
  %239 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %238, i32 0, i32 2
  %240 = load i32, i32* %239, align 8
  %241 = icmp sge i32 %236, %240
  br i1 %241, label %242, label %253

242:                                              ; preds = %232
  %243 = load %struct.Slot*, %struct.Slot** %3, align 8
  %244 = getelementptr inbounds %struct.Slot, %struct.Slot* %243, i32 0, i32 1
  %245 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %244, i32 0, i32 2
  %246 = load i32, i32* %245, align 8
  %247 = load %struct.Slot*, %struct.Slot** %3, align 8
  %248 = getelementptr inbounds %struct.Slot, %struct.Slot* %247, i32 0, i32 0
  %249 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %248, i32 0, i32 2
  store i32 %246, i32* %249, align 8
  %250 = load %struct.Slot*, %struct.Slot** %3, align 8
  %251 = getelementptr inbounds %struct.Slot, %struct.Slot* %250, i32 0, i32 0
  %252 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %251, i32 0, i32 3
  store i32 1, i32* %252, align 4
  br label %253

253:                                              ; preds = %242, %232
  br label %276

254:                                              ; preds = %226
  %255 = load %struct.Slot*, %struct.Slot** %3, align 8
  %256 = getelementptr inbounds %struct.Slot, %struct.Slot* %255, i32 0, i32 0
  %257 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %256, i32 0, i32 2
  %258 = load i32, i32* %257, align 8
  %259 = load %struct.Slot*, %struct.Slot** %3, align 8
  %260 = getelementptr inbounds %struct.Slot, %struct.Slot* %259, i32 0, i32 1
  %261 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %260, i32 0, i32 3
  %262 = load i32, i32* %261, align 4
  %263 = icmp sle i32 %258, %262
  br i1 %263, label %264, label %275

264:                                              ; preds = %254
  %265 = load %struct.Slot*, %struct.Slot** %3, align 8
  %266 = getelementptr inbounds %struct.Slot, %struct.Slot* %265, i32 0, i32 1
  %267 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %266, i32 0, i32 3
  %268 = load i32, i32* %267, align 4
  %269 = load %struct.Slot*, %struct.Slot** %3, align 8
  %270 = getelementptr inbounds %struct.Slot, %struct.Slot* %269, i32 0, i32 0
  %271 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %270, i32 0, i32 2
  store i32 %268, i32* %271, align 8
  %272 = load %struct.Slot*, %struct.Slot** %3, align 8
  %273 = getelementptr inbounds %struct.Slot, %struct.Slot* %272, i32 0, i32 0
  %274 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %273, i32 0, i32 3
  store i32 0, i32* %274, align 4
  br label %275

275:                                              ; preds = %264, %254
  br label %276

276:                                              ; preds = %275, %253
  br label %277

277:                                              ; preds = %276, %200
  br label %278

278:                                              ; preds = %277, %199
  br label %279

279:                                              ; preds = %278, %125
  br label %280

280:                                              ; preds = %279, %94
  %281 = load %struct.Slot*, %struct.Slot** %3, align 8
  %282 = getelementptr inbounds %struct.Slot, %struct.Slot* %281, i32 0, i32 1
  %283 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %282, i32 0, i32 5
  %284 = load i32, i32* %283, align 8
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %303, label %286

286:                                              ; preds = %280
  %287 = load %struct.Slot*, %struct.Slot** %3, align 8
  %288 = getelementptr inbounds %struct.Slot, %struct.Slot* %287, i32 0, i32 1
  %289 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %288, i32 0, i32 4
  %290 = load i64, i64* %289, align 8
  %291 = trunc i64 %290 to i32
  %292 = load %struct.Slot*, %struct.Slot** %3, align 8
  %293 = getelementptr inbounds %struct.Slot, %struct.Slot* %292, i32 0, i32 0
  %294 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %293, i32 0, i32 2
  %295 = load i32, i32* %294, align 8
  %296 = load i32, i32* %5, align 4
  %297 = add nsw i32 %295, %296
  %298 = mul nsw i32 %297, 2
  %299 = add nsw i32 %291, %298
  %300 = load %struct.Slot*, %struct.Slot** %3, align 8
  %301 = getelementptr inbounds %struct.Slot, %struct.Slot* %300, i32 0, i32 0
  %302 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %301, i32 0, i32 4
  store i32 %299, i32* %302, align 8
  br label %319

303:                                              ; preds = %280
  %304 = load %struct.Slot*, %struct.Slot** %3, align 8
  %305 = getelementptr inbounds %struct.Slot, %struct.Slot* %304, i32 0, i32 1
  %306 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %305, i32 0, i32 4
  %307 = load i64, i64* %306, align 8
  %308 = trunc i64 %307 to i32
  %309 = load %struct.Slot*, %struct.Slot** %3, align 8
  %310 = getelementptr inbounds %struct.Slot, %struct.Slot* %309, i32 0, i32 0
  %311 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %310, i32 0, i32 2
  %312 = load i32, i32* %311, align 8
  %313 = load i32, i32* %5, align 4
  %314 = add nsw i32 %312, %313
  %315 = add nsw i32 %308, %314
  %316 = load %struct.Slot*, %struct.Slot** %3, align 8
  %317 = getelementptr inbounds %struct.Slot, %struct.Slot* %316, i32 0, i32 0
  %318 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %317, i32 0, i32 4
  store i32 %315, i32* %318, align 8
  br label %319

319:                                              ; preds = %23, %303, %286
  ret void
}

declare dso_local i64 @get_slot(%struct.Slot*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
