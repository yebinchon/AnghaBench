; ModuleID = '/home/carl/AnghaBench/brotli/c/enc/extr_literal_cost.c_DecideMultiByteStatsLevel.c'
source_filename = "/home/carl/AnghaBench/brotli/c/enc/extr_literal_cost.c_DecideMultiByteStatsLevel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i64, i64, i64*)* @DecideMultiByteStatsLevel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @DecideMultiByteStatsLevel(i64 %0, i64 %1, i64 %2, i64* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca [3 x i64], align 16
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64* %3, i64** %8, align 8
  %14 = bitcast [3 x i64]* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %14, i8 0, i64 24, i1 false)
  store i64 1, i64* %10, align 8
  store i64 0, i64* %11, align 8
  store i64 0, i64* %12, align 8
  br label %15

15:                                               ; preds = %35, %4
  %16 = load i64, i64* %12, align 8
  %17 = load i64, i64* %6, align 8
  %18 = icmp ult i64 %16, %17
  br i1 %18, label %19, label %38

19:                                               ; preds = %15
  %20 = load i64*, i64** %8, align 8
  %21 = load i64, i64* %5, align 8
  %22 = load i64, i64* %12, align 8
  %23 = add i64 %21, %22
  %24 = load i64, i64* %7, align 8
  %25 = and i64 %23, %24
  %26 = getelementptr inbounds i64, i64* %20, i64 %25
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %13, align 8
  %28 = load i64, i64* %11, align 8
  %29 = load i64, i64* %13, align 8
  %30 = call i64 @UTF8Position(i64 %28, i64 %29, i32 2)
  %31 = getelementptr inbounds [3 x i64], [3 x i64]* %9, i64 0, i64 %30
  %32 = load i64, i64* %31, align 8
  %33 = add i64 %32, 1
  store i64 %33, i64* %31, align 8
  %34 = load i64, i64* %13, align 8
  store i64 %34, i64* %11, align 8
  br label %35

35:                                               ; preds = %19
  %36 = load i64, i64* %12, align 8
  %37 = add i64 %36, 1
  store i64 %37, i64* %12, align 8
  br label %15

38:                                               ; preds = %15
  %39 = getelementptr inbounds [3 x i64], [3 x i64]* %9, i64 0, i64 2
  %40 = load i64, i64* %39, align 16
  %41 = icmp ult i64 %40, 500
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  store i64 1, i64* %10, align 8
  br label %43

43:                                               ; preds = %42, %38
  %44 = getelementptr inbounds [3 x i64], [3 x i64]* %9, i64 0, i64 1
  %45 = load i64, i64* %44, align 8
  %46 = getelementptr inbounds [3 x i64], [3 x i64]* %9, i64 0, i64 2
  %47 = load i64, i64* %46, align 16
  %48 = add i64 %45, %47
  %49 = icmp ult i64 %48, 25
  br i1 %49, label %50, label %51

50:                                               ; preds = %43
  store i64 0, i64* %10, align 8
  br label %51

51:                                               ; preds = %50, %43
  %52 = load i64, i64* %10, align 8
  ret i64 %52
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @UTF8Position(i64, i64, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
