; ModuleID = '/home/carl/AnghaBench/borg/src/borg/algorithms/zstd/lib/dictBuilder/extr_cover.c_COVER_groupBy.c'
source_filename = "/home/carl/AnghaBench/borg/src/borg/algorithms/zstd/lib/dictBuilder/extr_cover.c_COVER_groupBy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64, i64, i32*, i32 (i32*, i8*, i8*)*, void (i32*, i8*, i8*)*)* @COVER_groupBy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @COVER_groupBy(i8* %0, i64 %1, i64 %2, i32* %3, i32 (i32*, i8*, i8*)* %4, void (i32*, i8*, i8*)* %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32 (i32*, i8*, i8*)*, align 8
  %12 = alloca void (i32*, i8*, i8*)*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  store i8* %0, i8** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 (i32*, i8*, i8*)* %4, i32 (i32*, i8*, i8*)** %11, align 8
  store void (i32*, i8*, i8*)* %5, void (i32*, i8*, i8*)** %12, align 8
  %16 = load i8*, i8** %7, align 8
  store i8* %16, i8** %13, align 8
  store i64 0, i64* %14, align 8
  br label %17

17:                                               ; preds = %46, %6
  %18 = load i64, i64* %14, align 8
  %19 = load i64, i64* %8, align 8
  %20 = icmp ult i64 %18, %19
  br i1 %20, label %21, label %52

21:                                               ; preds = %17
  %22 = load i8*, i8** %13, align 8
  %23 = load i64, i64* %9, align 8
  %24 = getelementptr i8, i8* %22, i64 %23
  store i8* %24, i8** %15, align 8
  %25 = load i64, i64* %14, align 8
  %26 = add i64 %25, 1
  store i64 %26, i64* %14, align 8
  br label %27

27:                                               ; preds = %40, %21
  %28 = load i64, i64* %14, align 8
  %29 = load i64, i64* %8, align 8
  %30 = icmp ult i64 %28, %29
  br i1 %30, label %31, label %38

31:                                               ; preds = %27
  %32 = load i32 (i32*, i8*, i8*)*, i32 (i32*, i8*, i8*)** %11, align 8
  %33 = load i32*, i32** %10, align 8
  %34 = load i8*, i8** %13, align 8
  %35 = load i8*, i8** %15, align 8
  %36 = call i32 %32(i32* %33, i8* %34, i8* %35)
  %37 = icmp eq i32 %36, 0
  br label %38

38:                                               ; preds = %31, %27
  %39 = phi i1 [ false, %27 ], [ %37, %31 ]
  br i1 %39, label %40, label %46

40:                                               ; preds = %38
  %41 = load i64, i64* %9, align 8
  %42 = load i8*, i8** %15, align 8
  %43 = getelementptr i8, i8* %42, i64 %41
  store i8* %43, i8** %15, align 8
  %44 = load i64, i64* %14, align 8
  %45 = add i64 %44, 1
  store i64 %45, i64* %14, align 8
  br label %27

46:                                               ; preds = %38
  %47 = load void (i32*, i8*, i8*)*, void (i32*, i8*, i8*)** %12, align 8
  %48 = load i32*, i32** %10, align 8
  %49 = load i8*, i8** %13, align 8
  %50 = load i8*, i8** %15, align 8
  call void %47(i32* %48, i8* %49, i8* %50)
  %51 = load i8*, i8** %15, align 8
  store i8* %51, i8** %13, align 8
  br label %17

52:                                               ; preds = %17
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
