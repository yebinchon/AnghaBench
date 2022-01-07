; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_lrcdec.c_find_header.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_lrcdec.c_find_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*)* @find_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @find_header(i8* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i64 0, i64* %4, align 8
  br label %5

5:                                                ; preds = %21, %1
  %6 = load i8*, i8** %3, align 8
  %7 = load i64, i64* %4, align 8
  %8 = getelementptr inbounds i8, i8* %6, i64 %7
  %9 = load i8, i8* %8, align 1
  %10 = sext i8 %9 to i32
  %11 = icmp eq i32 %10, 32
  br i1 %11, label %19, label %12

12:                                               ; preds = %5
  %13 = load i8*, i8** %3, align 8
  %14 = load i64, i64* %4, align 8
  %15 = getelementptr inbounds i8, i8* %13, i64 %14
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp eq i32 %17, 9
  br label %19

19:                                               ; preds = %12, %5
  %20 = phi i1 [ true, %5 ], [ %18, %12 ]
  br i1 %20, label %21, label %24

21:                                               ; preds = %19
  %22 = load i64, i64* %4, align 8
  %23 = add i64 %22, 1
  store i64 %23, i64* %4, align 8
  br label %5

24:                                               ; preds = %19
  %25 = load i8*, i8** %3, align 8
  %26 = load i64, i64* %4, align 8
  %27 = getelementptr inbounds i8, i8* %25, i64 %26
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp eq i32 %29, 91
  br i1 %30, label %31, label %49

31:                                               ; preds = %24
  %32 = load i8*, i8** %3, align 8
  %33 = load i64, i64* %4, align 8
  %34 = add i64 %33, 1
  %35 = getelementptr inbounds i8, i8* %32, i64 %34
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp sge i32 %37, 97
  br i1 %38, label %39, label %49

39:                                               ; preds = %31
  %40 = load i8*, i8** %3, align 8
  %41 = load i64, i64* %4, align 8
  %42 = add i64 %41, 1
  %43 = getelementptr inbounds i8, i8* %40, i64 %42
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp sle i32 %45, 122
  br i1 %46, label %47, label %49

47:                                               ; preds = %39
  %48 = load i64, i64* %4, align 8
  store i64 %48, i64* %2, align 8
  br label %50

49:                                               ; preds = %39, %31, %24
  store i64 -1, i64* %2, align 8
  br label %50

50:                                               ; preds = %49, %47
  %51 = load i64, i64* %2, align 8
  ret i64 %51
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
