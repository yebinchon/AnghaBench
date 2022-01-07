; ModuleID = '/home/carl/AnghaBench/TDengine/deps/iconv/extr_cp1133.h_cp1133_mbtowc.c'
source_filename = "/home/carl/AnghaBench/TDengine/deps/iconv/extr_cp1133.h_cp1133_mbtowc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cp1133_2uni_1 = common dso_local global i16* null, align 8
@cp1133_2uni_2 = common dso_local global i16* null, align 8
@RET_ILSEQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64*, i8*, i32)* @cp1133_mbtowc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cp1133_mbtowc(i32 %0, i64* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  %11 = alloca i16, align 2
  %12 = alloca i16, align 2
  store i32 %0, i32* %6, align 4
  store i64* %1, i64** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load i8*, i8** %8, align 8
  %14 = load i8, i8* %13, align 1
  store i8 %14, i8* %10, align 1
  %15 = load i8, i8* %10, align 1
  %16 = zext i8 %15 to i32
  %17 = icmp slt i32 %16, 160
  br i1 %17, label %18, label %22

18:                                               ; preds = %4
  %19 = load i8, i8* %10, align 1
  %20 = zext i8 %19 to i64
  %21 = load i64*, i64** %7, align 8
  store i64 %20, i64* %21, align 8
  store i32 1, i32* %5, align 4
  br label %67

22:                                               ; preds = %4
  %23 = load i8, i8* %10, align 1
  %24 = zext i8 %23 to i32
  %25 = icmp slt i32 %24, 224
  br i1 %25, label %26, label %42

26:                                               ; preds = %22
  %27 = load i16*, i16** @cp1133_2uni_1, align 8
  %28 = load i8, i8* %10, align 1
  %29 = zext i8 %28 to i32
  %30 = sub nsw i32 %29, 160
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i16, i16* %27, i64 %31
  %33 = load i16, i16* %32, align 2
  store i16 %33, i16* %11, align 2
  %34 = load i16, i16* %11, align 2
  %35 = zext i16 %34 to i32
  %36 = icmp ne i32 %35, 65533
  br i1 %36, label %37, label %41

37:                                               ; preds = %26
  %38 = load i16, i16* %11, align 2
  %39 = zext i16 %38 to i64
  %40 = load i64*, i64** %7, align 8
  store i64 %39, i64* %40, align 8
  store i32 1, i32* %5, align 4
  br label %67

41:                                               ; preds = %26
  br label %64

42:                                               ; preds = %22
  %43 = load i8, i8* %10, align 1
  %44 = zext i8 %43 to i32
  %45 = icmp slt i32 %44, 240
  br i1 %45, label %46, label %47

46:                                               ; preds = %42
  br label %63

47:                                               ; preds = %42
  %48 = load i16*, i16** @cp1133_2uni_2, align 8
  %49 = load i8, i8* %10, align 1
  %50 = zext i8 %49 to i32
  %51 = sub nsw i32 %50, 240
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i16, i16* %48, i64 %52
  %54 = load i16, i16* %53, align 2
  store i16 %54, i16* %12, align 2
  %55 = load i16, i16* %12, align 2
  %56 = zext i16 %55 to i32
  %57 = icmp ne i32 %56, 65533
  br i1 %57, label %58, label %62

58:                                               ; preds = %47
  %59 = load i16, i16* %12, align 2
  %60 = zext i16 %59 to i64
  %61 = load i64*, i64** %7, align 8
  store i64 %60, i64* %61, align 8
  store i32 1, i32* %5, align 4
  br label %67

62:                                               ; preds = %47
  br label %63

63:                                               ; preds = %62, %46
  br label %64

64:                                               ; preds = %63, %41
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* @RET_ILSEQ, align 4
  store i32 %66, i32* %5, align 4
  br label %67

67:                                               ; preds = %65, %58, %37, %18
  %68 = load i32, i32* %5, align 4
  ret i32 %68
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
