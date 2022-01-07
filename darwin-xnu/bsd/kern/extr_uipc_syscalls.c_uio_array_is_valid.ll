; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_syscalls.c_uio_array_is_valid.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_syscalls.c_uio_array_is_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uio = type { i32 }

@sb_max = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uio_array_is_valid(%struct.uio** %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.uio**, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.uio*, align 8
  %9 = alloca i64, align 8
  store %struct.uio** %0, %struct.uio*** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 0, i64* %6, align 8
  store i64 0, i64* %7, align 8
  br label %10

10:                                               ; preds = %44, %2
  %11 = load i64, i64* %7, align 8
  %12 = load i64, i64* %5, align 8
  %13 = icmp ult i64 %11, %12
  br i1 %13, label %14, label %47

14:                                               ; preds = %10
  %15 = load %struct.uio**, %struct.uio*** %4, align 8
  %16 = load i64, i64* %7, align 8
  %17 = getelementptr inbounds %struct.uio*, %struct.uio** %15, i64 %16
  %18 = load %struct.uio*, %struct.uio** %17, align 8
  store %struct.uio* %18, %struct.uio** %8, align 8
  %19 = load %struct.uio*, %struct.uio** %8, align 8
  %20 = icmp ne %struct.uio* %19, null
  br i1 %20, label %21, label %43

21:                                               ; preds = %14
  %22 = load %struct.uio*, %struct.uio** %8, align 8
  %23 = call i64 @uio_resid(%struct.uio* %22)
  store i64 %23, i64* %9, align 8
  %24 = load i64, i64* %9, align 8
  %25 = icmp slt i64 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %21
  %27 = load i64, i64* %9, align 8
  %28 = load i64, i64* @sb_max, align 8
  %29 = icmp sgt i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %26, %21
  store i32 0, i32* %3, align 4
  br label %48

31:                                               ; preds = %26
  %32 = load i64, i64* %9, align 8
  %33 = load i64, i64* %6, align 8
  %34 = add nsw i64 %33, %32
  store i64 %34, i64* %6, align 8
  %35 = load i64, i64* %6, align 8
  %36 = icmp slt i64 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %31
  %38 = load i64, i64* %6, align 8
  %39 = load i64, i64* @sb_max, align 8
  %40 = icmp sgt i64 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %37, %31
  store i32 0, i32* %3, align 4
  br label %48

42:                                               ; preds = %37
  br label %43

43:                                               ; preds = %42, %14
  br label %44

44:                                               ; preds = %43
  %45 = load i64, i64* %7, align 8
  %46 = add i64 %45, 1
  store i64 %46, i64* %7, align 8
  br label %10

47:                                               ; preds = %10
  store i32 1, i32* %3, align 4
  br label %48

48:                                               ; preds = %47, %41, %30
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local i64 @uio_resid(%struct.uio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
