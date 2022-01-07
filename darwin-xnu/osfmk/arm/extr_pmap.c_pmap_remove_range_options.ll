; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/arm/extr_pmap.c_pmap_remove_range_options.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/arm/extr_pmap.c_pmap_remove_range_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, i8*, %struct.TYPE_16__, i32 }
%struct.TYPE_16__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_18__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_19__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32 }

@FALSE = common dso_local global i64 0, align 8
@kernel_pmap = common dso_local global %struct.TYPE_17__* null, align 8
@PMAP_OPTIONS_REMOVE = common dso_local global i32 0, align 4
@ARM_PTE_COMPRESSED_ALT = common dso_local global i32 0, align 4
@ARM_PTE_TYPE_FAULT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [63 x i8] c"pmap_remove_range_options: over-release of ptdp %p for pte %p\0A\00", align 1
@TRUE = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@ARM_PGBYTES = common dso_local global i32 0, align 4
@task_ledgers = common dso_local global %struct.TYPE_18__ zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"pmap=%p num_external=%d stats.external=%d\00", align 1
@.str.2 = private unnamed_addr constant [76 x i8] c"pmap=%p num_internal=%d stats.internal=%d num_reusable=%d stats.reusable=%d\00", align 1
@.str.3 = private unnamed_addr constant [74 x i8] c"pmap=%p num_compressed=%lld num_alt_compressed=%lld stats.compressed=%lld\00", align 1
@pgtrace_enabled = common dso_local global i64 0, align 8
@pmap_stats_assert = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_17__*, i64, i32*, i32*, i32*, i32)* @pmap_remove_range_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pmap_remove_range_options(%struct.TYPE_17__* %0, i64 %1, i32* %2, i32* %3, i32* %4, i32 %5) #0 {
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i64, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32 %5, i32* %12, align 4
  store i32 0, i32* %17, align 4
  %27 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %28 = call i32 @PMAP_ASSERT_LOCKED(%struct.TYPE_17__* %27)
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %21, align 4
  store i32 0, i32* %23, align 4
  store i32 0, i32* %22, align 4
  store i32 0, i32* %24, align 4
  %29 = load i32*, i32** %9, align 8
  store i32* %29, i32** %13, align 8
  br label %30

30:                                               ; preds = %198, %6
  %31 = load i32*, i32** %13, align 8
  %32 = load i32*, i32** %10, align 8
  %33 = icmp ult i32* %31, %32
  br i1 %33, label %34, label %209

34:                                               ; preds = %30
  %35 = load i64, i64* @FALSE, align 8
  store i64 %35, i64* %26, align 8
  %36 = load i32*, i32** %13, align 8
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %25, align 4
  br label %38

38:                                               ; preds = %111, %34
  %39 = load i64, i64* %26, align 8
  %40 = icmp ne i64 %39, 0
  %41 = xor i1 %40, true
  br i1 %41, label %42, label %114

42:                                               ; preds = %38
  %43 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %44 = load %struct.TYPE_17__*, %struct.TYPE_17__** @kernel_pmap, align 8
  %45 = icmp ne %struct.TYPE_17__* %43, %44
  br i1 %45, label %46, label %87

46:                                               ; preds = %42
  %47 = load i32, i32* %12, align 4
  %48 = load i32, i32* @PMAP_OPTIONS_REMOVE, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %87

51:                                               ; preds = %46
  %52 = load i32, i32* %25, align 4
  %53 = call i64 @ARM_PTE_IS_COMPRESSED(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %87

55:                                               ; preds = %51
  %56 = load i32, i32* %23, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %23, align 4
  %58 = load i32, i32* %25, align 4
  %59 = load i32, i32* @ARM_PTE_COMPRESSED_ALT, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %55
  %63 = load i32, i32* %24, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %24, align 4
  br label %65

65:                                               ; preds = %62, %55
  %66 = load i32*, i32** %13, align 8
  %67 = load i32, i32* @ARM_PTE_TYPE_FAULT, align 4
  %68 = call i32 @WRITE_PTE_FAST(i32* %66, i32 %67)
  %69 = load i32*, i32** %13, align 8
  %70 = call %struct.TYPE_19__* @ptep_get_ptd(i32* %69)
  %71 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_15__*, %struct.TYPE_15__** %71, align 8
  %73 = load i32*, i32** %13, align 8
  %74 = call i64 @ARM_PT_DESC_INDEX(i32* %73)
  %75 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %75, i32 0, i32 0
  %77 = call i64 @OSAddAtomic16(i32 -1, i32* %76)
  %78 = icmp sle i64 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %65
  %80 = load i32*, i32** %13, align 8
  %81 = call %struct.TYPE_19__* @ptep_get_ptd(i32* %80)
  %82 = load i32*, i32** %13, align 8
  %83 = call i32 (i8*, ...) @panic(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), %struct.TYPE_19__* %81, i32* %82)
  br label %84

