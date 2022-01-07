; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_map.c_vm_map_entry_insert.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_map.c_vm_map_entry_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32, i32, i8*, %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_22__ = type { i8*, i8*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i64, i32, i8*, i8*, i32, i8*, i8*, i8*, i8*, i8*, i8* }

@PAGE_SHIFT = common dso_local global i64 0, align 8
@TRUE = common dso_local global i8* null, align 8
@FALSE = common dso_local global i8* null, align 8
@VM_MAP_KERNEL_FLAGS_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_22__* @vm_map_entry_insert(%struct.TYPE_21__* %0, %struct.TYPE_22__* %1, i8* %2, i8* %3, i32 %4, i32 %5, i8* %6, i8* %7, i8* %8, i8* %9, i8* %10, i32 %11, i32 %12, i32 %13, i8* %14, i8* %15, i32 %16, i8* %17, i8* %18, i8* %19, i32 %20) #0 {
  %22 = alloca %struct.TYPE_21__*, align 8
  %23 = alloca %struct.TYPE_22__*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i8*, align 8
  %29 = alloca i8*, align 8
  %30 = alloca i8*, align 8
  %31 = alloca i8*, align 8
  %32 = alloca i8*, align 8
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i8*, align 8
  %37 = alloca i8*, align 8
  %38 = alloca i32, align 4
  %39 = alloca i8*, align 8
  %40 = alloca i8*, align 8
  %41 = alloca i8*, align 8
  %42 = alloca i32, align 4
  %43 = alloca %struct.TYPE_22__*, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %22, align 8
  store %struct.TYPE_22__* %1, %struct.TYPE_22__** %23, align 8
  store i8* %2, i8** %24, align 8
  store i8* %3, i8** %25, align 8
  store i32 %4, i32* %26, align 4
  store i32 %5, i32* %27, align 4
  store i8* %6, i8** %28, align 8
  store i8* %7, i8** %29, align 8
  store i8* %8, i8** %30, align 8
  store i8* %9, i8** %31, align 8
  store i8* %10, i8** %32, align 8
  store i32 %11, i32* %33, align 4
  store i32 %12, i32* %34, align 4
  store i32 %13, i32* %35, align 4
  store i8* %14, i8** %36, align 8
  store i8* %15, i8** %37, align 8
  store i32 %16, i32* %38, align 4
  store i8* %17, i8** %39, align 8
  store i8* %18, i8** %40, align 8
  store i8* %19, i8** %41, align 8
  store i32 %20, i32* %42, align 4
  %44 = load %struct.TYPE_22__*, %struct.TYPE_22__** %23, align 8
  %45 = icmp ne %struct.TYPE_22__* %44, null
  %46 = zext i1 %45 to i32
  %47 = call i32 @assert(i32 %46)
  %48 = load %struct.TYPE_21__*, %struct.TYPE_21__** %22, align 8
  %49 = call i32 @vm_map_lock_assert_exclusive(%struct.TYPE_21__* %48)
  %50 = load %struct.TYPE_21__*, %struct.TYPE_21__** %22, align 8
  %51 = load %struct.TYPE_21__*, %struct.TYPE_21__** %22, align 8
  %52 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %51, i32 0, i32 3
  %53 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp ne i32 %54, 0
  %56 = xor i1 %55, true
  %57 = zext i1 %56 to i32
  %58 = call %struct.TYPE_22__* @vm_map_entry_create(%struct.TYPE_21__* %50, i32 %57)
  store %struct.TYPE_22__* %58, %struct.TYPE_22__** %43, align 8
  %59 = load %struct.TYPE_21__*, %struct.TYPE_21__** %22, align 8
  %60 = call i64 @VM_MAP_PAGE_SHIFT(%struct.TYPE_21__* %59)
  %61 = load i64, i64* @PAGE_SHIFT, align 8
  %62 = icmp ne i64 %60, %61
  br i1 %62, label %63, label %67

