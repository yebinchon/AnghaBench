; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kdebug.c_kdbg_readcpumap.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kdebug.c_kdbg_readcpumap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }

@KERN_SUCCESS = common dso_local global i32 0, align 4
@kd_ctrl_page = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@KDBG_BUFINIT = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@kernel_map = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kdbg_readcpumap(i32 %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i64* %1, i64** %4, align 8
  store i32* null, i32** %5, align 8
  store i64 0, i64* %6, align 8
  %9 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @kd_ctrl_page, i32 0, i32 0), align 4
  %11 = load i32, i32* @KDBG_BUFINIT, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %54

14:                                               ; preds = %2
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @kd_ctrl_page, i32 0, i32 2), align 4
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @kd_ctrl_page, i32 0, i32 1), align 4
  %17 = call i32 @kdbg_cpumap_init_internal(i32 %15, i32 %16, i32** %5, i64* %6)
  %18 = load i32, i32* @KERN_SUCCESS, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %51

20:                                               ; preds = %14
  %21 = load i32, i32* %3, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %43

23:                                               ; preds = %20
  %24 = load i64*, i64** %4, align 8
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* %6, align 8
  %27 = icmp uge i64 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = load i64, i64* %6, align 8
  br label %33

30:                                               ; preds = %23
  %31 = load i64*, i64** %4, align 8
  %32 = load i64, i64* %31, align 8
  br label %33

33:                                               ; preds = %30, %28
  %34 = phi i64 [ %29, %28 ], [ %32, %30 ]
  store i64 %34, i64* %8, align 8
  %35 = load i32*, i32** %5, align 8
  %36 = load i32, i32* %3, align 4
  %37 = load i64, i64* %8, align 8
  %38 = call i64 @copyout(i32* %35, i32 %36, i64 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %33
  %41 = load i32, i32* @EFAULT, align 4
  store i32 %41, i32* %7, align 4
  br label %42

42:                                               ; preds = %40, %33
  br label %43

43:                                               ; preds = %42, %20
  %44 = load i64, i64* %6, align 8
  %45 = load i64*, i64** %4, align 8
  store i64 %44, i64* %45, align 8
  %46 = load i32, i32* @kernel_map, align 4
  %47 = load i32*, i32** %5, align 8
  %48 = ptrtoint i32* %47 to i32
  %49 = load i64, i64* %6, align 8
  %50 = call i32 @kmem_free(i32 %46, i32 %48, i64 %49)
  br label %53

51:                                               ; preds = %14
  %52 = load i32, i32* @EINVAL, align 4
  store i32 %52, i32* %7, align 4
  br label %53

53:                                               ; preds = %51, %43
  br label %56

54:                                               ; preds = %2
  %55 = load i32, i32* @EINVAL, align 4
  store i32 %55, i32* %7, align 4
  br label %56

56:                                               ; preds = %54, %53
  %57 = load i32, i32* %7, align 4
  ret i32 %57
}

declare dso_local i32 @kdbg_cpumap_init_internal(i32, i32, i32**, i64*) #1

declare dso_local i64 @copyout(i32*, i32, i64) #1

declare dso_local i32 @kmem_free(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
