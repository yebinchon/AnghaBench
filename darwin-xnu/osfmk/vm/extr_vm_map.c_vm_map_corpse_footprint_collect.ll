; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_map.c_vm_map_corpse_footprint_collect.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_map.c_vm_map_corpse_footprint_collect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, i64 }
%struct.TYPE_15__ = type { i32, i32, i64, i32 }
%struct.TYPE_14__ = type { i32, i32, i32, %struct.vm_map_corpse_footprint_header*, %struct.TYPE_12__ }
%struct.vm_map_corpse_footprint_header = type { i32, i32, i32 }
%struct.TYPE_12__ = type { i32 }
%struct.vm_map_corpse_footprint_region = type { i64, i32 }

@KERN_NOT_SUPPORTED = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@kernel_map = common dso_local global i32 0, align 4
@KMA_PAGEABLE = common dso_local global i32 0, align 4
@KMA_GUARD_LAST = common dso_local global i32 0, align 4
@VM_KERN_MEMORY_DIAG = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i64 0, align 8
@vm_map_corpse_footprint_no_buf = common dso_local global i32 0, align 4
@VM_OBJECT_NULL = common dso_local global %struct.TYPE_13__* null, align 8
@VM_PURGABLE_DENY = common dso_local global i64 0, align 8
@PMAP_QUERY_PAGE_PRESENT = common dso_local global i32 0, align 4
@PMAP_QUERY_PAGE_INTERNAL = common dso_local global i32 0, align 4
@vm_map_corpse_footprint_full = common dso_local global i32 0, align 4
@KERN_RESOURCE_SHORTAGE = common dso_local global i64 0, align 8
@VM_MAP_CORPSE_FOOTPRINT_INFO_MAX_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @vm_map_corpse_footprint_collect(%struct.TYPE_14__* %0, %struct.TYPE_15__* %1, %struct.TYPE_14__* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.vm_map_corpse_footprint_header*, align 8
  %12 = alloca %struct.vm_map_corpse_footprint_region*, align 8
  %13 = alloca %struct.vm_map_corpse_footprint_region*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %5, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %6, align 8
  store %struct.TYPE_14__* %2, %struct.TYPE_14__** %7, align 8
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %8, align 4
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %26 = call i32 @vm_map_lock_assert_exclusive(%struct.TYPE_14__* %25)
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %28 = call i32 @vm_map_lock_assert_exclusive(%struct.TYPE_14__* %27)
  %29 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @assert(i32 %31)
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %35, 0
  %37 = xor i1 %36, true
  %38 = zext i1 %37 to i32
  %39 = call i32 @assert(i32 %38)
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %3
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %44, %3
  %50 = load i64, i64* @KERN_NOT_SUPPORTED, align 8
  store i64 %50, i64* %4, align 8
  br label %408

51:                                               ; preds = %44
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 3
  %54 = load %struct.vm_map_corpse_footprint_header*, %struct.vm_map_corpse_footprint_header** %53, align 8
  %55 = icmp eq %struct.vm_map_corpse_footprint_header* %54, null
  br i1 %55, label %56, label %120

56:                                               ; preds = %51
  store i64 0, i64* %17, align 8
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %57, i32 0, i32 4
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = sext i32 %60 to i64
  %62 = mul i64 %61, 19
  %63 = add i64 12, %62
  %64 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @PAGE_SIZE, align 4
  %68 = sdiv i32 %66, %67
  %69 = sext i32 %68 to i64
  %70 = mul i64 %69, 1
  %71 = add i64 %63, %70
  %72 = trunc i64 %71 to i32
  store i32 %72, i32* %18, align 4
  %73 = load i32, i32* %18, align 4
  %74 = call i32 @round_page(i32 %73)
  store i32 %74, i32* %18, align 4
  %75 = load i32, i32* %18, align 4
  %76 = icmp sgt i32 %75, 8388608
  br i1 %76, label %77, label %78

77:                                               ; preds = %56
  store i32 8388608, i32* %18, align 4
  br label %78

78:                                               ; preds = %77, %56
  %79 = load i32, i32* @kernel_map, align 4
  %80 = load i32, i32* %18, align 4
  %81 = load i32, i32* @PAGE_SIZE, align 4
  %82 = add nsw i32 %80, %81
  %83 = load i32, i32* @KMA_PAGEABLE, align 4
  %84 = load i32, i32* @KMA_GUARD_LAST, align 4
  %85 = or i32 %83, %84
  %86 = load i32, i32* @VM_KERN_MEMORY_DIAG, align 4
  %87 = call i64 @kernel_memory_allocate(i32 %79, i64* %17, i32 %82, i32 0, i32 %85, i32 %86)
  store i64 %87, i64* %10, align 8
  %88 = load i64, i64* %10, align 8
  %89 = load i64, i64* @KERN_SUCCESS, align 8
  %90 = icmp ne i64 %88, %89
  br i1 %90, label %91, label %95

91:                                               ; preds = %78
  %92 = load i32, i32* @vm_map_corpse_footprint_no_buf, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* @vm_map_corpse_footprint_no_buf, align 4
  %94 = load i64, i64* %10, align 8
  store i64 %94, i64* %4, align 8
  br label %408

95:                                               ; preds = %78
  %96 = load i64, i64* %17, align 8
  %97 = inttoptr i64 %96 to %struct.vm_map_corpse_footprint_header*
  store %struct.vm_map_corpse_footprint_header* %97, %struct.vm_map_corpse_footprint_header** %11, align 8
  %98 = load %struct.vm_map_corpse_footprint_header*, %struct.vm_map_corpse_footprint_header** %11, align 8
  %99 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %100 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %99, i32 0, i32 3
  store %struct.vm_map_corpse_footprint_header* %98, %struct.vm_map_corpse_footprint_header** %100, align 8
  %101 = load i32, i32* %18, align 4
  %102 = load %struct.vm_map_corpse_footprint_header*, %struct.vm_map_corpse_footprint_header** %11, align 8
  %103 = getelementptr inbounds %struct.vm_map_corpse_footprint_header, %struct.vm_map_corpse_footprint_header* %102, i32 0, i32 0
  store i32 %101, i32* %103, align 4
  %104 = load %struct.vm_map_corpse_footprint_header*, %struct.vm_map_corpse_footprint_header** %11, align 8
  %105 = getelementptr inbounds %struct.vm_map_corpse_footprint_header, %struct.vm_map_corpse_footprint_header* %104, i32 0, i32 1
  store i32 12, i32* %105, align 4
  %106 = load %struct.vm_map_corpse_footprint_header*, %struct.vm_map_corpse_footprint_header** %11, align 8
  %107 = getelementptr inbounds %struct.vm_map_corpse_footprint_header, %struct.vm_map_corpse_footprint_header* %106, i32 0, i32 2
  store i32 0, i32* %107, align 4
  %108 = load %struct.vm_map_corpse_footprint_header*, %struct.vm_map_corpse_footprint_header** %11, align 8
  %109 = bitcast %struct.vm_map_corpse_footprint_header* %108 to i8*
  %110 = load %struct.vm_map_corpse_footprint_header*, %struct.vm_map_corpse_footprint_header** %11, align 8
  %111 = getelementptr inbounds %struct.vm_map_corpse_footprint_header, %struct.vm_map_corpse_footprint_header* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i8, i8* %109, i64 %113
  %115 = bitcast i8* %114 to %struct.vm_map_corpse_footprint_region*
  store %struct.vm_map_corpse_footprint_region* %115, %struct.vm_map_corpse_footprint_region** %12, align 8
  %116 = load %struct.vm_map_corpse_footprint_region*, %struct.vm_map_corpse_footprint_region** %12, align 8
  %117 = getelementptr inbounds %struct.vm_map_corpse_footprint_region, %struct.vm_map_corpse_footprint_region* %116, i32 0, i32 0
  store i64 0, i64* %117, align 8
  %118 = load %struct.vm_map_corpse_footprint_region*, %struct.vm_map_corpse_footprint_region** %12, align 8
  %119 = getelementptr inbounds %struct.vm_map_corpse_footprint_region, %struct.vm_map_corpse_footprint_region* %118, i32 0, i32 1
  store i32 0, i32* %119, align 8
  br label %132

120:                                              ; preds = %51
  %121 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %122 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %121, i32 0, i32 3
  %123 = load %struct.vm_map_corpse_footprint_header*, %struct.vm_map_corpse_footprint_header** %122, align 8
  store %struct.vm_map_corpse_footprint_header* %123, %struct.vm_map_corpse_footprint_header** %11, align 8
  %124 = load %struct.vm_map_corpse_footprint_header*, %struct.vm_map_corpse_footprint_header** %11, align 8
  %125 = bitcast %struct.vm_map_corpse_footprint_header* %124 to i8*
  %126 = load %struct.vm_map_corpse_footprint_header*, %struct.vm_map_corpse_footprint_header** %11, align 8
  %127 = getelementptr inbounds %struct.vm_map_corpse_footprint_header, %struct.vm_map_corpse_footprint_header* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i8, i8* %125, i64 %129
  %131 = bitcast i8* %130 to %struct.vm_map_corpse_footprint_region*
  store %struct.vm_map_corpse_footprint_region* %131, %struct.vm_map_corpse_footprint_region** %12, align 8
  br label %132

132:                                              ; preds = %120, %95
  %133 = load %struct.vm_map_corpse_footprint_header*, %struct.vm_map_corpse_footprint_header** %11, align 8
  %134 = ptrtoint %struct.vm_map_corpse_footprint_header* %133 to i64
  %135 = load %struct.vm_map_corpse_footprint_header*, %struct.vm_map_corpse_footprint_header** %11, align 8
  %136 = getelementptr inbounds %struct.vm_map_corpse_footprint_header, %struct.vm_map_corpse_footprint_header* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = sext i32 %137 to i64
  %139 = add i64 %134, %138
  store i64 %139, i64* %15, align 8
  %140 = load %struct.vm_map_corpse_footprint_region*, %struct.vm_map_corpse_footprint_region** %12, align 8
  %141 = getelementptr inbounds %struct.vm_map_corpse_footprint_region, %struct.vm_map_corpse_footprint_region* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = load %struct.vm_map_corpse_footprint_region*, %struct.vm_map_corpse_footprint_region** %12, align 8
  %144 = getelementptr inbounds %struct.vm_map_corpse_footprint_region, %struct.vm_map_corpse_footprint_region* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 8
  %146 = load i32, i32* @PAGE_SIZE, align 4
  %147 = mul nsw i32 %145, %146
  %148 = sext i32 %147 to i64
  %149 = add nsw i64 %142, %148
  %150 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %151 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = sext i32 %152 to i64
  %154 = icmp ne i64 %149, %153
  br i1 %154, label %155, label %250

155:                                              ; preds = %132
  %156 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %157 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = sext i32 %158 to i64
  %160 = load %struct.vm_map_corpse_footprint_region*, %struct.vm_map_corpse_footprint_region** %12, align 8
  %161 = getelementptr inbounds %struct.vm_map_corpse_footprint_region, %struct.vm_map_corpse_footprint_region* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = sub nsw i64 %159, %162
  %164 = load i32, i32* @PAGE_SIZE, align 4
  %165 = sext i32 %164 to i64
  %166 = sdiv i64 %163, %165
  %167 = load %struct.vm_map_corpse_footprint_region*, %struct.vm_map_corpse_footprint_region** %12, align 8
  %168 = getelementptr inbounds %struct.vm_map_corpse_footprint_region, %struct.vm_map_corpse_footprint_region* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 8
  %170 = sext i32 %169 to i64
  %171 = sub nsw i64 %166, %170
  store i64 %171, i64* %19, align 8
  %172 = load %struct.vm_map_corpse_footprint_region*, %struct.vm_map_corpse_footprint_region** %12, align 8
  %173 = getelementptr inbounds %struct.vm_map_corpse_footprint_region, %struct.vm_map_corpse_footprint_region* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 8
  %175 = load %struct.vm_map_corpse_footprint_header*, %struct.vm_map_corpse_footprint_header** %11, align 8
  %176 = getelementptr inbounds %struct.vm_map_corpse_footprint_header, %struct.vm_map_corpse_footprint_header* %175, i32 0, i32 2
  %177 = load i32, i32* %176, align 4
  %178 = sub nsw i32 %174, %177
  %179 = call i32 @roundup(i32 %178, i32 4)
  %180 = sext i32 %179 to i64
  %181 = add i64 16, %180
  %182 = load %struct.vm_map_corpse_footprint_region*, %struct.vm_map_corpse_footprint_region** %12, align 8
  %183 = getelementptr inbounds %struct.vm_map_corpse_footprint_region, %struct.vm_map_corpse_footprint_region* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 8
  %185 = load %struct.vm_map_corpse_footprint_header*, %struct.vm_map_corpse_footprint_header** %11, align 8
  %186 = getelementptr inbounds %struct.vm_map_corpse_footprint_header, %struct.vm_map_corpse_footprint_header* %185, i32 0, i32 2
  %187 = load i32, i32* %186, align 4
  %188 = sub nsw i32 %184, %187
  %189 = sext i32 %188 to i64
  %190 = sub i64 %181, %189
  store i64 %190, i64* %20, align 8
  %191 = load i64, i64* %20, align 8
  %192 = load i64, i64* %19, align 8
  %193 = icmp slt i64 %191, %192
  br i1 %193, label %201, label %194

194:                                              ; preds = %155
  %195 = load %struct.vm_map_corpse_footprint_region*, %struct.vm_map_corpse_footprint_region** %12, align 8
  %196 = getelementptr inbounds %struct.vm_map_corpse_footprint_region, %struct.vm_map_corpse_footprint_region* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 8
  %198 = load i64, i64* %19, align 8
  %199 = call i64 @os_add3_overflow(i32 %197, i64 %198, i32 1, i64* %16)
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %217

201:                                              ; preds = %194, %155
  %202 = load %struct.vm_map_corpse_footprint_header*, %struct.vm_map_corpse_footprint_header** %11, align 8
  %203 = call %struct.vm_map_corpse_footprint_region* @vm_map_corpse_footprint_new_region(%struct.vm_map_corpse_footprint_header* %202)
  store %struct.vm_map_corpse_footprint_region* %203, %struct.vm_map_corpse_footprint_region** %13, align 8
  %204 = load %struct.vm_map_corpse_footprint_region*, %struct.vm_map_corpse_footprint_region** %13, align 8
  %205 = icmp eq %struct.vm_map_corpse_footprint_region* %204, null
  br i1 %205, label %206, label %207

206:                                              ; preds = %201
  br label %404

207:                                              ; preds = %201
  %208 = load %struct.vm_map_corpse_footprint_region*, %struct.vm_map_corpse_footprint_region** %13, align 8
  store %struct.vm_map_corpse_footprint_region* %208, %struct.vm_map_corpse_footprint_region** %12, align 8
  %209 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %210 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 8
  %212 = sext i32 %211 to i64
  %213 = load %struct.vm_map_corpse_footprint_region*, %struct.vm_map_corpse_footprint_region** %12, align 8
  %214 = getelementptr inbounds %struct.vm_map_corpse_footprint_region, %struct.vm_map_corpse_footprint_region* %213, i32 0, i32 0
  store i64 %212, i64* %214, align 8
  %215 = load %struct.vm_map_corpse_footprint_region*, %struct.vm_map_corpse_footprint_region** %12, align 8
  %216 = getelementptr inbounds %struct.vm_map_corpse_footprint_region, %struct.vm_map_corpse_footprint_region* %215, i32 0, i32 1
  store i32 0, i32* %216, align 8
  br label %249

217:                                              ; preds = %194
  br label %218

218:                                              ; preds = %245, %217
  %219 = load i64, i64* %19, align 8
  %220 = icmp sgt i64 %219, 0
  br i1 %220, label %221, label %248

221:                                              ; preds = %218
  %222 = load %struct.vm_map_corpse_footprint_region*, %struct.vm_map_corpse_footprint_region** %12, align 8
  %223 = bitcast %struct.vm_map_corpse_footprint_region* %222 to i8*
  %224 = getelementptr inbounds i8, i8* %223, i64 16
  %225 = load %struct.vm_map_corpse_footprint_region*, %struct.vm_map_corpse_footprint_region** %12, align 8
  %226 = getelementptr inbounds %struct.vm_map_corpse_footprint_region, %struct.vm_map_corpse_footprint_region* %225, i32 0, i32 1
  %227 = load i32, i32* %226, align 8
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds i8, i8* %224, i64 %228
  store i8* %229, i8** %14, align 8
  %230 = load i8*, i8** %14, align 8
  %231 = ptrtoint i8* %230 to i64
  %232 = load i64, i64* %15, align 8
  %233 = icmp uge i64 %231, %232
  br i1 %233, label %234, label %235

234:                                              ; preds = %221
  br label %404

235:                                              ; preds = %221
  %236 = load %struct.vm_map_corpse_footprint_region*, %struct.vm_map_corpse_footprint_region** %12, align 8
  %237 = getelementptr inbounds %struct.vm_map_corpse_footprint_region, %struct.vm_map_corpse_footprint_region* %236, i32 0, i32 1
  %238 = load i32, i32* %237, align 8
  %239 = add nsw i32 %238, 1
  store i32 %239, i32* %237, align 8
  %240 = load i8*, i8** %14, align 8
  store i8 0, i8* %240, align 1
  %241 = load %struct.vm_map_corpse_footprint_header*, %struct.vm_map_corpse_footprint_header** %11, align 8
  %242 = getelementptr inbounds %struct.vm_map_corpse_footprint_header, %struct.vm_map_corpse_footprint_header* %241, i32 0, i32 2
  %243 = load i32, i32* %242, align 4
  %244 = add nsw i32 %243, 1
  store i32 %244, i32* %242, align 4
  br label %245

245:                                              ; preds = %235
  %246 = load i64, i64* %19, align 8
  %247 = add nsw i64 %246, -1
  store i64 %247, i64* %19, align 8
  br label %218

248:                                              ; preds = %218
  br label %249

249:                                              ; preds = %248, %207
  br label %250

250:                                              ; preds = %249, %132
  %251 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %252 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 8
  store i32 %253, i32* %8, align 4
  br label %254

254:                                              ; preds = %398, %250
  %255 = load i32, i32* %8, align 4
  %256 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %257 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %256, i32 0, i32 1
  %258 = load i32, i32* %257, align 4
  %259 = icmp slt i32 %255, %258
  br i1 %259, label %260, label %402

260:                                              ; preds = %254
  %261 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %262 = call %struct.TYPE_13__* @VME_OBJECT(%struct.TYPE_15__* %261)
  store %struct.TYPE_13__* %262, %struct.TYPE_13__** %21, align 8
  %263 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %264 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %263, i32 0, i32 3
  %265 = load i32, i32* %264, align 8
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %291, label %267

267:                                              ; preds = %260
  %268 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %269 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %268, i32 0, i32 2
  %270 = load i64, i64* %269, align 8
  %271 = icmp ne i64 %270, 0
  br i1 %271, label %272, label %291

272:                                              ; preds = %267
  %273 = load %struct.TYPE_13__*, %struct.TYPE_13__** %21, align 8
  %274 = load %struct.TYPE_13__*, %struct.TYPE_13__** @VM_OBJECT_NULL, align 8
  %275 = icmp ne %struct.TYPE_13__* %273, %274
  br i1 %275, label %276, label %291

276:                                              ; preds = %272
  %277 = load %struct.TYPE_13__*, %struct.TYPE_13__** %21, align 8
  %278 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %277, i32 0, i32 1
  %279 = load i64, i64* %278, align 8
  %280 = icmp ne i64 %279, 0
  br i1 %280, label %281, label %291

281:                                              ; preds = %276
  %282 = load %struct.TYPE_13__*, %struct.TYPE_13__** %21, align 8
  %283 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %282, i32 0, i32 0
  %284 = load i64, i64* %283, align 8
  %285 = load i64, i64* @VM_PURGABLE_DENY, align 8
  %286 = icmp eq i64 %284, %285
  br i1 %286, label %287, label %291

287:                                              ; preds = %281
  %288 = load i32, i32* @PMAP_QUERY_PAGE_PRESENT, align 4
  %289 = load i32, i32* @PMAP_QUERY_PAGE_INTERNAL, align 4
  %290 = or i32 %288, %289
  store i32 %290, i32* %9, align 4
  br label %297

291:                                              ; preds = %281, %276, %272, %267, %260
  store i32 0, i32* %9, align 4
  %292 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %293 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %292, i32 0, i32 2
  %294 = load i32, i32* %293, align 8
  %295 = load i32, i32* %8, align 4
  %296 = call i32 @pmap_query_page_info(i32 %294, i32 %295, i32* %9)
  br label %297

297:                                              ; preds = %291, %287
  %298 = load i32, i32* %9, align 4
  %299 = icmp eq i32 %298, 0
  br i1 %299, label %300, label %312

300:                                              ; preds = %297
  %301 = load %struct.vm_map_corpse_footprint_region*, %struct.vm_map_corpse_footprint_region** %12, align 8
  %302 = getelementptr inbounds %struct.vm_map_corpse_footprint_region, %struct.vm_map_corpse_footprint_region* %301, i32 0, i32 1
  %303 = load i32, i32* %302, align 8
  %304 = icmp eq i32 %303, 0
  br i1 %304, label %305, label %312

305:                                              ; preds = %300
  %306 = load i32, i32* @PAGE_SIZE, align 4
  %307 = sext i32 %306 to i64
  %308 = load %struct.vm_map_corpse_footprint_region*, %struct.vm_map_corpse_footprint_region** %12, align 8
  %309 = getelementptr inbounds %struct.vm_map_corpse_footprint_region, %struct.vm_map_corpse_footprint_region* %308, i32 0, i32 0
  %310 = load i64, i64* %309, align 8
  %311 = add nsw i64 %310, %307
  store i64 %311, i64* %309, align 8
  br label %398

312:                                              ; preds = %300, %297
  %313 = load %struct.vm_map_corpse_footprint_region*, %struct.vm_map_corpse_footprint_region** %12, align 8
  %314 = getelementptr inbounds %struct.vm_map_corpse_footprint_region, %struct.vm_map_corpse_footprint_region* %313, i32 0, i32 1
  %315 = load i32, i32* %314, align 8
  %316 = call i64 @os_add_overflow(i32 %315, i32 1, i64* %16)
  %317 = icmp ne i64 %316, 0
  br i1 %317, label %318, label %332

318:                                              ; preds = %312
  %319 = load %struct.vm_map_corpse_footprint_header*, %struct.vm_map_corpse_footprint_header** %11, align 8
  %320 = call %struct.vm_map_corpse_footprint_region* @vm_map_corpse_footprint_new_region(%struct.vm_map_corpse_footprint_header* %319)
  store %struct.vm_map_corpse_footprint_region* %320, %struct.vm_map_corpse_footprint_region** %13, align 8
  %321 = load %struct.vm_map_corpse_footprint_region*, %struct.vm_map_corpse_footprint_region** %13, align 8
  %322 = icmp eq %struct.vm_map_corpse_footprint_region* %321, null
  br i1 %322, label %323, label %324

323:                                              ; preds = %318
  br label %404

324:                                              ; preds = %318
  %325 = load %struct.vm_map_corpse_footprint_region*, %struct.vm_map_corpse_footprint_region** %13, align 8
  store %struct.vm_map_corpse_footprint_region* %325, %struct.vm_map_corpse_footprint_region** %12, align 8
  %326 = load i32, i32* %8, align 4
  %327 = sext i32 %326 to i64
  %328 = load %struct.vm_map_corpse_footprint_region*, %struct.vm_map_corpse_footprint_region** %12, align 8
  %329 = getelementptr inbounds %struct.vm_map_corpse_footprint_region, %struct.vm_map_corpse_footprint_region* %328, i32 0, i32 0
  store i64 %327, i64* %329, align 8
  %330 = load %struct.vm_map_corpse_footprint_region*, %struct.vm_map_corpse_footprint_region** %12, align 8
  %331 = getelementptr inbounds %struct.vm_map_corpse_footprint_region, %struct.vm_map_corpse_footprint_region* %330, i32 0, i32 1
  store i32 0, i32* %331, align 8
  br label %332

332:                                              ; preds = %324, %312
  %333 = load %struct.vm_map_corpse_footprint_region*, %struct.vm_map_corpse_footprint_region** %12, align 8
  %334 = bitcast %struct.vm_map_corpse_footprint_region* %333 to i8*
  %335 = getelementptr inbounds i8, i8* %334, i64 16
  %336 = load %struct.vm_map_corpse_footprint_region*, %struct.vm_map_corpse_footprint_region** %12, align 8
  %337 = getelementptr inbounds %struct.vm_map_corpse_footprint_region, %struct.vm_map_corpse_footprint_region* %336, i32 0, i32 1
  %338 = load i32, i32* %337, align 8
  %339 = sext i32 %338 to i64
  %340 = getelementptr inbounds i8, i8* %335, i64 %339
  store i8* %340, i8** %14, align 8
  %341 = load i8*, i8** %14, align 8
  %342 = ptrtoint i8* %341 to i64
  %343 = load i64, i64* %15, align 8
  %344 = icmp uge i64 %342, %343
  br i1 %344, label %345, label %346

345:                                              ; preds = %332
  br label %404

346:                                              ; preds = %332
  %347 = load i32, i32* %9, align 4
  %348 = trunc i32 %347 to i8
  %349 = load i8*, i8** %14, align 8
  store i8 %348, i8* %349, align 1
  %350 = load %struct.vm_map_corpse_footprint_region*, %struct.vm_map_corpse_footprint_region** %12, align 8
  %351 = getelementptr inbounds %struct.vm_map_corpse_footprint_region, %struct.vm_map_corpse_footprint_region* %350, i32 0, i32 1
  %352 = load i32, i32* %351, align 8
  %353 = add nsw i32 %352, 1
  store i32 %353, i32* %351, align 8
  %354 = load i32, i32* %9, align 4
  %355 = icmp ne i32 %354, 0
  br i1 %355, label %356, label %359

356:                                              ; preds = %346
  %357 = load %struct.vm_map_corpse_footprint_header*, %struct.vm_map_corpse_footprint_header** %11, align 8
  %358 = getelementptr inbounds %struct.vm_map_corpse_footprint_header, %struct.vm_map_corpse_footprint_header* %357, i32 0, i32 2
  store i32 0, i32* %358, align 4
  br label %398

359:                                              ; preds = %346
  %360 = load %struct.vm_map_corpse_footprint_header*, %struct.vm_map_corpse_footprint_header** %11, align 8
  %361 = getelementptr inbounds %struct.vm_map_corpse_footprint_header, %struct.vm_map_corpse_footprint_header* %360, i32 0, i32 2
  %362 = load i32, i32* %361, align 4
  %363 = add nsw i32 %362, 1
  store i32 %363, i32* %361, align 4
  %364 = load %struct.vm_map_corpse_footprint_header*, %struct.vm_map_corpse_footprint_header** %11, align 8
  %365 = getelementptr inbounds %struct.vm_map_corpse_footprint_header, %struct.vm_map_corpse_footprint_header* %364, i32 0, i32 2
  %366 = load i32, i32* %365, align 4
  %367 = load %struct.vm_map_corpse_footprint_region*, %struct.vm_map_corpse_footprint_region** %12, align 8
  %368 = getelementptr inbounds %struct.vm_map_corpse_footprint_region, %struct.vm_map_corpse_footprint_region* %367, i32 0, i32 1
  %369 = load i32, i32* %368, align 8
  %370 = load %struct.vm_map_corpse_footprint_header*, %struct.vm_map_corpse_footprint_header** %11, align 8
  %371 = getelementptr inbounds %struct.vm_map_corpse_footprint_header, %struct.vm_map_corpse_footprint_header* %370, i32 0, i32 2
  %372 = load i32, i32* %371, align 4
  %373 = sub nsw i32 %369, %372
  %374 = sext i32 %373 to i64
  %375 = and i64 %374, 3
  %376 = trunc i64 %375 to i32
  %377 = call i32 @roundup(i32 %376, i32 4)
  %378 = add nsw i32 %366, %377
  %379 = sext i32 %378 to i64
  %380 = icmp ult i64 %379, 12
  br i1 %380, label %381, label %382

381:                                              ; preds = %359
  br label %398

382:                                              ; preds = %359
  %383 = load %struct.vm_map_corpse_footprint_header*, %struct.vm_map_corpse_footprint_header** %11, align 8
  %384 = call %struct.vm_map_corpse_footprint_region* @vm_map_corpse_footprint_new_region(%struct.vm_map_corpse_footprint_header* %383)
  store %struct.vm_map_corpse_footprint_region* %384, %struct.vm_map_corpse_footprint_region** %13, align 8
  %385 = load %struct.vm_map_corpse_footprint_region*, %struct.vm_map_corpse_footprint_region** %13, align 8
  %386 = icmp eq %struct.vm_map_corpse_footprint_region* %385, null
  br i1 %386, label %387, label %388

387:                                              ; preds = %382
  br label %404

388:                                              ; preds = %382
  %389 = load %struct.vm_map_corpse_footprint_region*, %struct.vm_map_corpse_footprint_region** %13, align 8
  store %struct.vm_map_corpse_footprint_region* %389, %struct.vm_map_corpse_footprint_region** %12, align 8
  %390 = load %struct.vm_map_corpse_footprint_region*, %struct.vm_map_corpse_footprint_region** %12, align 8
  %391 = getelementptr inbounds %struct.vm_map_corpse_footprint_region, %struct.vm_map_corpse_footprint_region* %390, i32 0, i32 1
  store i32 0, i32* %391, align 8
  %392 = load i32, i32* %8, align 4
  %393 = load i32, i32* @PAGE_SIZE, align 4
  %394 = add nsw i32 %392, %393
  %395 = sext i32 %394 to i64
  %396 = load %struct.vm_map_corpse_footprint_region*, %struct.vm_map_corpse_footprint_region** %12, align 8
  %397 = getelementptr inbounds %struct.vm_map_corpse_footprint_region, %struct.vm_map_corpse_footprint_region* %396, i32 0, i32 0
  store i64 %395, i64* %397, align 8
  br label %398

398:                                              ; preds = %388, %381, %356, %305
  %399 = load i32, i32* @PAGE_SIZE, align 4
  %400 = load i32, i32* %8, align 4
  %401 = add nsw i32 %400, %399
  store i32 %401, i32* %8, align 4
  br label %254

402:                                              ; preds = %254
  %403 = load i64, i64* @KERN_SUCCESS, align 8
  store i64 %403, i64* %4, align 8
  br label %408

404:                                              ; preds = %387, %345, %323, %234, %206
  %405 = load i32, i32* @vm_map_corpse_footprint_full, align 4
  %406 = add nsw i32 %405, 1
  store i32 %406, i32* @vm_map_corpse_footprint_full, align 4
  %407 = load i64, i64* @KERN_RESOURCE_SHORTAGE, align 8
  store i64 %407, i64* %4, align 8
  br label %408

408:                                              ; preds = %404, %402, %91, %49
  %409 = load i64, i64* %4, align 8
  ret i64 %409
}

declare dso_local i32 @vm_map_lock_assert_exclusive(%struct.TYPE_14__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @round_page(i32) #1

declare dso_local i64 @kernel_memory_allocate(i32, i64*, i32, i32, i32, i32) #1

declare dso_local i32 @roundup(i32, i32) #1

declare dso_local i64 @os_add3_overflow(i32, i64, i32, i64*) #1

declare dso_local %struct.vm_map_corpse_footprint_region* @vm_map_corpse_footprint_new_region(%struct.vm_map_corpse_footprint_header*) #1

declare dso_local %struct.TYPE_13__* @VME_OBJECT(%struct.TYPE_15__*) #1

declare dso_local i32 @pmap_query_page_info(i32, i32, i32*) #1

declare dso_local i64 @os_add_overflow(i32, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
