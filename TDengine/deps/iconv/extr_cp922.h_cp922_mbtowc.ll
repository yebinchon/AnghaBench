; ModuleID = '/home/carl/AnghaBench/TDengine/deps/iconv/extr_cp922.h_cp922_mbtowc.c'
source_filename = "/home/carl/AnghaBench/TDengine/deps/iconv/extr_cp922.h_cp922_mbtowc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cp922_2uni_1 = common dso_local global i64* null, align 8
@cp922_2uni_2 = common dso_local global i64* null, align 8
@cp922_2uni_3 = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64*, i8*, i32)* @cp922_mbtowc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cp922_mbtowc(i32 %0, i64* %1, i8* %2, i32 %3) #0 {
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
  %14 = icmp slt i32 %13, 160
  br i1 %14, label %15, label %19

15:                                               ; preds = %4
  %16 = load i8, i8* %9, align 1
  %17 = zext i8 %16 to i64
  %18 = load i64*, i64** %6, align 8
  store i64 %17, i64* %18, align 8
  br label %74

19:                                               ; preds = %4
  %20 = load i8, i8* %9, align 1
  %21 = zext i8 %20 to i32
  %22 = icmp slt i32 %21, 176
  br i1 %22, label %23, label %32

23:                                               ; preds = %19
  %24 = load i64*, i64** @cp922_2uni_1, align 8
  %25 = load i8, i8* %9, align 1
  %26 = zext i8 %25 to i32
  %27 = sub nsw i32 %26, 160
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i64, i64* %24, i64 %28
  %30 = load i64, i64* %29, align 8
  %31 = load i64*, i64** %6, align 8
  store i64 %30, i64* %31, align 8
  br label %73

32:                                               ; preds = %19
  %33 = load i8, i8* %9, align 1
  %34 = zext i8 %33 to i32
  %35 = icmp slt i32 %34, 208
  br i1 %35, label %36, label %40

36:                                               ; preds = %32
  %37 = load i8, i8* %9, align 1
  %38 = zext i8 %37 to i64
  %39 = load i64*, i64** %6, align 8
  store i64 %38, i64* %39, align 8
  br label %72

40:                                               ; preds = %32
  %41 = load i8, i8* %9, align 1
  %42 = zext i8 %41 to i32
  %43 = icmp slt i32 %42, 224
  br i1 %43, label %44, label %53

44:                                               ; preds = %40
  %45 = load i64*, i64** @cp922_2uni_2, align 8
  %46 = load i8, i8* %9, align 1
  %47 = zext i8 %46 to i32
  %48 = sub nsw i32 %47, 208
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i64, i64* %45, i64 %49
  %51 = load i64, i64* %50, align 8
  %52 = load i64*, i64** %6, align 8
  store i64 %51, i64* %52, align 8
  br label %71

53:                                               ; preds = %40
  %54 = load i8, i8* %9, align 1
  %55 = zext i8 %54 to i32
  %56 = icmp slt i32 %55, 240
  br i1 %56, label %57, label %61

57:                                               ; preds = %53
  %58 = load i8, i8* %9, align 1
  %59 = zext i8 %58 to i64
  %60 = load i64*, i64** %6, align 8
  store i64 %59, i64* %60, align 8
  br label %70

61:                                               ; preds = %53
  %62 = load i64*, i64** @cp922_2uni_3, align 8
  %63 = load i8, i8* %9, align 1
  %64 = zext i8 %63 to i32
  %65 = sub nsw i32 %64, 240
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i64, i64* %62, i64 %66
  %68 = load i64, i64* %67, align 8
  %69 = load i64*, i64** %6, align 8
  store i64 %68, i64* %69, align 8
  br label %70

70:                                               ; preds = %61, %57
  br label %71

71:                                               ; preds = %70, %44
  br label %72

72:                                               ; preds = %71, %36
  br label %73

73:                                               ; preds = %72, %23
  br label %74

74:                                               ; preds = %73, %15
  ret i32 1
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
