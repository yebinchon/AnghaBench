; ModuleID = '/home/carl/AnghaBench/darwin-xnu/tests/extr_perf_vmfault.c_fault_pages.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/tests/extr_perf_vmfault.c_fault_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@num_pages = common dso_local global i64 0, align 8
@num_threads = common dso_local global i64 0, align 8
@pgsize = common dso_local global i64 0, align 8
@test_type = common dso_local global i64 0, align 8
@SOFT_FAULT = common dso_local global i64 0, align 8
@memblock_share = common dso_local global i8* null, align 8
@memblock = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @fault_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fault_pages(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8, align 1
  store i32 %0, i32* %2, align 4
  %9 = load i64, i64* @num_pages, align 8
  %10 = load i64, i64* @num_threads, align 8
  %11 = udiv i64 %9, %10
  store i64 %11, i64* %3, align 8
  %12 = load i64, i64* %3, align 8
  %13 = load i32, i32* %2, align 4
  %14 = sext i32 %13 to i64
  %15 = mul i64 %12, %14
  store i64 %15, i64* %4, align 8
  %16 = load i32, i32* %2, align 4
  %17 = sext i32 %16 to i64
  %18 = load i64, i64* @num_pages, align 8
  %19 = load i64, i64* @num_threads, align 8
  %20 = urem i64 %18, %19
  %21 = icmp ult i64 %17, %20
  br i1 %21, label %22, label %29

22:                                               ; preds = %1
  %23 = load i32, i32* %2, align 4
  %24 = sext i32 %23 to i64
  %25 = load i64, i64* %4, align 8
  %26 = add i64 %25, %24
  store i64 %26, i64* %4, align 8
  %27 = load i64, i64* %3, align 8
  %28 = add i64 %27, 1
  store i64 %28, i64* %3, align 8
  br label %35

29:                                               ; preds = %1
  %30 = load i64, i64* @num_pages, align 8
  %31 = load i64, i64* @num_threads, align 8
  %32 = urem i64 %30, %31
  %33 = load i64, i64* %4, align 8
  %34 = add i64 %33, %32
  store i64 %34, i64* %4, align 8
  br label %35

35:                                               ; preds = %29, %22
  %36 = load i64, i64* @pgsize, align 8
  %37 = load i64, i64* %4, align 8
  %38 = mul i64 %37, %36
  store i64 %38, i64* %4, align 8
  %39 = load i64, i64* @pgsize, align 8
  %40 = load i64, i64* %3, align 8
  %41 = mul i64 %40, %39
  store i64 %41, i64* %3, align 8
  %42 = load i64, i64* %4, align 8
  %43 = load i64, i64* %3, align 8
  %44 = add i64 %42, %43
  store i64 %44, i64* %5, align 8
  %45 = load i64, i64* @test_type, align 8
  %46 = load i64, i64* @SOFT_FAULT, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %35
  %49 = load i8*, i8** @memblock_share, align 8
  br label %52

50:                                               ; preds = %35
  %51 = load i8*, i8** @memblock, align 8
  br label %52

52:                                               ; preds = %50, %48
  %53 = phi i8* [ %49, %48 ], [ %51, %50 ]
  store i8* %53, i8** %7, align 8
  %54 = load i8*, i8** %7, align 8
  %55 = load i64, i64* %4, align 8
  %56 = getelementptr inbounds i8, i8* %54, i64 %55
  store i8* %56, i8** %6, align 8
  br label %57

57:                                               ; preds = %66, %52
  %58 = load i8*, i8** %6, align 8
  %59 = load i8*, i8** %7, align 8
  %60 = load i64, i64* %5, align 8
  %61 = getelementptr inbounds i8, i8* %59, i64 %60
  %62 = icmp ult i8* %58, %61
  br i1 %62, label %63, label %70

63:                                               ; preds = %57
  %64 = load i8*, i8** %6, align 8
  %65 = load i8, i8* %64, align 1
  store volatile i8 %65, i8* %8, align 1
  br label %66

66:                                               ; preds = %63
  %67 = load i64, i64* @pgsize, align 8
  %68 = load i8*, i8** %6, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 %67
  store i8* %69, i8** %6, align 8
  br label %57

70:                                               ; preds = %57
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
