; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_compressor.c_c_seg_major_compact.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_compressor.c_c_seg_major_compact.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i32, i32, i32 }
%struct.TYPE_21__ = type { i32, i64, i64, i32, i32, i32, i32, i64, %struct.TYPE_18__, i32, i32 }
%struct.TYPE_18__ = type { i32* }
%struct.TYPE_20__ = type { i32, i64 }
%struct.TYPE_19__ = type { i64 }

@TRUE = common dso_local global i32 0, align 4
@c_seg_major_compact_stats = common dso_local global %struct.TYPE_22__ zeroinitializer, align 4
@C_SEG_BUFSIZE = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@C_SEG_MAX_POPULATE_SIZE = common dso_local global i32 0, align 4
@compressor_map = common dso_local global i32 0, align 4
@KMA_COMPRESSOR = common dso_local global i32 0, align 4
@VM_KERN_MEMORY_COMPRESSOR = common dso_local global i32 0, align 4
@C_SEG_OFFSET_ALIGNMENT_MASK = common dso_local global i32 0, align 4
@C_SEG_OFF_LIMIT = common dso_local global i64 0, align 8
@C_SLOT_MAX_INDEX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @c_seg_major_compact(%struct.TYPE_21__* %0, %struct.TYPE_21__* %1) #0 {
  %3 = alloca %struct.TYPE_21__*, align 8
  %4 = alloca %struct.TYPE_21__*, align 8
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_19__*, align 8
  %11 = alloca %struct.TYPE_19__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %3, align 8
  store %struct.TYPE_21__* %1, %struct.TYPE_21__** %4, align 8
  %14 = load i32, i32* @TRUE, align 4
  store i32 %14, i32* %12, align 4
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @c_seg_major_compact_stats, i32 0, i32 2), align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @c_seg_major_compact_stats, i32 0, i32 2), align 4
  %17 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %20

20:                                               ; preds = %207, %2
  %21 = load i32, i32* %9, align 4
  %22 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp slt i32 %21, %24
  br i1 %25, label %26, label %210

26:                                               ; preds = %20
  %27 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %28 = load i32, i32* %9, align 4
  %29 = call %struct.TYPE_19__* @C_SEG_SLOT_FROM_INDEX(%struct.TYPE_21__* %27, i32 %28)
  store %struct.TYPE_19__* %29, %struct.TYPE_19__** %11, align 8
  %30 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %31 = call i32 @UNPACK_C_SIZE(%struct.TYPE_19__* %30)
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %26
  br label %207

35:                                               ; preds = %26
  %36 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = sub i64 %38, %41
  %43 = call i64 @C_SEG_OFFSET_TO_BYTES(i64 %42)
  %44 = load i32, i32* %7, align 4
  %45 = zext i32 %44 to i64
  %46 = icmp slt i64 %43, %45
  br i1 %46, label %47, label %94

47:                                               ; preds = %35
  %48 = load i64, i64* @C_SEG_BUFSIZE, align 8
  %49 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = call i64 @C_SEG_OFFSET_TO_BYTES(i64 %51)
  %53 = sub nsw i64 %48, %52
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %13, align 4
  %55 = load i32, i32* %13, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %47
  %58 = load i32, i32* @FALSE, align 4
  store i32 %58, i32* %12, align 4
  br label %210

59:                                               ; preds = %47
  %60 = load i32, i32* %13, align 4
  %61 = load i32, i32* @C_SEG_MAX_POPULATE_SIZE, align 4
  %62 = icmp sgt i32 %60, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %59
  %64 = load i32, i32* @C_SEG_MAX_POPULATE_SIZE, align 4
  store i32 %64, i32* %13, align 4
  br label %65

65:                                               ; preds = %63, %59
  %66 = load i32, i32* @compressor_map, align 4
  %67 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %67, i32 0, i32 8
  %69 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = getelementptr inbounds i32, i32* %70, i64 %73
  %75 = ptrtoint i32* %74 to i32
  %76 = load i32, i32* %13, align 4
  %77 = load i32, i32* @KMA_COMPRESSOR, align 4
  %78 = load i32, i32* @VM_KERN_MEMORY_COMPRESSOR, align 4
  %79 = call i32 @kernel_memory_populate(i32 %66, i32 %75, i32 %76, i32 %77, i32 %78)
  %80 = load i32, i32* %13, align 4
  %81 = call i64 @C_SEG_BYTES_TO_OFFSET(i32 %80)
  %82 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = add i64 %84, %81
  store i64 %85, i64* %83, align 8
  %86 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = call i64 @C_SEG_OFFSET_TO_BYTES(i64 %88)
  %90 = load i64, i64* @C_SEG_BUFSIZE, align 8
  %91 = icmp sle i64 %89, %90
  %92 = zext i1 %91 to i32
  %93 = call i32 @assert(i32 %92)
  br label %94

