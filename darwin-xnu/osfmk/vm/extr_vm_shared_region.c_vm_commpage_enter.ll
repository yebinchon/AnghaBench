; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_shared_region.c_vm_commpage_enter.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_shared_region.c_vm_commpage_enter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"commpage: -> enter(%p,%p)\0A\00", align 1
@_COMM_PAGE_TEXT_AREA_LENGTH = common dso_local global i32 0, align 4
@VM_FLAGS_FIXED = common dso_local global i32 0, align 4
@VM_MAP_KERNEL_FLAGS_NONE = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@TRUE = common dso_local global i32 0, align 4
@commpage64_handle = common dso_local global i64 0, align 8
@_COMM_PAGE64_BASE_ADDRESS = common dso_local global i64 0, align 8
@_COMM_PAGE64_AREA_LENGTH = common dso_local global i32 0, align 4
@_COMM_PAGE64_OBJC_SIZE = common dso_local global i32 0, align 4
@_COMM_PAGE64_OBJC_BASE = common dso_local global i32 0, align 4
@commpage_text64_handle = common dso_local global i64 0, align 8
@commpage_text64_location = common dso_local global i64 0, align 8
@commpage32_handle = common dso_local global i64 0, align 8
@_COMM_PAGE32_BASE_ADDRESS = common dso_local global i64 0, align 8
@_COMM_PAGE32_AREA_LENGTH = common dso_local global i32 0, align 4
@_COMM_PAGE32_OBJC_SIZE = common dso_local global i32 0, align 4
@_COMM_PAGE32_OBJC_BASE = common dso_local global i32 0, align 4
@commpage_text32_handle = common dso_local global i64 0, align 8
@commpage_text32_location = common dso_local global i64 0, align 8
@VM_KERN_MEMORY_NONE = common dso_local global i32 0, align 4
@pmap_nesting_size_min = common dso_local global i32 0, align 4
@VM_MEMORY_SHARED_PMAP = common dso_local global i32 0, align 4
@IPC_PORT_NULL = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@VM_PROT_READ = common dso_local global i32 0, align 4
@VM_INHERIT_SHARE = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [67 x i8] c"commpage: enter(%p,0x%llx,0x%llx) commpage %p mapping failed 0x%x\0A\00", align 1
@VM_PROT_EXECUTE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [77 x i8] c"commpage text: enter(%p,0x%llx,0x%llx) commpage text %p mapping failed 0x%x\0A\00", align 1
@VM_PROT_ALL = common dso_local global i32 0, align 4
@VM_INHERIT_DEFAULT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [60 x i8] c"commpage: enter(%p,0x%llx,0x%llx) objc mapping failed 0x%x\0A\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"commpage: enter(%p,%p) <- 0x%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @vm_commpage_enter(i64 %0, i64 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_4__, align 4
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %19 = load i64, i64* %4, align 8
  %20 = call i64 @VM_KERNEL_ADDRPERM(i64 %19)
  %21 = inttoptr i64 %20 to i8*
  %22 = load i64, i64* %5, align 8
  %23 = call i64 @VM_KERNEL_ADDRPERM(i64 %22)
  %24 = inttoptr i64 %23 to i8*
  %25 = call i32 @SHARED_REGION_TRACE_DEBUG(i8* %24)
  %26 = load i32, i32* @_COMM_PAGE_TEXT_AREA_LENGTH, align 4
  store i32 %26, i32* %14, align 4
  %27 = load i32, i32* @VM_FLAGS_FIXED, align 4
  store i32 %27, i32* %15, align 4
  %28 = bitcast %struct.TYPE_4__* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %28, i8* align 4 bitcast (%struct.TYPE_4__* @VM_MAP_KERNEL_FLAGS_NONE to i8*), i64 4, i1 false)
  %29 = load i32, i32* @TRUE, align 4
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  store i32 %29, i32* %30, align 4
  %31 = load i32, i32* %6, align 4
  %32 = load i64, i64* %4, align 8
  %33 = call i32 @vm_map_is_64bit(i64 %32)
  %34 = xor i32 %31, %33
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  %38 = call i32 @assert(i32 %37)
  %39 = load i32, i32* %6, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %51

41:                                               ; preds = %3
  %42 = load i64, i64* @commpage64_handle, align 8
  store i64 %42, i64* %7, align 8
  %43 = load i64, i64* @_COMM_PAGE64_BASE_ADDRESS, align 8
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* @_COMM_PAGE64_AREA_LENGTH, align 4
  store i32 %45, i32* %12, align 4
  %46 = load i32, i32* @_COMM_PAGE64_OBJC_SIZE, align 4
  store i32 %46, i32* %13, align 4
  %47 = load i32, i32* @_COMM_PAGE64_OBJC_BASE, align 4
  store i32 %47, i32* %10, align 4
  %48 = load i64, i64* @commpage_text64_handle, align 8
  store i64 %48, i64* %8, align 8
  %49 = load i64, i64* @commpage_text64_location, align 8
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %11, align 4
  br label %61

