; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vm/extr_vm_compressor_backing_file.c_vm_swapfile_preallocate.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vm/extr_vm_compressor_backing_file.c_vm_swapfile_preallocate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }

@IO_NOZEROFILL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"vnode_setsize for swap files failed: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"vnode_size (new file) for swap file failed: %d\0A\00", align 1
@FALSE = common dso_local global i64 0, align 8
@FIOPINSWAP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [50 x i8] c"pin for swap files failed: %d,  file_size = %lld\0A\00", align 1
@VSWAP = common dso_local global i32 0, align 4
@PROTECTION_CLASS_C = common dso_local global i32 0, align 4
@va_dataprotect_class = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vm_swapfile_preallocate(%struct.TYPE_9__* %0, i64* %1, i64* %2) #0 {
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i64* %1, i64** %5, align 8
  store i64* %2, i64** %6, align 8
  store i32 0, i32* %7, align 4
  store i64 0, i64* %8, align 8
  store i32* null, i32** %9, align 8
  %10 = call i32* (...) @vfs_context_kernel()
  store i32* %10, i32** %9, align 8
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %12 = load i64*, i64** %5, align 8
  %13 = load i64, i64* %12, align 8
  %14 = load i32, i32* @IO_NOZEROFILL, align 4
  %15 = load i32*, i32** %9, align 8
  %16 = call i32 @vnode_setsize(%struct.TYPE_9__* %11, i64 %13, i32 %14, i32* %15)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load i32, i32* %7, align 4
  %21 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %20)
  br label %70

22:                                               ; preds = %3
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %24 = bitcast i64* %8 to i32*
  %25 = load i32*, i32** %9, align 8
  %26 = call i32 @vnode_size(%struct.TYPE_9__* %23, i32* %24, i32* %25)
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %22
  %30 = load i32, i32* %7, align 4
  %31 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %30)
  br label %70

32:                                               ; preds = %22
  %33 = load i64, i64* %8, align 8
  %34 = load i64*, i64** %5, align 8
  %35 = load i64, i64* %34, align 8
  %36 = icmp eq i64 %33, %35
  %37 = zext i1 %36 to i32
  %38 = call i32 @assert(i32 %37)
  %39 = load i64*, i64** %6, align 8
  %40 = icmp ne i64* %39, null
  br i1 %40, label %41, label %60

41:                                               ; preds = %32
  %42 = load i64*, i64** %6, align 8
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @FALSE, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %60

46:                                               ; preds = %41
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %48 = load i32, i32* @FIOPINSWAP, align 4
  %49 = load i32*, i32** %9, align 8
  %50 = call i32 @VNOP_IOCTL(%struct.TYPE_9__* %47, i32 %48, i32* null, i32 0, i32* %49)
  store i32 %50, i32* %7, align 4
  %51 = load i32, i32* %7, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %46
  %54 = load i32, i32* %7, align 4
  %55 = load i64, i64* %8, align 8
  %56 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), i32 %54, i64 %55)
  %57 = load i64, i64* @FALSE, align 8
  %58 = load i64*, i64** %6, align 8
  store i64 %57, i64* %58, align 8
  store i32 0, i32* %7, align 4
  br label %59

59:                                               ; preds = %53, %46
  br label %60

60:                                               ; preds = %59, %41, %32
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %62 = call i32 @vnode_lock_spin(%struct.TYPE_9__* %61)
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @VSWAP, align 4
  %67 = call i32 @SET(i32 %65, i32 %66)
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %69 = call i32 @vnode_unlock(%struct.TYPE_9__* %68)
  br label %70

70:                                               ; preds = %60, %29, %19
  %71 = load i32, i32* %7, align 4
  ret i32 %71
}

declare dso_local i32* @vfs_context_kernel(...) #1

declare dso_local i32 @vnode_setsize(%struct.TYPE_9__*, i64, i32, i32*) #1

declare dso_local i32 @printf(i8*, i32, ...) #1

declare dso_local i32 @vnode_size(%struct.TYPE_9__*, i32*, i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @VNOP_IOCTL(%struct.TYPE_9__*, i32, i32*, i32, i32*) #1

declare dso_local i32 @vnode_lock_spin(%struct.TYPE_9__*) #1

declare dso_local i32 @SET(i32, i32) #1

declare dso_local i32 @vnode_unlock(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