84:                                               ; preds = %79, %65
  %85 = load i32*, i32** %13, align 8
  %86 = load i32, i32* %85, align 4
  store i32 %86, i32* %25, align 4
  br label %87

87:                                               ; preds = %84, %51, %46, %42
  %88 = load i32, i32* %25, align 4
  %89 = call i32 @pte_to_pa(i32 %88)
  store i32 %89, i32* %18, align 4
  %90 = load i32, i32* %18, align 4
  %91 = call i32 @pa_valid(i32 %90)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %94, label %93

93:                                               ; preds = %87
  br label %114

94:                                               ; preds = %87
  %95 = load i32, i32* %18, align 4
  %96 = call i64 @pa_index(i32 %95)
  %97 = trunc i64 %96 to i32
  store i32 %97, i32* %17, align 4
  %98 = load i32, i32* %17, align 4
  %99 = call i32 @LOCK_PVH(i32 %98)
  %100 = load i32*, i32** %13, align 8
  %101 = load i32, i32* %100, align 4
  store i32 %101, i32* %25, align 4
  %102 = load i32, i32* %25, align 4
  %103 = call i32 @pte_to_pa(i32 %102)
  store i32 %103, i32* %18, align 4
  %104 = load i32, i32* %17, align 4
  %105 = load i32, i32* %18, align 4
  %106 = call i64 @pa_index(i32 %105)
  %107 = trunc i64 %106 to i32
  %108 = icmp eq i32 %104, %107
  br i1 %108, label %109, label %111

109:                                              ; preds = %94
  %110 = load i64, i64* @TRUE, align 8
  store i64 %110, i64* %26, align 8
  br label %114

111:                                              ; preds = %94
  %112 = load i32, i32* %17, align 4
  %113 = call i32 @UNLOCK_PVH(i32 %112)
  br label %38

114:                                              ; preds = %109, %93, %38
  %115 = load i32*, i32** %13, align 8
  %116 = load i32, i32* %115, align 4
  %117 = call i64 @ARM_PTE_IS_COMPRESSED(i32 %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %114
  br label %198

120:                                              ; preds = %114
  %121 = load i32*, i32** %13, align 8
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* @ARM_PTE_TYPE_FAULT, align 4
  %124 = icmp ne i32 %122, %123
  br i1 %124, label %125, label %138

125:                                              ; preds = %120
  %126 = load i32*, i32** %13, align 8
  %127 = load i32, i32* %126, align 4
  %128 = call i64 @ARM_PTE_IS_COMPRESSED(i32 %127)
  %129 = icmp ne i64 %128, 0
  %130 = xor i1 %129, true
  %131 = zext i1 %130 to i32
  %132 = call i32 @assert(i32 %131)
  %133 = load i32*, i32** %13, align 8
  %134 = load i32, i32* @ARM_PTE_TYPE_FAULT, align 4
  %135 = call i32 @WRITE_PTE_FAST(i32* %133, i32 %134)
  %136 = load i32, i32* %16, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %16, align 4
  br label %138

138:                                              ; preds = %125, %120
  %139 = load i32, i32* %25, align 4
  %140 = load i32, i32* @ARM_PTE_TYPE_FAULT, align 4
  %141 = icmp ne i32 %139, %140
  br i1 %141, label %142, label %176

142:                                              ; preds = %138
  %143 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %144 = load %struct.TYPE_17__*, %struct.TYPE_17__** @kernel_pmap, align 8
  %145 = icmp ne %struct.TYPE_17__* %143, %144
  br i1 %145, label %146, label %176

146:                                              ; preds = %142
  %147 = load i32, i32* %25, align 4
  %148 = call i64 @ARM_PTE_IS_COMPRESSED(i32 %147)
  %149 = icmp ne i64 %148, 0
  %150 = xor i1 %149, true
  %151 = zext i1 %150 to i32
  %152 = call i32 @assert(i32 %151)
  %153 = load i32*, i32** %13, align 8
  %154 = call %struct.TYPE_19__* @ptep_get_ptd(i32* %153)
  %155 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %154, i32 0, i32 0
  %156 = load %struct.TYPE_15__*, %struct.TYPE_15__** %155, align 8
  %157 = load i32*, i32** %13, align 8
  %158 = call i64 @ARM_PT_DESC_INDEX(i32* %157)
  %159 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %156, i64 %158
  %160 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %159, i32 0, i32 0
  %161 = call i64 @OSAddAtomic16(i32 -1, i32* %160)
  %162 = icmp sle i64 %161, 0
  br i1 %162, label %163, label %168

163:                                              ; preds = %146
  %164 = load i32*, i32** %13, align 8
  %165 = call %struct.TYPE_19__* @ptep_get_ptd(i32* %164)
  %166 = load i32*, i32** %13, align 8
  %167 = call i32 (i8*, ...) @panic(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), %struct.TYPE_19__* %165, i32* %166)
  br label %168

