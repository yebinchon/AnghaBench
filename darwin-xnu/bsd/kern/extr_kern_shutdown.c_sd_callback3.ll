; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_shutdown.c_sd_callback3.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_shutdown.c_sd_callback3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i64, i32, i32, i64 }
%struct.sd_iterargs = type { i32, i32 }

@SZOMB = common dso_local global i64 0, align 8
@THREAD_CONTINUE_NULL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"%s[%d] had to be forced closed with exit1().\0A\00", align 1
@DBG_BSD_PROC = common dso_local global i32 0, align 4
@BSD_PROC_FRCEXIT = common dso_local global i32 0, align 4
@DBG_FUNC_NONE = common dso_local global i32 0, align 4
@PROC_RETURNED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i8*)* @sd_callback3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sd_callback3(%struct.TYPE_6__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sd_iterargs*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.sd_iterargs*
  store %struct.sd_iterargs* %9, %struct.sd_iterargs** %5, align 8
  %10 = call i32 (...) @vfs_context_current()
  store i32 %10, i32* %6, align 4
  %11 = load %struct.sd_iterargs*, %struct.sd_iterargs** %5, align 8
  %12 = getelementptr inbounds %struct.sd_iterargs, %struct.sd_iterargs* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %7, align 4
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %15 = call i32 @proc_lock(%struct.TYPE_6__* %14)
  %16 = load i32, i32* %7, align 4
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 8
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @SZOMB, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %65

24:                                               ; preds = %2
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 4
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %24
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %31 = call i32 @proc_unlock(%struct.TYPE_6__* %30)
  %32 = load i32, i32* @THREAD_CONTINUE_NULL, align 4
  %33 = call i32 @thread_block(i32 %32)
  br label %64

34:                                               ; preds = %24
  %35 = call i64 (...) @current_thread()
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 4
  store i64 %35, i64* %37, align 8
  %38 = call i32 @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %39 = load i32, i32* %6, align 4
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @sd_log(i32 %39, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %42, i32 %45)
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %48 = call i32 @proc_unlock(%struct.TYPE_6__* %47)
  %49 = load i32, i32* @DBG_BSD_PROC, align 4
  %50 = load i32, i32* @BSD_PROC_FRCEXIT, align 4
  %51 = call i32 @BSDDBG_CODE(i32 %49, i32 %50)
  %52 = load i32, i32* @DBG_FUNC_NONE, align 4
  %53 = or i32 %51, %52
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @KERNEL_DEBUG_CONSTANT(i32 %53, i32 %56, i32 0, i32 1, i32 0, i32 0)
  %58 = load %struct.sd_iterargs*, %struct.sd_iterargs** %5, align 8
  %59 = getelementptr inbounds %struct.sd_iterargs, %struct.sd_iterargs* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %59, align 4
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %63 = call i32 @exit1(%struct.TYPE_6__* %62, i32 1, i32* null)
  br label %64

64:                                               ; preds = %34, %29
  br label %68

65:                                               ; preds = %2
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %67 = call i32 @proc_unlock(%struct.TYPE_6__* %66)
  br label %68

68:                                               ; preds = %65, %64
  %69 = load i32, i32* @PROC_RETURNED, align 4
  ret i32 %69
}

declare dso_local i32 @vfs_context_current(...) #1

declare dso_local i32 @proc_lock(%struct.TYPE_6__*) #1

declare dso_local i32 @proc_unlock(%struct.TYPE_6__*) #1

declare dso_local i32 @thread_block(i32) #1

declare dso_local i64 @current_thread(...) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @sd_log(i32, i8*, i32, i32) #1

declare dso_local i32 @KERNEL_DEBUG_CONSTANT(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @BSDDBG_CODE(i32, i32) #1

declare dso_local i32 @exit1(%struct.TYPE_6__*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
