; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_zalloc.c_mach_memory_info.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_zalloc.c_mach_memory_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@HOST_NULL = common dso_local global i64 0, align 8
@KERN_INVALID_HOST = common dso_local global i64 0, align 8
@all_zones_lock = common dso_local global i32 0, align 4
@num_zones = common dso_local global i64 0, align 8
@ipc_kernel_map = common dso_local global i32 0, align 4
@VM_KERN_MEMORY_IPC = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i64 0, align 8
@zone_array = common dso_local global i32* null, align 8
@VM_PROT_READ = common dso_local global i32 0, align 4
@VM_PROT_WRITE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mach_memory_info(i64 %0, i32** %1, i32* %2, %struct.TYPE_5__** %3, i32* %4, i32** %5, i32* %6) #0 {
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_5__**, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32**, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_5__*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32*, align 8
  %31 = alloca %struct.TYPE_5__*, align 8
  %32 = alloca i64, align 8
  %33 = alloca i32, align 4
  %34 = alloca i64, align 8
  store i64 %0, i64* %9, align 8
  store i32** %1, i32*** %10, align 8
  store i32* %2, i32** %11, align 8
  store %struct.TYPE_5__** %3, %struct.TYPE_5__*** %12, align 8
  store i32* %4, i32** %13, align 8
  store i32** %5, i32*** %14, align 8
  store i32* %6, i32** %15, align 8
  store i32 0, i32* %33, align 4
  %35 = load i64, i64* %9, align 8
  %36 = load i64, i64* @HOST_NULL, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %7
  %39 = load i64, i64* @KERN_INVALID_HOST, align 8
  store i64 %39, i64* %8, align 8
  br label %220

40:                                               ; preds = %7
  %41 = call i32 @simple_lock(i32* @all_zones_lock)
  %42 = load i64, i64* @num_zones, align 8
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %27, align 4
  %44 = call i32 @simple_unlock(i32* @all_zones_lock)
  %45 = load i32, i32* %27, align 4
  %46 = zext i32 %45 to i64
  %47 = mul i64 %46, 4
  %48 = trunc i64 %47 to i32
  %49 = call i32 @round_page(i32 %48)
  store i32 %49, i32* %18, align 4
  %50 = load i32, i32* @ipc_kernel_map, align 4
  %51 = load i32, i32* %18, align 4
  %52 = load i32, i32* @VM_KERN_MEMORY_IPC, align 4
  %53 = call i64 @kmem_alloc_pageable(i32 %50, i32* %17, i32 %51, i32 %52)
  store i64 %53, i64* %32, align 8
  %54 = load i64, i64* %32, align 8
  %55 = load i64, i64* @KERN_SUCCESS, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %40
  %58 = load i64, i64* %32, align 8
  store i64 %58, i64* %8, align 8
  br label %220

59:                                               ; preds = %40
  %60 = load i32, i32* %17, align 4
  %61 = zext i32 %60 to i64
  %62 = inttoptr i64 %61 to i32*
  store i32* %62, i32** %16, align 8
  %63 = load i32, i32* %27, align 4
  %64 = zext i32 %63 to i64
  %65 = mul i64 %64, 4
  %66 = trunc i64 %65 to i32
  %67 = call i32 @round_page(i32 %66)
  store i32 %67, i32* %21, align 4
  %68 = load i32, i32* @ipc_kernel_map, align 4
  %69 = load i32, i32* %21, align 4
  %70 = load i32, i32* @VM_KERN_MEMORY_IPC, align 4
  %71 = call i64 @kmem_alloc_pageable(i32 %68, i32* %20, i32 %69, i32 %70)
  store i64 %71, i64* %32, align 8
  %72 = load i64, i64* %32, align 8
  %73 = load i64, i64* @KERN_SUCCESS, align 8
  %74 = icmp ne i64 %72, %73
  br i1 %74, label %75, label %81

75:                                               ; preds = %59
  %76 = load i32, i32* @ipc_kernel_map, align 4
  %77 = load i32, i32* %17, align 4
  %78 = load i32, i32* %18, align 4
  %79 = call i32 @kmem_free(i32 %76, i32 %77, i32 %78)
  %80 = load i64, i64* %32, align 8
  store i64 %80, i64* %8, align 8
  br label %220

81:                                               ; preds = %59
  %82 = load i32, i32* %20, align 4
  %83 = zext i32 %82 to i64
  %84 = inttoptr i64 %83 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %84, %struct.TYPE_5__** %19, align 8
  %85 = load i32*, i32** %16, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 0
  store i32* %86, i32** %30, align 8
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i64 0
  store %struct.TYPE_5__* %88, %struct.TYPE_5__** %31, align 8
  %89 = load i32, i32* %27, align 4
  store i32 %89, i32* %28, align 4
  store i32 0, i32* %29, align 4
  br label %90

