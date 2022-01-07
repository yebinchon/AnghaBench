; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_i386_init.c_ALLOCPAGES.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_i386_init.c_ALLOCPAGES.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@physfree = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@VM_MIN_KERNEL_ADDRESS = common dso_local global i64 0, align 8
@LOW_4GB_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32)* @ALLOCPAGES to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ALLOCPAGES(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* @physfree, align 4
  %5 = sext i32 %4 to i64
  store i64 %5, i64* %3, align 8
  %6 = load i32, i32* @physfree, align 4
  %7 = load i32, i32* %2, align 4
  %8 = load i32, i32* @PAGE_SIZE, align 4
  %9 = mul nsw i32 %7, %8
  %10 = call i32 @bzero(i32 %6, i32 %9)
  %11 = load i32, i32* %2, align 4
  %12 = load i32, i32* @PAGE_SIZE, align 4
  %13 = mul nsw i32 %11, %12
  %14 = load i32, i32* @physfree, align 4
  %15 = add nsw i32 %14, %13
  store i32 %15, i32* @physfree, align 4
  %16 = load i64, i64* @VM_MIN_KERNEL_ADDRESS, align 8
  %17 = load i64, i64* @LOW_4GB_MASK, align 8
  %18 = xor i64 %17, -1
  %19 = and i64 %16, %18
  %20 = load i64, i64* %3, align 8
  %21 = add i64 %20, %19
  store i64 %21, i64* %3, align 8
  %22 = load i64, i64* %3, align 8
  %23 = inttoptr i64 %22 to i8*
  ret i8* %23
}

declare dso_local i32 @bzero(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
