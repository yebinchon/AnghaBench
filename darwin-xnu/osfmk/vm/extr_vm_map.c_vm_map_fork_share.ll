; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_map.c_vm_map_fork_share.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_map.c_vm_map_fork_share.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_34__ = type { i64, i64, i32, i64 }
%struct.TYPE_36__ = type { i64, i32, i64, i32, i64, i64, i64, i32, i8*, i64, i8* }
%struct.TYPE_35__ = type { i32, i64 }
%struct.TYPE_37__ = type { i32 }

@.str = private unnamed_addr constant [37 x i8] c"vm_map_fork_share: pmap_nest failed!\00", align 1
@VM_OBJECT_NULL = common dso_local global %struct.TYPE_34__* null, align 8
@TRUE = common dso_local global i8* null, align 8
@MEMORY_OBJECT_COPY_SYMMETRIC = common dso_local global i64 0, align 8
@VM_PROT_WRITE = common dso_local global i32 0, align 4
@VM_PROT_EXECUTE = common dso_local global i32 0, align 4
@PMAP_NULL = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@MEMORY_OBJECT_COPY_DELAY = common dso_local global i64 0, align 8
@VM_INHERIT_NONE = common dso_local global i64 0, align 8
@VM_MAP_KERNEL_FLAGS_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_35__*, %struct.TYPE_36__*, %struct.TYPE_35__*)* @vm_map_fork_share to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vm_map_fork_share(%struct.TYPE_35__* %0, %struct.TYPE_36__* %1, %struct.TYPE_35__* %2) #0 {
  %4 = alloca %struct.TYPE_35__*, align 8
  %5 = alloca %struct.TYPE_36__*, align 8
  %6 = alloca %struct.TYPE_35__*, align 8
  %7 = alloca %struct.TYPE_34__*, align 8
  %8 = alloca %struct.TYPE_36__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_35__* %0, %struct.TYPE_35__** %4, align 8
  store %struct.TYPE_36__* %1, %struct.TYPE_36__** %5, align 8
  store %struct.TYPE_35__* %2, %struct.TYPE_35__** %6, align 8
  %11 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %12 = call %struct.TYPE_34__* @VME_OBJECT(%struct.TYPE_36__* %11)
  store %struct.TYPE_34__* %12, %struct.TYPE_34__** %7, align 8
  %13 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %13, i32 0, i32 6
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %59

17:                                               ; preds = %3
  %18 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %20, 0
  %22 = zext i1 %21 to i32
  %23 = call i32 @assert(i32 %22)
  %24 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %24, i32 0, i32 10
  %26 = load i8*, i8** %25, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %58

