; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs_gss.c_nfs_gss_mach_alloc_buffer.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs_gss.c_nfs_gss_mach_alloc_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ipc_kernel_map = common dso_local global i32 0, align 4
@VM_FLAGS_ANYWHERE = common dso_local global i32 0, align 4
@VM_KERN_MEMORY_FILE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"nfs_gss_mach_alloc_buffer: vm_allocate failed\0A\00", align 1
@VM_PROT_READ = common dso_local global i32 0, align 4
@VM_PROT_WRITE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"nfs_gss_mach_alloc_buffer: vm_map_wire failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"nfs_gss_mach_alloc_buffer: vm_map_unwire failed\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [49 x i8] c"nfs_gss_mach_alloc_buffer: vm_map_copyin failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i64, i32**)* @nfs_gss_mach_alloc_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfs_gss_mach_alloc_buffer(i32* %0, i64 %1, i32** %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32** %2, i32*** %6, align 8
  %10 = load i32**, i32*** %6, align 8
  store i32* null, i32** %10, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %3
  %14 = load i64, i64* %5, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %13, %3
  br label %89

17:                                               ; preds = %13
  %18 = load i64, i64* %5, align 8
  %19 = load i32, i32* @ipc_kernel_map, align 4
  %20 = call i32 @vm_map_page_mask(i32 %19)
  %21 = call i64 @vm_map_round_page(i64 %18, i32 %20)
  store i64 %21, i64* %9, align 8
  %22 = load i32, i32* @ipc_kernel_map, align 4
  %23 = load i64, i64* %9, align 8
  %24 = load i32, i32* @VM_FLAGS_ANYWHERE, align 4
  %25 = load i32, i32* @VM_KERN_MEMORY_FILE, align 4
  %26 = call i64 @vm_allocate_kernel(i32 %22, i64* %8, i64 %23, i32 %24, i32 %25)
  store i64 %26, i64* %7, align 8
  %27 = load i64, i64* %7, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %17
  %30 = call i32 @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  br label %89

31:                                               ; preds = %17
  %32 = load i32, i32* @ipc_kernel_map, align 4
  %33 = load i64, i64* %8, align 8
  %34 = load i32, i32* @ipc_kernel_map, align 4
  %35 = call i32 @vm_map_page_mask(i32 %34)
  %36 = call i32 @vm_map_trunc_page(i64 %33, i32 %35)
  %37 = load i64, i64* %8, align 8
  %38 = load i64, i64* %9, align 8
  %39 = add nsw i64 %37, %38
  %40 = load i32, i32* @ipc_kernel_map, align 4
  %41 = call i32 @vm_map_page_mask(i32 %40)
  %42 = call i64 @vm_map_round_page(i64 %39, i32 %41)
  %43 = load i32, i32* @VM_PROT_READ, align 4
  %44 = load i32, i32* @VM_PROT_WRITE, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @VM_KERN_MEMORY_FILE, align 4
  %47 = load i32, i32* @FALSE, align 4
  %48 = call i64 @vm_map_wire_kernel(i32 %32, i32 %36, i64 %42, i32 %45, i32 %46, i32 %47)
  store i64 %48, i64* %7, align 8
  %49 = load i64, i64* %7, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %31
  %52 = call i32 @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  br label %89

53:                                               ; preds = %31
  %54 = load i32*, i32** %4, align 8
  %55 = load i64, i64* %8, align 8
  %56 = inttoptr i64 %55 to i8*
  %57 = load i64, i64* %5, align 8
  %58 = call i32 @bcopy(i32* %54, i8* %56, i64 %57)
  %59 = load i32, i32* @ipc_kernel_map, align 4
  %60 = load i64, i64* %8, align 8
  %61 = load i32, i32* @ipc_kernel_map, align 4
  %62 = call i32 @vm_map_page_mask(i32 %61)
  %63 = call i32 @vm_map_trunc_page(i64 %60, i32 %62)
  %64 = load i64, i64* %8, align 8
  %65 = load i64, i64* %9, align 8
  %66 = add nsw i64 %64, %65
  %67 = load i32, i32* @ipc_kernel_map, align 4
  %68 = call i32 @vm_map_page_mask(i32 %67)
  %69 = call i64 @vm_map_round_page(i64 %66, i32 %68)
  %70 = load i32, i32* @FALSE, align 4
  %71 = call i64 @vm_map_unwire(i32 %59, i32 %63, i64 %69, i32 %70)
  store i64 %71, i64* %7, align 8
  %72 = load i64, i64* %7, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %53
  %75 = call i32 @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0))
  br label %89

76:                                               ; preds = %53
  %77 = load i32, i32* @ipc_kernel_map, align 4
  %78 = load i64, i64* %8, align 8
  %79 = trunc i64 %78 to i32
  %80 = load i64, i64* %5, align 8
  %81 = trunc i64 %80 to i32
  %82 = load i32, i32* @TRUE, align 4
  %83 = load i32**, i32*** %6, align 8
  %84 = call i64 @vm_map_copyin(i32 %77, i32 %79, i32 %81, i32 %82, i32** %83)
  store i64 %84, i64* %7, align 8
  %85 = load i64, i64* %7, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %76
  %88 = call i32 @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0))
  br label %89

89:                                               ; preds = %16, %29, %51, %74, %87, %76
  ret void
}

declare dso_local i64 @vm_map_round_page(i64, i32) #1

declare dso_local i32 @vm_map_page_mask(i32) #1

declare dso_local i64 @vm_allocate_kernel(i32, i64*, i64, i32, i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i64 @vm_map_wire_kernel(i32, i32, i64, i32, i32, i32) #1

declare dso_local i32 @vm_map_trunc_page(i64, i32) #1

declare dso_local i32 @bcopy(i32*, i8*, i64) #1

declare dso_local i64 @vm_map_unwire(i32, i32, i64, i32) #1

declare dso_local i64 @vm_map_copyin(i32, i32, i32, i32, i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
