; ModuleID = '/home/carl/AnghaBench/TDengine/deps/iconv/extr_ucs4le.h_ucs4le_wctomb.c'
source_filename = "/home/carl/AnghaBench/TDengine/deps/iconv/extr_ucs4le.h_ucs4le_wctomb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RET_TOOSMALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32, i32)* @ucs4le_wctomb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ucs4le_wctomb(i32 %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %10 = load i32, i32* %9, align 4
  %11 = icmp sge i32 %10, 4
  br i1 %11, label %12, label %32

12:                                               ; preds = %4
  %13 = load i32, i32* %8, align 4
  %14 = trunc i32 %13 to i8
  %15 = load i8*, i8** %7, align 8
  %16 = getelementptr inbounds i8, i8* %15, i64 0
  store i8 %14, i8* %16, align 1
  %17 = load i32, i32* %8, align 4
  %18 = ashr i32 %17, 8
  %19 = trunc i32 %18 to i8
  %20 = load i8*, i8** %7, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 1
  store i8 %19, i8* %21, align 1
  %22 = load i32, i32* %8, align 4
  %23 = ashr i32 %22, 16
  %24 = trunc i32 %23 to i8
  %25 = load i8*, i8** %7, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 2
  store i8 %24, i8* %26, align 1
  %27 = load i32, i32* %8, align 4
  %28 = ashr i32 %27, 24
  %29 = trunc i32 %28 to i8
  %30 = load i8*, i8** %7, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 3
  store i8 %29, i8* %31, align 1
  store i32 4, i32* %5, align 4
  br label %34

32:                                               ; preds = %4
  %33 = load i32, i32* @RET_TOOSMALL, align 4
  store i32 %33, i32* %5, align 4
  br label %34

34:                                               ; preds = %32, %12
  %35 = load i32, i32* %5, align 4
  ret i32 %35
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