28:                                               ; preds = %17
  %29 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %33 = call %struct.TYPE_37__* @VME_SUBMAP(%struct.TYPE_36__* %32)
  %34 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %36, i32 0, i32 4
  %38 = load i64, i64* %37, align 8
  %39 = trunc i64 %38 to i32
  %40 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %40, i32 0, i32 4
  %42 = load i64, i64* %41, align 8
  %43 = trunc i64 %42 to i32
  %44 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %44, i32 0, i32 5
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %47, i32 0, i32 4
  %49 = load i64, i64* %48, align 8
  %50 = sub nsw i64 %46, %49
  %51 = trunc i64 %50 to i32
  %52 = call i64 @pmap_nest(i32 %31, i32 %35, i32 %39, i32 %43, i32 %51)
  store i64 %52, i64* %9, align 8
  %53 = load i64, i64* %9, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %28
  %56 = call i32 @panic(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %57

57:                                               ; preds = %55, %28
  br label %58

58:                                               ; preds = %57, %17
  br label %225

59:                                               ; preds = %3
  %60 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %61 = load %struct.TYPE_34__*, %struct.TYPE_34__** @VM_OBJECT_NULL, align 8
  %62 = icmp eq %struct.TYPE_34__* %60, %61
  br i1 %62, label %63, label %80

63:                                               ; preds = %59
  %64 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %64, i32 0, i32 5
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %67, i32 0, i32 4
  %69 = load i64, i64* %68, align 8
  %70 = sub nsw i64 %66, %69
  %71 = call %struct.TYPE_34__* @vm_object_allocate(i64 %70)
  store %struct.TYPE_34__* %71, %struct.TYPE_34__** %7, align 8
  %72 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %73 = call i32 @VME_OFFSET_SET(%struct.TYPE_36__* %72, i32 0)
  %74 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %75 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %76 = call i32 @VME_OBJECT_SET(%struct.TYPE_36__* %74, %struct.TYPE_34__* %75)
  %77 = load i8*, i8** @TRUE, align 8
  %78 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %78, i32 0, i32 10
  store i8* %77, i8** %79, align 8
  br label %224

80:                                               ; preds = %59
  %81 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @MEMORY_OBJECT_COPY_SYMMETRIC, align 8
  %85 = icmp ne i64 %83, %84
  br i1 %85, label %86, label %94

86:                                               ; preds = %80
  %87 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %87, i32 0, i32 9
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  %91 = xor i1 %90, true
  %92 = zext i1 %91 to i32
  %93 = call i32 @assert(i32 %92)
  br label %223

94:                                               ; preds = %80
  %95 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %95, i32 0, i32 9
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %126, label %99

99:                                               ; preds = %94
  %100 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %101 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %100, i32 0, i32 3
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %126, label %104

104:                                              ; preds = %99
  %105 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %106 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %222, label %109

109:                                              ; preds = %104
  %110 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %110, i32 0, i32 8
  %112 = load i8*, i8** %111, align 8
  %113 = icmp ne i8* %112, null
  br i1 %113, label %222, label %114

114:                                              ; preds = %109
  %115 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %116 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %118, i32 0, i32 5
  %120 = load i64, i64* %119, align 8
  %121 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %122 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %121, i32 0, i32 4
  %123 = load i64, i64* %122, align 8
  %124 = sub nsw i64 %120, %123
  %125 = icmp sgt i64 %117, %124
  br i1 %125, label %126, label %222

126:                                              ; preds = %114, %99, %94
  %127 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %128 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %129 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %128, i32 0, i32 5
  %130 = load i64, i64* %129, align 8
  %131 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %132 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %131, i32 0, i32 4
  %133 = load i64, i64* %132, align 8
  %134 = sub nsw i64 %130, %133
  %135 = call i32 @VME_OBJECT_SHADOW(%struct.TYPE_36__* %127, i64 %134)
  %136 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %137 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %136, i32 0, i32 9
  %138 = load i64, i64* %137, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %216, label %140

140:                                              ; preds = %126
  %141 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %142 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 8
  %144 = load i32, i32* @VM_PROT_WRITE, align 4
  %145 = and i32 %143, %144
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %216

147:                                              ; preds = %140
  %148 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %149 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 8
  %151 = call i32 @pmap_has_prot_policy(i32 %150)
  %152 = icmp ne i32 %151, 0
  %153 = xor i1 %152, true
  %154 = zext i1 %153 to i32
  %155 = call i32 @assert(i32 %154)
  %156 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %157 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 8
  %159 = load i32, i32* @VM_PROT_WRITE, align 4
  %160 = xor i32 %159, -1
  %161 = and i32 %158, %160
  store i32 %161, i32* %10, align 4
  %162 = load i32, i32* %10, align 4
  %163 = call i32 @pmap_has_prot_policy(i32 %162)
  %164 = icmp ne i32 %163, 0
  %165 = xor i1 %164, true
  %166 = zext i1 %165 to i32
  %167 = call i32 @assert(i32 %166)
  %168 = load %struct.TYPE_35__*, %struct.TYPE_35__** %4, align 8
  %169 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %170 = call i32 @VME_ALIAS(%struct.TYPE_36__* %169)
  %171 = call i64 @override_nx(%struct.TYPE_35__* %168, i32 %170)
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %180

173:                                              ; preds = %147
  %174 = load i32, i32* %10, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %180

176:                                              ; preds = %173
  %177 = load i32, i32* @VM_PROT_EXECUTE, align 4
  %178 = load i32, i32* %10, align 4
  %179 = or i32 %178, %177
  store i32 %179, i32* %10, align 4
  br label %180

180:                                              ; preds = %176, %173, %147
  %181 = load %struct.TYPE_35__*, %struct.TYPE_35__** %4, align 8
  %182 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %181, i32 0, i32 1
  %183 = load i64, i64* %182, align 8
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %203

185:                                              ; preds = %180
  %186 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %187 = call %struct.TYPE_34__* @VME_OBJECT(%struct.TYPE_36__* %186)
  %188 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %189 = call i32 @VME_OFFSET(%struct.TYPE_36__* %188)
  %190 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %191 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %190, i32 0, i32 5
  %192 = load i64, i64* %191, align 8
  %193 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %194 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %193, i32 0, i32 4
  %195 = load i64, i64* %194, align 8
  %196 = sub nsw i64 %192, %195
  %197 = load i32, i32* @PMAP_NULL, align 4
  %198 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %199 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %198, i32 0, i32 4
  %200 = load i64, i64* %199, align 8
  %201 = load i32, i32* %10, align 4
  %202 = call i32 @vm_object_pmap_protect(%struct.TYPE_34__* %187, i32 %189, i64 %196, i32 %197, i64 %200, i32 %201)
  br label %215

203:                                              ; preds = %180
  %204 = load %struct.TYPE_35__*, %struct.TYPE_35__** %4, align 8
  %205 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 8
  %207 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %208 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %207, i32 0, i32 4
  %209 = load i64, i64* %208, align 8
  %210 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %211 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %210, i32 0, i32 5
  %212 = load i64, i64* %211, align 8
  %213 = load i32, i32* %10, align 4
  %214 = call i32 @pmap_protect(i32 %206, i64 %209, i64 %212, i32 %213)
  br label %215

215:                                              ; preds = %203, %185
  br label %216

216:                                              ; preds = %215, %140, %126
  %217 = load i64, i64* @FALSE, align 8
  %218 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %219 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %218, i32 0, i32 9
  store i64 %217, i64* %219, align 8
  %220 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %221 = call %struct.TYPE_34__* @VME_OBJECT(%struct.TYPE_36__* %220)
  store %struct.TYPE_34__* %221, %struct.TYPE_34__** %7, align 8
  br label %222

222:                                              ; preds = %216, %114, %109, %104
  br label %223

223:                                              ; preds = %222, %86
  br label %224

224:                                              ; preds = %223, %63
  br label %225

225:                                              ; preds = %224, %58
  %226 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %227 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %226, i32 0, i32 6
  %228 = load i64, i64* %227, align 8
  %229 = icmp ne i64 %228, 0
  br i1 %229, label %230, label %240

230:                                              ; preds = %225
  %231 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %232 = call %struct.TYPE_37__* @VME_SUBMAP(%struct.TYPE_36__* %231)
  %233 = call i32 @vm_map_lock(%struct.TYPE_37__* %232)
  %234 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %235 = call %struct.TYPE_37__* @VME_SUBMAP(%struct.TYPE_36__* %234)
  %236 = call i32 @vm_map_reference(%struct.TYPE_37__* %235)
  %237 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %238 = call %struct.TYPE_37__* @VME_SUBMAP(%struct.TYPE_36__* %237)
  %239 = call i32 @vm_map_unlock(%struct.TYPE_37__* %238)
  br label %257

240:                                              ; preds = %225
  %241 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %242 = call i32 @vm_object_lock(%struct.TYPE_34__* %241)
  %243 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %244 = call i32 @vm_object_reference_locked(%struct.TYPE_34__* %243)
  %245 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %246 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %245, i32 0, i32 0
  %247 = load i64, i64* %246, align 8
  %248 = load i64, i64* @MEMORY_OBJECT_COPY_SYMMETRIC, align 8
  %249 = icmp eq i64 %247, %248
  br i1 %249, label %250, label %254

250:                                              ; preds = %240
  %251 = load i64, i64* @MEMORY_OBJECT_COPY_DELAY, align 8
  %252 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %253 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %252, i32 0, i32 0
  store i64 %251, i64* %253, align 8
  br label %254

254:                                              ; preds = %250, %240
  %255 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %256 = call i32 @vm_object_unlock(%struct.TYPE_34__* %255)
  br label %257

257:                                              ; preds = %254, %230
  %258 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %259 = load i64, i64* @FALSE, align 8
  %260 = call %struct.TYPE_36__* @vm_map_entry_create(%struct.TYPE_35__* %258, i64 %259)
  store %struct.TYPE_36__* %260, %struct.TYPE_36__** %8, align 8
  %261 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %262 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %263 = call i32 @vm_map_entry_copy(%struct.TYPE_36__* %261, %struct.TYPE_36__* %262)
  %264 = load i8*, i8** @TRUE, align 8
  %265 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %266 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %265, i32 0, i32 8
  store i8* %264, i8** %266, align 8
  %267 = load i8*, i8** @TRUE, align 8
  %268 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %269 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %268, i32 0, i32 8
  store i8* %267, i8** %269, align 8
  %270 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %271 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %270, i32 0, i32 7
  %272 = load i32, i32* %271, align 8
  %273 = icmp ne i32 %272, 0
  %274 = xor i1 %273, true
  %275 = zext i1 %274 to i32
  %276 = call i32 @assert(i32 %275)
  %277 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %278 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %277, i32 0, i32 2
  %279 = load i64, i64* %278, align 8
  %280 = load i64, i64* @VM_INHERIT_NONE, align 8
  %281 = icmp eq i64 %279, %280
  br i1 %281, label %282, label %295

282:                                              ; preds = %257
  %283 = load i32, i32* @VM_PROT_WRITE, align 4
  %284 = xor i32 %283, -1
  %285 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %286 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %285, i32 0, i32 1
  %287 = load i32, i32* %286, align 8
  %288 = and i32 %287, %284
  store i32 %288, i32* %286, align 8
  %289 = load i32, i32* @VM_PROT_WRITE, align 4
  %290 = xor i32 %289, -1
  %291 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %292 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %291, i32 0, i32 3
  %293 = load i32, i32* %292, align 8
  %294 = and i32 %293, %290
  store i32 %294, i32* %292, align 8
  br label %295

295:                                              ; preds = %282, %257
  %296 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %297 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %298 = call i32 @vm_map_last_entry(%struct.TYPE_35__* %297)
  %299 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %300 = load i32, i32* @VM_MAP_KERNEL_FLAGS_NONE, align 4
  %301 = call i32 @vm_map_store_entry_link(%struct.TYPE_35__* %296, i32 %298, %struct.TYPE_36__* %299, i32 %300)
  %302 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %303 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %302, i32 0, i32 6
  %304 = load i64, i64* %303, align 8
  %305 = icmp ne i64 %304, 0
  br i1 %305, label %306, label %307

306:                                              ; preds = %295
  br label %328

307:                                              ; preds = %295
  %308 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %309 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %308, i32 0, i32 0
  %310 = load i32, i32* %309, align 8
  %311 = load %struct.TYPE_35__*, %struct.TYPE_35__** %4, align 8
  %312 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %311, i32 0, i32 0
  %313 = load i32, i32* %312, align 8
  %314 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %315 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %314, i32 0, i32 4
  %316 = load i64, i64* %315, align 8
  %317 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %318 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %317, i32 0, i32 5
  %319 = load i64, i64* %318, align 8
  %320 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %321 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %320, i32 0, i32 4
  %322 = load i64, i64* %321, align 8
  %323 = sub nsw i64 %319, %322
  %324 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %325 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %324, i32 0, i32 4
  %326 = load i64, i64* %325, align 8
  %327 = call i32 @pmap_copy(i32 %310, i32 %313, i64 %316, i64 %323, i64 %326)
  br label %328

328:                                              ; preds = %307, %306
  ret void
}

