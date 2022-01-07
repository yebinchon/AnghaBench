; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_host.c_host_processor_info.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_host.c_host_processor_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_4__* }

@HOST_NULL = common dso_local global i64 0, align 8
@KERN_INVALID_ARGUMENT = common dso_local global i64 0, align 8
@KERN_SUCCESS = common dso_local global i64 0, align 8
@processor_count = common dso_local global i32 0, align 4
@ipc_kernel_map = common dso_local global i32 0, align 4
@VM_KERN_MEMORY_IPC = common dso_local global i32 0, align 4
@KERN_RESOURCE_SHORTAGE = common dso_local global i64 0, align 8
@processor_list = common dso_local global %struct.TYPE_4__* null, align 8
@processor_list_lock = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @host_processor_info(i64 %0, i32 %1, i32* %2, i64* %3, i32* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_4__*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i64, align 8
  store i64 %0, i64* %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i64* %3, i64** %10, align 8
  store i32* %4, i32** %11, align 8
  %24 = load i64, i64* %7, align 8
  %25 = load i64, i64* @HOST_NULL, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %5
  %28 = load i64, i64* @KERN_INVALID_ARGUMENT, align 8
  store i64 %28, i64* %6, align 8
  br label %170

29:                                               ; preds = %5
  %30 = load i32, i32* %8, align 4
  %31 = call i64 @processor_info_count(i32 %30, i32* %16)
  store i64 %31, i64* %12, align 8
  %32 = load i64, i64* %12, align 8
  %33 = load i64, i64* @KERN_SUCCESS, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %29
  %36 = load i64, i64* %12, align 8
  store i64 %36, i64* %6, align 8
  br label %170

37:                                               ; preds = %29
  %38 = load i32, i32* @processor_count, align 4
  store i32 %38, i32* %18, align 4
  %39 = load i32, i32* %18, align 4
  %40 = icmp ne i32 %39, 0
  %41 = zext i1 %40 to i32
  %42 = call i32 @assert(i32 %41)
  %43 = load i32, i32* %18, align 4
  %44 = load i32, i32* %16, align 4
  %45 = mul i32 %43, %44
  %46 = zext i32 %45 to i64
  %47 = mul i64 %46, 4
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %22, align 4
  %49 = load i32, i32* %22, align 4
  %50 = load i32, i32* @ipc_kernel_map, align 4
  %51 = call i32 @VM_MAP_PAGE_MASK(i32 %50)
  %52 = call i32 @vm_map_round_page(i32 %49, i32 %51)
  store i32 %52, i32* %21, align 4
  %53 = load i32, i32* @ipc_kernel_map, align 4
  %54 = load i32, i32* %21, align 4
  %55 = load i32, i32* @VM_KERN_MEMORY_IPC, align 4
  %56 = call i64 @kmem_alloc(i32 %53, i32* %20, i32 %54, i32 %55)
  store i64 %56, i64* %12, align 8
  %57 = load i64, i64* %12, align 8
  %58 = load i64, i64* @KERN_SUCCESS, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %37
  %61 = load i64, i64* @KERN_RESOURCE_SHORTAGE, align 8
  store i64 %61, i64* %6, align 8
  br label %170

62:                                               ; preds = %37
  %63 = load i32, i32* %20, align 4
  %64 = sext i32 %63 to i64
  store i64 %64, i64* %15, align 8
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** @processor_list, align 8
  store %struct.TYPE_4__* %65, %struct.TYPE_4__** %13, align 8
  %66 = load i32, i32* %16, align 4
  store i32 %66, i32* %17, align 4
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %68 = load i32, i32* %8, align 4
  %69 = load i64, i64* %15, align 8
  %70 = call i64 @processor_info(%struct.TYPE_4__* %67, i32 %68, i64* %14, i64 %69, i32* %17)
  store i64 %70, i64* %12, align 8
  %71 = load i64, i64* %12, align 8
  %72 = load i64, i64* @KERN_SUCCESS, align 8
  %73 = icmp ne i64 %71, %72
  br i1 %73, label %74, label %80

74:                                               ; preds = %62
  %75 = load i32, i32* @ipc_kernel_map, align 4
  %76 = load i32, i32* %20, align 4
  %77 = load i32, i32* %21, align 4
  %78 = call i32 @kmem_free(i32 %75, i32 %76, i32 %77)
  %79 = load i64, i64* %12, align 8
  store i64 %79, i64* %6, align 8
  br label %170

80:                                               ; preds = %62
  %81 = load i32, i32* %18, align 4
  %82 = icmp ugt i32 %81, 1
  br i1 %82, label %83, label %117

83:                                               ; preds = %80
  store i32 1, i32* %19, align 4
  br label %84

84:                                               ; preds = %113, %83
  %85 = load i32, i32* %19, align 4
  %86 = load i32, i32* %18, align 4
  %87 = icmp ult i32 %85, %86
  br i1 %87, label %88, label %116

88:                                               ; preds = %84
  %89 = call i32 @simple_lock(i32* @processor_list_lock)
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %91, align 8
  store %struct.TYPE_4__* %92, %struct.TYPE_4__** %13, align 8
  %93 = call i32 @simple_unlock(i32* @processor_list_lock)
  %94 = load i32, i32* %16, align 4
  %95 = zext i32 %94 to i64
  %96 = load i64, i64* %15, align 8
  %97 = add nsw i64 %96, %95
  store i64 %97, i64* %15, align 8
  %98 = load i32, i32* %16, align 4
  store i32 %98, i32* %17, align 4
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %100 = load i32, i32* %8, align 4
  %101 = load i64, i64* %15, align 8
  %102 = call i64 @processor_info(%struct.TYPE_4__* %99, i32 %100, i64* %14, i64 %101, i32* %17)
  store i64 %102, i64* %12, align 8
  %103 = load i64, i64* %12, align 8
  %104 = load i64, i64* @KERN_SUCCESS, align 8
  %105 = icmp ne i64 %103, %104
  br i1 %105, label %106, label %112

106:                                              ; preds = %88
  %107 = load i32, i32* @ipc_kernel_map, align 4
  %108 = load i32, i32* %20, align 4
  %109 = load i32, i32* %21, align 4
  %110 = call i32 @kmem_free(i32 %107, i32 %108, i32 %109)
  %111 = load i64, i64* %12, align 8
  store i64 %111, i64* %6, align 8
  br label %170

112:                                              ; preds = %88
  br label %113

113:                                              ; preds = %112
  %114 = load i32, i32* %19, align 4
  %115 = add i32 %114, 1
  store i32 %115, i32* %19, align 4
  br label %84

116:                                              ; preds = %84
  br label %117

117:                                              ; preds = %116, %80
  %118 = load i32, i32* %21, align 4
  %119 = load i32, i32* %22, align 4
  %120 = icmp ne i32 %118, %119
  br i1 %120, label %121, label %132

121:                                              ; preds = %117
  %122 = load i32, i32* %20, align 4
  %123 = sext i32 %122 to i64
  %124 = inttoptr i64 %123 to i8*
  %125 = load i32, i32* %22, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i8, i8* %124, i64 %126
  %128 = load i32, i32* %21, align 4
  %129 = load i32, i32* %22, align 4
  %130 = sub nsw i32 %128, %129
  %131 = call i32 @bzero(i8* %127, i32 %130)
  br label %132

132:                                              ; preds = %121, %117
  %133 = load i32, i32* @ipc_kernel_map, align 4
  %134 = load i32, i32* %20, align 4
  %135 = load i32, i32* @ipc_kernel_map, align 4
  %136 = call i32 @VM_MAP_PAGE_MASK(i32 %135)
  %137 = call i32 @vm_map_trunc_page(i32 %134, i32 %136)
  %138 = load i32, i32* %20, align 4
  %139 = load i32, i32* %21, align 4
  %140 = add nsw i32 %138, %139
  %141 = load i32, i32* @ipc_kernel_map, align 4
  %142 = call i32 @VM_MAP_PAGE_MASK(i32 %141)
  %143 = call i32 @vm_map_round_page(i32 %140, i32 %142)
  %144 = load i32, i32* @FALSE, align 4
  %145 = call i64 @vm_map_unwire(i32 %133, i32 %137, i32 %143, i32 %144)
  store i64 %145, i64* %12, align 8
  %146 = load i64, i64* %12, align 8
  %147 = load i64, i64* @KERN_SUCCESS, align 8
  %148 = icmp eq i64 %146, %147
  %149 = zext i1 %148 to i32
  %150 = call i32 @assert(i32 %149)
  %151 = load i32, i32* @ipc_kernel_map, align 4
  %152 = load i32, i32* %20, align 4
  %153 = load i32, i32* %22, align 4
  %154 = load i32, i32* @TRUE, align 4
  %155 = call i64 @vm_map_copyin(i32 %151, i32 %152, i32 %153, i32 %154, i64* %23)
  store i64 %155, i64* %12, align 8
  %156 = load i64, i64* %12, align 8
  %157 = load i64, i64* @KERN_SUCCESS, align 8
  %158 = icmp eq i64 %156, %157
  %159 = zext i1 %158 to i32
  %160 = call i32 @assert(i32 %159)
  %161 = load i32, i32* %18, align 4
  %162 = load i32*, i32** %9, align 8
  store i32 %161, i32* %162, align 4
  %163 = load i64, i64* %23, align 8
  %164 = load i64*, i64** %10, align 8
  store i64 %163, i64* %164, align 8
  %165 = load i32, i32* %18, align 4
  %166 = load i32, i32* %16, align 4
  %167 = mul i32 %165, %166
  %168 = load i32*, i32** %11, align 8
  store i32 %167, i32* %168, align 4
  %169 = load i64, i64* @KERN_SUCCESS, align 8
  store i64 %169, i64* %6, align 8
  br label %170

170:                                              ; preds = %132, %106, %74, %60, %35, %27
  %171 = load i64, i64* %6, align 8
  ret i64 %171
}

declare dso_local i64 @processor_info_count(i32, i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @vm_map_round_page(i32, i32) #1

declare dso_local i32 @VM_MAP_PAGE_MASK(i32) #1

declare dso_local i64 @kmem_alloc(i32, i32*, i32, i32) #1

declare dso_local i64 @processor_info(%struct.TYPE_4__*, i32, i64*, i64, i32*) #1

declare dso_local i32 @kmem_free(i32, i32, i32) #1

declare dso_local i32 @simple_lock(i32*) #1

declare dso_local i32 @simple_unlock(i32*) #1

declare dso_local i32 @bzero(i8*, i32) #1

declare dso_local i64 @vm_map_unwire(i32, i32, i32, i32) #1

declare dso_local i32 @vm_map_trunc_page(i32, i32) #1

declare dso_local i64 @vm_map_copyin(i32, i32, i32, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
