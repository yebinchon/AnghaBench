; ModuleID = '/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_vnodeTagMgmt.c_tInsertSort.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_vnodeTagMgmt.c_tInsertSort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TSDB_DATA_TYPE_BINARY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8**, i64, i64, i64, i8*, i32 (i8*, i8*, i8*)*)* @tInsertSort to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tInsertSort(i8** %0, i64 %1, i64 %2, i64 %3, i8* %4, i32 (i8*, i8*, i8*)* %5) #0 {
  %7 = alloca i8**, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32 (i8*, i8*, i8*)*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store i8** %0, i8*** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i8* %4, i8** %11, align 8
  store i32 (i8*, i8*, i8*)* %5, i32 (i8*, i8*, i8*)** %12, align 8
  %15 = load i64, i64* %9, align 8
  %16 = add nsw i64 %15, 1
  store i64 %16, i64* %13, align 8
  br label %17

17:                                               ; preds = %58, %6
  %18 = load i64, i64* %13, align 8
  %19 = load i64, i64* %10, align 8
  %20 = icmp sle i64 %18, %19
  br i1 %20, label %21, label %61

21:                                               ; preds = %17
  %22 = load i64, i64* %13, align 8
  store i64 %22, i64* %14, align 8
  br label %23

23:                                               ; preds = %54, %21
  %24 = load i64, i64* %14, align 8
  %25 = load i64, i64* %9, align 8
  %26 = icmp sgt i64 %24, %25
  br i1 %26, label %27, label %57

27:                                               ; preds = %23
  %28 = load i32 (i8*, i8*, i8*)*, i32 (i8*, i8*, i8*)** %12, align 8
  %29 = load i8**, i8*** %7, align 8
  %30 = load i64, i64* %14, align 8
  %31 = getelementptr inbounds i8*, i8** %29, i64 %30
  %32 = load i8*, i8** %31, align 8
  %33 = load i8**, i8*** %7, align 8
  %34 = load i64, i64* %14, align 8
  %35 = sub nsw i64 %34, 1
  %36 = getelementptr inbounds i8*, i8** %33, i64 %35
  %37 = load i8*, i8** %36, align 8
  %38 = load i8*, i8** %11, align 8
  %39 = call i32 %28(i8* %32, i8* %37, i8* %38)
  %40 = icmp eq i32 %39, -1
  br i1 %40, label %41, label %52

41:                                               ; preds = %27
  %42 = load i8**, i8*** %7, align 8
  %43 = load i64, i64* %14, align 8
  %44 = getelementptr inbounds i8*, i8** %42, i64 %43
  %45 = load i8**, i8*** %7, align 8
  %46 = load i64, i64* %14, align 8
  %47 = sub nsw i64 %46, 1
  %48 = getelementptr inbounds i8*, i8** %45, i64 %47
  %49 = load i32, i32* @TSDB_DATA_TYPE_BINARY, align 4
  %50 = load i64, i64* %8, align 8
  %51 = call i32 @tsDataSwap(i8** %44, i8** %48, i32 %49, i64 %50)
  br label %53

52:                                               ; preds = %27
  br label %57

53:                                               ; preds = %41
  br label %54

54:                                               ; preds = %53
  %55 = load i64, i64* %14, align 8
  %56 = add nsw i64 %55, -1
  store i64 %56, i64* %14, align 8
  br label %23

57:                                               ; preds = %52, %23
  br label %58

58:                                               ; preds = %57
  %59 = load i64, i64* %13, align 8
  %60 = add nsw i64 %59, 1
  store i64 %60, i64* %13, align 8
  br label %17

61:                                               ; preds = %17
  ret void
}

declare dso_local i32 @tsDataSwap(i8**, i8**, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
