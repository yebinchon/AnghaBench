; ModuleID = '/home/carl/AnghaBench/TDengine/deps/iconv/extr_ucs4.h_ucs4_wctomb.c'
source_filename = "/home/carl/AnghaBench/TDengine/deps/iconv/extr_ucs4.h_ucs4_wctomb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RET_TOOSMALL = common dso_local global i32 0, align 4
@RET_ILUNI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32, i32)* @ucs4_wctomb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ucs4_wctomb(i32 %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %10 = load i32, i32* %8, align 4
  %11 = icmp sle i32 %10, 2147483647
  br i1 %11, label %12, label %37

12:                                               ; preds = %4
  %13 = load i32, i32* %9, align 4
  %14 = icmp sge i32 %13, 4
  br i1 %14, label %15, label %35

15:                                               ; preds = %12
  %16 = load i32, i32* %8, align 4
  %17 = ashr i32 %16, 24
  %18 = trunc i32 %17 to i8
  %19 = load i8*, i8** %7, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 0
  store i8 %18, i8* %20, align 1
  %21 = load i32, i32* %8, align 4
  %22 = ashr i32 %21, 16
  %23 = trunc i32 %22 to i8
  %24 = load i8*, i8** %7, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 1
  store i8 %23, i8* %25, align 1
  %26 = load i32, i32* %8, align 4
  %27 = ashr i32 %26, 8
  %28 = trunc i32 %27 to i8
  %29 = load i8*, i8** %7, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 2
  store i8 %28, i8* %30, align 1
  %31 = load i32, i32* %8, align 4
  %32 = trunc i32 %31 to i8
  %33 = load i8*, i8** %7, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 3
  store i8 %32, i8* %34, align 1
  store i32 4, i32* %5, align 4
  br label %39

35:                                               ; preds = %12
  %36 = load i32, i32* @RET_TOOSMALL, align 4
  store i32 %36, i32* %5, align 4
  br label %39

37:                                               ; preds = %4
  %38 = load i32, i32* @RET_ILUNI, align 4
  store i32 %38, i32* %5, align 4
  br label %39

39:                                               ; preds = %37, %35, %15
  %40 = load i32, i32* %5, align 4
  ret i32 %40
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
