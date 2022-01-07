; ModuleID = '/home/carl/AnghaBench/TDengine/deps/iconv/extr_uhc_1.h_uhc_1_mbtowc.c'
source_filename = "/home/carl/AnghaBench/TDengine/deps/iconv/extr_uhc_1.h_uhc_1_mbtowc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@uhc_1_2uni_main_page81 = common dso_local global i64* null, align 8
@uhc_1_2uni_page81 = common dso_local global i64* null, align 8
@RET_ILSEQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64*, i8*, i32)* @uhc_1_mbtowc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uhc_1_mbtowc(i32 %0, i64* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i64* %1, i64** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load i8*, i8** %8, align 8
  %16 = getelementptr inbounds i8, i8* %15, i64 0
  %17 = load i8, i8* %16, align 1
  store i8 %17, i8* %10, align 1
  %18 = load i8, i8* %10, align 1
  %19 = zext i8 %18 to i32
  %20 = icmp sge i32 %19, 129
  br i1 %20, label %21, label %104

21:                                               ; preds = %4
  %22 = load i8, i8* %10, align 1
  %23 = zext i8 %22 to i32
  %24 = icmp sle i32 %23, 160
  br i1 %24, label %25, label %104

25:                                               ; preds = %21
  %26 = load i32, i32* %9, align 4
  %27 = icmp sge i32 %26, 2
  br i1 %27, label %28, label %102

28:                                               ; preds = %25
  %29 = load i8*, i8** %8, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 1
  %31 = load i8, i8* %30, align 1
  store i8 %31, i8* %11, align 1
  %32 = load i8, i8* %11, align 1
  %33 = zext i8 %32 to i32
  %34 = icmp sge i32 %33, 65
  br i1 %34, label %35, label %39

35:                                               ; preds = %28
  %36 = load i8, i8* %11, align 1
  %37 = zext i8 %36 to i32
  %38 = icmp slt i32 %37, 91
  br i1 %38, label %55, label %39

39:                                               ; preds = %35, %28
  %40 = load i8, i8* %11, align 1
  %41 = zext i8 %40 to i32
  %42 = icmp sge i32 %41, 97
  br i1 %42, label %43, label %47

43:                                               ; preds = %39
  %44 = load i8, i8* %11, align 1
  %45 = zext i8 %44 to i32
  %46 = icmp slt i32 %45, 123
  br i1 %46, label %55, label %47

47:                                               ; preds = %43, %39
  %48 = load i8, i8* %11, align 1
  %49 = zext i8 %48 to i32
  %50 = icmp sge i32 %49, 129
  br i1 %50, label %51, label %100

51:                                               ; preds = %47
  %52 = load i8, i8* %11, align 1
  %53 = zext i8 %52 to i32
  %54 = icmp slt i32 %53, 255
  br i1 %54, label %55, label %100

55:                                               ; preds = %51, %43, %35
  %56 = load i8, i8* %10, align 1
  %57 = zext i8 %56 to i32
  %58 = sub nsw i32 %57, 129
  store i32 %58, i32* %12, align 4
  %59 = load i8, i8* %11, align 1
  %60 = zext i8 %59 to i32
  %61 = load i8, i8* %11, align 1
  %62 = zext i8 %61 to i32
  %63 = icmp sge i32 %62, 129
  br i1 %63, label %64, label %65

64:                                               ; preds = %55
  br label %71

65:                                               ; preds = %55
  %66 = load i8, i8* %11, align 1
  %67 = zext i8 %66 to i32
  %68 = icmp sge i32 %67, 97
  %69 = zext i1 %68 to i64
  %70 = select i1 %68, i32 71, i32 65
  br label %71

71:                                               ; preds = %65, %64
  %72 = phi i32 [ 77, %64 ], [ %70, %65 ]
  %73 = sub nsw i32 %60, %72
  store i32 %73, i32* %13, align 4
  %74 = load i32, i32* %12, align 4
  %75 = mul i32 178, %74
  %76 = load i32, i32* %13, align 4
  %77 = add i32 %75, %76
  store i32 %77, i32* %14, align 4
  %78 = load i32, i32* %14, align 4
  %79 = icmp ult i32 %78, 5696
  br i1 %79, label %80, label %99

80:                                               ; preds = %71
  %81 = load i64*, i64** @uhc_1_2uni_main_page81, align 8
  %82 = load i32, i32* %12, align 4
  %83 = mul i32 2, %82
  %84 = load i32, i32* %13, align 4
  %85 = icmp uge i32 %84, 89
  %86 = zext i1 %85 to i64
  %87 = select i1 %85, i32 1, i32 0
  %88 = add i32 %83, %87
  %89 = zext i32 %88 to i64
  %90 = getelementptr inbounds i64, i64* %81, i64 %89
  %91 = load i64, i64* %90, align 8
  %92 = load i64*, i64** @uhc_1_2uni_page81, align 8
  %93 = load i32, i32* %14, align 4
  %94 = zext i32 %93 to i64
  %95 = getelementptr inbounds i64, i64* %92, i64 %94
  %96 = load i64, i64* %95, align 8
  %97 = add nsw i64 %91, %96
  %98 = load i64*, i64** %7, align 8
  store i64 %97, i64* %98, align 8
  store i32 2, i32* %5, align 4
  br label %106

99:                                               ; preds = %71
  br label %100

100:                                              ; preds = %99, %51, %47
  %101 = load i32, i32* @RET_ILSEQ, align 4
  store i32 %101, i32* %5, align 4
  br label %106

102:                                              ; preds = %25
  %103 = call i32 @RET_TOOFEW(i32 0)
  store i32 %103, i32* %5, align 4
  br label %106

104:                                              ; preds = %21, %4
  %105 = load i32, i32* @RET_ILSEQ, align 4
  store i32 %105, i32* %5, align 4
  br label %106

106:                                              ; preds = %104, %102, %100, %80
  %107 = load i32, i32* %5, align 4
  ret i32 %107
}

declare dso_local i32 @RET_TOOFEW(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
