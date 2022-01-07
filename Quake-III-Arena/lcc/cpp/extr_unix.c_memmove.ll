; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/lcc/cpp/extr_unix.c_memmove.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/lcc/cpp/extr_unix.c_memmove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @memmove(i8* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load i64, i64* %7, align 8
  %11 = icmp ule i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  store i8* null, i8** %4, align 8
  br label %50

13:                                               ; preds = %3
  %14 = load i8*, i8** %5, align 8
  store i8* %14, i8** %8, align 8
  %15 = load i8*, i8** %6, align 8
  store i8* %15, i8** %9, align 8
  %16 = load i8*, i8** %8, align 8
  %17 = load i8*, i8** %9, align 8
  %18 = icmp ult i8* %16, %17
  br i1 %18, label %19, label %31

19:                                               ; preds = %13
  br label %20

20:                                               ; preds = %26, %19
  %21 = load i8*, i8** %9, align 8
  %22 = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %22, i8** %9, align 8
  %23 = load i8, i8* %21, align 1
  %24 = load i8*, i8** %8, align 8
  %25 = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %25, i8** %8, align 8
  store i8 %23, i8* %24, align 1
  br label %26

26:                                               ; preds = %20
  %27 = load i64, i64* %7, align 8
  %28 = add i64 %27, -1
  store i64 %28, i64* %7, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %20, label %30

30:                                               ; preds = %26
  br label %49

31:                                               ; preds = %13
  %32 = load i64, i64* %7, align 8
  %33 = load i8*, i8** %8, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 %32
  store i8* %34, i8** %8, align 8
  %35 = load i64, i64* %7, align 8
  %36 = load i8*, i8** %9, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 %35
  store i8* %37, i8** %9, align 8
  br label %38

38:                                               ; preds = %44, %31
  %39 = load i8*, i8** %9, align 8
  %40 = getelementptr inbounds i8, i8* %39, i32 -1
  store i8* %40, i8** %9, align 8
  %41 = load i8, i8* %40, align 1
  %42 = load i8*, i8** %8, align 8
  %43 = getelementptr inbounds i8, i8* %42, i32 -1
  store i8* %43, i8** %8, align 8
  store i8 %41, i8* %43, align 1
  br label %44

44:                                               ; preds = %38
  %45 = load i64, i64* %7, align 8
  %46 = add i64 %45, -1
  store i64 %46, i64* %7, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %38, label %48

48:                                               ; preds = %44
  br label %49

49:                                               ; preds = %48, %30
  store i8* null, i8** %4, align 8
  br label %50

50:                                               ; preds = %49, %12
  %51 = load i8*, i8** %4, align 8
  ret i8* %51
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
