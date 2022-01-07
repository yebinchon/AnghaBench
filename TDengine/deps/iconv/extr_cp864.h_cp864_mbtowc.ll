; ModuleID = '/home/carl/AnghaBench/TDengine/deps/iconv/extr_cp864.h_cp864_mbtowc.c'
source_filename = "/home/carl/AnghaBench/TDengine/deps/iconv/extr_cp864.h_cp864_mbtowc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cp864_2uni_1 = common dso_local global i64* null, align 8
@cp864_2uni_2 = common dso_local global i16* null, align 8
@RET_ILSEQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64*, i8*, i32)* @cp864_mbtowc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cp864_mbtowc(i32 %0, i64* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  %11 = alloca i16, align 2
  store i32 %0, i32* %6, align 4
  store i64* %1, i64** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load i8*, i8** %8, align 8
  %13 = load i8, i8* %12, align 1
  store i8 %13, i8* %10, align 1
  %14 = load i8, i8* %10, align 1
  %15 = zext i8 %14 to i32
  %16 = icmp slt i32 %15, 32
  br i1 %16, label %17, label %21

17:                                               ; preds = %4
  %18 = load i8, i8* %10, align 1
  %19 = zext i8 %18 to i64
  %20 = load i64*, i64** %7, align 8
  store i64 %19, i64* %20, align 8
  store i32 1, i32* %5, align 4
  br label %62

21:                                               ; preds = %4
  %22 = load i8, i8* %10, align 1
  %23 = zext i8 %22 to i32
  %24 = icmp slt i32 %23, 48
  br i1 %24, label %25, label %34

25:                                               ; preds = %21
  %26 = load i64*, i64** @cp864_2uni_1, align 8
  %27 = load i8, i8* %10, align 1
  %28 = zext i8 %27 to i32
  %29 = sub nsw i32 %28, 32
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i64, i64* %26, i64 %30
  %32 = load i64, i64* %31, align 8
  %33 = load i64*, i64** %7, align 8
  store i64 %32, i64* %33, align 8
  store i32 1, i32* %5, align 4
  br label %62

34:                                               ; preds = %21
  %35 = load i8, i8* %10, align 1
  %36 = zext i8 %35 to i32
  %37 = icmp slt i32 %36, 128
  br i1 %37, label %38, label %42

38:                                               ; preds = %34
  %39 = load i8, i8* %10, align 1
  %40 = zext i8 %39 to i64
  %41 = load i64*, i64** %7, align 8
  store i64 %40, i64* %41, align 8
  store i32 1, i32* %5, align 4
  br label %62

42:                                               ; preds = %34
  %43 = load i16*, i16** @cp864_2uni_2, align 8
  %44 = load i8, i8* %10, align 1
  %45 = zext i8 %44 to i32
  %46 = sub nsw i32 %45, 128
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i16, i16* %43, i64 %47
  %49 = load i16, i16* %48, align 2
  store i16 %49, i16* %11, align 2
  %50 = load i16, i16* %11, align 2
  %51 = zext i16 %50 to i32
  %52 = icmp ne i32 %51, 65533
  br i1 %52, label %53, label %57

53:                                               ; preds = %42
  %54 = load i16, i16* %11, align 2
  %55 = zext i16 %54 to i64
  %56 = load i64*, i64** %7, align 8
  store i64 %55, i64* %56, align 8
  store i32 1, i32* %5, align 4
  br label %62

57:                                               ; preds = %42
  br label %58

58:                                               ; preds = %57
  br label %59

59:                                               ; preds = %58
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* @RET_ILSEQ, align 4
  store i32 %61, i32* %5, align 4
  br label %62

62:                                               ; preds = %60, %53, %38, %25, %17
  %63 = load i32, i32* %5, align 4
  ret i32 %63
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
