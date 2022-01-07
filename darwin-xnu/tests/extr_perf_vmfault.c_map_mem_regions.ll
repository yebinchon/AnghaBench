; ModuleID = '/home/carl/AnghaBench/darwin-xnu/tests/extr_perf_vmfault.c_map_mem_regions.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/tests/extr_perf_vmfault.c_map_mem_regions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MEMSIZE = common dso_local global i32 0, align 4
@PROT_READ = common dso_local global i32 0, align 4
@PROT_WRITE = common dso_local global i32 0, align 4
@MAP_ANON = common dso_local global i32 0, align 4
@MAP_PRIVATE = common dso_local global i32 0, align 4
@memblock = common dso_local global i8* null, align 8
@T_QUIET = common dso_local global i32 0, align 4
@MAP_FAILED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"mmap\00", align 1
@test_type = common dso_local global i64 0, align 8
@SOFT_FAULT = common dso_local global i64 0, align 8
@pgsize = common dso_local global i32 0, align 4
@memblock_share = common dso_local global i32 0, align 4
@VM_FLAGS_ANYWHERE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@VM_INHERIT_DEFAULT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"vm_remap\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @map_mem_regions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @map_mem_regions() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8, align 1
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = load i32, i32* @MEMSIZE, align 4
  %6 = load i32, i32* @PROT_READ, align 4
  %7 = load i32, i32* @PROT_WRITE, align 4
  %8 = or i32 %6, %7
  %9 = load i32, i32* @MAP_ANON, align 4
  %10 = load i32, i32* @MAP_PRIVATE, align 4
  %11 = or i32 %9, %10
  %12 = call i64 @mmap(i32* null, i32 %5, i32 %8, i32 %11, i32 -1, i32 0)
  %13 = inttoptr i64 %12 to i8*
  store i8* %13, i8** @memblock, align 8
  %14 = load i32, i32* @T_QUIET, align 4
  %15 = load i8*, i8** @memblock, align 8
  %16 = load i32, i32* @MAP_FAILED, align 4
  %17 = call i32 @T_ASSERT_NE(i8* %15, i32 %16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %18 = load i64, i64* @test_type, align 8
  %19 = load i64, i64* @SOFT_FAULT, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %50

21:                                               ; preds = %0
  %22 = load i8*, i8** @memblock, align 8
  store i8* %22, i8** %1, align 8
  br label %23

23:                                               ; preds = %33, %21
  %24 = load i8*, i8** %1, align 8
  %25 = load i8*, i8** @memblock, align 8
  %26 = load i32, i32* @MEMSIZE, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8, i8* %25, i64 %27
  %29 = icmp ult i8* %24, %28
  br i1 %29, label %30, label %38

30:                                               ; preds = %23
  %31 = load i8*, i8** %1, align 8
  %32 = load i8, i8* %31, align 1
  store volatile i8 %32, i8* %2, align 1
  br label %33

33:                                               ; preds = %30
  %34 = load i32, i32* @pgsize, align 4
  %35 = load i8*, i8** %1, align 8
  %36 = sext i32 %34 to i64
  %37 = getelementptr inbounds i8, i8* %35, i64 %36
  store i8* %37, i8** %1, align 8
  br label %23

38:                                               ; preds = %23
  %39 = load i32, i32* @T_QUIET, align 4
  %40 = call i32 (...) @mach_task_self()
  %41 = load i32, i32* @MEMSIZE, align 4
  %42 = load i32, i32* @VM_FLAGS_ANYWHERE, align 4
  %43 = call i32 (...) @mach_task_self()
  %44 = load i8*, i8** @memblock, align 8
  %45 = ptrtoint i8* %44 to i32
  %46 = load i32, i32* @FALSE, align 4
  %47 = load i32, i32* @VM_INHERIT_DEFAULT, align 4
  %48 = call i32 @vm_remap(i32 %40, i32* @memblock_share, i32 %41, i32 0, i32 %42, i32 %43, i32 %45, i32 %46, i32* %3, i32* %4, i32 %47)
  %49 = call i32 @T_ASSERT_MACH_SUCCESS(i32 %48, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  br label %50

50:                                               ; preds = %38, %0
  ret void
}

declare dso_local i64 @mmap(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @T_ASSERT_NE(i8*, i32, i8*) #1

declare dso_local i32 @T_ASSERT_MACH_SUCCESS(i32, i8*) #1

declare dso_local i32 @vm_remap(i32, i32*, i32, i32, i32, i32, i32, i32, i32*, i32*, i32) #1

declare dso_local i32 @mach_task_self(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