63:                                               ; preds = %21
  %64 = load i8*, i8** @TRUE, align 8
  %65 = load %struct.TYPE_22__*, %struct.TYPE_22__** %43, align 8
  %66 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %65, i32 0, i32 24
  store i8* %64, i8** %66, align 8
  br label %71

67:                                               ; preds = %21
  %68 = load i8*, i8** @FALSE, align 8
  %69 = load %struct.TYPE_22__*, %struct.TYPE_22__** %43, align 8
  %70 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %69, i32 0, i32 24
  store i8* %68, i8** %70, align 8
  br label %71

71:                                               ; preds = %67, %63
  %72 = load i8*, i8** %39, align 8
  %73 = icmp ne i8* %72, null
  br i1 %73, label %74, label %90

74:                                               ; preds = %71
  %75 = load i8*, i8** %24, align 8
  %76 = load %struct.TYPE_21__*, %struct.TYPE_21__** %22, align 8
  %77 = call i32 @VM_MAP_PAGE_MASK(%struct.TYPE_21__* %76)
  %78 = call i32 @VM_MAP_PAGE_ALIGNED(i8* %75, i32 %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %74
  %81 = load i8*, i8** %25, align 8
  %82 = load %struct.TYPE_21__*, %struct.TYPE_21__** %22, align 8
  %83 = call i32 @VM_MAP_PAGE_MASK(%struct.TYPE_21__* %82)
  %84 = call i32 @VM_MAP_PAGE_ALIGNED(i8* %81, i32 %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %90, label %86

86:                                               ; preds = %80, %74
  %87 = load i8*, i8** @FALSE, align 8
  %88 = load %struct.TYPE_22__*, %struct.TYPE_22__** %43, align 8
  %89 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %88, i32 0, i32 24
  store i8* %87, i8** %89, align 8
  br label %90

90:                                               ; preds = %86, %80, %71
  %91 = load i8*, i8** %24, align 8
  %92 = load %struct.TYPE_22__*, %struct.TYPE_22__** %43, align 8
  %93 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %92, i32 0, i32 0
  store i8* %91, i8** %93, align 8
  %94 = load i8*, i8** %25, align 8
  %95 = load %struct.TYPE_22__*, %struct.TYPE_22__** %43, align 8
  %96 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %95, i32 0, i32 1
  store i8* %94, i8** %96, align 8
  %97 = load %struct.TYPE_22__*, %struct.TYPE_22__** %43, align 8
  %98 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %97, i32 0, i32 0
  %99 = load i8*, i8** %98, align 8
  %100 = call i32 @page_aligned(i8* %99)
  %101 = call i32 @assert(i32 %100)
  %102 = load %struct.TYPE_22__*, %struct.TYPE_22__** %43, align 8
  %103 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %102, i32 0, i32 1
  %104 = load i8*, i8** %103, align 8
  %105 = call i32 @page_aligned(i8* %104)
  %106 = call i32 @assert(i32 %105)
  %107 = load %struct.TYPE_22__*, %struct.TYPE_22__** %43, align 8
  %108 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %107, i32 0, i32 24
  %109 = load i8*, i8** %108, align 8
  %110 = icmp ne i8* %109, null
  br i1 %110, label %111, label %126

111:                                              ; preds = %90
  %112 = load %struct.TYPE_22__*, %struct.TYPE_22__** %43, align 8
  %113 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %112, i32 0, i32 0
  %114 = load i8*, i8** %113, align 8
  %115 = load %struct.TYPE_21__*, %struct.TYPE_21__** %22, align 8
  %116 = call i32 @VM_MAP_PAGE_MASK(%struct.TYPE_21__* %115)
  %117 = call i32 @VM_MAP_PAGE_ALIGNED(i8* %114, i32 %116)
  %118 = call i32 @assert(i32 %117)
  %119 = load %struct.TYPE_22__*, %struct.TYPE_22__** %43, align 8
  %120 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %119, i32 0, i32 1
  %121 = load i8*, i8** %120, align 8
  %122 = load %struct.TYPE_21__*, %struct.TYPE_21__** %22, align 8
  %123 = call i32 @VM_MAP_PAGE_MASK(%struct.TYPE_21__* %122)
  %124 = call i32 @VM_MAP_PAGE_ALIGNED(i8* %121, i32 %123)
  %125 = call i32 @assert(i32 %124)
  br label %126

126:                                              ; preds = %111, %90
  %127 = load %struct.TYPE_22__*, %struct.TYPE_22__** %43, align 8
  %128 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %127, i32 0, i32 0
  %129 = load i8*, i8** %128, align 8
  %130 = load %struct.TYPE_22__*, %struct.TYPE_22__** %43, align 8
  %131 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %130, i32 0, i32 1
  %132 = load i8*, i8** %131, align 8
  %133 = icmp ult i8* %129, %132
  %134 = zext i1 %133 to i32
  %135 = call i32 @assert(i32 %134)
  %136 = load %struct.TYPE_22__*, %struct.TYPE_22__** %43, align 8
  %137 = load i32, i32* %26, align 4
  %138 = call i32 @VME_OBJECT_SET(%struct.TYPE_22__* %136, i32 %137)
  %139 = load %struct.TYPE_22__*, %struct.TYPE_22__** %43, align 8
  %140 = load i32, i32* %27, align 4
  %141 = call i32 @VME_OFFSET_SET(%struct.TYPE_22__* %139, i32 %140)
  %142 = load i8*, i8** %29, align 8
  %143 = load %struct.TYPE_22__*, %struct.TYPE_22__** %43, align 8
  %144 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %143, i32 0, i32 23
  store i8* %142, i8** %144, align 8
  %145 = load i8*, i8** %40, align 8
  %146 = load %struct.TYPE_22__*, %struct.TYPE_22__** %43, align 8
  %147 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %146, i32 0, i32 22
  store i8* %145, i8** %147, align 8
  %148 = load i8*, i8** %28, align 8
  %149 = load %struct.TYPE_22__*, %struct.TYPE_22__** %43, align 8
  %150 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %149, i32 0, i32 21
  store i8* %148, i8** %150, align 8
  %151 = load i8*, i8** %30, align 8
  %152 = load %struct.TYPE_22__*, %struct.TYPE_22__** %43, align 8
  %153 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %152, i32 0, i32 20
  store i8* %151, i8** %153, align 8
  %154 = load i8*, i8** @FALSE, align 8
  %155 = load %struct.TYPE_22__*, %struct.TYPE_22__** %43, align 8
  %156 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %155, i32 0, i32 19
  store i8* %154, i8** %156, align 8
  %157 = load i32, i32* %34, align 4
  %158 = load %struct.TYPE_22__*, %struct.TYPE_22__** %43, align 8
  %159 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %158, i32 0, i32 18
  store i32 %157, i32* %159, align 8
  %160 = load i8*, i8** %31, align 8
  %161 = load %struct.TYPE_22__*, %struct.TYPE_22__** %43, align 8
  %162 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %161, i32 0, i32 17
  store i8* %160, i8** %162, align 8
  %163 = load i8*, i8** %32, align 8
  %164 = load %struct.TYPE_22__*, %struct.TYPE_22__** %43, align 8
  %165 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %164, i32 0, i32 16
  store i8* %163, i8** %165, align 8
  %166 = load i32, i32* %33, align 4
  %167 = load %struct.TYPE_22__*, %struct.TYPE_22__** %43, align 8
  %168 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %167, i32 0, i32 15
  store i32 %166, i32* %168, align 8
  %169 = load i32, i32* %35, align 4
  %170 = load %struct.TYPE_22__*, %struct.TYPE_22__** %43, align 8
  %171 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %170, i32 0, i32 2
  store i32 %169, i32* %171, align 8
  %172 = load %struct.TYPE_22__*, %struct.TYPE_22__** %43, align 8
  %173 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %172, i32 0, i32 14
  store i64 0, i64* %173, align 8
  %174 = load i8*, i8** %40, align 8
  %175 = icmp ne i8* %174, null
  br i1 %175, label %176, label %180

176:                                              ; preds = %126
  %177 = load i8*, i8** @FALSE, align 8
  %178 = load %struct.TYPE_22__*, %struct.TYPE_22__** %43, align 8
  %179 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %178, i32 0, i32 13
  store i8* %177, i8** %179, align 8
  br label %184

180:                                              ; preds = %126
  %181 = load i8*, i8** @TRUE, align 8
  %182 = load %struct.TYPE_22__*, %struct.TYPE_22__** %43, align 8
  %183 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %182, i32 0, i32 13
  store i8* %181, i8** %183, align 8
  br label %184

184:                                              ; preds = %180, %176
  %185 = load %struct.TYPE_22__*, %struct.TYPE_22__** %43, align 8
  %186 = load i32, i32* %42, align 4
  %187 = call i32 @VME_ALIAS_SET(%struct.TYPE_22__* %185, i32 %186)
  %188 = load i8*, i8** @FALSE, align 8
  %189 = load %struct.TYPE_22__*, %struct.TYPE_22__** %43, align 8
  %190 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %189, i32 0, i32 12
  store i8* %188, i8** %190, align 8
  %191 = load i8*, i8** %36, align 8
  %192 = load %struct.TYPE_22__*, %struct.TYPE_22__** %43, align 8
  %193 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %192, i32 0, i32 11
  store i8* %191, i8** %193, align 8
  %194 = load i8*, i8** %37, align 8
  %195 = load %struct.TYPE_22__*, %struct.TYPE_22__** %43, align 8
  %196 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %195, i32 0, i32 10
  store i8* %194, i8** %196, align 8
  %197 = load i32, i32* %38, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %203

199:                                              ; preds = %184
  %200 = load i8*, i8** @TRUE, align 8
  %201 = load %struct.TYPE_22__*, %struct.TYPE_22__** %43, align 8
  %202 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %201, i32 0, i32 9
  store i8* %200, i8** %202, align 8
  br label %207

203:                                              ; preds = %184
  %204 = load i8*, i8** @FALSE, align 8
  %205 = load %struct.TYPE_22__*, %struct.TYPE_22__** %43, align 8
  %206 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %205, i32 0, i32 9
  store i8* %204, i8** %206, align 8
  br label %207

207:                                              ; preds = %203, %199
  %208 = load i8*, i8** %41, align 8
  %209 = icmp ne i8* %208, null
  br i1 %209, label %210, label %221

210:                                              ; preds = %207
  %211 = load i8*, i8** @TRUE, align 8
  %212 = load %struct.TYPE_22__*, %struct.TYPE_22__** %43, align 8
  %213 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %212, i32 0, i32 8
  store i8* %211, i8** %213, align 8
  %214 = load i8*, i8** @TRUE, align 8
  %215 = load %struct.TYPE_21__*, %struct.TYPE_21__** %22, align 8
  %216 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %215, i32 0, i32 2
  store i8* %214, i8** %216, align 8
  %217 = load %struct.TYPE_21__*, %struct.TYPE_21__** %22, align 8
  %218 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %217, i32 0, i32 1
  %219 = load i32, i32* %218, align 4
  %220 = call i32 @pmap_set_jit_entitled(i32 %219)
  br label %225

221:                                              ; preds = %207
  %222 = load i8*, i8** @FALSE, align 8
  %223 = load %struct.TYPE_22__*, %struct.TYPE_22__** %43, align 8
  %224 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %223, i32 0, i32 8
  store i8* %222, i8** %224, align 8
  br label %225

225:                                              ; preds = %221, %210
  %226 = load i8*, i8** @FALSE, align 8
  %227 = load %struct.TYPE_22__*, %struct.TYPE_22__** %43, align 8
  %228 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %227, i32 0, i32 7
  store i8* %226, i8** %228, align 8
  %229 = load i8*, i8** @FALSE, align 8
  %230 = load %struct.TYPE_22__*, %struct.TYPE_22__** %43, align 8
  %231 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %230, i32 0, i32 6
  store i8* %229, i8** %231, align 8
  %232 = load i8*, i8** @FALSE, align 8
  %233 = load %struct.TYPE_22__*, %struct.TYPE_22__** %43, align 8
  %234 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %233, i32 0, i32 5
  store i8* %232, i8** %234, align 8
  %235 = load i8*, i8** @FALSE, align 8
  %236 = load %struct.TYPE_22__*, %struct.TYPE_22__** %43, align 8
  %237 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %236, i32 0, i32 4
  store i8* %235, i8** %237, align 8
  %238 = load i8*, i8** @FALSE, align 8
  %239 = load %struct.TYPE_22__*, %struct.TYPE_22__** %43, align 8
  %240 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %239, i32 0, i32 3
  store i8* %238, i8** %240, align 8
  %241 = load %struct.TYPE_21__*, %struct.TYPE_21__** %22, align 8
  %242 = load %struct.TYPE_22__*, %struct.TYPE_22__** %23, align 8
  %243 = load %struct.TYPE_22__*, %struct.TYPE_22__** %43, align 8
  %244 = load i32, i32* @VM_MAP_KERNEL_FLAGS_NONE, align 4
  %245 = call i32 @vm_map_store_entry_link(%struct.TYPE_21__* %241, %struct.TYPE_22__* %242, %struct.TYPE_22__* %243, i32 %244)
  %246 = load i8*, i8** %25, align 8
  %247 = load i8*, i8** %24, align 8
  %248 = ptrtoint i8* %246 to i64
  %249 = ptrtoint i8* %247 to i64
  %250 = sub i64 %248, %249
  %251 = load %struct.TYPE_21__*, %struct.TYPE_21__** %22, align 8
  %252 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 8
  %254 = sext i32 %253 to i64
  %255 = add nsw i64 %254, %250
  %256 = trunc i64 %255 to i32
  store i32 %256, i32* %252, align 8
  %257 = load %struct.TYPE_21__*, %struct.TYPE_21__** %22, align 8
  %258 = load %struct.TYPE_22__*, %struct.TYPE_22__** %43, align 8
  %259 = call i32 @SAVE_HINT_MAP_WRITE(%struct.TYPE_21__* %257, %struct.TYPE_22__* %258)
  %260 = load %struct.TYPE_22__*, %struct.TYPE_22__** %43, align 8
  ret %struct.TYPE_22__* %260
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @vm_map_lock_assert_exclusive(%struct.TYPE_21__*) #1

declare dso_local %struct.TYPE_22__* @vm_map_entry_create(%struct.TYPE_21__*, i32) #1

declare dso_local i64 @VM_MAP_PAGE_SHIFT(%struct.TYPE_21__*) #1

declare dso_local i32 @VM_MAP_PAGE_ALIGNED(i8*, i32) #1

declare dso_local i32 @VM_MAP_PAGE_MASK(%struct.TYPE_21__*) #1

declare dso_local i32 @page_aligned(i8*) #1

declare dso_local i32 @VME_OBJECT_SET(%struct.TYPE_22__*, i32) #1

declare dso_local i32 @VME_OFFSET_SET(%struct.TYPE_22__*, i32) #1

declare dso_local i32 @VME_ALIAS_SET(%struct.TYPE_22__*, i32) #1

declare dso_local i32 @pmap_set_jit_entitled(i32) #1

declare dso_local i32 @vm_map_store_entry_link(%struct.TYPE_21__*, %struct.TYPE_22__*, %struct.TYPE_22__*, i32) #1

declare dso_local i32 @SAVE_HINT_MAP_WRITE(%struct.TYPE_21__*, %struct.TYPE_22__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