90:                                               ; preds = %119, %81
  %91 = load i32, i32* %29, align 4
  %92 = load i32, i32* %27, align 4
  %93 = icmp ult i32 %91, %92
  br i1 %93, label %94, label %122

94:                                               ; preds = %90
  %95 = load i32*, i32** @zone_array, align 8
  %96 = load i32, i32* %29, align 4
  %97 = zext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  %99 = load i32*, i32** %30, align 8
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  %101 = call i32 @get_zone_info(i32* %98, i32* %99, %struct.TYPE_5__* %100)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %106, label %103

103:                                              ; preds = %94
  %104 = load i32, i32* %28, align 4
  %105 = add i32 %104, -1
  store i32 %105, i32* %28, align 4
  br label %119

106:                                              ; preds = %94
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = call i64 @GET_MZI_COLLECTABLE_BYTES(i32 %109)
  %111 = load i32, i32* %33, align 4
  %112 = sext i32 %111 to i64
  %113 = add nsw i64 %112, %110
  %114 = trunc i64 %113 to i32
  store i32 %114, i32* %33, align 4
  %115 = load i32*, i32** %30, align 8
  %116 = getelementptr inbounds i32, i32* %115, i32 1
  store i32* %116, i32** %30, align 8
  %117 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 1
  store %struct.TYPE_5__* %118, %struct.TYPE_5__** %31, align 8
  br label %119

119:                                              ; preds = %106, %103
  %120 = load i32, i32* %29, align 4
  %121 = add i32 %120, 1
  store i32 %121, i32* %29, align 4
  br label %90

122:                                              ; preds = %90
  %123 = load i32, i32* %17, align 4
  %124 = load i32, i32* %18, align 4
  %125 = load i32, i32* %28, align 4
  %126 = zext i32 %125 to i64
  %127 = mul i64 %126, 4
  %128 = trunc i64 %127 to i32
  %129 = call i64 @create_vm_map_copy(i32 %123, i32 %124, i32 %128)
  %130 = inttoptr i64 %129 to i32*
  %131 = load i32**, i32*** %10, align 8
  store i32* %130, i32** %131, align 8
  %132 = load i32, i32* %28, align 4
  %133 = load i32*, i32** %11, align 8
  store i32 %132, i32* %133, align 4
  %134 = load i32, i32* %20, align 4
  %135 = load i32, i32* %21, align 4
  %136 = load i32, i32* %28, align 4
  %137 = zext i32 %136 to i64
  %138 = mul i64 %137, 4
  %139 = trunc i64 %138 to i32
  %140 = call i64 @create_vm_map_copy(i32 %134, i32 %135, i32 %139)
  %141 = inttoptr i64 %140 to %struct.TYPE_5__*
  %142 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %12, align 8
  store %struct.TYPE_5__* %141, %struct.TYPE_5__** %142, align 8
  %143 = load i32, i32* %28, align 4
  %144 = load i32*, i32** %13, align 8
  store i32 %143, i32* %144, align 4
  store i32 0, i32* %26, align 4
  store i32 0, i32* %23, align 4
  %145 = load i32**, i32*** %14, align 8
  %146 = icmp ne i32** %145, null
  br i1 %146, label %147, label %218

147:                                              ; preds = %122
  %148 = load i32*, i32** %15, align 8
  %149 = icmp ne i32* %148, null
  br i1 %149, label %150, label %218

150:                                              ; preds = %147
  %151 = call i32 (...) @vm_page_diagnose_estimate()
  store i32 %151, i32* %26, align 4
  %152 = load i32, i32* %26, align 4
  %153 = zext i32 %152 to i64
  %154 = mul i64 %153, 4
  %155 = trunc i64 %154 to i32
  store i32 %155, i32* %24, align 4
  %156 = load i32, i32* %24, align 4
  %157 = call i32 @round_page(i32 %156)
  store i32 %157, i32* %25, align 4
  %158 = load i32, i32* @ipc_kernel_map, align 4
  %159 = load i32, i32* %25, align 4
  %160 = load i32, i32* @VM_KERN_MEMORY_IPC, align 4
  %161 = call i64 @kmem_alloc_pageable(i32 %158, i32* %23, i32 %159, i32 %160)
  store i64 %161, i64* %32, align 8
  %162 = load i64, i64* %32, align 8
  %163 = load i64, i64* @KERN_SUCCESS, align 8
  %164 = icmp ne i64 %162, %163
  br i1 %164, label %165, label %167