168:                                              ; preds = %163, %146
  %169 = load i32*, i32** %11, align 8
  %170 = icmp ne i32* %169, null
  br i1 %170, label %171, label %175

171:                                              ; preds = %168
  %172 = load i32*, i32** %11, align 8
  %173 = load i32, i32* %172, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %172, align 4
  br label %175

175:                                              ; preds = %171, %168
  br label %176

176:                                              ; preds = %175, %142, %138
  %177 = load i32, i32* %25, align 4
  %178 = call i64 @pte_is_wired(i32 %177)
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %185

180:                                              ; preds = %176
  %181 = load i32*, i32** %13, align 8
  %182 = call i32 @pte_set_wired(i32* %181, i32 0)
  %183 = load i32, i32* %15, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %15, align 4
  br label %185

185:                                              ; preds = %180, %176
  %186 = load i64, i64* %26, align 8
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %189, label %188

188:                                              ; preds = %185
  br label %198

189:                                              ; preds = %185
  %190 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %191 = load i32*, i32** %13, align 8
  %192 = load i32, i32* %17, align 4
  %193 = call i32 @pmap_remove_pv(%struct.TYPE_17__* %190, i32* %191, i32 %192, i32* %20, i32* %22, i32* %21, i32* %19)
  %194 = load i32, i32* %17, align 4
  %195 = call i32 @UNLOCK_PVH(i32 %194)
  %196 = load i32, i32* %14, align 4
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* %14, align 4
  br label %198

198:                                              ; preds = %189, %188, %119
  %199 = load i32, i32* @PAGE_SIZE, align 4
  %200 = load i32, i32* @ARM_PGBYTES, align 4
  %201 = sdiv i32 %199, %200
  %202 = load i32*, i32** %13, align 8
  %203 = sext i32 %201 to i64
  %204 = getelementptr inbounds i32, i32* %202, i64 %203
  store i32* %204, i32** %13, align 8
  %205 = load i32, i32* @PAGE_SIZE, align 4
  %206 = sext i32 %205 to i64
  %207 = load i64, i64* %8, align 8
  %208 = add nsw i64 %207, %206
  store i64 %208, i64* %8, align 8
  br label %30

209:                                              ; preds = %30
  %210 = load i32, i32* %14, align 4
  %211 = sub nsw i32 0, %210
  %212 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %213 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %212, i32 0, i32 2
  %214 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %213, i32 0, i32 5
  %215 = call i32 @OSAddAtomic(i32 %211, i32* %214)
  %216 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %217 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @task_ledgers, i32 0, i32 6), align 4
  %218 = load i32, i32* %14, align 4
  %219 = call i32 @machine_ptob(i32 %218)
  %220 = call i32 @pmap_ledger_debit(%struct.TYPE_17__* %216, i32 %217, i32 %219)
  %221 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %222 = load %struct.TYPE_17__*, %struct.TYPE_17__** @kernel_pmap, align 8
  %223 = icmp ne %struct.TYPE_17__* %221, %222
  br i1 %223, label %224, label %378

