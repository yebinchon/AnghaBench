; ModuleID = '/home/carl/AnghaBench/TDengine/deps/iconv/extr_utf32be.h_utf32be_wctomb.c'
source_filename = "/home/carl/AnghaBench/TDengine/deps/iconv/extr_utf32be.h_utf32be_wctomb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RET_TOOSMALL = common dso_local global i32 0, align 4
@RET_ILUNI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32, i32)* @utf32be_wctomb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @utf32be_wctomb(i32 %0, i8* %1, i32 %2, i32 %3) #0 {
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
  %11 = icmp slt i32 %10, 1114112
  br i1 %11, label %12, label %40

12:                                               ; preds = %4
  %13 = load i32, i32* %8, align 4
  %14 = icmp sge i32 %13, 55296
  br i1 %14, label %15, label %18

15:                                               ; preds = %12
  %16 = load i32, i32* %8, align 4
  %17 = icmp slt i32 %16, 57344
  br i1 %17, label %40, label %18

18:                                               ; preds = %15, %12
  %19 = load i32, i32* %9, align 4
  %20 = icmp sge i32 %19, 4
  br i1 %20, label %21, label %38

21:                                               ; preds = %18
  %22 = load i8*, i8** %7, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 0
  store i8 0, i8* %23, align 1
  %24 = load i32, i32* %8, align 4
  %25 = ashr i32 %24, 16
  %26 = trunc i32 %25 to i8
  %27 = load i8*, i8** %7, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 1
  store i8 %26, i8* %28, align 1
  %29 = load i32, i32* %8, align 4
  %30 = ashr i32 %29, 8
  %31 = trunc i32 %30 to i8
  %32 = load i8*, i8** %7, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 2
  store i8 %31, i8* %33, align 1
  %34 = load i32, i32* %8, align 4
  %35 = trunc i32 %34 to i8
  %36 = load i8*, i8** %7, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 3
  store i8 %35, i8* %37, align 1
  store i32 4, i32* %5, align 4
  br label %42

38:                                               ; preds = %18
  %39 = load i32, i32* @RET_TOOSMALL, align 4
  store i32 %39, i32* %5, align 4
  br label %42

40:                                               ; preds = %15, %4
  %41 = load i32, i32* @RET_ILUNI, align 4
  store i32 %41, i32* %5, align 4
  br label %42

42:                                               ; preds = %40, %38, %21
  %43 = load i32, i32* %5, align 4
  ret i32 %43
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
