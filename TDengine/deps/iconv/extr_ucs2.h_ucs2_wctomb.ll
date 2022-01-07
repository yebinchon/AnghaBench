; ModuleID = '/home/carl/AnghaBench/TDengine/deps/iconv/extr_ucs2.h_ucs2_wctomb.c'
source_filename = "/home/carl/AnghaBench/TDengine/deps/iconv/extr_ucs2.h_ucs2_wctomb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RET_TOOSMALL = common dso_local global i32 0, align 4
@RET_ILUNI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32, i32)* @ucs2_wctomb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ucs2_wctomb(i32 %0, i8* %1, i32 %2, i32 %3) #0 {
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
  %11 = icmp slt i32 %10, 65536
  br i1 %11, label %12, label %36

12:                                               ; preds = %4
  %13 = load i32, i32* %8, align 4
  %14 = icmp ne i32 %13, 65534
  br i1 %14, label %15, label %36

15:                                               ; preds = %12
  %16 = load i32, i32* %8, align 4
  %17 = icmp sge i32 %16, 55296
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  %19 = load i32, i32* %8, align 4
  %20 = icmp slt i32 %19, 57344
  br i1 %20, label %36, label %21

21:                                               ; preds = %18, %15
  %22 = load i32, i32* %9, align 4
  %23 = icmp sge i32 %22, 2
  br i1 %23, label %24, label %34

24:                                               ; preds = %21
  %25 = load i32, i32* %8, align 4
  %26 = ashr i32 %25, 8
  %27 = trunc i32 %26 to i8
  %28 = load i8*, i8** %7, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 0
  store i8 %27, i8* %29, align 1
  %30 = load i32, i32* %8, align 4
  %31 = trunc i32 %30 to i8
  %32 = load i8*, i8** %7, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 1
  store i8 %31, i8* %33, align 1
  store i32 2, i32* %5, align 4
  br label %38

34:                                               ; preds = %21
  %35 = load i32, i32* @RET_TOOSMALL, align 4
  store i32 %35, i32* %5, align 4
  br label %38

36:                                               ; preds = %18, %12, %4
  %37 = load i32, i32* @RET_ILUNI, align 4
  store i32 %37, i32* %5, align 4
  br label %38

38:                                               ; preds = %36, %34, %24
  %39 = load i32, i32* %5, align 4
  ret i32 %39
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
