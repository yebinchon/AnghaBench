; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_ubc_subr.c_ubc_cs_is_range_codesigned.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_ubc_subr.c_ubc_cs_is_range_codesigned.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cs_blob = type { i64, i64, i64 }

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ubc_cs_is_range_codesigned(i32* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.cs_blob*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %3
  %14 = load i32, i32* @FALSE, align 4
  store i32 %14, i32* %4, align 4
  br label %64

15:                                               ; preds = %3
  %16 = load i64, i64* %7, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %15
  %19 = load i32, i32* @FALSE, align 4
  store i32 %19, i32* %4, align 4
  br label %64

20:                                               ; preds = %15
  %21 = load i64, i64* %6, align 8
  %22 = load i64, i64* %7, align 8
  %23 = add nsw i64 %21, %22
  %24 = load i64, i64* %6, align 8
  %25 = icmp slt i64 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %20
  %27 = load i32, i32* @FALSE, align 4
  store i32 %27, i32* %4, align 4
  br label %64

28:                                               ; preds = %20
  %29 = load i32*, i32** %5, align 8
  %30 = load i64, i64* %6, align 8
  %31 = call %struct.cs_blob* @ubc_cs_blob_get(i32* %29, i32 -1, i64 %30)
  store %struct.cs_blob* %31, %struct.cs_blob** %8, align 8
  %32 = load %struct.cs_blob*, %struct.cs_blob** %8, align 8
  %33 = icmp eq %struct.cs_blob* %32, null
  br i1 %33, label %34, label %36

34:                                               ; preds = %28
  %35 = load i32, i32* @FALSE, align 4
  store i32 %35, i32* %4, align 4
  br label %64

36:                                               ; preds = %28
  %37 = load %struct.cs_blob*, %struct.cs_blob** %8, align 8
  %38 = getelementptr inbounds %struct.cs_blob, %struct.cs_blob* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.cs_blob*, %struct.cs_blob** %8, align 8
  %41 = getelementptr inbounds %struct.cs_blob, %struct.cs_blob* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = add nsw i64 %39, %42
  store i64 %43, i64* %9, align 8
  %44 = load %struct.cs_blob*, %struct.cs_blob** %8, align 8
  %45 = getelementptr inbounds %struct.cs_blob, %struct.cs_blob* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.cs_blob*, %struct.cs_blob** %8, align 8
  %48 = getelementptr inbounds %struct.cs_blob, %struct.cs_blob* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = add nsw i64 %46, %49
  store i64 %50, i64* %10, align 8
  %51 = load i64, i64* %9, align 8
  %52 = load i64, i64* %6, align 8
  %53 = icmp sgt i64 %51, %52
  br i1 %53, label %60, label %54

54:                                               ; preds = %36
  %55 = load i64, i64* %10, align 8
  %56 = load i64, i64* %6, align 8
  %57 = load i64, i64* %7, align 8
  %58 = add nsw i64 %56, %57
  %59 = icmp slt i64 %55, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %54, %36
  %61 = load i32, i32* @FALSE, align 4
  store i32 %61, i32* %4, align 4
  br label %64

62:                                               ; preds = %54
  %63 = load i32, i32* @TRUE, align 4
  store i32 %63, i32* %4, align 4
  br label %64

64:                                               ; preds = %62, %60, %34, %26, %18, %13
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

declare dso_local %struct.cs_blob* @ubc_cs_blob_get(i32*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
