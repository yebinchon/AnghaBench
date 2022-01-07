; ModuleID = '/home/carl/AnghaBench/Mirai-Source-Code/dlr/extr_main.c_utils_inet_addr.c'
source_filename = "/home/carl/AnghaBench/Mirai-Source-Code/dlr/extr_main.c_utils_inet_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @utils_inet_addr(i8 zeroext %0, i8 zeroext %1, i8 zeroext %2, i8 zeroext %3) #0 {
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i64, align 8
  store i8 %0, i8* %5, align 1
  store i8 %1, i8* %6, align 1
  store i8 %2, i8* %7, align 1
  store i8 %3, i8* %8, align 1
  store i64 0, i64* %9, align 8
  %10 = load i8, i8* %5, align 1
  %11 = zext i8 %10 to i32
  %12 = shl i32 %11, 24
  %13 = sext i32 %12 to i64
  %14 = load i64, i64* %9, align 8
  %15 = or i64 %14, %13
  store i64 %15, i64* %9, align 8
  %16 = load i8, i8* %6, align 1
  %17 = zext i8 %16 to i32
  %18 = shl i32 %17, 16
  %19 = sext i32 %18 to i64
  %20 = load i64, i64* %9, align 8
  %21 = or i64 %20, %19
  store i64 %21, i64* %9, align 8
  %22 = load i8, i8* %7, align 1
  %23 = zext i8 %22 to i32
  %24 = shl i32 %23, 8
  %25 = sext i32 %24 to i64
  %26 = load i64, i64* %9, align 8
  %27 = or i64 %26, %25
  store i64 %27, i64* %9, align 8
  %28 = load i8, i8* %8, align 1
  %29 = zext i8 %28 to i32
  %30 = shl i32 %29, 0
  %31 = sext i32 %30 to i64
  %32 = load i64, i64* %9, align 8
  %33 = or i64 %32, %31
  store i64 %33, i64* %9, align 8
  %34 = load i64, i64* %9, align 8
  %35 = call i32 @HTONL(i64 %34)
  ret i32 %35
}

declare dso_local i32 @HTONL(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