165:                                              ; preds = %150
  %166 = load i64, i64* %32, align 8
  store i64 %166, i64* %8, align 8
  br label %220

167:                                              ; preds = %150
  %168 = load i32, i32* @ipc_kernel_map, align 4
  %169 = load i32, i32* %23, align 4
  %170 = load i32, i32* %23, align 4
  %171 = load i32, i32* %25, align 4
  %172 = add i32 %170, %171
  %173 = load i32, i32* @VM_PROT_READ, align 4
  %174 = load i32, i32* @VM_PROT_WRITE, align 4
  %175 = or i32 %173, %174
  %176 = load i32, i32* @VM_KERN_MEMORY_IPC, align 4
  %177 = load i32, i32* @FALSE, align 4
  %178 = call i64 @vm_map_wire_kernel(i32 %168, i32 %169, i32 %172, i32 %175, i32 %176, i32 %177)
  store i64 %178, i64* %32, align 8
  %179 = load i64, i64* %32, align 8
  %180 = load i64, i64* @KERN_SUCCESS, align 8
  %181 = icmp eq i64 %179, %180
  %182 = zext i1 %181 to i32
  %183 = call i32 @assert(i32 %182)
  %184 = load i32, i32* %23, align 4
  %185 = zext i32 %184 to i64
  %186 = inttoptr i64 %185 to i32*
  store i32* %186, i32** %22, align 8
  %187 = load i32*, i32** %22, align 8
  %188 = load i32, i32* %26, align 4
  %189 = load i32, i32* %33, align 4
  %190 = call i32 @vm_page_diagnose(i32* %187, i32 %188, i32 %189)
  %191 = load i32, i32* @ipc_kernel_map, align 4
  %192 = load i32, i32* %23, align 4
  %193 = load i32, i32* %23, align 4
  %194 = load i32, i32* %25, align 4
  %195 = add i32 %193, %194
  %196 = load i32, i32* @FALSE, align 4
  %197 = call i64 @vm_map_unwire(i32 %191, i32 %192, i32 %195, i32 %196)
  store i64 %197, i64* %32, align 8
  %198 = load i64, i64* %32, align 8
  %199 = load i64, i64* @KERN_SUCCESS, align 8
  %200 = icmp eq i64 %198, %199
  %201 = zext i1 %200 to i32
  %202 = call i32 @assert(i32 %201)
  %203 = load i32, i32* @ipc_kernel_map, align 4
  %204 = load i32, i32* %23, align 4
  %205 = load i32, i32* %24, align 4
  %206 = load i32, i32* @TRUE, align 4
  %207 = call i64 @vm_map_copyin(i32 %203, i32 %204, i32 %205, i32 %206, i64* %34)
  store i64 %207, i64* %32, align 8
  %208 = load i64, i64* %32, align 8
  %209 = load i64, i64* @KERN_SUCCESS, align 8
  %210 = icmp eq i64 %208, %209
  %211 = zext i1 %210 to i32
  %212 = call i32 @assert(i32 %211)
  %213 = load i64, i64* %34, align 8
  %214 = inttoptr i64 %213 to i32*
  %215 = load i32**, i32*** %14, align 8
  store i32* %214, i32** %215, align 8
  %216 = load i32, i32* %26, align 4
  %217 = load i32*, i32** %15, align 8
  store i32 %216, i32* %217, align 4
  br label %218

218:                                              ; preds = %167, %147, %122
  %219 = load i64, i64* @KERN_SUCCESS, align 8
  store i64 %219, i64* %8, align 8
  br label %220

220:                                              ; preds = %218, %165, %75, %57, %38
  %221 = load i64, i64* %8, align 8
  ret i64 %221
}

declare dso_local i32 @simple_lock(i32*) #1

declare dso_local i32 @simple_unlock(i32*) #1

declare dso_local i32 @round_page(i32) #1

declare dso_local i64 @kmem_alloc_pageable(i32, i32*, i32, i32) #1

declare dso_local i32 @kmem_free(i32, i32, i32) #1

declare dso_local i32 @get_zone_info(i32*, i32*, %struct.TYPE_5__*) #1

declare dso_local i64 @GET_MZI_COLLECTABLE_BYTES(i32) #1

declare dso_local i64 @create_vm_map_copy(i32, i32, i32) #1

declare dso_local i32 @vm_page_diagnose_estimate(...) #1

declare dso_local i64 @vm_map_wire_kernel(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @vm_page_diagnose(i32*, i32, i32) #1

declare dso_local i64 @vm_map_unwire(i32, i32, i32, i32) #1

declare dso_local i64 @vm_map_copyin(i32, i32, i32, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
