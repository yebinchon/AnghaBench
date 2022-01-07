; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_shutdown.c_sd_callback1.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_shutdown.c_sd_callback1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i64, i32 }
%struct.sd_iterargs = type { i32, i32, i32, i32 }

@SZOMB = common dso_local global i64 0, align 8
@P_LIST_EXITCOUNT = common dso_local global i32 0, align 4
@proc_shutdown_exitcount = common dso_local global i32 0, align 4
@PROC_RETURNED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i8*)* @sd_callback1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sd_callback1(%struct.TYPE_6__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sd_iterargs*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.sd_iterargs*
  store %struct.sd_iterargs* %10, %struct.sd_iterargs** %5, align 8
  %11 = load %struct.sd_iterargs*, %struct.sd_iterargs** %5, align 8
  %12 = getelementptr inbounds %struct.sd_iterargs, %struct.sd_iterargs* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %6, align 4
  %14 = load %struct.sd_iterargs*, %struct.sd_iterargs** %5, align 8
  %15 = getelementptr inbounds %struct.sd_iterargs, %struct.sd_iterargs* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %7, align 4
  %17 = load %struct.sd_iterargs*, %struct.sd_iterargs** %5, align 8
  %18 = getelementptr inbounds %struct.sd_iterargs, %struct.sd_iterargs* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %8, align 4
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %21 = call i32 @proc_lock(%struct.TYPE_6__* %20)
  %22 = load i32, i32* %7, align 4
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @SZOMB, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %57

30:                                               ; preds = %2
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %32 = call i32 @proc_unlock(%struct.TYPE_6__* %31)
  %33 = load i32, i32* %8, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %45

35:                                               ; preds = %30
  %36 = call i32 (...) @proc_list_lock()
  %37 = load i32, i32* @P_LIST_EXITCOUNT, align 4
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = or i32 %40, %37
  store i32 %41, i32* %39, align 8
  %42 = load i32, i32* @proc_shutdown_exitcount, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* @proc_shutdown_exitcount, align 4
  %44 = call i32 (...) @proc_list_unlock()
  br label %45

45:                                               ; preds = %35, %30
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @psignal(%struct.TYPE_6__* %46, i32 %47)
  %49 = load i32, i32* %8, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %45
  %52 = load %struct.sd_iterargs*, %struct.sd_iterargs** %5, align 8
  %53 = getelementptr inbounds %struct.sd_iterargs, %struct.sd_iterargs* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %53, align 4
  br label %56

56:                                               ; preds = %51, %45
  br label %60

57:                                               ; preds = %2
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %59 = call i32 @proc_unlock(%struct.TYPE_6__* %58)
  br label %60

60:                                               ; preds = %57, %56
  %61 = load i32, i32* @PROC_RETURNED, align 4
  ret i32 %61
}

declare dso_local i32 @proc_lock(%struct.TYPE_6__*) #1

declare dso_local i32 @proc_unlock(%struct.TYPE_6__*) #1

declare dso_local i32 @proc_list_lock(...) #1

declare dso_local i32 @proc_list_unlock(...) #1

declare dso_local i32 @psignal(%struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
