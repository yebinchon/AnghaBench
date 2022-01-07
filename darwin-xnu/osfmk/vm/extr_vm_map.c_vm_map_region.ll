; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_map.c_vm_map_region.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_map.c_vm_map_region.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i64, i64, %struct.TYPE_18__*, i32, i8*, i32, i32, i32, i32, i32 }
%struct.TYPE_16__ = type { i8*, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_17__ = type { i8*, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_15__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_14__ = type { i32, i32 }

@VM_MAP_NULL = common dso_local global i64 0, align 8
@KERN_INVALID_ARGUMENT = common dso_local global i32 0, align 4
@VM_REGION_BASIC_INFO_COUNT = common dso_local global i32 0, align 4
@KERN_INVALID_ADDRESS = common dso_local global i32 0, align 4
@IP_NULL = common dso_local global i32 0, align 4
@FALSE = common dso_local global i8* null, align 8
@KERN_SUCCESS = common dso_local global i32 0, align 4
@VM_REGION_BASIC_INFO_COUNT_64 = common dso_local global i32 0, align 4
@VM_REGION_EXTENDED_INFO_COUNT = common dso_local global i32 0, align 4
@VM_REGION_EXTENDED_INFO_COUNT__legacy = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@SM_SHARED = common dso_local global i32 0, align 4
@SM_PRIVATE = common dso_local global i32 0, align 4
@VM_REGION_TOP_INFO_COUNT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vm_map_region(i64 %0, i64* %1, i64* %2, i32 %3, i32 %4, i32* %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_18__*, align 8
  %17 = alloca %struct.TYPE_18__*, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.TYPE_16__*, align 8
  %20 = alloca %struct.TYPE_17__*, align 8
  %21 = alloca %struct.TYPE_15__*, align 8
  %22 = alloca i32, align 4
  %23 = alloca %struct.TYPE_14__*, align 8
  store i64 %0, i64* %9, align 8
  store i64* %1, i64** %10, align 8
  store i64* %2, i64** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  %24 = load i64, i64* %9, align 8
  %25 = load i64, i64* @VM_MAP_NULL, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %7
  %28 = load i32, i32* @KERN_INVALID_ARGUMENT, align 4
  store i32 %28, i32* %8, align 4
  br label %437

29:                                               ; preds = %7
  %30 = load i32, i32* %12, align 4
  switch i32 %30, label %435 [
    i32 132, label %31
    i32 131, label %136
    i32 130, label %241
    i32 129, label %249
    i32 128, label %372
  ]

31:                                               ; preds = %29
  %32 = load i32*, i32** %14, align 8
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @VM_REGION_BASIC_INFO_COUNT, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = load i32, i32* @KERN_INVALID_ARGUMENT, align 4
  store i32 %37, i32* %8, align 4
  br label %437

38:                                               ; preds = %31
  %39 = load i32, i32* %13, align 4
  %40 = sext i32 %39 to i64
  %41 = inttoptr i64 %40 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %41, %struct.TYPE_16__** %19, align 8
  %42 = load i32, i32* @VM_REGION_BASIC_INFO_COUNT, align 4
  %43 = load i32*, i32** %14, align 8
  store i32 %42, i32* %43, align 4
  %44 = load i64, i64* %9, align 8
  %45 = call i32 @vm_map_lock_read(i64 %44)
  %46 = load i64*, i64** %10, align 8
  %47 = load i64, i64* %46, align 8
  store i64 %47, i64* %18, align 8
  %48 = load i64, i64* %9, align 8
  %49 = load i64, i64* %18, align 8
  %50 = call i32 @vm_map_lookup_entry(i64 %48, i64 %49, %struct.TYPE_18__** %16)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %64, label %52

52:                                               ; preds = %38
  %53 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %54 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %53, i32 0, i32 2
  %55 = load %struct.TYPE_18__*, %struct.TYPE_18__** %54, align 8
  store %struct.TYPE_18__* %55, %struct.TYPE_18__** %17, align 8
  %56 = load i64, i64* %9, align 8
  %57 = call %struct.TYPE_18__* @vm_map_to_entry(i64 %56)
  %58 = icmp eq %struct.TYPE_18__* %55, %57
  br i1 %58, label %59, label %63

59:                                               ; preds = %52
  %60 = load i64, i64* %9, align 8
  %61 = call i32 @vm_map_unlock_read(i64 %60)
  %62 = load i32, i32* @KERN_INVALID_ADDRESS, align 4
  store i32 %62, i32* %8, align 4
  br label %437

63:                                               ; preds = %52
  br label %66

64:                                               ; preds = %38
  %65 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  store %struct.TYPE_18__* %65, %struct.TYPE_18__** %17, align 8
  br label %66

66:                                               ; preds = %64, %63
  %67 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %68 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  store i64 %69, i64* %18, align 8
  %70 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %71 = call i32 @VME_OFFSET(%struct.TYPE_18__* %70)
  %72 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  %73 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %72, i32 0, i32 7
  store i32 %71, i32* %73, align 8
  %74 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %75 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  %78 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %77, i32 0, i32 6
  store i32 %76, i32* %78, align 4
  %79 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %80 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %79, i32 0, i32 9
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  %83 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %82, i32 0, i32 5
  store i32 %81, i32* %83, align 8
  %84 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %85 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %84, i32 0, i32 8
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  %88 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %87, i32 0, i32 4
  store i32 %86, i32* %88, align 4
  %89 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %90 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %89, i32 0, i32 7
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  %93 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %92, i32 0, i32 3
  store i32 %91, i32* %93, align 8
  %94 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %95 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %94, i32 0, i32 6
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  %98 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %97, i32 0, i32 2
  store i32 %96, i32* %98, align 4
  %99 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %100 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %99, i32 0, i32 5
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  %103 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %102, i32 0, i32 1
  store i32 %101, i32* %103, align 8
  %104 = load i64, i64* %18, align 8
  %105 = load i64*, i64** %10, align 8
  store i64 %104, i64* %105, align 8
  %106 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %107 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* %18, align 8
  %110 = sub nsw i64 %108, %109
  %111 = load i64*, i64** %11, align 8
  store i64 %110, i64* %111, align 8
  %112 = load i32*, i32** %15, align 8
  %113 = icmp ne i32* %112, null
  br i1 %113, label %114, label %117

114:                                              ; preds = %66
  %115 = load i32, i32* @IP_NULL, align 4
  %116 = load i32*, i32** %15, align 8
  store i32 %115, i32* %116, align 4
  br label %117

117:                                              ; preds = %114, %66
  %118 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %119 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %118, i32 0, i32 5
  %120 = load i32, i32* %119, align 8
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %126

122:                                              ; preds = %117
  %123 = load i8*, i8** @FALSE, align 8
  %124 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  %125 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %124, i32 0, i32 0
  store i8* %123, i8** %125, align 8
  br label %132

126:                                              ; preds = %117
  %127 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %128 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %127, i32 0, i32 4
  %129 = load i8*, i8** %128, align 8
  %130 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  %131 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %130, i32 0, i32 0
  store i8* %129, i8** %131, align 8
  br label %132

132:                                              ; preds = %126, %122
  %133 = load i64, i64* %9, align 8
  %134 = call i32 @vm_map_unlock_read(i64 %133)
  %135 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %135, i32* %8, align 4
  br label %437

136:                                              ; preds = %29
  %137 = load i32*, i32** %14, align 8
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* @VM_REGION_BASIC_INFO_COUNT_64, align 4
  %140 = icmp slt i32 %138, %139
  br i1 %140, label %141, label %143

141:                                              ; preds = %136
  %142 = load i32, i32* @KERN_INVALID_ARGUMENT, align 4
  store i32 %142, i32* %8, align 4
  br label %437

143:                                              ; preds = %136
  %144 = load i32, i32* %13, align 4
  %145 = sext i32 %144 to i64
  %146 = inttoptr i64 %145 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %146, %struct.TYPE_17__** %20, align 8
  %147 = load i32, i32* @VM_REGION_BASIC_INFO_COUNT_64, align 4
  %148 = load i32*, i32** %14, align 8
  store i32 %147, i32* %148, align 4
  %149 = load i64, i64* %9, align 8
  %150 = call i32 @vm_map_lock_read(i64 %149)
  %151 = load i64*, i64** %10, align 8
  %152 = load i64, i64* %151, align 8
  store i64 %152, i64* %18, align 8
  %153 = load i64, i64* %9, align 8
  %154 = load i64, i64* %18, align 8
  %155 = call i32 @vm_map_lookup_entry(i64 %153, i64 %154, %struct.TYPE_18__** %16)
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %169, label %157

157:                                              ; preds = %143
  %158 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %159 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %158, i32 0, i32 2
  %160 = load %struct.TYPE_18__*, %struct.TYPE_18__** %159, align 8
  store %struct.TYPE_18__* %160, %struct.TYPE_18__** %17, align 8
  %161 = load i64, i64* %9, align 8
  %162 = call %struct.TYPE_18__* @vm_map_to_entry(i64 %161)
  %163 = icmp eq %struct.TYPE_18__* %160, %162
  br i1 %163, label %164, label %168

164:                                              ; preds = %157
  %165 = load i64, i64* %9, align 8
  %166 = call i32 @vm_map_unlock_read(i64 %165)
  %167 = load i32, i32* @KERN_INVALID_ADDRESS, align 4
  store i32 %167, i32* %8, align 4
  br label %437

168:                                              ; preds = %157
  br label %171

169:                                              ; preds = %143
  %170 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  store %struct.TYPE_18__* %170, %struct.TYPE_18__** %17, align 8
  br label %171

171:                                              ; preds = %169, %168
  %172 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %173 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %172, i32 0, i32 1
  %174 = load i64, i64* %173, align 8
  store i64 %174, i64* %18, align 8
  %175 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %176 = call i32 @VME_OFFSET(%struct.TYPE_18__* %175)
  %177 = load %struct.TYPE_17__*, %struct.TYPE_17__** %20, align 8
  %178 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %177, i32 0, i32 7
  store i32 %176, i32* %178, align 8
  %179 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %180 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %179, i32 0, i32 3
  %181 = load i32, i32* %180, align 8
  %182 = load %struct.TYPE_17__*, %struct.TYPE_17__** %20, align 8
  %183 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %182, i32 0, i32 6
  store i32 %181, i32* %183, align 4
  %184 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %185 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %184, i32 0, i32 9
  %186 = load i32, i32* %185, align 8
  %187 = load %struct.TYPE_17__*, %struct.TYPE_17__** %20, align 8
  %188 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %187, i32 0, i32 5
  store i32 %186, i32* %188, align 8
  %189 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %190 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %189, i32 0, i32 8
  %191 = load i32, i32* %190, align 4
  %192 = load %struct.TYPE_17__*, %struct.TYPE_17__** %20, align 8
  %193 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %192, i32 0, i32 4
  store i32 %191, i32* %193, align 4
  %194 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %195 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %194, i32 0, i32 7
  %196 = load i32, i32* %195, align 8
  %197 = load %struct.TYPE_17__*, %struct.TYPE_17__** %20, align 8
  %198 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %197, i32 0, i32 3
  store i32 %196, i32* %198, align 8
  %199 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %200 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %199, i32 0, i32 6
  %201 = load i32, i32* %200, align 4
  %202 = load %struct.TYPE_17__*, %struct.TYPE_17__** %20, align 8
  %203 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %202, i32 0, i32 2
  store i32 %201, i32* %203, align 4
  %204 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %205 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %204, i32 0, i32 5
  %206 = load i32, i32* %205, align 8
  %207 = load %struct.TYPE_17__*, %struct.TYPE_17__** %20, align 8
  %208 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %207, i32 0, i32 1
  store i32 %206, i32* %208, align 8
  %209 = load i64, i64* %18, align 8
  %210 = load i64*, i64** %10, align 8
  store i64 %209, i64* %210, align 8
  %211 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %212 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %211, i32 0, i32 0
  %213 = load i64, i64* %212, align 8
  %214 = load i64, i64* %18, align 8
  %215 = sub nsw i64 %213, %214
  %216 = load i64*, i64** %11, align 8
  store i64 %215, i64* %216, align 8
  %217 = load i32*, i32** %15, align 8
  %218 = icmp ne i32* %217, null
  br i1 %218, label %219, label %222

219:                                              ; preds = %171
  %220 = load i32, i32* @IP_NULL, align 4
  %221 = load i32*, i32** %15, align 8
  store i32 %220, i32* %221, align 4
  br label %222

222:                                              ; preds = %219, %171
  %223 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %224 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %223, i32 0, i32 5
  %225 = load i32, i32* %224, align 8
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %231

227:                                              ; preds = %222
  %228 = load i8*, i8** @FALSE, align 8
  %229 = load %struct.TYPE_17__*, %struct.TYPE_17__** %20, align 8
  %230 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %229, i32 0, i32 0
  store i8* %228, i8** %230, align 8
  br label %237

231:                                              ; preds = %222
  %232 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %233 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %232, i32 0, i32 4
  %234 = load i8*, i8** %233, align 8
  %235 = load %struct.TYPE_17__*, %struct.TYPE_17__** %20, align 8
  %236 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %235, i32 0, i32 0
  store i8* %234, i8** %236, align 8
  br label %237

237:                                              ; preds = %231, %227
  %238 = load i64, i64* %9, align 8
  %239 = call i32 @vm_map_unlock_read(i64 %238)
  %240 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %240, i32* %8, align 4
  br label %437

241:                                              ; preds = %29
  %242 = load i32*, i32** %14, align 8
  %243 = load i32, i32* %242, align 4
  %244 = load i32, i32* @VM_REGION_EXTENDED_INFO_COUNT, align 4
  %245 = icmp slt i32 %243, %244
  br i1 %245, label %246, label %248

246:                                              ; preds = %241
  %247 = load i32, i32* @KERN_INVALID_ARGUMENT, align 4
  store i32 %247, i32* %8, align 4
  br label %437

248:                                              ; preds = %241
  br label %249

249:                                              ; preds = %29, %248
  %250 = load i32*, i32** %14, align 8
  %251 = load i32, i32* %250, align 4
  %252 = load i32, i32* @VM_REGION_EXTENDED_INFO_COUNT__legacy, align 4
  %253 = icmp slt i32 %251, %252
  br i1 %253, label %254, label %256

254:                                              ; preds = %249
  %255 = load i32, i32* @KERN_INVALID_ARGUMENT, align 4
  store i32 %255, i32* %8, align 4
  br label %437

256:                                              ; preds = %249
  %257 = load i32, i32* %13, align 4
  %258 = sext i32 %257 to i64
  %259 = inttoptr i64 %258 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %259, %struct.TYPE_15__** %21, align 8
  %260 = load i64, i64* %9, align 8
  %261 = call i32 @vm_map_lock_read(i64 %260)
  %262 = load i64*, i64** %10, align 8
  %263 = load i64, i64* %262, align 8
  store i64 %263, i64* %18, align 8
  %264 = load i64, i64* %9, align 8
  %265 = load i64, i64* %18, align 8
  %266 = call i32 @vm_map_lookup_entry(i64 %264, i64 %265, %struct.TYPE_18__** %16)
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %280, label %268

268:                                              ; preds = %256
  %269 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %270 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %269, i32 0, i32 2
  %271 = load %struct.TYPE_18__*, %struct.TYPE_18__** %270, align 8
  store %struct.TYPE_18__* %271, %struct.TYPE_18__** %17, align 8
  %272 = load i64, i64* %9, align 8
  %273 = call %struct.TYPE_18__* @vm_map_to_entry(i64 %272)
  %274 = icmp eq %struct.TYPE_18__* %271, %273
  br i1 %274, label %275, label %279

275:                                              ; preds = %268
  %276 = load i64, i64* %9, align 8
  %277 = call i32 @vm_map_unlock_read(i64 %276)
  %278 = load i32, i32* @KERN_INVALID_ADDRESS, align 4
  store i32 %278, i32* %8, align 4
  br label %437

279:                                              ; preds = %268
  br label %282

280:                                              ; preds = %256
  %281 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  store %struct.TYPE_18__* %281, %struct.TYPE_18__** %17, align 8
  br label %282

282:                                              ; preds = %280, %279
  %283 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %284 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %283, i32 0, i32 1
  %285 = load i64, i64* %284, align 8
  store i64 %285, i64* %18, align 8
  %286 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %287 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %286, i32 0, i32 3
  %288 = load i32, i32* %287, align 8
  %289 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  %290 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %289, i32 0, i32 10
  store i32 %288, i32* %290, align 4
  %291 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %292 = call i32 @VME_ALIAS(%struct.TYPE_18__* %291)
  %293 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  %294 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %293, i32 0, i32 9
  store i32 %292, i32* %294, align 4
  %295 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  %296 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %295, i32 0, i32 8
  store i32 0, i32* %296, align 4
  %297 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  %298 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %297, i32 0, i32 7
  store i32 0, i32* %298, align 4
  %299 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  %300 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %299, i32 0, i32 6
  store i32 0, i32* %300, align 4
  %301 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  %302 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %301, i32 0, i32 5
  store i32 0, i32* %302, align 4
  %303 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  %304 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %303, i32 0, i32 2
  store i32 0, i32* %304, align 4
  %305 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  %306 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %305, i32 0, i32 4
  store i32 0, i32* %306, align 4
  %307 = load i32*, i32** %14, align 8
  %308 = load i32, i32* %307, align 4
  store i32 %308, i32* %22, align 4
  %309 = load i32, i32* %12, align 4
  %310 = icmp eq i32 %309, 129
  br i1 %310, label %311, label %314

311:                                              ; preds = %282
  %312 = load i32, i32* @VM_REGION_EXTENDED_INFO_COUNT__legacy, align 4
  %313 = load i32*, i32** %14, align 8
  store i32 %312, i32* %313, align 4
  br label %319

314:                                              ; preds = %282
  %315 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  %316 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %315, i32 0, i32 3
  store i32 0, i32* %316, align 4
  %317 = load i32, i32* @VM_REGION_EXTENDED_INFO_COUNT, align 4
  %318 = load i32*, i32** %14, align 8
  store i32 %317, i32* %318, align 4
  br label %319

319:                                              ; preds = %314, %311
  %320 = load i64, i64* %9, align 8
  %321 = load i64, i64* %18, align 8
  %322 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %323 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %324 = call i32 @VME_OFFSET(%struct.TYPE_18__* %323)
  %325 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %326 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %325, i32 0, i32 0
  %327 = load i64, i64* %326, align 8
  %328 = load i64, i64* %18, align 8
  %329 = sub nsw i64 %327, %328
  %330 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  %331 = load i32, i32* @TRUE, align 4
  %332 = load i32*, i32** %14, align 8
  %333 = load i32, i32* %332, align 4
  %334 = call i32 @vm_map_region_walk(i64 %320, i64 %321, %struct.TYPE_18__* %322, i32 %324, i64 %329, %struct.TYPE_15__* %330, i32 %331, i32 %333)
  %335 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  %336 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %335, i32 0, i32 2
  %337 = load i32, i32* %336, align 4
  %338 = icmp ne i32 %337, 0
  br i1 %338, label %339, label %354

339:                                              ; preds = %319
  %340 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  %341 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %340, i32 0, i32 0
  %342 = load i32, i32* %341, align 4
  %343 = icmp eq i32 %342, 2
  br i1 %343, label %344, label %354

344:                                              ; preds = %339
  %345 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  %346 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %345, i32 0, i32 1
  %347 = load i32, i32* %346, align 4
  %348 = load i32, i32* @SM_SHARED, align 4
  %349 = icmp eq i32 %347, %348
  br i1 %349, label %350, label %354

350:                                              ; preds = %344
  %351 = load i32, i32* @SM_PRIVATE, align 4
  %352 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  %353 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %352, i32 0, i32 1
  store i32 %351, i32* %353, align 4
  br label %354

354:                                              ; preds = %350, %344, %339, %319
  %355 = load i32*, i32** %15, align 8
  %356 = icmp ne i32* %355, null
  br i1 %356, label %357, label %360

357:                                              ; preds = %354
  %358 = load i32, i32* @IP_NULL, align 4
  %359 = load i32*, i32** %15, align 8
  store i32 %358, i32* %359, align 4
  br label %360

360:                                              ; preds = %357, %354
  %361 = load i64, i64* %18, align 8
  %362 = load i64*, i64** %10, align 8
  store i64 %361, i64* %362, align 8
  %363 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %364 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %363, i32 0, i32 0
  %365 = load i64, i64* %364, align 8
  %366 = load i64, i64* %18, align 8
  %367 = sub nsw i64 %365, %366
  %368 = load i64*, i64** %11, align 8
  store i64 %367, i64* %368, align 8
  %369 = load i64, i64* %9, align 8
  %370 = call i32 @vm_map_unlock_read(i64 %369)
  %371 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %371, i32* %8, align 4
  br label %437

372:                                              ; preds = %29
  %373 = load i32*, i32** %14, align 8
  %374 = load i32, i32* %373, align 4
  %375 = load i32, i32* @VM_REGION_TOP_INFO_COUNT, align 4
  %376 = icmp slt i32 %374, %375
  br i1 %376, label %377, label %379

377:                                              ; preds = %372
  %378 = load i32, i32* @KERN_INVALID_ARGUMENT, align 4
  store i32 %378, i32* %8, align 4
  br label %437

379:                                              ; preds = %372
  %380 = load i32, i32* %13, align 4
  %381 = sext i32 %380 to i64
  %382 = inttoptr i64 %381 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %382, %struct.TYPE_14__** %23, align 8
  %383 = load i32, i32* @VM_REGION_TOP_INFO_COUNT, align 4
  %384 = load i32*, i32** %14, align 8
  store i32 %383, i32* %384, align 4
  %385 = load i64, i64* %9, align 8
  %386 = call i32 @vm_map_lock_read(i64 %385)
  %387 = load i64*, i64** %10, align 8
  %388 = load i64, i64* %387, align 8
  store i64 %388, i64* %18, align 8
  %389 = load i64, i64* %9, align 8
  %390 = load i64, i64* %18, align 8
  %391 = call i32 @vm_map_lookup_entry(i64 %389, i64 %390, %struct.TYPE_18__** %16)
  %392 = icmp ne i32 %391, 0
  br i1 %392, label %405, label %393

393:                                              ; preds = %379
  %394 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %395 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %394, i32 0, i32 2
  %396 = load %struct.TYPE_18__*, %struct.TYPE_18__** %395, align 8
  store %struct.TYPE_18__* %396, %struct.TYPE_18__** %17, align 8
  %397 = load i64, i64* %9, align 8
  %398 = call %struct.TYPE_18__* @vm_map_to_entry(i64 %397)
  %399 = icmp eq %struct.TYPE_18__* %396, %398
  br i1 %399, label %400, label %404

400:                                              ; preds = %393
  %401 = load i64, i64* %9, align 8
  %402 = call i32 @vm_map_unlock_read(i64 %401)
  %403 = load i32, i32* @KERN_INVALID_ADDRESS, align 4
  store i32 %403, i32* %8, align 4
  br label %437

404:                                              ; preds = %393
  br label %407

405:                                              ; preds = %379
  %406 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  store %struct.TYPE_18__* %406, %struct.TYPE_18__** %17, align 8
  br label %407

407:                                              ; preds = %405, %404
  %408 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %409 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %408, i32 0, i32 1
  %410 = load i64, i64* %409, align 8
  store i64 %410, i64* %18, align 8
  %411 = load %struct.TYPE_14__*, %struct.TYPE_14__** %23, align 8
  %412 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %411, i32 0, i32 1
  store i32 0, i32* %412, align 4
  %413 = load %struct.TYPE_14__*, %struct.TYPE_14__** %23, align 8
  %414 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %413, i32 0, i32 0
  store i32 0, i32* %414, align 4
  %415 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %416 = load %struct.TYPE_14__*, %struct.TYPE_14__** %23, align 8
  %417 = call i32 @vm_map_region_top_walk(%struct.TYPE_18__* %415, %struct.TYPE_14__* %416)
  %418 = load i32*, i32** %15, align 8
  %419 = icmp ne i32* %418, null
  br i1 %419, label %420, label %423

420:                                              ; preds = %407
  %421 = load i32, i32* @IP_NULL, align 4
  %422 = load i32*, i32** %15, align 8
  store i32 %421, i32* %422, align 4
  br label %423

423:                                              ; preds = %420, %407
  %424 = load i64, i64* %18, align 8
  %425 = load i64*, i64** %10, align 8
  store i64 %424, i64* %425, align 8
  %426 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %427 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %426, i32 0, i32 0
  %428 = load i64, i64* %427, align 8
  %429 = load i64, i64* %18, align 8
  %430 = sub nsw i64 %428, %429
  %431 = load i64*, i64** %11, align 8
  store i64 %430, i64* %431, align 8
  %432 = load i64, i64* %9, align 8
  %433 = call i32 @vm_map_unlock_read(i64 %432)
  %434 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %434, i32* %8, align 4
  br label %437

435:                                              ; preds = %29
  %436 = load i32, i32* @KERN_INVALID_ARGUMENT, align 4
  store i32 %436, i32* %8, align 4
  br label %437

437:                                              ; preds = %435, %423, %400, %377, %360, %275, %254, %246, %237, %164, %141, %132, %59, %36, %27
  %438 = load i32, i32* %8, align 4
  ret i32 %438
}

declare dso_local i32 @vm_map_lock_read(i64) #1

declare dso_local i32 @vm_map_lookup_entry(i64, i64, %struct.TYPE_18__**) #1

declare dso_local %struct.TYPE_18__* @vm_map_to_entry(i64) #1

declare dso_local i32 @vm_map_unlock_read(i64) #1

declare dso_local i32 @VME_OFFSET(%struct.TYPE_18__*) #1

declare dso_local i32 @VME_ALIAS(%struct.TYPE_18__*) #1

declare dso_local i32 @vm_map_region_walk(i64, i64, %struct.TYPE_18__*, i32, i64, %struct.TYPE_15__*, i32, i32) #1

declare dso_local i32 @vm_map_region_top_walk(%struct.TYPE_18__*, %struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
