; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/dev/extr_mem.c_mmrw.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/dev/extr_mem.c_mmrw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uio = type { i32, i32 }

@ENODEV = common dso_local global i32 0, align 4
@UIO_READ = common dso_local global i32 0, align 4
@devzerobuf = common dso_local global i8* null, align 8
@caddr_t = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@M_TEMP = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@UIO_WRITE = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@VM_MAX_KERNEL_ADDRESS = common dso_local global i32 0, align 4
@VM_MIN_KERNEL_AND_KEXT_ADDRESS = common dso_local global i64 0, align 8
@dev_kmem_enabled = common dso_local global i32 0, align 4
@dev_kmem_mask_top_bit = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mmrw(i32 %0, %struct.uio* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.uio*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.uio* %1, %struct.uio** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %9, align 4
  br label %10

10:                                               ; preds = %72, %65, %3
  %11 = load %struct.uio*, %struct.uio** %6, align 8
  %12 = call i64 @uio_resid(%struct.uio* %11)
  %13 = icmp sgt i64 %12, 0
  br i1 %13, label %14, label %76

14:                                               ; preds = %10
  %15 = load %struct.uio*, %struct.uio** %6, align 8
  %16 = call i32 @uio_update(%struct.uio* %15, i32 0)
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @minor(i32 %17)
  switch i32 %18, label %66 [
    i32 0, label %19
    i32 1, label %21
    i32 2, label %23
    i32 3, label %31
  ]

19:                                               ; preds = %14
  %20 = load i32, i32* @ENODEV, align 4
  store i32 %20, i32* %4, align 4
  br label %78

21:                                               ; preds = %14
  %22 = load i32, i32* @ENODEV, align 4
  store i32 %22, i32* %4, align 4
  br label %78

23:                                               ; preds = %14
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @UIO_READ, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  store i32 0, i32* %4, align 4
  br label %78

28:                                               ; preds = %23
  %29 = load %struct.uio*, %struct.uio** %6, align 8
  %30 = call i32 @uio_curriovlen(%struct.uio* %29)
  store i32 %30, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %68

31:                                               ; preds = %14
  %32 = load i8*, i8** @devzerobuf, align 8
  %33 = icmp eq i8* %32, null
  br i1 %33, label %34, label %44

34:                                               ; preds = %31
  %35 = load i8*, i8** @devzerobuf, align 8
  %36 = load i32, i32* @caddr_t, align 4
  %37 = load i32, i32* @PAGE_SIZE, align 4
  %38 = load i32, i32* @M_TEMP, align 4
  %39 = load i32, i32* @M_WAITOK, align 4
  %40 = call i32 @MALLOC(i8* %35, i32 %36, i32 %37, i32 %38, i32 %39)
  %41 = load i8*, i8** @devzerobuf, align 8
  %42 = load i32, i32* @PAGE_SIZE, align 4
  %43 = call i32 @bzero(i8* %41, i32 %42)
  br label %44

44:                                               ; preds = %34, %31
  %45 = load %struct.uio*, %struct.uio** %6, align 8
  %46 = getelementptr inbounds %struct.uio, %struct.uio* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @UIO_WRITE, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %44
  %51 = load %struct.uio*, %struct.uio** %6, align 8
  %52 = call i32 @uio_curriovlen(%struct.uio* %51)
  store i32 %52, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %68

53:                                               ; preds = %44
  %54 = load %struct.uio*, %struct.uio** %6, align 8
  %55 = call i32 @uio_curriovlen(%struct.uio* %54)
  %56 = load i32, i32* @PAGE_SIZE, align 4
  %57 = call i32 @min(i32 %55, i32 %56)
  store i32 %57, i32* %8, align 4
  %58 = load i8*, i8** @devzerobuf, align 8
  %59 = load i32, i32* %8, align 4
  %60 = load %struct.uio*, %struct.uio** %6, align 8
  %61 = call i32 @uiomove(i8* %58, i32 %59, %struct.uio* %60)
  store i32 %61, i32* %9, align 4
  %62 = load i32, i32* %9, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %53
  br label %68

65:                                               ; preds = %53
  br label %10

66:                                               ; preds = %14
  %67 = load i32, i32* @ENODEV, align 4
  store i32 %67, i32* %4, align 4
  br label %78

68:                                               ; preds = %64, %50, %28
  %69 = load i32, i32* %9, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %68
  br label %76

72:                                               ; preds = %68
  %73 = load %struct.uio*, %struct.uio** %6, align 8
  %74 = load i32, i32* %8, align 4
  %75 = call i32 @uio_update(%struct.uio* %73, i32 %74)
  br label %10

76:                                               ; preds = %71, %10
  %77 = load i32, i32* %9, align 4
  store i32 %77, i32* %4, align 4
  br label %78

78:                                               ; preds = %76, %66, %27, %21, %19
  %79 = load i32, i32* %4, align 4
  ret i32 %79
}

declare dso_local i64 @uio_resid(%struct.uio*) #1

declare dso_local i32 @uio_update(%struct.uio*, i32) #1

declare dso_local i32 @minor(i32) #1

declare dso_local i32 @uio_curriovlen(%struct.uio*) #1

declare dso_local i32 @MALLOC(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @bzero(i8*, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @uiomove(i8*, i32, %struct.uio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
