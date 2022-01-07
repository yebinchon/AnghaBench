; ModuleID = '/home/carl/AnghaBench/darwin-xnu/libkern/extr_kernel_mach_header.c_getlastaddr.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/libkern/extr_kernel_mach_header.c_getlastaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i64, i64, i64, i64 }

@_mh_execute_header = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@LC_SEGMENT_KERNEL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @getlastaddr() #0 {
  %1 = alloca %struct.TYPE_4__*, align 8
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i64, align 8
  store i64 0, i64* %2, align 8
  store %struct.TYPE_5__* @_mh_execute_header, %struct.TYPE_5__** %3, align 8
  %5 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %6 = ptrtoint %struct.TYPE_5__* %5 to i64
  %7 = add i64 %6, 8
  %8 = inttoptr i64 %7 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %8, %struct.TYPE_4__** %1, align 8
  store i64 0, i64* %4, align 8
  br label %9

9:                                                ; preds = %48, %0
  %10 = load i64, i64* %4, align 8
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ult i64 %10, %13
  br i1 %14, label %15, label %51

15:                                               ; preds = %9
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @LC_SEGMENT_KERNEL, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %40

21:                                               ; preds = %15
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = add nsw i64 %24, %27
  %29 = load i64, i64* %2, align 8
  %30 = icmp sgt i64 %28, %29
  br i1 %30, label %31, label %39

31:                                               ; preds = %21
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = add nsw i64 %34, %37
  store i64 %38, i64* %2, align 8
  br label %39

39:                                               ; preds = %31, %21
  br label %40

40:                                               ; preds = %39, %15
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %42 = ptrtoint %struct.TYPE_4__* %41 to i64
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 3
  %45 = load i64, i64* %44, align 8
  %46 = add i64 %42, %45
  %47 = inttoptr i64 %46 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %47, %struct.TYPE_4__** %1, align 8
  br label %48

48:                                               ; preds = %40
  %49 = load i64, i64* %4, align 8
  %50 = add i64 %49, 1
  store i64 %50, i64* %4, align 8
  br label %9

51:                                               ; preds = %9
  %52 = load i64, i64* %2, align 8
  ret i64 %52
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
