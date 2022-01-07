; ModuleID = '/home/carl/AnghaBench/TDengine/deps/iconv/extr_iso646_jp.h_iso646_jp_wctomb.c'
source_filename = "/home/carl/AnghaBench/TDengine/deps/iconv/extr_iso646_jp.h_iso646_jp_wctomb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RET_ILUNI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32, i32)* @iso646_jp_wctomb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iso646_jp_wctomb(i32 %0, i8* %1, i32 %2, i32 %3) #0 {
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
  %11 = icmp slt i32 %10, 128
  br i1 %11, label %12, label %22

12:                                               ; preds = %4
  %13 = load i32, i32* %8, align 4
  %14 = icmp eq i32 %13, 92
  br i1 %14, label %22, label %15

15:                                               ; preds = %12
  %16 = load i32, i32* %8, align 4
  %17 = icmp eq i32 %16, 126
  br i1 %17, label %22, label %18

18:                                               ; preds = %15
  %19 = load i32, i32* %8, align 4
  %20 = trunc i32 %19 to i8
  %21 = load i8*, i8** %7, align 8
  store i8 %20, i8* %21, align 1
  store i32 1, i32* %5, align 4
  br label %34

22:                                               ; preds = %15, %12, %4
  %23 = load i32, i32* %8, align 4
  %24 = icmp eq i32 %23, 165
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = load i8*, i8** %7, align 8
  store i8 92, i8* %26, align 1
  store i32 1, i32* %5, align 4
  br label %34

27:                                               ; preds = %22
  %28 = load i32, i32* %8, align 4
  %29 = icmp eq i32 %28, 8254
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  %31 = load i8*, i8** %7, align 8
  store i8 126, i8* %31, align 1
  store i32 1, i32* %5, align 4
  br label %34

32:                                               ; preds = %27
  %33 = load i32, i32* @RET_ILUNI, align 4
  store i32 %33, i32* %5, align 4
  br label %34

34:                                               ; preds = %32, %30, %25, %18
  %35 = load i32, i32* %5, align 4
  ret i32 %35
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
