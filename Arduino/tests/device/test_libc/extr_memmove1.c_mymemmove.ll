; ModuleID = '/home/carl/AnghaBench/Arduino/tests/device/test_libc/extr_memmove1.c_mymemmove.c'
source_filename = "/home/carl/AnghaBench/Arduino/tests/device/test_libc/extr_memmove1.c_mymemmove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mymemmove(i8* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = icmp ule i8* %7, %8
  br i1 %9, label %10, label %16

10:                                               ; preds = %3
  %11 = load i8*, i8** %5, align 8
  %12 = load i64, i64* %6, align 8
  %13 = getelementptr inbounds i8, i8* %11, i64 %12
  %14 = load i8*, i8** %4, align 8
  %15 = icmp ule i8* %13, %14
  br i1 %15, label %20, label %16

16:                                               ; preds = %10, %3
  %17 = load i8*, i8** %5, align 8
  %18 = load i8*, i8** %4, align 8
  %19 = icmp uge i8* %17, %18
  br i1 %19, label %20, label %32

20:                                               ; preds = %16, %10
  br label %21

21:                                               ; preds = %25, %20
  %22 = load i64, i64* %6, align 8
  %23 = add i64 %22, -1
  store i64 %23, i64* %6, align 8
  %24 = icmp ugt i64 %22, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %21
  %26 = load i8*, i8** %5, align 8
  %27 = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %27, i8** %5, align 8
  %28 = load i8, i8* %26, align 1
  %29 = load i8*, i8** %4, align 8
  %30 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %30, i8** %4, align 8
  store i8 %28, i8* %29, align 1
  br label %21

31:                                               ; preds = %21
  br label %50

32:                                               ; preds = %16
  %33 = load i64, i64* %6, align 8
  %34 = load i8*, i8** %4, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 %33
  store i8* %35, i8** %4, align 8
  %36 = load i64, i64* %6, align 8
  %37 = load i8*, i8** %5, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 %36
  store i8* %38, i8** %5, align 8
  br label %39

39:                                               ; preds = %43, %32
  %40 = load i64, i64* %6, align 8
  %41 = add i64 %40, -1
  store i64 %41, i64* %6, align 8
  %42 = icmp ugt i64 %40, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %39
  %44 = load i8*, i8** %5, align 8
  %45 = getelementptr inbounds i8, i8* %44, i32 -1
  store i8* %45, i8** %5, align 8
  %46 = load i8, i8* %45, align 1
  %47 = load i8*, i8** %4, align 8
  %48 = getelementptr inbounds i8, i8* %47, i32 -1
  store i8* %48, i8** %4, align 8
  store i8 %46, i8* %48, align 1
  br label %39

49:                                               ; preds = %39
  br label %50

50:                                               ; preds = %49, %31
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