224:                                              ; preds = %209
  %225 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %226 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %225, i32 0, i32 2
  %227 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %226, i32 0, i32 2
  %228 = load i32, i32* %227, align 8
  %229 = load i32, i32* %19, align 4
  %230 = icmp sge i32 %228, %229
  %231 = zext i1 %230 to i32
  %232 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %233 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %234 = load i32, i32* %19, align 4
  %235 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %236 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %235, i32 0, i32 2
  %237 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %236, i32 0, i32 2
  %238 = load i32, i32* %237, align 8
  %239 = call i32 (i32, %struct.TYPE_17__*, i8*, %struct.TYPE_17__*, i32, i32, ...) @PMAP_STATS_ASSERTF(i32 %231, %struct.TYPE_17__* %232, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_17__* %233, i32 %234, i32 %238)
  %240 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %241 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %240, i32 0, i32 2
  %242 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 8
  %244 = load i32, i32* %20, align 4
  %245 = icmp sge i32 %243, %244
  %246 = zext i1 %245 to i32
  %247 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %248 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %249 = load i32, i32* %20, align 4
  %250 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %251 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %250, i32 0, i32 2
  %252 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 8
  %254 = load i32, i32* %21, align 4
  %255 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %256 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %255, i32 0, i32 2
  %257 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %256, i32 0, i32 1
  %258 = load i32, i32* %257, align 4
  %259 = call i32 (i32, %struct.TYPE_17__*, i8*, %struct.TYPE_17__*, i32, i32, ...) @PMAP_STATS_ASSERTF(i32 %246, %struct.TYPE_17__* %247, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_17__* %248, i32 %249, i32 %253, i32 %254, i32 %258)
  %260 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %261 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %260, i32 0, i32 2
  %262 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %261, i32 0, i32 1
  %263 = load i32, i32* %262, align 4
  %264 = load i32, i32* %21, align 4
  %265 = icmp sge i32 %263, %264
  %266 = zext i1 %265 to i32
  %267 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %268 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %269 = load i32, i32* %20, align 4
  %270 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %271 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %270, i32 0, i32 2
  %272 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %271, i32 0, i32 0
  %273 = load i32, i32* %272, align 8
  %274 = load i32, i32* %21, align 4
  %275 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %276 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %275, i32 0, i32 2
  %277 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %276, i32 0, i32 1
  %278 = load i32, i32* %277, align 4
  %279 = call i32 (i32, %struct.TYPE_17__*, i8*, %struct.TYPE_17__*, i32, i32, ...) @PMAP_STATS_ASSERTF(i32 %266, %struct.TYPE_17__* %267, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_17__* %268, i32 %269, i32 %273, i32 %274, i32 %278)
  %280 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %281 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %280, i32 0, i32 2
  %282 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %281, i32 0, i32 3
  %283 = load i32, i32* %282, align 4
  %284 = load i32, i32* %23, align 4
  %285 = icmp sge i32 %283, %284
  %286 = zext i1 %285 to i32
  %287 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %288 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %289 = load i32, i32* %23, align 4
  %290 = load i32, i32* %24, align 4
  %291 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %292 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %291, i32 0, i32 2
  %293 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %292, i32 0, i32 3
  %294 = load i32, i32* %293, align 4
  %295 = call i32 (i32, %struct.TYPE_17__*, i8*, %struct.TYPE_17__*, i32, i32, ...) @PMAP_STATS_ASSERTF(i32 %286, %struct.TYPE_17__* %287, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.3, i64 0, i64 0), %struct.TYPE_17__* %288, i32 %289, i32 %290, i32 %294)
  %296 = load i32, i32* %15, align 4
  %297 = sub nsw i32 0, %296
  %298 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %299 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %298, i32 0, i32 2
  %300 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %299, i32 0, i32 4
  %301 = call i32 @OSAddAtomic(i32 %297, i32* %300)
  %302 = load i32, i32* %19, align 4
  %303 = icmp ne i32 %302, 0
  br i1 %303, label %304, label %311

304:                                              ; preds = %224
  %305 = load i32, i32* %19, align 4
  %306 = sub nsw i32 0, %305
  %307 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %308 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %307, i32 0, i32 2
  %309 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %308, i32 0, i32 2
  %310 = call i32 @OSAddAtomic(i32 %306, i32* %309)
  br label %311

311:                                              ; preds = %304, %224
  %312 = load i32, i32* %20, align 4
  %313 = icmp ne i32 %312, 0
  br i1 %313, label %314, label %321

314:                                              ; preds = %311
  %315 = load i32, i32* %20, align 4
  %316 = sub nsw i32 0, %315
  %317 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %318 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %317, i32 0, i32 2
  %319 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %318, i32 0, i32 0
  %320 = call i32 @OSAddAtomic(i32 %316, i32* %319)
  br label %321

321:                                              ; preds = %314, %311
  %322 = load i32, i32* %21, align 4
  %323 = icmp ne i32 %322, 0
  br i1 %323, label %324, label %331

324:                                              ; preds = %321
  %325 = load i32, i32* %21, align 4
  %326 = sub nsw i32 0, %325
  %327 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %328 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %327, i32 0, i32 2
  %329 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %328, i32 0, i32 1
  %330 = call i32 @OSAddAtomic(i32 %326, i32* %329)
  br label %331

331:                                              ; preds = %324, %321
  %332 = load i32, i32* %23, align 4
  %333 = icmp ne i32 %332, 0
  br i1 %333, label %334, label %341

