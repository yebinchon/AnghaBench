; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Memory.c_XorData.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Memory.c_XorData.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @XorData(i8* %0, i8* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = icmp eq i8* %13, null
  br i1 %14, label %24, label %15

15:                                               ; preds = %4
  %16 = load i8*, i8** %6, align 8
  %17 = icmp eq i8* %16, null
  br i1 %17, label %24, label %18

18:                                               ; preds = %15
  %19 = load i8*, i8** %7, align 8
  %20 = icmp eq i8* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %18
  %22 = load i64, i64* %8, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %21, %18, %15, %4
  br label %52

25:                                               ; preds = %21
  %26 = load i8*, i8** %5, align 8
  %27 = bitcast i8* %26 to i32*
  store i32* %27, i32** %10, align 8
  %28 = load i8*, i8** %6, align 8
  %29 = bitcast i8* %28 to i32*
  store i32* %29, i32** %11, align 8
  %30 = load i8*, i8** %7, align 8
  %31 = bitcast i8* %30 to i32*
  store i32* %31, i32** %12, align 8
  store i64 0, i64* %9, align 8
  br label %32

32:                                               ; preds = %49, %25
  %33 = load i64, i64* %9, align 8
  %34 = load i64, i64* %8, align 8
  %35 = icmp slt i64 %33, %34
  br i1 %35, label %36, label %52

36:                                               ; preds = %32
  %37 = load i32*, i32** %11, align 8
  %38 = load i32, i32* %37, align 4
  %39 = load i32*, i32** %12, align 8
  %40 = load i32, i32* %39, align 4
  %41 = xor i32 %38, %40
  %42 = load i32*, i32** %10, align 8
  store i32 %41, i32* %42, align 4
  %43 = load i32*, i32** %10, align 8
  %44 = getelementptr inbounds i32, i32* %43, i32 1
  store i32* %44, i32** %10, align 8
  %45 = load i32*, i32** %11, align 8
  %46 = getelementptr inbounds i32, i32* %45, i32 1
  store i32* %46, i32** %11, align 8
  %47 = load i32*, i32** %12, align 8
  %48 = getelementptr inbounds i32, i32* %47, i32 1
  store i32* %48, i32** %12, align 8
  br label %49

49:                                               ; preds = %36
  %50 = load i64, i64* %9, align 8
  %51 = add nsw i64 %50, 1
  store i64 %51, i64* %9, align 8
  br label %32

52:                                               ; preds = %24, %32
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
