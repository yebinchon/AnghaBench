; ModuleID = '/home/carl/AnghaBench/RetroArch/griffin/extr_..managersstate_manager.c_find_same.c'
source_filename = "/home/carl/AnghaBench/RetroArch/griffin/extr_..managersstate_manager.c_find_same.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64*, i64*)* @find_same to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @find_same(i64* %0, i64* %1) #0 {
  %3 = alloca i64*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  store i64* %0, i64** %3, align 8
  store i64* %1, i64** %4, align 8
  %8 = load i64*, i64** %3, align 8
  store i64* %8, i64** %5, align 8
  %9 = load i64*, i64** %3, align 8
  store i64* %9, i64** %6, align 8
  %10 = load i64*, i64** %4, align 8
  store i64* %10, i64** %7, align 8
  br label %11

11:                                               ; preds = %17, %2
  %12 = load i64*, i64** %6, align 8
  %13 = load i64, i64* %12, align 8
  %14 = load i64*, i64** %7, align 8
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %13, %15
  br i1 %16, label %17, label %22

17:                                               ; preds = %11
  %18 = load i64*, i64** %6, align 8
  %19 = getelementptr inbounds i64, i64* %18, i32 1
  store i64* %19, i64** %6, align 8
  %20 = load i64*, i64** %7, align 8
  %21 = getelementptr inbounds i64, i64* %20, i32 1
  store i64* %21, i64** %7, align 8
  br label %11

22:                                               ; preds = %11
  %23 = load i64*, i64** %6, align 8
  store i64* %23, i64** %3, align 8
  %24 = load i64*, i64** %7, align 8
  store i64* %24, i64** %4, align 8
  %25 = load i64*, i64** %3, align 8
  %26 = load i64*, i64** %5, align 8
  %27 = icmp ne i64* %25, %26
  br i1 %27, label %28, label %41

28:                                               ; preds = %22
  %29 = load i64*, i64** %3, align 8
  %30 = getelementptr inbounds i64, i64* %29, i64 -1
  %31 = load i64, i64* %30, align 8
  %32 = load i64*, i64** %4, align 8
  %33 = getelementptr inbounds i64, i64* %32, i64 -1
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %31, %34
  br i1 %35, label %36, label %41

36:                                               ; preds = %28
  %37 = load i64*, i64** %3, align 8
  %38 = getelementptr inbounds i64, i64* %37, i32 -1
  store i64* %38, i64** %3, align 8
  %39 = load i64*, i64** %4, align 8
  %40 = getelementptr inbounds i64, i64* %39, i32 -1
  store i64* %40, i64** %4, align 8
  br label %41

41:                                               ; preds = %36, %28, %22
  %42 = load i64*, i64** %3, align 8
  %43 = load i64*, i64** %5, align 8
  %44 = ptrtoint i64* %42 to i64
  %45 = ptrtoint i64* %43 to i64
  %46 = sub i64 %44, %45
  %47 = sdiv exact i64 %46, 8
  ret i64 %47
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
