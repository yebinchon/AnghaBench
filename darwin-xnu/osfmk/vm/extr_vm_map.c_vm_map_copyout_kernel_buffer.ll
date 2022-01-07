; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_map.c_vm_map_copyout_kernel_buffer.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_map.c_vm_map_copyout_kernel_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64 }
%struct.TYPE_16__ = type { i64, i32, i64 }
%struct.TYPE_17__ = type { %struct.TYPE_15__* }

@KERN_SUCCESS = common dso_local global i64 0, align 8
@msg_ool_size_small = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [41 x i8] c"Invalid vm_map_copy_t sz:%lld, ofst:%lld\00", align 1
@VM_FLAGS_ANYWHERE = common dso_local global i32 0, align 4
@VM_MAP_KERNEL_FLAGS_NONE = common dso_local global i32 0, align 4
@VM_KERN_MEMORY_NONE = common dso_local global i32 0, align 4
@VM_OBJECT_NULL = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@VM_PROT_DEFAULT = common dso_local global i32 0, align 4
@VM_PROT_ALL = common dso_local global i32 0, align 4
@VM_INHERIT_DEFAULT = common dso_local global i32 0, align 4
@KERN_INVALID_ADDRESS = common dso_local global i64 0, align 8
@vm_map_copyout_kernel_buffer_failures = common dso_local global i32 0, align 4
@VM_MAP_REMOVE_NO_FLAGS = common dso_local global i32 0, align 4
@cpy_kdata_hdr_sz = common dso_local global i64 0, align 8
@kernel_pmap = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_15__*, i64*, %struct.TYPE_16__*, i64, i64, i64)* @vm_map_copyout_kernel_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @vm_map_copyout_kernel_buffer(%struct.TYPE_15__* %0, i64* %1, %struct.TYPE_16__* %2, i64 %3, i64 %4, i64 %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.TYPE_16__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.TYPE_17__*, align 8
  %16 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %8, align 8
  store i64* %1, i64** %9, align 8
  store %struct.TYPE_16__* %2, %struct.TYPE_16__** %10, align 8
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store i64 %5, i64* %13, align 8
  %17 = load i64, i64* @KERN_SUCCESS, align 8
  store i64 %17, i64* %14, align 8
  %18 = call %struct.TYPE_17__* (...) @current_thread()
  store %struct.TYPE_17__* %18, %struct.TYPE_17__** %15, align 8
  %19 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %20 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* %11, align 8
  %23 = icmp eq i64 %21, %22
  %24 = zext i1 %23 to i32
  %25 = call i32 @assert(i32 %24)
  %26 = load i64, i64* %11, align 8
  %27 = load i64, i64* @msg_ool_size_small, align 8
  %28 = icmp sgt i64 %26, %27
  br i1 %28, label %34, label %29

29:                                               ; preds = %6
  %30 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %31 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %29, %6
  %35 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %36 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %39 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @panic(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i64 %37, i64 %40)
  br label %42

42:                                               ; preds = %34, %29
  %43 = load i64, i64* %12, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %68, label %45

45:                                               ; preds = %42
  %46 = load i64*, i64** %9, align 8
  store i64 0, i64* %46, align 8
  %47 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %48 = load i64*, i64** %9, align 8
  %49 = load i64, i64* %11, align 8
  %50 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %51 = call i32 @VM_MAP_PAGE_MASK(%struct.TYPE_15__* %50)
  %52 = call i64 @vm_map_round_page(i64 %49, i32 %51)
  %53 = load i32, i32* @VM_FLAGS_ANYWHERE, align 4
  %54 = load i32, i32* @VM_MAP_KERNEL_FLAGS_NONE, align 4
  %55 = load i32, i32* @VM_KERN_MEMORY_NONE, align 4
  %56 = load i32, i32* @VM_OBJECT_NULL, align 4
  %57 = load i32, i32* @FALSE, align 4
  %58 = load i32, i32* @VM_PROT_DEFAULT, align 4
  %59 = load i32, i32* @VM_PROT_ALL, align 4
  %60 = load i32, i32* @VM_INHERIT_DEFAULT, align 4
  %61 = call i64 @vm_map_enter(%struct.TYPE_15__* %47, i64* %48, i64 %52, i32 0, i32 %53, i32 %54, i32 %55, i32 %56, i32 0, i32 %57, i32 %58, i32 %59, i32 %60)
  store i64 %61, i64* %14, align 8
  %62 = load i64, i64* %14, align 8
  %63 = load i64, i64* @KERN_SUCCESS, align 8
  %64 = icmp ne i64 %62, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %45
  %66 = load i64, i64* %14, align 8
  store i64 %66, i64* %7, align 8
  br label %158

67:                                               ; preds = %45
  br label %68

68:                                               ; preds = %67, %42
  %69 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %70 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %70, align 8
  %72 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %73 = icmp eq %struct.TYPE_15__* %71, %72
  br i1 %73, label %74, label %91

74:                                               ; preds = %68
  %75 = load i64, i64* %11, align 8
  %76 = load i64, i64* %11, align 8
  %77 = icmp eq i64 %75, %76
  %78 = zext i1 %77 to i32
  %79 = call i32 @assert(i32 %78)
  %80 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %81 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = load i64*, i64** %9, align 8
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* %11, align 8
  %86 = call i64 @copyout(i32 %82, i64 %84, i64 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %74
  %89 = load i64, i64* @KERN_INVALID_ADDRESS, align 8
  store i64 %89, i64* %14, align 8
  br label %90

90:                                               ; preds = %88, %74
  br label %118

91:                                               ; preds = %68
  %92 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %93 = call i32 @vm_map_reference(%struct.TYPE_15__* %92)
  %94 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %95 = call %struct.TYPE_15__* @vm_map_switch(%struct.TYPE_15__* %94)
  store %struct.TYPE_15__* %95, %struct.TYPE_15__** %16, align 8
  %96 = load i64, i64* %11, align 8
  %97 = load i64, i64* %11, align 8
  %98 = icmp eq i64 %96, %97
  %99 = zext i1 %98 to i32
  %100 = call i32 @assert(i32 %99)
  %101 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %102 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = load i64*, i64** %9, align 8
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* %11, align 8
  %107 = call i64 @copyout(i32 %103, i64 %105, i64 %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %113

109:                                              ; preds = %91
  %110 = load i32, i32* @vm_map_copyout_kernel_buffer_failures, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* @vm_map_copyout_kernel_buffer_failures, align 4
  %112 = load i64, i64* @KERN_INVALID_ADDRESS, align 8
  store i64 %112, i64* %14, align 8
  br label %113

113:                                              ; preds = %109, %91
  %114 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %115 = call %struct.TYPE_15__* @vm_map_switch(%struct.TYPE_15__* %114)
  %116 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %117 = call i32 @vm_map_deallocate(%struct.TYPE_15__* %116)
  br label %118

118:                                              ; preds = %113, %90
  %119 = load i64, i64* %14, align 8
  %120 = load i64, i64* @KERN_SUCCESS, align 8
  %121 = icmp ne i64 %119, %120
  br i1 %121, label %122, label %146

122:                                              ; preds = %118
  %123 = load i64, i64* %12, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %145, label %125

125:                                              ; preds = %122
  %126 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %127 = load i64*, i64** %9, align 8
  %128 = load i64, i64* %127, align 8
  %129 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %130 = call i32 @VM_MAP_PAGE_MASK(%struct.TYPE_15__* %129)
  %131 = call i32 @vm_map_trunc_page(i64 %128, i32 %130)
  %132 = load i64*, i64** %9, align 8
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* %11, align 8
  %135 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %136 = call i32 @VM_MAP_PAGE_MASK(%struct.TYPE_15__* %135)
  %137 = call i64 @vm_map_round_page(i64 %134, i32 %136)
  %138 = add nsw i64 %133, %137
  %139 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %140 = call i32 @VM_MAP_PAGE_MASK(%struct.TYPE_15__* %139)
  %141 = call i64 @vm_map_round_page(i64 %138, i32 %140)
  %142 = load i32, i32* @VM_MAP_REMOVE_NO_FLAGS, align 4
  %143 = call i32 @vm_map_remove(%struct.TYPE_15__* %126, i32 %131, i64 %141, i32 %142)
  %144 = load i64*, i64** %9, align 8
  store i64 0, i64* %144, align 8
  br label %145

145:                                              ; preds = %125, %122
  br label %156

146:                                              ; preds = %118
  %147 = load i64, i64* %13, align 8
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %155

149:                                              ; preds = %146
  %150 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %151 = load i64, i64* %11, align 8
  %152 = load i64, i64* @cpy_kdata_hdr_sz, align 8
  %153 = add nsw i64 %151, %152
  %154 = call i32 @kfree(%struct.TYPE_16__* %150, i64 %153)
  br label %155

155:                                              ; preds = %149, %146
  br label %156

156:                                              ; preds = %155, %145
  %157 = load i64, i64* %14, align 8
  store i64 %157, i64* %7, align 8
  br label %158

158:                                              ; preds = %156, %65
  %159 = load i64, i64* %7, align 8
  ret i64 %159
}

declare dso_local %struct.TYPE_17__* @current_thread(...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @panic(i8*, i64, i64) #1

declare dso_local i64 @vm_map_enter(%struct.TYPE_15__*, i64*, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i64 @vm_map_round_page(i64, i32) #1

declare dso_local i32 @VM_MAP_PAGE_MASK(%struct.TYPE_15__*) #1

declare dso_local i64 @copyout(i32, i64, i64) #1

declare dso_local i32 @vm_map_reference(%struct.TYPE_15__*) #1

declare dso_local %struct.TYPE_15__* @vm_map_switch(%struct.TYPE_15__*) #1

declare dso_local i32 @vm_map_deallocate(%struct.TYPE_15__*) #1

declare dso_local i32 @vm_map_remove(%struct.TYPE_15__*, i32, i64, i32) #1

declare dso_local i32 @vm_map_trunc_page(i64, i32) #1

declare dso_local i32 @kfree(%struct.TYPE_16__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