94:                                               ; preds = %65, %35
  %95 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %96 = call i32 @c_seg_alloc_nextslot(%struct.TYPE_21__* %95)
  %97 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %98 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = call %struct.TYPE_19__* @C_SEG_SLOT_FROM_INDEX(%struct.TYPE_21__* %97, i32 %100)
  store %struct.TYPE_19__* %101, %struct.TYPE_19__** %10, align 8
  %102 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %102, i32 0, i32 8
  %104 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %103, i32 0, i32 0
  %105 = load i32*, i32** %104, align 8
  %106 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %107 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %106, i32 0, i32 2
  %108 = load i64, i64* %107, align 8
  %109 = getelementptr inbounds i32, i32* %105, i64 %108
  %110 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %110, i32 0, i32 8
  %112 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %111, i32 0, i32 0
  %113 = load i32*, i32** %112, align 8
  %114 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %115 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = getelementptr inbounds i32, i32* %113, i64 %116
  %118 = load i32, i32* %7, align 4
  %119 = call i32 @memcpy(i32* %109, i32* %117, i32 %118)
  %120 = load i32, i32* %7, align 4
  %121 = load i32, i32* @C_SEG_OFFSET_ALIGNMENT_MASK, align 4
  %122 = add nsw i32 %120, %121
  %123 = load i32, i32* @C_SEG_OFFSET_ALIGNMENT_MASK, align 4
  %124 = xor i32 %123, -1
  %125 = and i32 %122, %124
  store i32 %125, i32* %6, align 4
  %126 = load i32, i32* getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @c_seg_major_compact_stats, i32 0, i32 1), align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @c_seg_major_compact_stats, i32 0, i32 1), align 4
  %128 = load i32, i32* %7, align 4
  %129 = load i32, i32* getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @c_seg_major_compact_stats, i32 0, i32 0), align 4
  %130 = add nsw i32 %129, %128
  store i32 %130, i32* getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @c_seg_major_compact_stats, i32 0, i32 0), align 4
  %131 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %132 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %133 = call i32 @cslot_copy(%struct.TYPE_19__* %131, %struct.TYPE_19__* %132)
  %134 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %135 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %134, i32 0, i32 2
  %136 = load i64, i64* %135, align 8
  %137 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %138 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %137, i32 0, i32 0
  store i64 %136, i64* %138, align 8
  %139 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %140 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %139, i32 0, i32 3
  %141 = load i32, i32* %140, align 8
  %142 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %143 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = icmp eq i32 %141, %144
  br i1 %145, label %146, label %151

146:                                              ; preds = %94
  %147 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %148 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %147, i32 0, i32 3
  %149 = load i32, i32* %148, align 8
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %148, align 8
  br label %151

151:                                              ; preds = %146, %94
  %152 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %153 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %152, i32 0, i32 4
  %154 = load i32, i32* %153, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %153, align 4
  %156 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %157 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %157, align 8
  %160 = load i32, i32* %6, align 4
  %161 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %162 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %161, i32 0, i32 5
  %163 = load i32, i32* %162, align 8
  %164 = add nsw i32 %163, %160
  store i32 %164, i32* %162, align 8
  %165 = load i32, i32* %6, align 4
  %166 = call i64 @C_SEG_BYTES_TO_OFFSET(i32 %165)
  %167 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %168 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %167, i32 0, i32 2
  %169 = load i64, i64* %168, align 8
  %170 = add i64 %169, %166
  store i64 %170, i64* %168, align 8
  %171 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %172 = call i32 @PACK_C_SIZE(%struct.TYPE_19__* %171, i32 0)
  %173 = load i32, i32* %6, align 4
  %174 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %175 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %174, i32 0, i32 5
  %176 = load i32, i32* %175, align 8
  %177 = sub nsw i32 %176, %173
  store i32 %177, i32* %175, align 8
  %178 = load i32, i32* %6, align 4
  %179 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %180 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %179, i32 0, i32 6
  %181 = load i32, i32* %180, align 4
  %182 = add nsw i32 %181, %178
  store i32 %182, i32* %180, align 4
  %183 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %184 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %183, i32 0, i32 3
  store i32 0, i32* %184, align 8
  %185 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %186 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %185, i32 0, i32 4
  %187 = load i32, i32* %186, align 4
  %188 = call i32 @assert(i32 %187)
  %189 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %190 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %189, i32 0, i32 4
  %191 = load i32, i32* %190, align 4
  %192 = add nsw i32 %191, -1
  store i32 %192, i32* %190, align 4
  %193 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %194 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %193, i32 0, i32 2
  %195 = load i64, i64* %194, align 8
  %196 = load i64, i64* @C_SEG_OFF_LIMIT, align 8
  %197 = icmp uge i64 %195, %196
  br i1 %197, label %204, label %198

