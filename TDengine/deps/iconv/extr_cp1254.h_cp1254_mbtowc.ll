; ModuleID = '/home/carl/AnghaBench/TDengine/deps/iconv/extr_cp1254.h_cp1254_mbtowc.c'
source_filename = "/home/carl/AnghaBench/TDengine/deps/iconv/extr_cp1254.h_cp1254_mbtowc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cp1254_2uni_1 = common dso_local global i16* null, align 8
@cp1254_2uni_2 = common dso_local global i64* null, align 8
@cp1254_2uni_3 = common dso_local global i64* null, align 8
@RET_ILSEQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64*, i8*, i32)* @cp1254_mbtowc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cp1254_mbtowc(i32 %0, i64* %1, i8* %2, i32 %3) #0 {
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
  %16 = icmp slt i32 %15, 128
  br i1 %16, label %17, label %21

17:                                               ; preds = %4
  %18 = load i8, i8* %10, align 1
  %19 = zext i8 %18 to i64
  %20 = load i64*, i64** %7, align 8
  store i64 %19, i64* %20, align 8
  store i32 1, i32* %5, align 4
  br label %82

21:                                               ; preds = %4
  %22 = load i8, i8* %10, align 1
  %23 = zext i8 %22 to i32
  %24 = icmp slt i32 %23, 160
  br i1 %24, label %25, label %41

25:                                               ; preds = %21
  %26 = load i16*, i16** @cp1254_2uni_1, align 8
  %27 = load i8, i8* %10, align 1
  %28 = zext i8 %27 to i32
  %29 = sub nsw i32 %28, 128
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i16, i16* %26, i64 %30
  %32 = load i16, i16* %31, align 2
  store i16 %32, i16* %11, align 2
  %33 = load i16, i16* %11, align 2
  %34 = zext i16 %33 to i32
  %35 = icmp ne i32 %34, 65533
  br i1 %35, label %36, label %40

36:                                               ; preds = %25
  %37 = load i16, i16* %11, align 2
  %38 = zext i16 %37 to i64
  %39 = load i64*, i64** %7, align 8
  store i64 %38, i64* %39, align 8
  store i32 1, i32* %5, align 4
  br label %82

40:                                               ; preds = %25
  br label %79

41:                                               ; preds = %21
  %42 = load i8, i8* %10, align 1
  %43 = zext i8 %42 to i32
  %44 = icmp slt i32 %43, 208
  br i1 %44, label %45, label %49

45:                                               ; preds = %41
  %46 = load i8, i8* %10, align 1
  %47 = zext i8 %46 to i64
  %48 = load i64*, i64** %7, align 8
  store i64 %47, i64* %48, align 8
  store i32 1, i32* %5, align 4
  br label %82

49:                                               ; preds = %41
  %50 = load i8, i8* %10, align 1
  %51 = zext i8 %50 to i32
  %52 = icmp slt i32 %51, 224
  br i1 %52, label %53, label %62

53:                                               ; preds = %49
  %54 = load i64*, i64** @cp1254_2uni_2, align 8
  %55 = load i8, i8* %10, align 1
  %56 = zext i8 %55 to i32
  %57 = sub nsw i32 %56, 208
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i64, i64* %54, i64 %58
  %60 = load i64, i64* %59, align 8
  %61 = load i64*, i64** %7, align 8
  store i64 %60, i64* %61, align 8
  store i32 1, i32* %5, align 4
  br label %82

62:                                               ; preds = %49
  %63 = load i8, i8* %10, align 1
  %64 = zext i8 %63 to i32
  %65 = icmp slt i32 %64, 240
  br i1 %65, label %66, label %70

66:                                               ; preds = %62
  %67 = load i8, i8* %10, align 1
  %68 = zext i8 %67 to i64
  %69 = load i64*, i64** %7, align 8
  store i64 %68, i64* %69, align 8
  store i32 1, i32* %5, align 4
  br label %82

70:                                               ; preds = %62
  %71 = load i64*, i64** @cp1254_2uni_3, align 8
  %72 = load i8, i8* %10, align 1
  %73 = zext i8 %72 to i32
  %74 = sub nsw i32 %73, 240
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i64, i64* %71, i64 %75
  %77 = load i64, i64* %76, align 8
  %78 = load i64*, i64** %7, align 8
  store i64 %77, i64* %78, align 8
  store i32 1, i32* %5, align 4
  br label %82

79:                                               ; preds = %40
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* @RET_ILSEQ, align 4
  store i32 %81, i32* %5, align 4
  br label %82

82:                                               ; preds = %80, %70, %66, %53, %45, %36, %17
  %83 = load i32, i32* %5, align 4
  ret i32 %83
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
