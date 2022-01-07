; ModuleID = '/home/carl/AnghaBench/borg/src/borg/algorithms/lz4/lib/extr_lz4.c_LZ4_hash4.c'
source_filename = "/home/carl/AnghaBench/borg/src/borg/algorithms/lz4/lib/extr_lz4.c_LZ4_hash4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@byU16 = common dso_local global i64 0, align 8
@MINMATCH = common dso_local global i32 0, align 4
@LZ4_HASHLOG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64)* @LZ4_hash4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @LZ4_hash4(i32 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @byU16, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %18

9:                                                ; preds = %2
  %10 = load i32, i32* %4, align 4
  %11 = mul i32 %10, -1640531535
  %12 = load i32, i32* @MINMATCH, align 4
  %13 = mul nsw i32 %12, 8
  %14 = load i32, i32* @LZ4_HASHLOG, align 4
  %15 = add nsw i32 %14, 1
  %16 = sub nsw i32 %13, %15
  %17 = lshr i32 %11, %16
  store i32 %17, i32* %3, align 4
  br label %26

18:                                               ; preds = %2
  %19 = load i32, i32* %4, align 4
  %20 = mul i32 %19, -1640531535
  %21 = load i32, i32* @MINMATCH, align 4
  %22 = mul nsw i32 %21, 8
  %23 = load i32, i32* @LZ4_HASHLOG, align 4
  %24 = sub nsw i32 %22, %23
  %25 = lshr i32 %20, %24
  store i32 %25, i32* %3, align 4
  br label %26

26:                                               ; preds = %18, %9
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
