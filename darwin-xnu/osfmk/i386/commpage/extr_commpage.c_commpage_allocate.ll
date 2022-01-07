; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/i386/commpage/extr_commpage.c_commpage_allocate.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/i386/commpage/extr_commpage.c_commpage_allocate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_11__ = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"commpage submap is null\00", align 1
@kernel_map = common dso_local global i32 0, align 4
@VM_FLAGS_ANYWHERE = common dso_local global i32 0, align 4
@VM_MAP_KERNEL_FLAGS_NONE = common dso_local global %struct.TYPE_9__ zeroinitializer, align 4
@VM_KERN_MEMORY_OSFMK = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@VM_PROT_ALL = common dso_local global i32 0, align 4
@VM_INHERIT_NONE = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"cannot allocate commpage %d\00", align 1
@VM_PROT_DEFAULT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"cannot wire commpage: %d\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"cannot find commpage entry %d\00", align 1
@MEMORY_OBJECT_COPY_NONE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [34 x i8] c"cannot make entry for commpage %d\00", align 1
@VM_PROT_READ = common dso_local global i32 0, align 4
@VM_PROT_EXECUTE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@VM_FLAGS_FIXED = common dso_local global i32 0, align 4
@VM_KERN_MEMORY_NONE = common dso_local global i32 0, align 4
@VM_INHERIT_SHARE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [23 x i8] c"cannot map commpage %d\00", align 1
@VM_PROT_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*, i64, i32)* @commpage_allocate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @commpage_allocate(i32* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_10__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_9__, align 4
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  store i64 0, i64* %7, align 8
  store i64 0, i64* %8, align 8
  %14 = load i64, i64* %5, align 8
  store i64 %14, i64* %9, align 8
  %15 = load i32*, i32** %4, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = call i32 (i8*, ...) @panic(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %19

19:                                               ; preds = %17, %3
  %20 = load i32, i32* @kernel_map, align 4
  %21 = load i64, i64* %5, align 8
  %22 = load i32, i32* @VM_FLAGS_ANYWHERE, align 4
  %23 = load i32, i32* @VM_KERN_MEMORY_OSFMK, align 4
  %24 = load i32, i32* @FALSE, align 4
  %25 = load i32, i32* @VM_PROT_ALL, align 4
  %26 = load i32, i32* @VM_PROT_ALL, align 4
  %27 = load i32, i32* @VM_INHERIT_NONE, align 4
  %28 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @VM_MAP_KERNEL_FLAGS_NONE, i32 0, i32 0), align 4
  %29 = call i32 @vm_map_kernel(i32 %20, i64* %7, i64 %21, i32 0, i32 %22, i32 %28, i32 %23, i32* null, i32 0, i32 %24, i32 %25, i32 %26, i32 %27)
  store i32 %29, i32* %12, align 4
  %30 = load i32, i32* %12, align 4
  %31 = load i32, i32* @KERN_SUCCESS, align 4
  %32 = icmp ne i32 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %19
  %34 = load i32, i32* %12, align 4
  %35 = call i32 (i8*, ...) @panic(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %34)
  br label %36

36:                                               ; preds = %33, %19
  %37 = load i32, i32* @kernel_map, align 4
  %38 = load i64, i64* %7, align 8
  %39 = load i64, i64* %7, align 8
  %40 = load i64, i64* %5, align 8
  %41 = add i64 %39, %40
  %42 = load i32, i32* @VM_PROT_DEFAULT, align 4
  %43 = load i32, i32* @VM_KERN_MEMORY_OSFMK, align 4
  %44 = load i32, i32* @FALSE, align 4
  %45 = call i32 @vm_map_wire_kernel(i32 %37, i64 %38, i64 %41, i32 %42, i32 %43, i32 %44)
  store i32 %45, i32* %12, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %36
  %48 = load i32, i32* %12, align 4
  %49 = call i32 (i8*, ...) @panic(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %48)
  br label %50

50:                                               ; preds = %47, %36
  %51 = load i32, i32* @kernel_map, align 4
  %52 = load i64, i64* %7, align 8
  %53 = load i32, i32* @kernel_map, align 4
  %54 = call i32 @VM_MAP_PAGE_MASK(i32 %53)
  %55 = call i32 @vm_map_trunc_page(i64 %52, i32 %54)
  %56 = call i64 @vm_map_lookup_entry(i32 %51, i32 %55, %struct.TYPE_10__** %10)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %63, label %58

58:                                               ; preds = %50
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br label %63

63:                                               ; preds = %58, %50
  %64 = phi i1 [ true, %50 ], [ %62, %58 ]
  %65 = zext i1 %64 to i32
  store i32 %65, i32* %12, align 4
  br i1 %64, label %69, label %66

66:                                               ; preds = %63
  %67 = load i32, i32* %12, align 4
  %68 = call i32 (i8*, ...) @panic(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %67)
  br label %69

69:                                               ; preds = %66, %63
  %70 = load i32, i32* @MEMORY_OBJECT_COPY_NONE, align 4
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %72 = call %struct.TYPE_11__* @VME_OBJECT(%struct.TYPE_10__* %71)
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 0
  store i32 %70, i32* %73, align 4
  %74 = load i32, i32* @kernel_map, align 4
  %75 = load i64, i64* %7, align 8
  %76 = load i32, i32* %6, align 4
  %77 = call i32 @mach_make_memory_entry(i32 %74, i64* %9, i64 %75, i32 %76, i32* %11, i32* null)
  store i32 %77, i32* %12, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %69
  %80 = load i32, i32* %12, align 4
  %81 = call i32 (i8*, ...) @panic(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i32 %80)
  br label %82

82:                                               ; preds = %79, %69
  %83 = bitcast %struct.TYPE_9__* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %83, i8* align 4 bitcast (%struct.TYPE_9__* @VM_MAP_KERNEL_FLAGS_NONE to i8*), i64 4, i1 false)
  %84 = load i32, i32* %6, align 4
  %85 = load i32, i32* @VM_PROT_READ, align 4
  %86 = load i32, i32* @VM_PROT_EXECUTE, align 4
  %87 = or i32 %85, %86
  %88 = icmp eq i32 %84, %87
  br i1 %88, label %89, label %92

