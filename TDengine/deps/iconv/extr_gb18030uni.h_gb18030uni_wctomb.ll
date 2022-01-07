; ModuleID = '/home/carl/AnghaBench/TDengine/deps/iconv/extr_gb18030uni.h_gb18030uni_wctomb.c'
source_filename = "/home/carl/AnghaBench/TDengine/deps/iconv/extr_gb18030uni.h_gb18030uni_wctomb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@gb18030uni_uni2charset_ranges = common dso_local global i32* null, align 8
@RET_ILUNI = common dso_local global i32 0, align 4
@gb18030uni_ranges = common dso_local global i32* null, align 8
@RET_TOOSMALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32, i32)* @gb18030uni_wctomb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gb18030uni_wctomb(i32 %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %15 = load i32, i32* %9, align 4
  %16 = icmp sge i32 %15, 4
  br i1 %16, label %17, label %102

17:                                               ; preds = %4
  %18 = load i32, i32* %8, align 4
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %10, align 4
  %20 = icmp uge i32 %19, 128
  br i1 %20, label %21, label %100

21:                                               ; preds = %17
  %22 = load i32, i32* %10, align 4
  %23 = icmp ule i32 %22, 65535
  br i1 %23, label %24, label %100

24:                                               ; preds = %21
  store i32 0, i32* %11, align 4
  store i32 205, i32* %12, align 4
  br label %25

25:                                               ; preds = %61, %24
  %26 = load i32, i32* %11, align 4
  %27 = load i32, i32* %12, align 4
  %28 = icmp ult i32 %26, %27
  br i1 %28, label %29, label %62

29:                                               ; preds = %25
  %30 = load i32, i32* %11, align 4
  %31 = load i32, i32* %12, align 4
  %32 = add i32 %30, %31
  %33 = udiv i32 %32, 2
  store i32 %33, i32* %13, align 4
  %34 = load i32, i32* %10, align 4
  %35 = load i32*, i32** @gb18030uni_uni2charset_ranges, align 8
  %36 = load i32, i32* %13, align 4
  %37 = mul i32 2, %36
  %38 = add i32 %37, 1
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %35, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = icmp ule i32 %34, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %29
  %44 = load i32, i32* %13, align 4
  store i32 %44, i32* %12, align 4
  br label %61

45:                                               ; preds = %29
  %46 = load i32, i32* %10, align 4
  %47 = load i32*, i32** @gb18030uni_uni2charset_ranges, align 8
  %48 = load i32, i32* %13, align 4
  %49 = mul i32 2, %48
  %50 = add i32 %49, 2
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %47, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = icmp uge i32 %46, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %45
  %56 = load i32, i32* %13, align 4
  %57 = add i32 %56, 1
  store i32 %57, i32* %11, align 4
  br label %60

58:                                               ; preds = %45
  %59 = load i32, i32* @RET_ILUNI, align 4
  store i32 %59, i32* %5, align 4
  br label %104

60:                                               ; preds = %55
  br label %61

61:                                               ; preds = %60, %43
  br label %25

62:                                               ; preds = %25
  %63 = load i32*, i32** @gb18030uni_ranges, align 8
  %64 = load i32, i32* %11, align 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load i32, i32* %66, align 4
  store i32 %67, i32* %14, align 4
  %68 = load i32, i32* %14, align 4
  %69 = load i32, i32* %10, align 4
  %70 = sub i32 %69, %68
  store i32 %70, i32* %10, align 4
  %71 = load i32, i32* %10, align 4
  %72 = urem i32 %71, 10
  %73 = add i32 %72, 48
  %74 = trunc i32 %73 to i8
  %75 = load i8*, i8** %7, align 8
  %76 = getelementptr inbounds i8, i8* %75, i64 3
  store i8 %74, i8* %76, align 1
  %77 = load i32, i32* %10, align 4
  %78 = udiv i32 %77, 10
  store i32 %78, i32* %10, align 4
  %79 = load i32, i32* %10, align 4
  %80 = urem i32 %79, 126
  %81 = add i32 %80, 129
  %82 = trunc i32 %81 to i8
  %83 = load i8*, i8** %7, align 8
  %84 = getelementptr inbounds i8, i8* %83, i64 2
  store i8 %82, i8* %84, align 1
  %85 = load i32, i32* %10, align 4
  %86 = udiv i32 %85, 126
  store i32 %86, i32* %10, align 4
  %87 = load i32, i32* %10, align 4
  %88 = urem i32 %87, 10
  %89 = add i32 %88, 48
  %90 = trunc i32 %89 to i8
  %91 = load i8*, i8** %7, align 8
  %92 = getelementptr inbounds i8, i8* %91, i64 1
  store i8 %90, i8* %92, align 1
  %93 = load i32, i32* %10, align 4
  %94 = udiv i32 %93, 10
  store i32 %94, i32* %10, align 4
  %95 = load i32, i32* %10, align 4
  %96 = add i32 %95, 129
  %97 = trunc i32 %96 to i8
  %98 = load i8*, i8** %7, align 8
  %99 = getelementptr inbounds i8, i8* %98, i64 0
  store i8 %97, i8* %99, align 1
  store i32 4, i32* %5, align 4
  br label %104

100:                                              ; preds = %21, %17
  %101 = load i32, i32* @RET_ILUNI, align 4
  store i32 %101, i32* %5, align 4
  br label %104

102:                                              ; preds = %4
  %103 = load i32, i32* @RET_TOOSMALL, align 4
  store i32 %103, i32* %5, align 4
  br label %104

104:                                              ; preds = %102, %100, %62, %58
  %105 = load i32, i32* %5, align 4
  ret i32 %105
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
