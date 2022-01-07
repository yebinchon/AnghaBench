; ModuleID = '/home/carl/AnghaBench/curl/tests/libtest/extr_lib1556.c_header.c'
source_filename = "/home/carl/AnghaBench/curl/tests/libtest/extr_lib1556.c_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.headerinfo = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i64, i64, i8*)* @header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @header(i8* %0, i64 %1, i64 %2, i8* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.headerinfo*, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i8* %3, i8** %8, align 8
  %11 = load i64, i64* %6, align 8
  %12 = load i64, i64* %7, align 8
  %13 = mul i64 %11, %12
  store i64 %13, i64* %9, align 8
  %14 = load i8*, i8** %8, align 8
  %15 = bitcast i8* %14 to %struct.headerinfo*
  store %struct.headerinfo* %15, %struct.headerinfo** %10, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = load i64, i64* %9, align 8
  %18 = load %struct.headerinfo*, %struct.headerinfo** %10, align 8
  %19 = getelementptr inbounds %struct.headerinfo, %struct.headerinfo* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ugt i64 %17, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %4
  %23 = load i64, i64* %9, align 8
  %24 = load %struct.headerinfo*, %struct.headerinfo** %10, align 8
  %25 = getelementptr inbounds %struct.headerinfo, %struct.headerinfo* %24, i32 0, i32 0
  store i64 %23, i64* %25, align 8
  br label %26

26:                                               ; preds = %22, %4
  %27 = load i64, i64* %7, align 8
  %28 = load i64, i64* %6, align 8
  %29 = mul i64 %27, %28
  ret i64 %29
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
