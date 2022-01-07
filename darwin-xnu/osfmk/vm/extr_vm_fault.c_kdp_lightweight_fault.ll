; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_fault.c_kdp_lightweight_fault.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_fault.c_kdp_lightweight_fault.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32 }
%struct.TYPE_19__ = type { i32, i32, i32, %struct.TYPE_19__*, i32, i64, i64, i64, i32 }
%struct.TYPE_18__ = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.TYPE_21__ = type { i32, i64 }

@C_DONT_BLOCK = common dso_local global i32 0, align 4
@C_KEEP = common dso_local global i32 0, align 4
@C_KDP = common dso_local global i32 0, align 4
@VM_PROT_READ = common dso_local global i32 0, align 4
@not_in_kdp = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [62 x i8] c"kdp_lightweight_fault called from outside of debugger context\00", align 1
@VM_MAP_NULL = common dso_local global %struct.TYPE_20__* null, align 8
@PAGE_MASK = common dso_local global i32 0, align 4
@VM_OBJECT_NULL = common dso_local global %struct.TYPE_19__* null, align 8
@TRUE = common dso_local global i64 0, align 8
@VM_PAGE_NULL = common dso_local global %struct.TYPE_18__* null, align 8
@VM_WIMG_MASK = common dso_local global i32 0, align 4
@VM_WIMG_DEFAULT = common dso_local global i32 0, align 4
@VM_PAGE_USED_BY_COMPRESSOR = common dso_local global i64 0, align 8
@VM_EXTERNAL_STATE_UNKNOWN = common dso_local global i32 0, align 4
@VM_EXTERNAL_STATE_EXISTS = common dso_local global i32 0, align 4
@kdp_compressor_decompressed_page_ppnum = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i64 0, align 8
@kdp_compressor_decompressed_page_paddr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kdp_lightweight_fault(%struct.TYPE_20__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_20__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_21__*, align 8
  %7 = alloca %struct.TYPE_19__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_18__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %4, align 8
  store i32 %1, i32* %5, align 4
  %15 = load i32, i32* @C_DONT_BLOCK, align 4
  %16 = load i32, i32* @C_KEEP, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @C_KDP, align 4
  %19 = or i32 %17, %18
  store i32 %19, i32* %12, align 4
  %20 = load i32, i32* @VM_PROT_READ, align 4
  store i32 %20, i32* %13, align 4
  %21 = load i64, i64* @not_in_kdp, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %2
  %24 = call i32 @panic(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0))
  br label %25

25:                                               ; preds = %23, %2
  %26 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %27 = load %struct.TYPE_20__*, %struct.TYPE_20__** @VM_MAP_NULL, align 8
  %28 = icmp ne %struct.TYPE_20__* %26, %27
  %29 = zext i1 %28 to i32
  %30 = call i32 @assert(i32 %29)
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @PAGE_MASK, align 4
  %33 = and i32 %31, %32
  %34 = icmp eq i32 %33, 0
  %35 = zext i1 %34 to i32
  %36 = call i32 @assert(i32 %35)
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* @PAGE_MASK, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %25
  store i32 0, i32* %3, align 4
  br label %258

