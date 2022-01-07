; ModuleID = '/home/carl/AnghaBench/disque/deps/jemalloc/src/extr_huge.c_huge_ralloc.c'
source_filename = "/home/carl/AnghaBench/disque/deps/jemalloc/src/extr_huge.c_huge_ralloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @huge_ralloc(i32* %0, i32* %1, i8* %2, i64 %3, i64 %4, i64 %5, i32 %6, i32* %7) #0 {
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  store i32* %0, i32** %10, align 8
  store i32* %1, i32** %11, align 8
  store i8* %2, i8** %12, align 8
  store i64 %3, i64* %13, align 8
  store i64 %4, i64* %14, align 8
  store i64 %5, i64* %15, align 8
  store i32 %6, i32* %16, align 4
  store i32* %7, i32** %17, align 8
  %20 = load i8*, i8** %12, align 8
  %21 = load i64, i64* %13, align 8
  %22 = load i64, i64* %14, align 8
  %23 = load i64, i64* %14, align 8
  %24 = load i32, i32* %16, align 4
  %25 = call i32 @huge_ralloc_no_move(i8* %20, i64 %21, i64 %22, i64 %23, i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %8
  %28 = load i8*, i8** %12, align 8
  store i8* %28, i8** %9, align 8
  br label %60

29:                                               ; preds = %8
  %30 = load i32*, i32** %10, align 8
  %31 = load i32*, i32** %11, align 8
  %32 = load i64, i64* %14, align 8
  %33 = load i64, i64* %15, align 8
  %34 = load i32, i32* %16, align 4
  %35 = load i32*, i32** %17, align 8
  %36 = call i8* @huge_ralloc_move_helper(i32* %30, i32* %31, i64 %32, i64 %33, i32 %34, i32* %35)
  store i8* %36, i8** %18, align 8
  %37 = load i8*, i8** %18, align 8
  %38 = icmp eq i8* %37, null
  br i1 %38, label %39, label %40

39:                                               ; preds = %29
  store i8* null, i8** %9, align 8
  br label %60

40:                                               ; preds = %29
  %41 = load i64, i64* %14, align 8
  %42 = load i64, i64* %13, align 8
  %43 = icmp ult i64 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %40
  %45 = load i64, i64* %14, align 8
  br label %48

46:                                               ; preds = %40
  %47 = load i64, i64* %13, align 8
  br label %48

48:                                               ; preds = %46, %44
  %49 = phi i64 [ %45, %44 ], [ %47, %46 ]
  store i64 %49, i64* %19, align 8
  %50 = load i8*, i8** %18, align 8
  %51 = load i8*, i8** %12, align 8
  %52 = load i64, i64* %19, align 8
  %53 = call i32 @memcpy(i8* %50, i8* %51, i64 %52)
  %54 = load i32*, i32** %10, align 8
  %55 = load i8*, i8** %12, align 8
  %56 = load i64, i64* %13, align 8
  %57 = load i32*, i32** %17, align 8
  %58 = call i32 @isqalloc(i32* %54, i8* %55, i64 %56, i32* %57)
  %59 = load i8*, i8** %18, align 8
  store i8* %59, i8** %9, align 8
  br label %60

60:                                               ; preds = %48, %39, %27
  %61 = load i8*, i8** %9, align 8
  ret i8* %61
}

declare dso_local i32 @huge_ralloc_no_move(i8*, i64, i64, i64, i32) #1

declare dso_local i8* @huge_ralloc_move_helper(i32*, i32*, i64, i64, i32, i32*) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @isqalloc(i32*, i8*, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