51:                                               ; preds = %3
  %52 = load i64, i64* @commpage32_handle, align 8
  store i64 %52, i64* %7, align 8
  %53 = load i64, i64* @_COMM_PAGE32_BASE_ADDRESS, align 8
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %9, align 4
  %55 = load i32, i32* @_COMM_PAGE32_AREA_LENGTH, align 4
  store i32 %55, i32* %12, align 4
  %56 = load i32, i32* @_COMM_PAGE32_OBJC_SIZE, align 4
  store i32 %56, i32* %13, align 4
  %57 = load i32, i32* @_COMM_PAGE32_OBJC_BASE, align 4
  store i32 %57, i32* %10, align 4
  %58 = load i64, i64* @commpage_text32_handle, align 8
  store i64 %58, i64* %8, align 8
  %59 = load i64, i64* @commpage_text32_location, align 8
  %60 = trunc i64 %59 to i32
  store i32 %60, i32* %11, align 4
  br label %61

61:                                               ; preds = %51, %41
  %62 = load i32, i32* @VM_KERN_MEMORY_NONE, align 4
  store i32 %62, i32* %18, align 4
  %63 = load i32, i32* %9, align 4
  %64 = load i32, i32* @pmap_nesting_size_min, align 4
  %65 = sub nsw i32 %64, 1
  %66 = and i32 %63, %65
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %76

68:                                               ; preds = %61
  %69 = load i32, i32* %12, align 4
  %70 = load i32, i32* @pmap_nesting_size_min, align 4
  %71 = sub nsw i32 %70, 1
  %72 = and i32 %69, %71
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %68
  %75 = load i32, i32* @VM_MEMORY_SHARED_PMAP, align 4
  store i32 %75, i32* %18, align 4
  br label %76

76:                                               ; preds = %74, %68, %61
  %77 = load i64, i64* %7, align 8
  %78 = load i64, i64* @IPC_PORT_NULL, align 8
  %79 = icmp ne i64 %77, %78
  %80 = zext i1 %79 to i32
  %81 = call i32 @assert(i32 %80)
  %82 = load i64, i64* %4, align 8
  %83 = load i32, i32* %12, align 4
  %84 = load i32, i32* %15, align 4
  %85 = load i32, i32* %18, align 4
  %86 = load i64, i64* %7, align 8
  %87 = load i32, i32* @FALSE, align 4
  %88 = load i32, i32* @VM_PROT_READ, align 4
  %89 = load i32, i32* @VM_PROT_READ, align 4
  %90 = load i32, i32* @VM_INHERIT_SHARE, align 4
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i64 @vm_map_enter_mem_object(i64 %82, i32* %9, i32 %83, i32 0, i32 %84, i32 %92, i32 %85, i64 %86, i32 0, i32 %87, i32 %88, i32 %89, i32 %90)
  store i64 %93, i64* %17, align 8
  %94 = load i64, i64* %17, align 8
  %95 = load i64, i64* @KERN_SUCCESS, align 8
  %96 = icmp ne i64 %94, %95
  br i1 %96, label %97, label %111

97:                                               ; preds = %76
  %98 = load i64, i64* %4, align 8
  %99 = call i64 @VM_KERNEL_ADDRPERM(i64 %98)
  %100 = inttoptr i64 %99 to i8*
  %101 = load i32, i32* %9, align 4
  %102 = sext i32 %101 to i64
  %103 = load i32, i32* %12, align 4
  %104 = sext i32 %103 to i64
  %105 = load i64, i64* %7, align 8
  %106 = call i64 @VM_KERNEL_ADDRPERM(i64 %105)
  %107 = inttoptr i64 %106 to i8*
  %108 = load i64, i64* %17, align 8
  %109 = inttoptr i64 %108 to i8*
  %110 = call i32 @SHARED_REGION_TRACE_ERROR(i8* %109)
  br label %111

