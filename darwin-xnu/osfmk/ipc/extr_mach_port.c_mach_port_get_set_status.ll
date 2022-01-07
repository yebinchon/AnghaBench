; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_mach_port.c_mach_port_get_set_status.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_mach_port.c_mach_port_get_set_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@IS_NULL = common dso_local global i64 0, align 8
@KERN_INVALID_TASK = common dso_local global i64 0, align 8
@KERN_INVALID_RIGHT = common dso_local global i64 0, align 8
@ipc_kernel_map = common dso_local global i32 0, align 4
@VM_FLAGS_ANYWHERE = common dso_local global i32 0, align 4
@VM_KERN_MEMORY_IPC = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i64 0, align 8
@KERN_RESOURCE_SHORTAGE = common dso_local global i64 0, align 8
@VM_PROT_READ = common dso_local global i32 0, align 4
@VM_PROT_WRITE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@MACH_PORT_RIGHT_PORT_SET = common dso_local global i32 0, align 4
@VM_MAP_COPY_NULL = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mach_port_get_set_status(i64 %0, i32 %1, i32** %2, i32* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.TYPE_6__*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i64 %0, i64* %6, align 8
  store i32 %1, i32* %7, align 4
  store i32** %2, i32*** %8, align 8
  store i32* %3, i32** %9, align 8
  %21 = load i64, i64* %6, align 8
  %22 = load i64, i64* @IS_NULL, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %4
  %25 = load i64, i64* @KERN_INVALID_TASK, align 8
  store i64 %25, i64* %5, align 8
  br label %184

26:                                               ; preds = %4
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @MACH_PORT_VALID(i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %26
  %31 = load i64, i64* @KERN_INVALID_RIGHT, align 8
  store i64 %31, i64* %5, align 8
  br label %184

32:                                               ; preds = %26
  %33 = load i32, i32* @ipc_kernel_map, align 4
  %34 = call i32 @VM_MAP_PAGE_SIZE(i32 %33)
  store i32 %34, i32* %13, align 4
  br label %35

35:                                               ; preds = %103, %32
  %36 = load i32, i32* @ipc_kernel_map, align 4
  %37 = load i32, i32* %13, align 4
  %38 = load i32, i32* @VM_FLAGS_ANYWHERE, align 4
  %39 = load i32, i32* @VM_KERN_MEMORY_IPC, align 4
  %40 = call i64 @vm_allocate_kernel(i32 %36, i32* %14, i32 %37, i32 %38, i32 %39)
  store i64 %40, i64* %12, align 8
  %41 = load i64, i64* %12, align 8
  %42 = load i64, i64* @KERN_SUCCESS, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %35
  %45 = load i64, i64* @KERN_RESOURCE_SHORTAGE, align 8
  store i64 %45, i64* %5, align 8
  br label %184

46:                                               ; preds = %35
  %47 = load i32, i32* @ipc_kernel_map, align 4
  %48 = load i32, i32* %14, align 4
  %49 = load i32, i32* %14, align 4
  %50 = load i32, i32* %13, align 4
  %51 = add nsw i32 %49, %50
  %52 = load i32, i32* @VM_PROT_READ, align 4
  %53 = load i32, i32* @VM_PROT_WRITE, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* @VM_KERN_MEMORY_IPC, align 4
  %56 = load i32, i32* @FALSE, align 4
  %57 = call i64 @vm_map_wire_kernel(i32 %47, i32 %48, i32 %51, i32 %54, i32 %55, i32 %56)
  store i64 %57, i64* %12, align 8
  %58 = load i64, i64* %12, align 8
  %59 = load i64, i64* @KERN_SUCCESS, align 8
  %60 = icmp eq i64 %58, %59
  %61 = zext i1 %60 to i32
  %62 = call i32 @assert(i32 %61)
  %63 = load i64, i64* %6, align 8
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* @MACH_PORT_RIGHT_PORT_SET, align 4
  %66 = call i64 @ipc_object_translate(i64 %63, i32 %64, i32 %65, i64* %17)
  store i64 %66, i64* %12, align 8
  %67 = load i64, i64* %12, align 8
  %68 = load i64, i64* @KERN_SUCCESS, align 8
  %69 = icmp ne i64 %67, %68
  br i1 %69, label %70, label %76

70:                                               ; preds = %46
  %71 = load i32, i32* @ipc_kernel_map, align 4
  %72 = load i32, i32* %14, align 4
  %73 = load i32, i32* %13, align 4
  %74 = call i32 @kmem_free(i32 %71, i32 %72, i32 %73)
  %75 = load i64, i64* %12, align 8
  store i64 %75, i64* %5, align 8
  br label %184

76:                                               ; preds = %46
  %77 = load i64, i64* %17, align 8
  %78 = inttoptr i64 %77 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %78, %struct.TYPE_6__** %18, align 8
  %79 = call i32 @__IGNORE_WCASTALIGN(%struct.TYPE_6__* %78)
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %81 = call i32 @ips_reference(%struct.TYPE_6__* %80)
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %83 = call i32 @ips_unlock(%struct.TYPE_6__* %82)
  %84 = load i32, i32* %14, align 4
  %85 = sext i32 %84 to i64
  %86 = inttoptr i64 %85 to i32*
  store i32* %86, i32** %16, align 8
  %87 = load i32, i32* %13, align 4
  %88 = sext i32 %87 to i64
  %89 = udiv i64 %88, 4
  %90 = trunc i64 %89 to i32
  store i32 %90, i32* %11, align 4
  %91 = load i64, i64* %6, align 8
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  %94 = load i32, i32* %11, align 4
  %95 = load i32*, i32** %16, align 8
  %96 = call i32 @ipc_mqueue_set_gather_member_names(i64 %91, i32* %93, i32 %94, i32* %95, i32* %10)
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %98 = call i32 @ips_release(%struct.TYPE_6__* %97)
  %99 = load i32, i32* %10, align 4
  %100 = load i32, i32* %11, align 4
  %101 = icmp sle i32 %99, %100
  br i1 %101, label %102, label %103

102:                                              ; preds = %76
  br label %118

103:                                              ; preds = %76
  %104 = load i32, i32* @ipc_kernel_map, align 4
  %105 = load i32, i32* %14, align 4
  %106 = load i32, i32* %13, align 4
  %107 = call i32 @kmem_free(i32 %104, i32 %105, i32 %106)
  %108 = load i32, i32* %10, align 4
  %109 = sext i32 %108 to i64
  %110 = mul i64 %109, 4
  %111 = trunc i64 %110 to i32
  %112 = load i32, i32* @ipc_kernel_map, align 4
  %113 = call i32 @VM_MAP_PAGE_MASK(i32 %112)
  %114 = call i32 @vm_map_round_page(i32 %111, i32 %113)
  %115 = load i32, i32* @ipc_kernel_map, align 4
  %116 = call i32 @VM_MAP_PAGE_SIZE(i32 %115)
  %117 = add nsw i32 %114, %116
  store i32 %117, i32* %13, align 4
  br label %35

118:                                              ; preds = %102
  %119 = load i32, i32* %10, align 4
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %121, label %127

121:                                              ; preds = %118
  %122 = load i64, i64* @VM_MAP_COPY_NULL, align 8
  store i64 %122, i64* %15, align 8
  %123 = load i32, i32* @ipc_kernel_map, align 4
  %124 = load i32, i32* %14, align 4
  %125 = load i32, i32* %13, align 4
  %126 = call i32 @kmem_free(i32 %123, i32 %124, i32 %125)
  br label %177

127:                                              ; preds = %118
  %128 = load i32, i32* %10, align 4
  %129 = sext i32 %128 to i64
  %130 = mul i64 %129, 4
  %131 = trunc i64 %130 to i32
  store i32 %131, i32* %19, align 4
  %132 = load i32, i32* %19, align 4
  %133 = load i32, i32* @ipc_kernel_map, align 4
  %134 = call i32 @VM_MAP_PAGE_MASK(i32 %133)
  %135 = call i32 @vm_map_round_page(i32 %132, i32 %134)
  store i32 %135, i32* %20, align 4
  %136 = load i32, i32* @ipc_kernel_map, align 4
  %137 = load i32, i32* %14, align 4
  %138 = load i32, i32* @ipc_kernel_map, align 4
  %139 = call i32 @VM_MAP_PAGE_MASK(i32 %138)
  %140 = call i32 @vm_map_trunc_page(i32 %137, i32 %139)
  %141 = load i32, i32* %14, align 4
  %142 = load i32, i32* %20, align 4
  %143 = add nsw i32 %141, %142
  %144 = load i32, i32* @ipc_kernel_map, align 4
  %145 = call i32 @VM_MAP_PAGE_MASK(i32 %144)
  %146 = call i32 @vm_map_round_page(i32 %143, i32 %145)
  %147 = load i32, i32* @FALSE, align 4
  %148 = call i64 @vm_map_unwire(i32 %136, i32 %140, i32 %146, i32 %147)
  store i64 %148, i64* %12, align 8
  %149 = load i64, i64* %12, align 8
  %150 = load i64, i64* @KERN_SUCCESS, align 8
  %151 = icmp eq i64 %149, %150
  %152 = zext i1 %151 to i32
  %153 = call i32 @assert(i32 %152)
  %154 = load i32, i32* @ipc_kernel_map, align 4
  %155 = load i32, i32* %14, align 4
  %156 = load i32, i32* %19, align 4
  %157 = load i32, i32* @TRUE, align 4
  %158 = call i64 @vm_map_copyin(i32 %154, i32 %155, i32 %156, i32 %157, i64* %15)
  store i64 %158, i64* %12, align 8
  %159 = load i64, i64* %12, align 8
  %160 = load i64, i64* @KERN_SUCCESS, align 8
  %161 = icmp eq i64 %159, %160
  %162 = zext i1 %161 to i32
  %163 = call i32 @assert(i32 %162)
  %164 = load i32, i32* %20, align 4
  %165 = load i32, i32* %13, align 4
  %166 = icmp ne i32 %164, %165
  br i1 %166, label %167, label %176

167:                                              ; preds = %127
  %168 = load i32, i32* @ipc_kernel_map, align 4
  %169 = load i32, i32* %14, align 4
  %170 = load i32, i32* %20, align 4
  %171 = add nsw i32 %169, %170
  %172 = load i32, i32* %13, align 4
  %173 = load i32, i32* %20, align 4
  %174 = sub nsw i32 %172, %173
  %175 = call i32 @kmem_free(i32 %168, i32 %171, i32 %174)
  br label %176

176:                                              ; preds = %167, %127
  br label %177

177:                                              ; preds = %176, %121
  %178 = load i64, i64* %15, align 8
  %179 = inttoptr i64 %178 to i32*
  %180 = load i32**, i32*** %8, align 8
  store i32* %179, i32** %180, align 8
  %181 = load i32, i32* %10, align 4
  %182 = load i32*, i32** %9, align 8
  store i32 %181, i32* %182, align 4
  %183 = load i64, i64* @KERN_SUCCESS, align 8
  store i64 %183, i64* %5, align 8
  br label %184

184:                                              ; preds = %177, %70, %44, %30, %24
  %185 = load i64, i64* %5, align 8
  ret i64 %185
}

declare dso_local i32 @MACH_PORT_VALID(i32) #1

declare dso_local i32 @VM_MAP_PAGE_SIZE(i32) #1

declare dso_local i64 @vm_allocate_kernel(i32, i32*, i32, i32, i32) #1

declare dso_local i64 @vm_map_wire_kernel(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @ipc_object_translate(i64, i32, i32, i64*) #1

declare dso_local i32 @kmem_free(i32, i32, i32) #1

declare dso_local i32 @__IGNORE_WCASTALIGN(%struct.TYPE_6__*) #1

declare dso_local i32 @ips_reference(%struct.TYPE_6__*) #1

declare dso_local i32 @ips_unlock(%struct.TYPE_6__*) #1

declare dso_local i32 @ipc_mqueue_set_gather_member_names(i64, i32*, i32, i32*, i32*) #1

declare dso_local i32 @ips_release(%struct.TYPE_6__*) #1

declare dso_local i32 @vm_map_round_page(i32, i32) #1

declare dso_local i32 @VM_MAP_PAGE_MASK(i32) #1

declare dso_local i64 @vm_map_unwire(i32, i32, i32, i32) #1

declare dso_local i32 @vm_map_trunc_page(i32, i32) #1

declare dso_local i64 @vm_map_copyin(i32, i32, i32, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
