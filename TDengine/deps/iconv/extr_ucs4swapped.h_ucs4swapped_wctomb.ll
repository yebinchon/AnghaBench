; ModuleID = '/home/carl/AnghaBench/TDengine/deps/iconv/extr_ucs4swapped.h_ucs4swapped_wctomb.c'
source_filename = "/home/carl/AnghaBench/TDengine/deps/iconv/extr_ucs4swapped.h_ucs4swapped_wctomb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RET_TOOSMALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32, i32)* @ucs4swapped_wctomb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ucs4swapped_wctomb(i32 %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load i32, i32* %9, align 4
  %12 = icmp sge i32 %11, 4
  br i1 %12, label %13, label %31

13:                                               ; preds = %4
  %14 = load i32, i32* %8, align 4
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* %10, align 4
  %16 = lshr i32 %15, 24
  %17 = load i32, i32* %10, align 4
  %18 = lshr i32 %17, 8
  %19 = and i32 %18, 65280
  %20 = or i32 %16, %19
  %21 = load i32, i32* %10, align 4
  %22 = and i32 %21, 65280
  %23 = shl i32 %22, 8
  %24 = or i32 %20, %23
  %25 = load i32, i32* %10, align 4
  %26 = shl i32 %25, 24
  %27 = or i32 %24, %26
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %10, align 4
  %29 = load i8*, i8** %7, align 8
  %30 = bitcast i8* %29 to i32*
  store i32 %28, i32* %30, align 4
  store i32 4, i32* %5, align 4
  br label %33

31:                                               ; preds = %4
  %32 = load i32, i32* @RET_TOOSMALL, align 4
  store i32 %32, i32* %5, align 4
  br label %33

33:                                               ; preds = %31, %13
  %34 = load i32, i32* %5, align 4
  ret i32 %34
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
