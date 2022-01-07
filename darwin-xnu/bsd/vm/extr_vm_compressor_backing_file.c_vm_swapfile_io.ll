; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vm/extr_vm_compressor_backing_file.c_vm_swapfile_io.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vm/extr_vm_compressor_backing_file.c_vm_swapfile_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PAGE_SIZE_64 = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i64 0, align 8
@UPL_SET_INTERNAL = common dso_local global i32 0, align 4
@UPL_SET_LITE = common dso_local global i32 0, align 4
@UPL_IOSYNC = common dso_local global i32 0, align 4
@SWAP_READ = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@UPL_COPYOUT_FROM = common dso_local global i32 0, align 4
@kernel_map = common dso_local global i32 0, align 4
@VM_KERN_MEMORY_OSFMK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"vm_map_create_upl failed with %d\0A\00", align 1
@UPL_IGNORE_VALID_PAGE_CHECK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"vm_swapfile_io: vnode_pagein failed with %d.\0A\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"vm_swapfile_io: vnode_pageout failed with %d.\0A\00", align 1
@IO_NOCACHE = common dso_local global i32 0, align 4
@IO_NODELOCKED = common dso_local global i32 0, align 4
@IO_SWAP_DISPATCH = common dso_local global i32 0, align 4
@IO_SYNC = common dso_local global i32 0, align 4
@IO_UNIT = common dso_local global i32 0, align 4
@UIO_READ = common dso_local global i32 0, align 4
@UIO_SYSSPACE = common dso_local global i32 0, align 4
@UIO_WRITE = common dso_local global i32 0, align 4
@UPL_PAGING_ENCRYPTED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vm_swapfile_io(i32 %0, i64 %1, i64 %2, i32 %3, i32 %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  store i32 %0, i32* %7, align 4
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i8* %5, i8** %12, align 8
  store i32 0, i32* %13, align 4
  %21 = load i32, i32* %10, align 4
  %22 = load i32, i32* @PAGE_SIZE_64, align 4
  %23 = mul nsw i32 %21, %22
  %24 = sext i32 %23 to i64
  store i64 %24, i64* %14, align 8
  %25 = load i64, i64* @KERN_SUCCESS, align 8
  store i64 %25, i64* %15, align 8
  store i32* null, i32** %16, align 8
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store i64 0, i64* %20, align 8
  %26 = load i32, i32* @UPL_SET_INTERNAL, align 4
  %27 = load i32, i32* @UPL_SET_LITE, align 4
  %28 = or i32 %26, %27
  store i32 %28, i32* %18, align 4
  %29 = load i8*, i8** %12, align 8
  %30 = icmp eq i8* %29, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %6
  %32 = load i32, i32* @UPL_IOSYNC, align 4
  store i32 %32, i32* %19, align 4
  br label %33

33:                                               ; preds = %31, %6
  %34 = load i32, i32* %11, align 4
  %35 = load i32, i32* @SWAP_READ, align 4
  %36 = and i32 %34, %35
  %37 = load i32, i32* @FALSE, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %33
  %40 = load i32, i32* @UPL_COPYOUT_FROM, align 4
  %41 = load i32, i32* %18, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %18, align 4
  br label %43

43:                                               ; preds = %39, %33
  %44 = load i64, i64* %14, align 8
  store i64 %44, i64* %20, align 8
  %45 = load i32, i32* @kernel_map, align 4
  %46 = load i64, i64* %9, align 8
  %47 = load i32, i32* @VM_KERN_MEMORY_OSFMK, align 4
  %48 = call i64 @vm_map_create_upl(i32 %45, i64 %46, i64* %20, i32** %16, i32* null, i32* %17, i32* %18, i32 %47)
  store i64 %48, i64* %15, align 8
  %49 = load i64, i64* %15, align 8
  %50 = load i64, i64* @KERN_SUCCESS, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %56, label %52

52:                                               ; preds = %43
  %53 = load i64, i64* %20, align 8
  %54 = load i64, i64* %14, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %52, %43
  %57 = load i64, i64* %15, align 8
  %58 = call i32 @panic(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i64 %57)
  br label %59

59:                                               ; preds = %56, %52
  %60 = load i32, i32* %11, align 4
  %61 = load i32, i32* @SWAP_READ, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %79

64:                                               ; preds = %59
  %65 = load i32, i32* %7, align 4
  %66 = load i32*, i32** %16, align 8
  %67 = load i64, i64* %8, align 8
  %68 = load i64, i64* %14, align 8
  %69 = load i32, i32* %19, align 4
  %70 = load i32, i32* @UPL_IGNORE_VALID_PAGE_CHECK, align 4
  %71 = or i32 %69, %70
  %72 = call i32 @vnode_pagein(i32 %65, i32* %66, i32 0, i64 %67, i64 %68, i32 %71, i32* %13)
  %73 = load i32, i32* %13, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %64
  %76 = load i32, i32* %13, align 4
  %77 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %76)
  br label %78

78:                                               ; preds = %75, %64
  br label %95

79:                                               ; preds = %59
  %80 = load i32*, i32** %16, align 8
  %81 = load i8*, i8** %12, align 8
  %82 = call i32 @upl_set_iodone(i32* %80, i8* %81)
  %83 = load i32, i32* %7, align 4
  %84 = load i32*, i32** %16, align 8
  %85 = load i64, i64* %8, align 8
  %86 = load i64, i64* %14, align 8
  %87 = load i32, i32* %19, align 4
  %88 = call i32 @vnode_pageout(i32 %83, i32* %84, i32 0, i64 %85, i64 %86, i32 %87, i32* %13)
  %89 = load i32, i32* %13, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %79
  %92 = load i32, i32* %13, align 4
  %93 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i32 %92)
  br label %94

94:                                               ; preds = %91, %79
  br label %95

95:                                               ; preds = %94, %78
  %96 = load i32, i32* %13, align 4
  ret i32 %96
}

declare dso_local i64 @vm_map_create_upl(i32, i64, i64*, i32**, i32*, i32*, i32*, i32) #1

declare dso_local i32 @panic(i8*, i64) #1

declare dso_local i32 @vnode_pagein(i32, i32*, i32, i64, i64, i32, i32*) #1

declare dso_local i32 @printf(i8*, i32, ...) #1

declare dso_local i32 @upl_set_iodone(i32*, i8*) #1

declare dso_local i32 @vnode_pageout(i32, i32*, i32, i64, i64, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
