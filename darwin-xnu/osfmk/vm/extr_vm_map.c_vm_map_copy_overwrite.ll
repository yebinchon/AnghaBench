; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_map.c_vm_map_copy_overwrite.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_map.c_vm_map_copy_overwrite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_27__ = type { i64, i32, i32, %struct.TYPE_28__ }
%struct.TYPE_28__ = type { i32 }
%struct.TYPE_26__ = type { i32, i32, i64, %struct.TYPE_26__* }

@VM_MAP_COPY_NULL = common dso_local global %struct.TYPE_27__* null, align 8
@VM_MAP_COPY_ENTRY_LIST = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @vm_map_copy_overwrite(i32 %0, i32 %1, %struct.TYPE_27__* %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_27__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_27__*, align 8
  %13 = alloca %struct.TYPE_27__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_26__*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store %struct.TYPE_27__* %2, %struct.TYPE_27__** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store %struct.TYPE_27__* null, %struct.TYPE_27__** %12, align 8
  store %struct.TYPE_27__* null, %struct.TYPE_27__** %13, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %20 = load i32, i32* %9, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %32, label %22

22:                                               ; preds = %4
  %23 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %24 = load %struct.TYPE_27__*, %struct.TYPE_27__** @VM_MAP_COPY_NULL, align 8
  %25 = icmp eq %struct.TYPE_27__* %23, %24
  br i1 %25, label %32, label %26

26:                                               ; preds = %22
  %27 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @VM_MAP_COPY_ENTRY_LIST, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %40

32:                                               ; preds = %26, %22, %4
  br label %33

33:                                               ; preds = %179, %153, %145, %68, %57, %32
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* %7, align 4
  %36 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* @TRUE, align 4
  %39 = call i64 @vm_map_copy_overwrite_nested(i32 %34, i32 %35, %struct.TYPE_27__* %36, i32 %37, i32 0, i32 %38)
  store i64 %39, i64* %5, align 8
  br label %425

40:                                               ; preds = %26
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @VM_MAP_PAGE_MASK(i32 %41)
  %43 = load i32, i32* @PAGE_MASK, align 4
  %44 = call i32 @MAX(i32 %42, i32 %43)
  store i32 %44, i32* %18, align 4
  %45 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %46 = call i32 @VM_MAP_COPY_PAGE_MASK(%struct.TYPE_27__* %45)
  %47 = load i32, i32* %18, align 4
  %48 = call i32 @MAX(i32 %46, i32 %47)
  store i32 %48, i32* %18, align 4
  %49 = load i32, i32* %18, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %19, align 4
  %51 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* %19, align 4
  %55 = mul nsw i32 3, %54
  %56 = icmp slt i32 %53, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %40
  br label %33

58:                                               ; preds = %40
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* %18, align 4
  %61 = and i32 %59, %60
  %62 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %18, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %61, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %58
  br label %33

69:                                               ; preds = %58
  %70 = load i32, i32* %7, align 4
  %71 = load i32, i32* %18, align 4
  %72 = call i32 @vm_map_page_aligned(i32 %70, i32 %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %88, label %74

74:                                               ; preds = %69
  %75 = load i32, i32* %7, align 4
  store i32 %75, i32* %14, align 4
  %76 = load i32, i32* %19, align 4
  %77 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* %18, align 4
  %81 = and i32 %79, %80
  %82 = sub nsw i32 %76, %81
  store i32 %82, i32* %10, align 4
  %83 = load i32, i32* %10, align 4
  %84 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @MIN(i32 %83, i32 %86)
  store i32 %87, i32* %10, align 4
  br label %88

88:                                               ; preds = %74, %69
  %89 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %90 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %93 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = add nsw i32 %91, %94
  %96 = load i32, i32* %18, align 4
  %97 = call i32 @vm_map_page_aligned(i32 %95, i32 %96)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %128, label %99

99:                                               ; preds = %88
  %100 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %101 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %104 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = add nsw i32 %102, %105
  %107 = load i32, i32* %18, align 4
  %108 = and i32 %106, %107
  store i32 %108, i32* %11, align 4
  %109 = load i32, i32* %11, align 4
  %110 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %111 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 8
  %113 = call i32 @MIN(i32 %109, i32 %112)
  store i32 %113, i32* %11, align 4
  %114 = load i32, i32* %7, align 4
  %115 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %116 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 8
  %118 = add nsw i32 %114, %117
  %119 = load i32, i32* %11, align 4
  %120 = sub nsw i32 %118, %119
  store i32 %120, i32* %15, align 4
  %121 = load i32, i32* %15, align 4
  %122 = load i32, i32* %14, align 4
  %123 = load i32, i32* %10, align 4
  %124 = add nsw i32 %122, %123
  %125 = icmp sge i32 %121, %124
  %126 = zext i1 %125 to i32
  %127 = call i32 @assert(i32 %126)
  br label %128

128:                                              ; preds = %99, %88
  %129 = load i32, i32* %10, align 4
  %130 = load i32, i32* %11, align 4
  %131 = add nsw i32 %129, %130
  %132 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %133 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 8
  %135 = icmp sle i32 %131, %134
  %136 = zext i1 %135 to i32
  %137 = call i32 @assert(i32 %136)
  %138 = load i32, i32* %10, align 4
  %139 = load i32, i32* %11, align 4
  %140 = add nsw i32 %138, %139
  %141 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %142 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 8
  %144 = icmp eq i32 %140, %143
  br i1 %144, label %145, label %146

145:                                              ; preds = %128
  br label %33

146:                                              ; preds = %128
  %147 = load i32, i32* %6, align 4
  %148 = call i32 @vm_map_lock_read(i32 %147)
  %149 = load i32, i32* %6, align 4
  %150 = load i32, i32* %7, align 4
  %151 = call i32 @vm_map_lookup_entry(i32 %149, i32 %150, %struct.TYPE_26__** %16)
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %156, label %153

153:                                              ; preds = %146
  %154 = load i32, i32* %6, align 4
  %155 = call i32 @vm_map_unlock_read(i32 %154)
  br label %33

156:                                              ; preds = %146
  br label %157

157:                                              ; preds = %183, %156
  %158 = load %struct.TYPE_26__*, %struct.TYPE_26__** %16, align 8
  %159 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %160 = call %struct.TYPE_26__* @vm_map_copy_to_entry(%struct.TYPE_27__* %159)
  %161 = icmp ne %struct.TYPE_26__* %158, %160
  br i1 %161, label %162, label %172

162:                                              ; preds = %157
  %163 = load %struct.TYPE_26__*, %struct.TYPE_26__** %16, align 8
  %164 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = load i32, i32* %7, align 4
  %167 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %168 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 8
  %170 = add nsw i32 %166, %169
  %171 = icmp slt i32 %165, %170
  br label %172

172:                                              ; preds = %162, %157
  %173 = phi i1 [ false, %157 ], [ %171, %162 ]
  br i1 %173, label %174, label %187

174:                                              ; preds = %172
  %175 = load %struct.TYPE_26__*, %struct.TYPE_26__** %16, align 8
  %176 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %175, i32 0, i32 2
  %177 = load i64, i64* %176, align 8
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %182

179:                                              ; preds = %174
  %180 = load i32, i32* %6, align 4
  %181 = call i32 @vm_map_unlock_read(i32 %180)
  br label %33

182:                                              ; preds = %174
  br label %183

183:                                              ; preds = %182
  %184 = load %struct.TYPE_26__*, %struct.TYPE_26__** %16, align 8
  %185 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %184, i32 0, i32 3
  %186 = load %struct.TYPE_26__*, %struct.TYPE_26__** %185, align 8
  store %struct.TYPE_26__* %186, %struct.TYPE_26__** %16, align 8
  br label %157

187:                                              ; preds = %172
  %188 = load i32, i32* %6, align 4
  %189 = call i32 @vm_map_unlock_read(i32 %188)
  %190 = load i32, i32* %10, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %270

192:                                              ; preds = %187
  %193 = call %struct.TYPE_27__* (...) @vm_map_copy_allocate()
  store %struct.TYPE_27__* %193, %struct.TYPE_27__** %12, align 8
  %194 = load i64, i64* @VM_MAP_COPY_ENTRY_LIST, align 8
  %195 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %196 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %195, i32 0, i32 0
  store i64 %194, i64* %196, align 8
  %197 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %198 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %197, i32 0, i32 3
  %199 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  %201 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %202 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %201, i32 0, i32 3
  %203 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %202, i32 0, i32 0
  store i32 %200, i32* %203, align 8
  %204 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %205 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %204, i32 0, i32 3
  %206 = call i32 @vm_map_store_init(%struct.TYPE_28__* %205)
  %207 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %208 = call %struct.TYPE_26__* @vm_map_copy_first_entry(%struct.TYPE_27__* %207)
  store %struct.TYPE_26__* %208, %struct.TYPE_26__** %16, align 8
  %209 = load %struct.TYPE_26__*, %struct.TYPE_26__** %16, align 8
  %210 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %209, i32 0, i32 1
  %211 = load i32, i32* %210, align 4
  %212 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %213 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %212, i32 0, i32 2
  %214 = load i32, i32* %213, align 4
  %215 = load i32, i32* %10, align 4
  %216 = add nsw i32 %214, %215
  %217 = icmp slt i32 %211, %216
  br i1 %217, label %218, label %226

218:                                              ; preds = %192
  %219 = load %struct.TYPE_26__*, %struct.TYPE_26__** %16, align 8
  %220 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %219, i32 0, i32 1
  %221 = load i32, i32* %220, align 4
  %222 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %223 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %222, i32 0, i32 2
  %224 = load i32, i32* %223, align 4
  %225 = sub nsw i32 %221, %224
  store i32 %225, i32* %10, align 4
  br label %226

226:                                              ; preds = %218, %192
  %227 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %228 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %227, i32 0, i32 2
  %229 = load i32, i32* %228, align 4
  %230 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %231 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %230, i32 0, i32 2
  store i32 %229, i32* %231, align 4
  %232 = load i32, i32* %10, align 4
  %233 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %234 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %233, i32 0, i32 1
  store i32 %232, i32* %234, align 8
  %235 = load i32, i32* %10, align 4
  %236 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %237 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %236, i32 0, i32 2
  %238 = load i32, i32* %237, align 4
  %239 = add nsw i32 %238, %235
  store i32 %239, i32* %237, align 4
  %240 = load i32, i32* %10, align 4
  %241 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %242 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %241, i32 0, i32 1
  %243 = load i32, i32* %242, align 8
  %244 = sub nsw i32 %243, %240
  store i32 %244, i32* %242, align 8
  %245 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %246 = load %struct.TYPE_26__*, %struct.TYPE_26__** %16, align 8
  %247 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %248 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %247, i32 0, i32 2
  %249 = load i32, i32* %248, align 4
  %250 = call i32 @vm_map_copy_clip_end(%struct.TYPE_27__* %245, %struct.TYPE_26__* %246, i32 %249)
  %251 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %252 = load %struct.TYPE_26__*, %struct.TYPE_26__** %16, align 8
  %253 = call i32 @vm_map_copy_entry_unlink(%struct.TYPE_27__* %251, %struct.TYPE_26__* %252)
  %254 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %255 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %256 = call %struct.TYPE_26__* @vm_map_copy_to_entry(%struct.TYPE_27__* %255)
  %257 = load %struct.TYPE_26__*, %struct.TYPE_26__** %16, align 8
  %258 = call i32 @vm_map_copy_entry_link(%struct.TYPE_27__* %254, %struct.TYPE_26__* %256, %struct.TYPE_26__* %257)
  %259 = load i32, i32* %6, align 4
  %260 = load i32, i32* %14, align 4
  %261 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %262 = load i32, i32* %9, align 4
  %263 = load i32, i32* @FALSE, align 4
  %264 = call i64 @vm_map_copy_overwrite_nested(i32 %259, i32 %260, %struct.TYPE_27__* %261, i32 %262, i32 0, i32 %263)
  store i64 %264, i64* %17, align 8
  %265 = load i64, i64* %17, align 8
  %266 = load i64, i64* @KERN_SUCCESS, align 8
  %267 = icmp ne i64 %265, %266
  br i1 %267, label %268, label %269

268:                                              ; preds = %226
  br label %349

269:                                              ; preds = %226
  br label %270

270:                                              ; preds = %269, %187
  %271 = load i32, i32* %11, align 4
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %273, label %325

273:                                              ; preds = %270
  %274 = call %struct.TYPE_27__* (...) @vm_map_copy_allocate()
  store %struct.TYPE_27__* %274, %struct.TYPE_27__** %13, align 8
  %275 = load i64, i64* @VM_MAP_COPY_ENTRY_LIST, align 8
  %276 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %277 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %276, i32 0, i32 0
  store i64 %275, i64* %277, align 8
  %278 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %279 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %278, i32 0, i32 3
  %280 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %279, i32 0, i32 0
  %281 = load i32, i32* %280, align 8
  %282 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %283 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %282, i32 0, i32 3
  %284 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %283, i32 0, i32 0
  store i32 %281, i32* %284, align 8
  %285 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %286 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %285, i32 0, i32 3
  %287 = call i32 @vm_map_store_init(%struct.TYPE_28__* %286)
  %288 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %289 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %288, i32 0, i32 2
  %290 = load i32, i32* %289, align 4
  %291 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %292 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %291, i32 0, i32 1
  %293 = load i32, i32* %292, align 8
  %294 = add nsw i32 %290, %293
  %295 = load i32, i32* %11, align 4
  %296 = sub nsw i32 %294, %295
  %297 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %298 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %297, i32 0, i32 2
  store i32 %296, i32* %298, align 4
  %299 = load i32, i32* %11, align 4
  %300 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %301 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %300, i32 0, i32 1
  store i32 %299, i32* %301, align 8
  %302 = load i32, i32* %11, align 4
  %303 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %304 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %303, i32 0, i32 1
  %305 = load i32, i32* %304, align 8
  %306 = sub nsw i32 %305, %302
  store i32 %306, i32* %304, align 8
  %307 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %308 = call %struct.TYPE_26__* @vm_map_copy_last_entry(%struct.TYPE_27__* %307)
  store %struct.TYPE_26__* %308, %struct.TYPE_26__** %16, align 8
  %309 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %310 = load %struct.TYPE_26__*, %struct.TYPE_26__** %16, align 8
  %311 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %312 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %311, i32 0, i32 2
  %313 = load i32, i32* %312, align 4
  %314 = call i32 @vm_map_copy_clip_start(%struct.TYPE_27__* %309, %struct.TYPE_26__* %310, i32 %313)
  %315 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %316 = call %struct.TYPE_26__* @vm_map_copy_last_entry(%struct.TYPE_27__* %315)
  store %struct.TYPE_26__* %316, %struct.TYPE_26__** %16, align 8
  %317 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %318 = load %struct.TYPE_26__*, %struct.TYPE_26__** %16, align 8
  %319 = call i32 @vm_map_copy_entry_unlink(%struct.TYPE_27__* %317, %struct.TYPE_26__* %318)
  %320 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %321 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %322 = call %struct.TYPE_26__* @vm_map_copy_last_entry(%struct.TYPE_27__* %321)
  %323 = load %struct.TYPE_26__*, %struct.TYPE_26__** %16, align 8
  %324 = call i32 @vm_map_copy_entry_link(%struct.TYPE_27__* %320, %struct.TYPE_26__* %322, %struct.TYPE_26__* %323)
  br label %325

325:                                              ; preds = %273, %270
  %326 = load i32, i32* %6, align 4
  %327 = load i32, i32* %7, align 4
  %328 = load i32, i32* %10, align 4
  %329 = add nsw i32 %327, %328
  %330 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %331 = load i32, i32* %9, align 4
  %332 = load i32, i32* @FALSE, align 4
  %333 = call i64 @vm_map_copy_overwrite_nested(i32 %326, i32 %329, %struct.TYPE_27__* %330, i32 %331, i32 0, i32 %332)
  store i64 %333, i64* %17, align 8
  %334 = load i64, i64* %17, align 8
  %335 = load i64, i64* @KERN_SUCCESS, align 8
  %336 = icmp ne i64 %334, %335
  br i1 %336, label %337, label %338

337:                                              ; preds = %325
  br label %349

338:                                              ; preds = %325
  %339 = load i32, i32* %11, align 4
  %340 = icmp ne i32 %339, 0
  br i1 %340, label %341, label %348

341:                                              ; preds = %338
  %342 = load i32, i32* %6, align 4
  %343 = load i32, i32* %15, align 4
  %344 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %345 = load i32, i32* %9, align 4
  %346 = load i32, i32* @FALSE, align 4
  %347 = call i64 @vm_map_copy_overwrite_nested(i32 %342, i32 %343, %struct.TYPE_27__* %344, i32 %345, i32 0, i32 %346)
  store i64 %347, i64* %17, align 8
  br label %348

348:                                              ; preds = %341, %338
  br label %349

349:                                              ; preds = %348, %337, %268
  %350 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %351 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %350, i32 0, i32 0
  %352 = load i64, i64* %351, align 8
  %353 = load i64, i64* @VM_MAP_COPY_ENTRY_LIST, align 8
  %354 = icmp eq i64 %352, %353
  %355 = zext i1 %354 to i32
  %356 = call i32 @assert(i32 %355)
  %357 = load i64, i64* %17, align 8
  %358 = load i64, i64* @KERN_SUCCESS, align 8
  %359 = icmp eq i64 %357, %358
  br i1 %359, label %360, label %375

360:                                              ; preds = %349
  %361 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %362 = icmp ne %struct.TYPE_27__* %361, null
  br i1 %362, label %363, label %366

363:                                              ; preds = %360
  %364 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %365 = call i32 @vm_map_copy_discard(%struct.TYPE_27__* %364)
  store %struct.TYPE_27__* null, %struct.TYPE_27__** %12, align 8
  br label %366

366:                                              ; preds = %363, %360
  %367 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %368 = call i32 @vm_map_copy_discard(%struct.TYPE_27__* %367)
  %369 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %370 = icmp ne %struct.TYPE_27__* %369, null
  br i1 %370, label %371, label %374

371:                                              ; preds = %366
  %372 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %373 = call i32 @vm_map_copy_discard(%struct.TYPE_27__* %372)
  store %struct.TYPE_27__* null, %struct.TYPE_27__** %13, align 8
  br label %374

374:                                              ; preds = %371, %366
  br label %423

375:                                              ; preds = %349
  %376 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %377 = icmp ne %struct.TYPE_27__* %376, null
  br i1 %377, label %378, label %401

378:                                              ; preds = %375
  %379 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %380 = call %struct.TYPE_26__* @vm_map_copy_first_entry(%struct.TYPE_27__* %379)
  store %struct.TYPE_26__* %380, %struct.TYPE_26__** %16, align 8
  %381 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %382 = load %struct.TYPE_26__*, %struct.TYPE_26__** %16, align 8
  %383 = call i32 @vm_map_copy_entry_unlink(%struct.TYPE_27__* %381, %struct.TYPE_26__* %382)
  %384 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %385 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %386 = call %struct.TYPE_26__* @vm_map_copy_to_entry(%struct.TYPE_27__* %385)
  %387 = load %struct.TYPE_26__*, %struct.TYPE_26__** %16, align 8
  %388 = call i32 @vm_map_copy_entry_link(%struct.TYPE_27__* %384, %struct.TYPE_26__* %386, %struct.TYPE_26__* %387)
  %389 = load i32, i32* %10, align 4
  %390 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %391 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %390, i32 0, i32 2
  %392 = load i32, i32* %391, align 4
  %393 = sub nsw i32 %392, %389
  store i32 %393, i32* %391, align 4
  %394 = load i32, i32* %10, align 4
  %395 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %396 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %395, i32 0, i32 1
  %397 = load i32, i32* %396, align 8
  %398 = add nsw i32 %397, %394
  store i32 %398, i32* %396, align 8
  %399 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %400 = call i32 @vm_map_copy_discard(%struct.TYPE_27__* %399)
  store %struct.TYPE_27__* null, %struct.TYPE_27__** %12, align 8
  br label %401

401:                                              ; preds = %378, %375
  %402 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %403 = icmp ne %struct.TYPE_27__* %402, null
  br i1 %403, label %404, label %422

404:                                              ; preds = %401
  %405 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %406 = call %struct.TYPE_26__* @vm_map_copy_last_entry(%struct.TYPE_27__* %405)
  store %struct.TYPE_26__* %406, %struct.TYPE_26__** %16, align 8
  %407 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %408 = load %struct.TYPE_26__*, %struct.TYPE_26__** %16, align 8
  %409 = call i32 @vm_map_copy_entry_unlink(%struct.TYPE_27__* %407, %struct.TYPE_26__* %408)
  %410 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %411 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %412 = call %struct.TYPE_26__* @vm_map_copy_last_entry(%struct.TYPE_27__* %411)
  %413 = load %struct.TYPE_26__*, %struct.TYPE_26__** %16, align 8
  %414 = call i32 @vm_map_copy_entry_link(%struct.TYPE_27__* %410, %struct.TYPE_26__* %412, %struct.TYPE_26__* %413)
  %415 = load i32, i32* %11, align 4
  %416 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %417 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %416, i32 0, i32 1
  %418 = load i32, i32* %417, align 8
  %419 = add nsw i32 %418, %415
  store i32 %419, i32* %417, align 8
  %420 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %421 = call i32 @vm_map_copy_discard(%struct.TYPE_27__* %420)
  store %struct.TYPE_27__* null, %struct.TYPE_27__** %13, align 8
  br label %422

422:                                              ; preds = %404, %401
  br label %423

423:                                              ; preds = %422, %374
  %424 = load i64, i64* %17, align 8
  store i64 %424, i64* %5, align 8
  br label %425

425:                                              ; preds = %423, %33
  %426 = load i64, i64* %5, align 8
  ret i64 %426
}

declare dso_local i64 @vm_map_copy_overwrite_nested(i32, i32, %struct.TYPE_27__*, i32, i32, i32) #1

declare dso_local i32 @MAX(i32, i32) #1

declare dso_local i32 @VM_MAP_PAGE_MASK(i32) #1

declare dso_local i32 @VM_MAP_COPY_PAGE_MASK(%struct.TYPE_27__*) #1

declare dso_local i32 @vm_map_page_aligned(i32, i32) #1

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @vm_map_lock_read(i32) #1

declare dso_local i32 @vm_map_lookup_entry(i32, i32, %struct.TYPE_26__**) #1

declare dso_local i32 @vm_map_unlock_read(i32) #1

declare dso_local %struct.TYPE_26__* @vm_map_copy_to_entry(%struct.TYPE_27__*) #1

declare dso_local %struct.TYPE_27__* @vm_map_copy_allocate(...) #1

declare dso_local i32 @vm_map_store_init(%struct.TYPE_28__*) #1

declare dso_local %struct.TYPE_26__* @vm_map_copy_first_entry(%struct.TYPE_27__*) #1

declare dso_local i32 @vm_map_copy_clip_end(%struct.TYPE_27__*, %struct.TYPE_26__*, i32) #1

declare dso_local i32 @vm_map_copy_entry_unlink(%struct.TYPE_27__*, %struct.TYPE_26__*) #1

declare dso_local i32 @vm_map_copy_entry_link(%struct.TYPE_27__*, %struct.TYPE_26__*, %struct.TYPE_26__*) #1

declare dso_local %struct.TYPE_26__* @vm_map_copy_last_entry(%struct.TYPE_27__*) #1

declare dso_local i32 @vm_map_copy_clip_start(%struct.TYPE_27__*, %struct.TYPE_26__*, i32) #1

declare dso_local i32 @vm_map_copy_discard(%struct.TYPE_27__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
