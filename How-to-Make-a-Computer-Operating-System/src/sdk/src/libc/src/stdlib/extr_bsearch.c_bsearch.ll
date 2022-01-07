; ModuleID = '/home/carl/AnghaBench/How-to-Make-a-Computer-Operating-System/src/sdk/src/libc/src/stdlib/extr_bsearch.c_bsearch.c'
source_filename = "/home/carl/AnghaBench/How-to-Make-a-Computer-Operating-System/src/sdk/src/libc/src/stdlib/extr_bsearch.c_bsearch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @bsearch(i8* %0, i8* %1, i64 %2, i64 %3, i32 (i8*, i8*)* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32 (i8*, i8*)*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 (i8*, i8*)* %4, i32 (i8*, i8*)** %11, align 8
  br label %15

15:                                               ; preds = %47, %5
  %16 = load i64, i64* %9, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %48

18:                                               ; preds = %15
  %19 = load i64, i64* %9, align 8
  %20 = udiv i64 %19, 2
  store i64 %20, i64* %12, align 8
  %21 = load i8*, i8** %8, align 8
  %22 = load i64, i64* %12, align 8
  %23 = load i64, i64* %10, align 8
  %24 = mul i64 %22, %23
  %25 = getelementptr inbounds i8, i8* %21, i64 %24
  store i8* %25, i8** %14, align 8
  %26 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %11, align 8
  %27 = load i8*, i8** %7, align 8
  %28 = load i8*, i8** %14, align 8
  %29 = call i32 %26(i8* %27, i8* %28)
  store i32 %29, i32* %13, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %18
  %32 = load i64, i64* %12, align 8
  store i64 %32, i64* %9, align 8
  br label %47

33:                                               ; preds = %18
  %34 = load i32, i32* %13, align 4
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %33
  %37 = load i8*, i8** %14, align 8
  %38 = load i64, i64* %10, align 8
  %39 = getelementptr i8, i8* %37, i64 %38
  store i8* %39, i8** %8, align 8
  %40 = load i64, i64* %12, align 8
  %41 = add i64 %40, 1
  %42 = load i64, i64* %9, align 8
  %43 = sub i64 %42, %41
  store i64 %43, i64* %9, align 8
  br label %46

44:                                               ; preds = %33
  %45 = load i8*, i8** %14, align 8
  store i8* %45, i8** %6, align 8
  br label %49

46:                                               ; preds = %36
  br label %47

47:                                               ; preds = %46, %31
  br label %15

48:                                               ; preds = %15
  store i8* null, i8** %6, align 8
  br label %49

49:                                               ; preds = %48, %44
  %50 = load i8*, i8** %6, align 8
  ret i8* %50
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
