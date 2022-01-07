; ModuleID = '/home/carl/AnghaBench/TDengine/deps/iconv/extr_ucs2swapped.h_ucs2swapped_wctomb.c'
source_filename = "/home/carl/AnghaBench/TDengine/deps/iconv/extr_ucs2swapped.h_ucs2swapped_wctomb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RET_TOOSMALL = common dso_local global i32 0, align 4
@RET_ILUNI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32, i32)* @ucs2swapped_wctomb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ucs2swapped_wctomb(i32 %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i16, align 2
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load i32, i32* %8, align 4
  %12 = icmp slt i32 %11, 65536
  br i1 %12, label %13, label %38

13:                                               ; preds = %4
  %14 = load i32, i32* %8, align 4
  %15 = icmp sge i32 %14, 55296
  br i1 %15, label %16, label %19

16:                                               ; preds = %13
  %17 = load i32, i32* %8, align 4
  %18 = icmp slt i32 %17, 57344
  br i1 %18, label %38, label %19

19:                                               ; preds = %16, %13
  %20 = load i32, i32* %9, align 4
  %21 = icmp sge i32 %20, 2
  br i1 %21, label %22, label %36

22:                                               ; preds = %19
  %23 = load i32, i32* %8, align 4
  %24 = trunc i32 %23 to i16
  store i16 %24, i16* %10, align 2
  %25 = load i16, i16* %10, align 2
  %26 = zext i16 %25 to i32
  %27 = ashr i32 %26, 8
  %28 = load i16, i16* %10, align 2
  %29 = zext i16 %28 to i32
  %30 = shl i32 %29, 8
  %31 = or i32 %27, %30
  %32 = trunc i32 %31 to i16
  store i16 %32, i16* %10, align 2
  %33 = load i16, i16* %10, align 2
  %34 = load i8*, i8** %7, align 8
  %35 = bitcast i8* %34 to i16*
  store i16 %33, i16* %35, align 2
  store i32 2, i32* %5, align 4
  br label %40

36:                                               ; preds = %19
  %37 = load i32, i32* @RET_TOOSMALL, align 4
  store i32 %37, i32* %5, align 4
  br label %40

38:                                               ; preds = %16, %4
  %39 = load i32, i32* @RET_ILUNI, align 4
  store i32 %39, i32* %5, align 4
  br label %40

40:                                               ; preds = %38, %36, %22
  %41 = load i32, i32* %5, align 4
  ret i32 %41
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