declare dso_local %struct.TYPE_34__* @VME_OBJECT(%struct.TYPE_36__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @pmap_nest(i32, i32, i32, i32, i32) #1

declare dso_local %struct.TYPE_37__* @VME_SUBMAP(%struct.TYPE_36__*) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local %struct.TYPE_34__* @vm_object_allocate(i64) #1

declare dso_local i32 @VME_OFFSET_SET(%struct.TYPE_36__*, i32) #1

declare dso_local i32 @VME_OBJECT_SET(%struct.TYPE_36__*, %struct.TYPE_34__*) #1

declare dso_local i32 @VME_OBJECT_SHADOW(%struct.TYPE_36__*, i64) #1

declare dso_local i32 @pmap_has_prot_policy(i32) #1

declare dso_local i64 @override_nx(%struct.TYPE_35__*, i32) #1

declare dso_local i32 @VME_ALIAS(%struct.TYPE_36__*) #1

declare dso_local i32 @vm_object_pmap_protect(%struct.TYPE_34__*, i32, i64, i32, i64, i32) #1

declare dso_local i32 @VME_OFFSET(%struct.TYPE_36__*) #1

declare dso_local i32 @pmap_protect(i32, i64, i64, i32) #1

declare dso_local i32 @vm_map_lock(%struct.TYPE_37__*) #1

declare dso_local i32 @vm_map_reference(%struct.TYPE_37__*) #1

declare dso_local i32 @vm_map_unlock(%struct.TYPE_37__*) #1

declare dso_local i32 @vm_object_lock(%struct.TYPE_34__*) #1

declare dso_local i32 @vm_object_reference_locked(%struct.TYPE_34__*) #1

declare dso_local i32 @vm_object_unlock(%struct.TYPE_34__*) #1

declare dso_local %struct.TYPE_36__* @vm_map_entry_create(%struct.TYPE_35__*, i64) #1

declare dso_local i32 @vm_map_entry_copy(%struct.TYPE_36__*, %struct.TYPE_36__*) #1

declare dso_local i32 @vm_map_store_entry_link(%struct.TYPE_35__*, i32, %struct.TYPE_36__*, i32) #1

declare dso_local i32 @vm_map_last_entry(%struct.TYPE_35__*) #1

declare dso_local i32 @pmap_copy(i32, i32, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