42:                                               ; preds = %25
  %43 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %43, i32 0, i32 0
  %45 = call i64 @kdp_lck_rw_lock_is_acquired_exclusive(i32* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  store i32 0, i32* %3, align 4
  br label %258

48:                                               ; preds = %42
  %49 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @vm_map_lookup_entry(%struct.TYPE_20__* %49, i32 %50, %struct.TYPE_21__** %6)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %48
  store i32 0, i32* %3, align 4
  br label %258

54:                                               ; preds = %48
  %55 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %54
  store i32 0, i32* %3, align 4
  br label %258

60:                                               ; preds = %54
  %61 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %62 = call %struct.TYPE_19__* @VME_OBJECT(%struct.TYPE_21__* %61)
  store %struct.TYPE_19__* %62, %struct.TYPE_19__** %7, align 8
  %63 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %64 = load %struct.TYPE_19__*, %struct.TYPE_19__** @VM_OBJECT_NULL, align 8
  %65 = icmp eq %struct.TYPE_19__* %63, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %60
  store i32 0, i32* %3, align 4
  br label %258

67:                                               ; preds = %60
  %68 = load i32, i32* %5, align 4
  %69 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = sub nsw i32 %68, %71
  %73 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %74 = call i32 @VME_OFFSET(%struct.TYPE_21__* %73)
  %75 = add nsw i32 %72, %74
  store i32 %75, i32* %8, align 4
  br label %76

76:                                               ; preds = %249, %67
  %77 = load i64, i64* @TRUE, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %258

79:                                               ; preds = %76
  %80 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %80, i32 0, i32 8
  %82 = call i64 @kdp_lck_rw_lock_is_acquired_exclusive(i32* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %79
  store i32 0, i32* %3, align 4
  br label %258

85:                                               ; preds = %79
  %86 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %86, i32 0, i32 5
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %101

90:                                               ; preds = %85
  %91 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %92 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %91, i32 0, i32 7
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %100, label %95

95:                                               ; preds = %90
  %96 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %97 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %96, i32 0, i32 6
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %95, %90
  store i32 0, i32* %3, align 4
  br label %258

101:                                              ; preds = %95, %85
  %102 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %103 = load i32, i32* %8, align 4
  %104 = call %struct.TYPE_18__* @kdp_vm_page_lookup(%struct.TYPE_19__* %102, i32 %103)
  store %struct.TYPE_18__* %104, %struct.TYPE_18__** %9, align 8
  %105 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %106 = load %struct.TYPE_18__*, %struct.TYPE_18__** @VM_PAGE_NULL, align 8
  %107 = icmp ne %struct.TYPE_18__* %105, %106
  br i1 %107, label %108, label %207

108:                                              ; preds = %101
  %109 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %110 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* @VM_WIMG_MASK, align 4
  %113 = and i32 %111, %112
  %114 = load i32, i32* @VM_WIMG_DEFAULT, align 4
  %115 = icmp ne i32 %113, %114
  br i1 %115, label %116, label %117

116:                                              ; preds = %108
  store i32 0, i32* %3, align 4
  br label %258

117:                                              ; preds = %108
  %118 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %119 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %118, i32 0, i32 11
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %162, label %122

122:                                              ; preds = %117
  %123 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %124 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %123, i32 0, i32 10
  %125 = load i64, i64* %124, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %162, label %127

127:                                              ; preds = %122
  %128 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %129 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %128, i32 0, i32 9
  %130 = load i64, i64* %129, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %162, label %132

132:                                              ; preds = %127
  %133 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %134 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %133, i32 0, i32 8
  %135 = load i64, i64* %134, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %162, label %137

137:                                              ; preds = %132
  %138 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %139 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %138, i32 0, i32 7
  %140 = load i64, i64* %139, align 8
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %162, label %142

142:                                              ; preds = %137
  %143 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %144 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %143, i32 0, i32 6
  %145 = load i64, i64* %144, align 8
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %162, label %147

147:                                              ; preds = %142
  %148 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %149 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %148, i32 0, i32 5
  %150 = load i64, i64* %149, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %162, label %152

152:                                              ; preds = %147
  %153 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %154 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %153, i32 0, i32 4
  %155 = load i64, i64* %154, align 8
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %162, label %157

157:                                              ; preds = %152
  %158 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %159 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %158, i32 0, i32 3
  %160 = load i64, i64* %159, align 8
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %163

162:                                              ; preds = %157, %152, %147, %142, %137, %132, %127, %122, %117
  store i32 0, i32* %3, align 4
  br label %258

163:                                              ; preds = %157
  %164 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %165 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %164, i32 0, i32 2
  %166 = load i64, i64* %165, align 8
  %167 = icmp ne i64 %166, 0
  %168 = xor i1 %167, true
  %169 = zext i1 %168 to i32
  %170 = call i32 @assert(i32 %169)
  %171 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %172 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %171, i32 0, i32 2
  %173 = load i64, i64* %172, align 8
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %176

175:                                              ; preds = %163
  store i32 0, i32* %3, align 4
  br label %258

176:                                              ; preds = %163
  %177 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %178 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %177, i32 0, i32 1
  %179 = load i64, i64* %178, align 8
  %180 = icmp ne i64 %179, 0
  %181 = xor i1 %180, true
  %182 = zext i1 %181 to i32
  %183 = call i32 @assert(i32 %182)
  %184 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %185 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %184, i32 0, i32 1
  %186 = load i64, i64* %185, align 8
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %189

188:                                              ; preds = %176
  store i32 0, i32* %3, align 4
  br label %258

189:                                              ; preds = %176
  %190 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %191 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %190, i32 0, i32 0
  %192 = load i64, i64* %191, align 8
  %193 = load i64, i64* @VM_PAGE_USED_BY_COMPRESSOR, align 8
  %194 = icmp ne i64 %192, %193
  %195 = zext i1 %194 to i32
  %196 = call i32 @assert(i32 %195)
  %197 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %198 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %197, i32 0, i32 0
  %199 = load i64, i64* %198, align 8
  %200 = load i64, i64* @VM_PAGE_USED_BY_COMPRESSOR, align 8
  %201 = icmp eq i64 %199, %200
  br i1 %201, label %202, label %203

202:                                              ; preds = %189
  store i32 0, i32* %3, align 4
  br label %258

203:                                              ; preds = %189
  %204 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %205 = call i32 @VM_PAGE_GET_PHYS_PAGE(%struct.TYPE_18__* %204)
  %206 = call i32 @ptoa(i32 %205)
  store i32 %206, i32* %3, align 4
  br label %258

207:                                              ; preds = %101
  %208 = load i32, i32* @VM_EXTERNAL_STATE_UNKNOWN, align 4
  store i32 %208, i32* %10, align 4
  %209 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %210 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %209, i32 0, i32 5
  %211 = load i64, i64* %210, align 8
  %212 = icmp ne i64 %211, 0
  br i1 %212, label %213, label %242

213:                                              ; preds = %207
  %214 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %215 = load i32, i32* %8, align 4
  %216 = load i32, i32* %10, align 4
  %217 = call i64 @MUST_ASK_PAGER(%struct.TYPE_19__* %214, i32 %215, i32 %216)
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %219, label %242

219:                                              ; preds = %213
  %220 = load i32, i32* %10, align 4
  %221 = load i32, i32* @VM_EXTERNAL_STATE_EXISTS, align 4
  %222 = icmp eq i32 %220, %221
  br i1 %222, label %223, label %241

223:                                              ; preds = %219
  %224 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %225 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %224, i32 0, i32 4
  %226 = load i32, i32* %225, align 8
  %227 = load i32, i32* %8, align 4
  %228 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %229 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %228, i32 0, i32 1
  %230 = load i32, i32* %229, align 4
  %231 = add nsw i32 %227, %230
  %232 = load i32, i32* @kdp_compressor_decompressed_page_ppnum, align 4
  %233 = load i32, i32* %12, align 4
  %234 = call i64 @vm_compressor_pager_get(i32 %226, i32 %231, i32 %232, i32* %13, i32 %233, i32* %11)
  store i64 %234, i64* %14, align 8
  %235 = load i64, i64* %14, align 8
  %236 = load i64, i64* @KERN_SUCCESS, align 8
  %237 = icmp eq i64 %235, %236
  br i1 %237, label %238, label %240

238:                                              ; preds = %223
  %239 = load i32, i32* @kdp_compressor_decompressed_page_paddr, align 4
  store i32 %239, i32* %3, align 4
  br label %258

240:                                              ; preds = %223
  store i32 0, i32* %3, align 4
  br label %258

241:                                              ; preds = %219
  br label %242

242:                                              ; preds = %241, %213, %207
  %243 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %244 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %243, i32 0, i32 3
  %245 = load %struct.TYPE_19__*, %struct.TYPE_19__** %244, align 8
  %246 = load %struct.TYPE_19__*, %struct.TYPE_19__** @VM_OBJECT_NULL, align 8
  %247 = icmp eq %struct.TYPE_19__* %245, %246
  br i1 %247, label %248, label %249

248:                                              ; preds = %242
  store i32 0, i32* %3, align 4
  br label %258

249:                                              ; preds = %242
  %250 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %251 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %250, i32 0, i32 2
  %252 = load i32, i32* %251, align 8
  %253 = load i32, i32* %8, align 4
  %254 = add nsw i32 %253, %252
  store i32 %254, i32* %8, align 4
  %255 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %256 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %255, i32 0, i32 3
  %257 = load %struct.TYPE_19__*, %struct.TYPE_19__** %256, align 8
  store %struct.TYPE_19__* %257, %struct.TYPE_19__** %7, align 8
  br label %76

258:                                              ; preds = %41, %47, %53, %59, %66, %84, %100, %116, %162, %175, %188, %202, %203, %238, %240, %248, %76
  %259 = load i32, i32* %3, align 4
  ret i32 %259
}

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @kdp_lck_rw_lock_is_acquired_exclusive(i32*) #1

declare dso_local i32 @vm_map_lookup_entry(%struct.TYPE_20__*, i32, %struct.TYPE_21__**) #1

declare dso_local %struct.TYPE_19__* @VME_OBJECT(%struct.TYPE_21__*) #1

declare dso_local i32 @VME_OFFSET(%struct.TYPE_21__*) #1

declare dso_local %struct.TYPE_18__* @kdp_vm_page_lookup(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @ptoa(i32) #1

declare dso_local i32 @VM_PAGE_GET_PHYS_PAGE(%struct.TYPE_18__*) #1

declare dso_local i64 @MUST_ASK_PAGER(%struct.TYPE_19__*, i32, i32) #1

declare dso_local i64 @vm_compressor_pager_get(i32, i32, i32, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