198:                                              ; preds = %151
  %199 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %200 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 8
  %202 = load i32, i32* @C_SLOT_MAX_INDEX, align 4
  %203 = icmp sge i32 %201, %202
  br i1 %203, label %204, label %206

204:                                              ; preds = %198, %151
  %205 = load i32, i32* @FALSE, align 4
  store i32 %205, i32* %12, align 4
  br label %210

206:                                              ; preds = %198
  br label %207

207:                                              ; preds = %206, %34
  %208 = load i32, i32* %9, align 4
  %209 = add nsw i32 %208, 1
  store i32 %209, i32* %9, align 4
  br label %20

210:                                              ; preds = %204, %57, %20
  %211 = load i32, i32* %8, align 4
  %212 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %213 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 8
  %215 = icmp slt i32 %211, %214
  br i1 %215, label %216, label %245

216:                                              ; preds = %210
  %217 = load i32, i32* @TRUE, align 4
  %218 = call i32 @PAGE_REPLACEMENT_ALLOWED(i32 %217)
  br label %219

219:                                              ; preds = %225, %216
  %220 = load i32, i32* %8, align 4
  %221 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %222 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 8
  %224 = icmp slt i32 %220, %223
  br i1 %224, label %225, label %242

225:                                              ; preds = %219
  %226 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %227 = load i32, i32* %8, align 4
  %228 = call %struct.TYPE_19__* @C_SEG_SLOT_FROM_INDEX(%struct.TYPE_21__* %226, i32 %227)
  store %struct.TYPE_19__* %228, %struct.TYPE_19__** %10, align 8
  %229 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %230 = call i64 @C_SLOT_UNPACK_PTR(%struct.TYPE_19__* %229)
  %231 = inttoptr i64 %230 to %struct.TYPE_20__*
  store %struct.TYPE_20__* %231, %struct.TYPE_20__** %5, align 8
  %232 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %233 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %232, i32 0, i32 7
  %234 = load i64, i64* %233, align 8
  %235 = add nsw i64 %234, 1
  %236 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %237 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %236, i32 0, i32 1
  store i64 %235, i64* %237, align 8
  %238 = load i32, i32* %8, align 4
  %239 = add nsw i32 %238, 1
  store i32 %239, i32* %8, align 4
  %240 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %241 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %240, i32 0, i32 0
  store i32 %238, i32* %241, align 8
  br label %219

242:                                              ; preds = %219
  %243 = load i32, i32* @FALSE, align 4
  %244 = call i32 @PAGE_REPLACEMENT_ALLOWED(i32 %243)
  br label %245

245:                                              ; preds = %242, %210
  %246 = load i32, i32* %12, align 4
  ret i32 %246
}

declare dso_local %struct.TYPE_19__* @C_SEG_SLOT_FROM_INDEX(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @UNPACK_C_SIZE(%struct.TYPE_19__*) #1

declare dso_local i64 @C_SEG_OFFSET_TO_BYTES(i64) #1

declare dso_local i32 @kernel_memory_populate(i32, i32, i32, i32, i32) #1

declare dso_local i64 @C_SEG_BYTES_TO_OFFSET(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @c_seg_alloc_nextslot(%struct.TYPE_21__*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @cslot_copy(%struct.TYPE_19__*, %struct.TYPE_19__*) #1

declare dso_local i32 @PACK_C_SIZE(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @PAGE_REPLACEMENT_ALLOWED(i32) #1

declare dso_local i64 @C_SLOT_UNPACK_PTR(%struct.TYPE_19__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