111:                                              ; preds = %97, %76
  %112 = load i64, i64* %8, align 8
  %113 = load i64, i64* @IPC_PORT_NULL, align 8
  %114 = icmp ne i64 %112, %113
  %115 = zext i1 %114 to i32
  %116 = call i32 @assert(i32 %115)
  %117 = load i64, i64* %4, align 8
  %118 = load i32, i32* %14, align 4
  %119 = load i32, i32* %15, align 4
  %120 = load i32, i32* %18, align 4
  %121 = load i64, i64* %8, align 8
  %122 = load i32, i32* @FALSE, align 4
  %123 = load i32, i32* @VM_PROT_READ, align 4
  %124 = load i32, i32* @VM_PROT_EXECUTE, align 4
  %125 = or i32 %123, %124
  %126 = load i32, i32* @VM_PROT_READ, align 4
  %127 = load i32, i32* @VM_PROT_EXECUTE, align 4
  %128 = or i32 %126, %127
  %129 = load i32, i32* @VM_INHERIT_SHARE, align 4
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = call i64 @vm_map_enter_mem_object(i64 %117, i32* %11, i32 %118, i32 0, i32 %119, i32 %131, i32 %120, i64 %121, i32 0, i32 %122, i32 %125, i32 %128, i32 %129)
  store i64 %132, i64* %17, align 8
  %133 = load i64, i64* %17, align 8
  %134 = load i64, i64* @KERN_SUCCESS, align 8
  %135 = icmp ne i64 %133, %134
  br i1 %135, label %136, label %150

136:                                              ; preds = %111
  %137 = load i64, i64* %4, align 8
  %138 = call i64 @VM_KERNEL_ADDRPERM(i64 %137)
  %139 = inttoptr i64 %138 to i8*
  %140 = load i32, i32* %11, align 4
  %141 = sext i32 %140 to i64
  %142 = load i32, i32* %14, align 4
  %143 = sext i32 %142 to i64
  %144 = load i64, i64* %8, align 8
  %145 = call i64 @VM_KERNEL_ADDRPERM(i64 %144)
  %146 = inttoptr i64 %145 to i8*
  %147 = load i64, i64* %17, align 8
  %148 = inttoptr i64 %147 to i8*
  %149 = call i32 @SHARED_REGION_TRACE_ERROR(i8* %148)
  br label %150

150:                                              ; preds = %136, %111
  %151 = load i32, i32* %13, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %181

153:                                              ; preds = %150
  %154 = load i64, i64* %4, align 8
  %155 = load i32, i32* %13, align 4
  %156 = load i32, i32* @VM_FLAGS_FIXED, align 4
  %157 = load i32, i32* %18, align 4
  %158 = load i64, i64* @IPC_PORT_NULL, align 8
  %159 = load i32, i32* @FALSE, align 4
  %160 = load i32, i32* @VM_PROT_ALL, align 4
  %161 = load i32, i32* @VM_PROT_ALL, align 4
  %162 = load i32, i32* @VM_INHERIT_DEFAULT, align 4
  %163 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = call i64 @vm_map_enter_mem_object(i64 %154, i32* %10, i32 %155, i32 0, i32 %156, i32 %164, i32 %157, i64 %158, i32 0, i32 %159, i32 %160, i32 %161, i32 %162)
  store i64 %165, i64* %17, align 8
  %166 = load i64, i64* %17, align 8
  %167 = load i64, i64* @KERN_SUCCESS, align 8
  %168 = icmp ne i64 %166, %167
  br i1 %168, label %169, label %180

169:                                              ; preds = %153
  %170 = load i64, i64* %4, align 8
  %171 = call i64 @VM_KERNEL_ADDRPERM(i64 %170)
  %172 = inttoptr i64 %171 to i8*
  %173 = load i32, i32* %10, align 4
  %174 = sext i32 %173 to i64
  %175 = load i32, i32* %13, align 4
  %176 = sext i32 %175 to i64
  %177 = load i64, i64* %17, align 8
  %178 = inttoptr i64 %177 to i8*
  %179 = call i32 @SHARED_REGION_TRACE_ERROR(i8* %178)
  br label %180

180:                                              ; preds = %169, %153
  br label %181

181:                                              ; preds = %180, %150
  %182 = load i64, i64* %4, align 8
  %183 = call i64 @VM_KERNEL_ADDRPERM(i64 %182)
  %184 = inttoptr i64 %183 to i8*
  %185 = load i64, i64* %5, align 8
  %186 = call i64 @VM_KERNEL_ADDRPERM(i64 %185)
  %187 = inttoptr i64 %186 to i8*
  %188 = load i64, i64* %17, align 8
  %189 = inttoptr i64 %188 to i8*
  %190 = call i32 @SHARED_REGION_TRACE_DEBUG(i8* %189)
  %191 = load i64, i64* %17, align 8
  ret i64 %191
}

declare dso_local i32 @SHARED_REGION_TRACE_DEBUG(i8*) #1

declare dso_local i64 @VM_KERNEL_ADDRPERM(i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @vm_map_is_64bit(i64) #1

declare dso_local i64 @vm_map_enter_mem_object(i64, i32*, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32) #1

declare dso_local i32 @SHARED_REGION_TRACE_ERROR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
