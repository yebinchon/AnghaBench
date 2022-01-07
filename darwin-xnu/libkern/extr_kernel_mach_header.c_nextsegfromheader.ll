; ModuleID = '/home/carl/AnghaBench/darwin-xnu/libkern/extr_kernel_mach_header.c_nextsegfromheader.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/libkern/extr_kernel_mach_header.c_nextsegfromheader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i64, i64 }

@LC_SEGMENT_KERNEL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_6__* @nextsegfromheader(%struct.TYPE_7__* %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %5, align 8
  store i64 0, i64* %6, align 8
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %9 = ptrtoint %struct.TYPE_7__* %8 to i64
  %10 = add i64 %9, 8
  %11 = inttoptr i64 %10 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %11, %struct.TYPE_6__** %7, align 8
  store i64 0, i64* %6, align 8
  br label %12

12:                                               ; preds = %32, %2
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %15 = icmp ne %struct.TYPE_6__* %13, %14
  br i1 %15, label %16, label %22

16:                                               ; preds = %12
  %17 = load i64, i64* %6, align 8
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp slt i64 %17, %20
  br label %22

22:                                               ; preds = %16, %12
  %23 = phi i1 [ false, %12 ], [ %21, %16 ]
  br i1 %23, label %24, label %35

24:                                               ; preds = %22
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %26 = ptrtoint %struct.TYPE_6__* %25 to i64
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = add i64 %26, %29
  %31 = inttoptr i64 %30 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %31, %struct.TYPE_6__** %7, align 8
  br label %32

32:                                               ; preds = %24
  %33 = load i64, i64* %6, align 8
  %34 = add nsw i64 %33, 1
  store i64 %34, i64* %6, align 8
  br label %12

35:                                               ; preds = %22
  %36 = load i64, i64* %6, align 8
  %37 = add nsw i64 %36, 1
  store i64 %37, i64* %6, align 8
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %39 = ptrtoint %struct.TYPE_6__* %38 to i64
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = add i64 %39, %42
  %44 = inttoptr i64 %43 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %44, %struct.TYPE_6__** %7, align 8
  br label %45

45:                                               ; preds = %67, %35
  %46 = load i64, i64* %6, align 8
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp slt i64 %46, %49
  br i1 %50, label %51, label %70

51:                                               ; preds = %45
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @LC_SEGMENT_KERNEL, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %51
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  store %struct.TYPE_6__* %58, %struct.TYPE_6__** %3, align 8
  br label %71

59:                                               ; preds = %51
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %61 = ptrtoint %struct.TYPE_6__* %60 to i64
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = add i64 %61, %64
  %66 = inttoptr i64 %65 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %66, %struct.TYPE_6__** %7, align 8
  br label %67

67:                                               ; preds = %59
  %68 = load i64, i64* %6, align 8
  %69 = add nsw i64 %68, 1
  store i64 %69, i64* %6, align 8
  br label %45

70:                                               ; preds = %45
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %3, align 8
  br label %71

71:                                               ; preds = %70, %57
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  ret %struct.TYPE_6__* %72
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