334:                                              ; preds = %331
  %335 = load i32, i32* %23, align 4
  %336 = sub nsw i32 0, %335
  %337 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %338 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %337, i32 0, i32 2
  %339 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %338, i32 0, i32 3
  %340 = call i32 @OSAddAtomic64(i32 %336, i32* %339)
  br label %341

341:                                              ; preds = %334, %331
  %342 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %343 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @task_ledgers, i32 0, i32 5), align 4
  %344 = load i32, i32* %15, align 4
  %345 = call i32 @machine_ptob(i32 %344)
  %346 = call i32 @pmap_ledger_debit(%struct.TYPE_17__* %342, i32 %343, i32 %345)
  %347 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %348 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @task_ledgers, i32 0, i32 4), align 4
  %349 = load i32, i32* %20, align 4
  %350 = call i32 @machine_ptob(i32 %349)
  %351 = call i32 @pmap_ledger_debit(%struct.TYPE_17__* %347, i32 %348, i32 %350)
  %352 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %353 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @task_ledgers, i32 0, i32 3), align 4
  %354 = load i32, i32* %22, align 4
  %355 = call i32 @machine_ptob(i32 %354)
  %356 = call i32 @pmap_ledger_debit(%struct.TYPE_17__* %352, i32 %353, i32 %355)
  %357 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %358 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @task_ledgers, i32 0, i32 2), align 4
  %359 = load i32, i32* %24, align 4
  %360 = call i32 @machine_ptob(i32 %359)
  %361 = call i32 @pmap_ledger_debit(%struct.TYPE_17__* %357, i32 %358, i32 %360)
  %362 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %363 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @task_ledgers, i32 0, i32 1), align 4
  %364 = load i32, i32* %23, align 4
  %365 = call i32 @machine_ptob(i32 %364)
  %366 = call i32 @pmap_ledger_debit(%struct.TYPE_17__* %362, i32 %363, i32 %365)
  %367 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %368 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @task_ledgers, i32 0, i32 0), align 4
  %369 = load i32, i32* %20, align 4
  %370 = load i32, i32* %22, align 4
  %371 = sub nsw i32 %369, %370
  %372 = load i32, i32* %23, align 4
  %373 = load i32, i32* %24, align 4
  %374 = sub nsw i32 %372, %373
  %375 = add nsw i32 %371, %374
  %376 = call i32 @machine_ptob(i32 %375)
  %377 = call i32 @pmap_ledger_debit(%struct.TYPE_17__* %367, i32 %368, i32 %376)
  br label %378

378:                                              ; preds = %341, %209
  %379 = load i32, i32* %16, align 4
  %380 = icmp sgt i32 %379, 0
  br i1 %380, label %381, label %385

381:                                              ; preds = %378
  %382 = load i32*, i32** %9, align 8
  %383 = load i32*, i32** %10, align 8
  %384 = call i32 @FLUSH_PTE_RANGE_STRONG(i32* %382, i32* %383)
  br label %385

385:                                              ; preds = %381, %378
  %386 = load i32, i32* %16, align 4
  ret i32 %386
}

declare dso_local i32 @PMAP_ASSERT_LOCKED(%struct.TYPE_17__*) #1

declare dso_local i64 @ARM_PTE_IS_COMPRESSED(i32) #1

declare dso_local i32 @WRITE_PTE_FAST(i32*, i32) #1

declare dso_local i64 @OSAddAtomic16(i32, i32*) #1

declare dso_local %struct.TYPE_19__* @ptep_get_ptd(i32*) #1

declare dso_local i64 @ARM_PT_DESC_INDEX(i32*) #1

declare dso_local i32 @panic(i8*, ...) #1

declare dso_local i32 @pte_to_pa(i32) #1

declare dso_local i32 @pa_valid(i32) #1

declare dso_local i64 @pa_index(i32) #1

declare dso_local i32 @LOCK_PVH(i32) #1

declare dso_local i32 @UNLOCK_PVH(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @pte_is_wired(i32) #1

declare dso_local i32 @pte_set_wired(i32*, i32) #1

declare dso_local i32 @pmap_remove_pv(%struct.TYPE_17__*, i32*, i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @OSAddAtomic(i32, i32*) #1

declare dso_local i32 @pmap_ledger_debit(%struct.TYPE_17__*, i32, i32) #1

declare dso_local i32 @machine_ptob(i32) #1

declare dso_local i32 @PMAP_STATS_ASSERTF(i32, %struct.TYPE_17__*, i8*, %struct.TYPE_17__*, i32, i32, ...) #1

declare dso_local i32 @OSAddAtomic64(i32, i32*) #1

declare dso_local i32 @FLUSH_PTE_RANGE_STRONG(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