89:                                               ; preds = %82
  %90 = load i32, i32* @TRUE, align 4
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  store i32 %90, i32* %91, align 4
  br label %92

92:                                               ; preds = %89, %82
  %93 = load i32*, i32** %4, align 8
  %94 = load i64, i64* %5, align 8
  %95 = load i32, i32* @VM_FLAGS_FIXED, align 4
  %96 = load i32, i32* @VM_KERN_MEMORY_NONE, align 4
  %97 = load i32, i32* %11, align 4
  %98 = load i32, i32* @FALSE, align 4
  %99 = load i32, i32* %6, align 4
  %100 = load i32, i32* %6, align 4
  %101 = load i32, i32* @VM_INHERIT_SHARE, align 4
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @vm_map_64_kernel(i32* %93, i64* %8, i64 %94, i32 0, i32 %95, i32 %103, i32 %96, i32 %97, i32 0, i32 %98, i32 %99, i32 %100, i32 %101)
  store i32 %104, i32* %12, align 4
  %105 = load i32, i32* %12, align 4
  %106 = load i32, i32* @KERN_SUCCESS, align 4
  %107 = icmp ne i32 %105, %106
  br i1 %107, label %108, label %111

108:                                              ; preds = %92
  %109 = load i32, i32* %12, align 4
  %110 = call i32 (i8*, ...) @panic(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i32 %109)
  br label %111

111:                                              ; preds = %108, %92
  %112 = load i32, i32* %11, align 4
  %113 = call i32 @ipc_port_release(i32 %112)
  %114 = load i32, i32* @kernel_map, align 4
  %115 = load i64, i64* %7, align 8
  %116 = load i64, i64* %5, align 8
  %117 = load i32, i32* @FALSE, align 4
  %118 = load i32, i32* @VM_PROT_READ, align 4
  %119 = load i32, i32* @VM_PROT_WRITE, align 4
  %120 = or i32 %118, %119
  %121 = call i32 @vm_protect(i32 %114, i64 %115, i64 %116, i32 %117, i32 %120)
  store i32 %121, i32* %12, align 4
  %122 = load i32, i32* %12, align 4
  %123 = load i32, i32* @KERN_SUCCESS, align 4
  %124 = icmp eq i32 %122, %123
  %125 = zext i1 %124 to i32
  %126 = call i32 @assert(i32 %125)
  %127 = load i64, i64* %7, align 8
  %128 = inttoptr i64 %127 to i8*
  ret i8* %128
}

declare dso_local i32 @panic(i8*, ...) #1

declare dso_local i32 @vm_map_kernel(i32, i64*, i64, i32, i32, i32, i32, i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @vm_map_wire_kernel(i32, i64, i64, i32, i32, i32) #1

declare dso_local i64 @vm_map_lookup_entry(i32, i32, %struct.TYPE_10__**) #1

declare dso_local i32 @vm_map_trunc_page(i64, i32) #1

declare dso_local i32 @VM_MAP_PAGE_MASK(i32) #1

declare dso_local %struct.TYPE_11__* @VME_OBJECT(%struct.TYPE_10__*) #1

declare dso_local i32 @mach_make_memory_entry(i32, i64*, i64, i32, i32*, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @vm_map_64_kernel(i32*, i64*, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ipc_port_release(i32) #1

declare dso_local i32 @vm_protect(i32, i64, i64, i32, i32) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
