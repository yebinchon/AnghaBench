; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_phantom_cache.c_vm_phantom_cache_init.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_phantom_cache.c_vm_phantom_cache_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VM_CONFIG_COMPRESSOR_IS_ACTIVE = common dso_local global i32 0, align 4
@max_mem = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@VM_GHOST_PAGES_PER_ENTRY = common dso_local global i32 0, align 4
@vm_phantom_cache_num_entries = common dso_local global i32 0, align 4
@vm_phantom_cache_size = common dso_local global i32 0, align 4
@vm_phantom_cache_hash_size = common dso_local global i32 0, align 4
@kernel_map = common dso_local global i32 0, align 4
@vm_phantom_cache = common dso_local global i32 0, align 4
@KMA_KOBJECT = common dso_local global i32 0, align 4
@KMA_PERMANENT = common dso_local global i32 0, align 4
@VM_KERN_MEMORY_PHANTOM_CACHE = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [54 x i8] c"vm_phantom_cache_init: kernel_memory_allocate failed\0A\00", align 1
@vm_phantom_cache_hash = common dso_local global i32 0, align 4
@vm_ghost_hash_mask = common dso_local global i32 0, align 4
@vm_ghost_bucket_hash = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [53 x i8] c"vm_phantom_cache_init: WARNING -- strange page hash\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vm_phantom_cache_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load i32, i32* @VM_CONFIG_COMPRESSOR_IS_ACTIVE, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %0
  br label %91

7:                                                ; preds = %0
  %8 = load i32, i32* @max_mem, align 4
  %9 = load i32, i32* @PAGE_SIZE, align 4
  %10 = sdiv i32 %8, %9
  %11 = sdiv i32 %10, 4
  %12 = load i32, i32* @VM_GHOST_PAGES_PER_ENTRY, align 4
  %13 = sdiv i32 %11, %12
  store i32 %13, i32* %1, align 4
  store i32 1, i32* @vm_phantom_cache_num_entries, align 4
  br label %14

14:                                               ; preds = %18, %7
  %15 = load i32, i32* @vm_phantom_cache_num_entries, align 4
  %16 = load i32, i32* %1, align 4
  %17 = icmp ult i32 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %14
  %19 = load i32, i32* @vm_phantom_cache_num_entries, align 4
  %20 = shl i32 %19, 1
  store i32 %20, i32* @vm_phantom_cache_num_entries, align 4
  br label %14

21:                                               ; preds = %14
  %22 = load i32, i32* @vm_phantom_cache_num_entries, align 4
  %23 = zext i32 %22 to i64
  %24 = mul i64 4, %23
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* @vm_phantom_cache_size, align 4
  %26 = load i32, i32* @vm_phantom_cache_num_entries, align 4
  %27 = zext i32 %26 to i64
  %28 = mul i64 4, %27
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* @vm_phantom_cache_hash_size, align 4
  %30 = load i32, i32* @kernel_map, align 4
  %31 = load i32, i32* @vm_phantom_cache_size, align 4
  %32 = load i32, i32* @KMA_KOBJECT, align 4
  %33 = load i32, i32* @KMA_PERMANENT, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @VM_KERN_MEMORY_PHANTOM_CACHE, align 4
  %36 = call i64 @kernel_memory_allocate(i32 %30, i32* @vm_phantom_cache, i32 %31, i32 0, i32 %34, i32 %35)
  %37 = load i64, i64* @KERN_SUCCESS, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %21
  %40 = call i32 @panic(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0))
  br label %41

41:                                               ; preds = %39, %21
  %42 = load i32, i32* @vm_phantom_cache, align 4
  %43 = load i32, i32* @vm_phantom_cache_size, align 4
  %44 = call i32 @bzero(i32 %42, i32 %43)
  %45 = load i32, i32* @kernel_map, align 4
  %46 = load i32, i32* @vm_phantom_cache_hash_size, align 4
  %47 = load i32, i32* @KMA_KOBJECT, align 4
  %48 = load i32, i32* @KMA_PERMANENT, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* @VM_KERN_MEMORY_PHANTOM_CACHE, align 4
  %51 = call i64 @kernel_memory_allocate(i32 %45, i32* @vm_phantom_cache_hash, i32 %46, i32 0, i32 %49, i32 %50)
  %52 = load i64, i64* @KERN_SUCCESS, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %41
  %55 = call i32 @panic(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0))
  br label %56

56:                                               ; preds = %54, %41
  %57 = load i32, i32* @vm_phantom_cache_hash, align 4
  %58 = load i32, i32* @vm_phantom_cache_hash_size, align 4
  %59 = call i32 @bzero(i32 %57, i32 %58)
  %60 = load i32, i32* @vm_phantom_cache_num_entries, align 4
  %61 = sub i32 %60, 1
  store i32 %61, i32* @vm_ghost_hash_mask, align 4
  %62 = load i32, i32* @vm_phantom_cache_num_entries, align 4
  store i32 %62, i32* %3, align 4
  store i32 0, i32* %2, align 4
  br label %63

63:                                               ; preds = %69, %56
  %64 = load i32, i32* %3, align 4
  %65 = icmp ugt i32 %64, 1
  br i1 %65, label %66, label %72

66:                                               ; preds = %63
  %67 = load i32, i32* %3, align 4
  %68 = udiv i32 %67, 2
  store i32 %68, i32* %3, align 4
  br label %69

69:                                               ; preds = %66
  %70 = load i32, i32* %2, align 4
  %71 = add i32 %70, 1
  store i32 %71, i32* %2, align 4
  br label %63

72:                                               ; preds = %63
  %73 = load i32, i32* %2, align 4
  %74 = add i32 %73, 1
  %75 = lshr i32 %74, 1
  %76 = shl i32 1, %75
  store i32 %76, i32* @vm_ghost_bucket_hash, align 4
  %77 = load i32, i32* %2, align 4
  %78 = add i32 %77, 1
  %79 = lshr i32 %78, 2
  %80 = shl i32 1, %79
  %81 = load i32, i32* @vm_ghost_bucket_hash, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* @vm_ghost_bucket_hash, align 4
  %83 = load i32, i32* @vm_ghost_bucket_hash, align 4
  %84 = or i32 %83, 1
  store i32 %84, i32* @vm_ghost_bucket_hash, align 4
  %85 = load i32, i32* @vm_ghost_hash_mask, align 4
  %86 = load i32, i32* @vm_phantom_cache_num_entries, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %72
  %90 = call i32 @printf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0))
  br label %91

91:                                               ; preds = %6, %89, %72
  ret void
}

declare dso_local i64 @kernel_memory_allocate(i32, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @bzero(i32, i32) #1

declare dso_local i32 @printf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
