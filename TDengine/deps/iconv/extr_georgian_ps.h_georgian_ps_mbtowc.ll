; ModuleID = '/home/carl/AnghaBench/TDengine/deps/iconv/extr_georgian_ps.h_georgian_ps_mbtowc.c'
source_filename = "/home/carl/AnghaBench/TDengine/deps/iconv/extr_georgian_ps.h_georgian_ps_mbtowc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@georgian_ps_2uni_1 = common dso_local global i64* null, align 8
@georgian_ps_2uni_2 = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64*, i8*, i32)* @georgian_ps_mbtowc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @georgian_ps_mbtowc(i32 %0, i64* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  store i32 %0, i32* %5, align 4
  store i64* %1, i64** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load i8*, i8** %7, align 8
  %11 = load i8, i8* %10, align 1
  store i8 %11, i8* %9, align 1
  %12 = load i8, i8* %9, align 1
  %13 = zext i8 %12 to i32
  %14 = icmp sge i32 %13, 128
  br i1 %14, label %15, label %28

15:                                               ; preds = %4
  %16 = load i8, i8* %9, align 1
  %17 = zext i8 %16 to i32
  %18 = icmp slt i32 %17, 160
  br i1 %18, label %19, label %28

19:                                               ; preds = %15
  %20 = load i64*, i64** @georgian_ps_2uni_1, align 8
  %21 = load i8, i8* %9, align 1
  %22 = zext i8 %21 to i32
  %23 = sub nsw i32 %22, 128
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i64, i64* %20, i64 %24
  %26 = load i64, i64* %25, align 8
  %27 = load i64*, i64** %6, align 8
  store i64 %26, i64* %27, align 8
  br label %50

28:                                               ; preds = %15, %4
  %29 = load i8, i8* %9, align 1
  %30 = zext i8 %29 to i32
  %31 = icmp sge i32 %30, 192
  br i1 %31, label %32, label %45

32:                                               ; preds = %28
  %33 = load i8, i8* %9, align 1
  %34 = zext i8 %33 to i32
  %35 = icmp slt i32 %34, 230
  br i1 %35, label %36, label %45

36:                                               ; preds = %32
  %37 = load i64*, i64** @georgian_ps_2uni_2, align 8
  %38 = load i8, i8* %9, align 1
  %39 = zext i8 %38 to i32
  %40 = sub nsw i32 %39, 192
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i64, i64* %37, i64 %41
  %43 = load i64, i64* %42, align 8
  %44 = load i64*, i64** %6, align 8
  store i64 %43, i64* %44, align 8
  br label %49

45:                                               ; preds = %32, %28
  %46 = load i8, i8* %9, align 1
  %47 = zext i8 %46 to i64
  %48 = load i64*, i64** %6, align 8
  store i64 %47, i64* %48, align 8
  br label %49

49:                                               ; preds = %45, %36
  br label %50

50:                                               ; preds = %49, %19
  ret i32 1
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
