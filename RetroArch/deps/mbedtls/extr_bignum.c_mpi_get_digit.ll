; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_bignum.c_mpi_get_digit.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_bignum.c_mpi_get_digit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MBEDTLS_ERR_MPI_INVALID_CHARACTER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i8)* @mpi_get_digit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpi_get_digit(i8* %0, i32 %1, i8 signext %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8 %2, i8* %7, align 1
  %8 = load i8*, i8** %5, align 8
  store i8 -1, i8* %8, align 1
  %9 = load i8, i8* %7, align 1
  %10 = sext i8 %9 to i32
  %11 = icmp sge i32 %10, 48
  br i1 %11, label %12, label %22

12:                                               ; preds = %3
  %13 = load i8, i8* %7, align 1
  %14 = sext i8 %13 to i32
  %15 = icmp sle i32 %14, 57
  br i1 %15, label %16, label %22

16:                                               ; preds = %12
  %17 = load i8, i8* %7, align 1
  %18 = sext i8 %17 to i32
  %19 = sub nsw i32 %18, 48
  %20 = trunc i32 %19 to i8
  %21 = load i8*, i8** %5, align 8
  store i8 %20, i8* %21, align 1
  br label %22

22:                                               ; preds = %16, %12, %3
  %23 = load i8, i8* %7, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp sge i32 %24, 65
  br i1 %25, label %26, label %36

26:                                               ; preds = %22
  %27 = load i8, i8* %7, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp sle i32 %28, 70
  br i1 %29, label %30, label %36

30:                                               ; preds = %26
  %31 = load i8, i8* %7, align 1
  %32 = sext i8 %31 to i32
  %33 = sub nsw i32 %32, 55
  %34 = trunc i32 %33 to i8
  %35 = load i8*, i8** %5, align 8
  store i8 %34, i8* %35, align 1
  br label %36

36:                                               ; preds = %30, %26, %22
  %37 = load i8, i8* %7, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp sge i32 %38, 97
  br i1 %39, label %40, label %50

40:                                               ; preds = %36
  %41 = load i8, i8* %7, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp sle i32 %42, 102
  br i1 %43, label %44, label %50

44:                                               ; preds = %40
  %45 = load i8, i8* %7, align 1
  %46 = sext i8 %45 to i32
  %47 = sub nsw i32 %46, 87
  %48 = trunc i32 %47 to i8
  %49 = load i8*, i8** %5, align 8
  store i8 %48, i8* %49, align 1
  br label %50

50:                                               ; preds = %44, %40, %36
  %51 = load i8*, i8** %5, align 8
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = load i32, i32* %6, align 4
  %55 = trunc i32 %54 to i8
  %56 = sext i8 %55 to i32
  %57 = icmp sge i32 %53, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %50
  %59 = load i32, i32* @MBEDTLS_ERR_MPI_INVALID_CHARACTER, align 4
  store i32 %59, i32* %4, align 4
  br label %61

60:                                               ; preds = %50
  store i32 0, i32* %4, align 4
  br label %61

61:                                               ; preds = %60, %58
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
