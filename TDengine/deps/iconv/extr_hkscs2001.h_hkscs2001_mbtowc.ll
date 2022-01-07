; ModuleID = '/home/carl/AnghaBench/TDengine/deps/iconv/extr_hkscs2001.h_hkscs2001_mbtowc.c'
source_filename = "/home/carl/AnghaBench/TDengine/deps/iconv/extr_hkscs2001.h_hkscs2001_mbtowc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@hkscs2001_2uni_page8c = common dso_local global i16* null, align 8
@hkscs2001_2uni_upages = common dso_local global i16* null, align 8
@RET_ILSEQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i8*, i32)* @hkscs2001_mbtowc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hkscs2001_mbtowc(i32 %0, i32* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i16, align 2
  store i32 %0, i32* %6, align 4
  store i32* %1, i32** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load i8*, i8** %8, align 8
  %16 = getelementptr inbounds i8, i8* %15, i64 0
  %17 = load i8, i8* %16, align 1
  store i8 %17, i8* %10, align 1
  %18 = load i8, i8* %10, align 1
  %19 = zext i8 %18 to i32
  %20 = icmp eq i32 %19, 140
  br i1 %20, label %21, label %89

21:                                               ; preds = %4
  %22 = load i32, i32* %9, align 4
  %23 = icmp sge i32 %22, 2
  br i1 %23, label %24, label %87

24:                                               ; preds = %21
  %25 = load i8*, i8** %8, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 1
  %27 = load i8, i8* %26, align 1
  store i8 %27, i8* %11, align 1
  %28 = load i8, i8* %11, align 1
  %29 = zext i8 %28 to i32
  %30 = icmp sge i32 %29, 64
  br i1 %30, label %31, label %35

31:                                               ; preds = %24
  %32 = load i8, i8* %11, align 1
  %33 = zext i8 %32 to i32
  %34 = icmp slt i32 %33, 127
  br i1 %34, label %43, label %35

35:                                               ; preds = %31, %24
  %36 = load i8, i8* %11, align 1
  %37 = zext i8 %36 to i32
  %38 = icmp sge i32 %37, 161
  br i1 %38, label %39, label %85

39:                                               ; preds = %35
  %40 = load i8, i8* %11, align 1
  %41 = zext i8 %40 to i32
  %42 = icmp slt i32 %41, 255
  br i1 %42, label %43, label %85

43:                                               ; preds = %39, %31
  %44 = load i8, i8* %10, align 1
  %45 = zext i8 %44 to i32
  %46 = sub nsw i32 %45, 128
  %47 = mul nsw i32 157, %46
  %48 = load i8, i8* %11, align 1
  %49 = zext i8 %48 to i32
  %50 = load i8, i8* %11, align 1
  %51 = zext i8 %50 to i32
  %52 = icmp sge i32 %51, 161
  %53 = zext i1 %52 to i64
  %54 = select i1 %52, i32 98, i32 64
  %55 = sub nsw i32 %49, %54
  %56 = add nsw i32 %47, %55
  store i32 %56, i32* %12, align 4
  store i32 65533, i32* %13, align 4
  %57 = load i32, i32* %12, align 4
  %58 = icmp ult i32 %57, 2007
  br i1 %58, label %59, label %78

59:                                               ; preds = %43
  %60 = load i16*, i16** @hkscs2001_2uni_page8c, align 8
  %61 = load i32, i32* %12, align 4
  %62 = sub i32 %61, 1884
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds i16, i16* %60, i64 %63
  %65 = load i16, i16* %64, align 2
  store i16 %65, i16* %14, align 2
  %66 = load i16*, i16** @hkscs2001_2uni_upages, align 8
  %67 = load i16, i16* %14, align 2
  %68 = zext i16 %67 to i32
  %69 = ashr i32 %68, 8
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i16, i16* %66, i64 %70
  %72 = load i16, i16* %71, align 2
  %73 = zext i16 %72 to i32
  %74 = load i16, i16* %14, align 2
  %75 = zext i16 %74 to i32
  %76 = and i32 %75, 255
  %77 = or i32 %73, %76
  store i32 %77, i32* %13, align 4
  br label %78

78:                                               ; preds = %59, %43
  %79 = load i32, i32* %13, align 4
  %80 = icmp ne i32 %79, 65533
  br i1 %80, label %81, label %84

81:                                               ; preds = %78
  %82 = load i32, i32* %13, align 4
  %83 = load i32*, i32** %7, align 8
  store i32 %82, i32* %83, align 4
  store i32 2, i32* %5, align 4
  br label %91

84:                                               ; preds = %78
  br label %85

85:                                               ; preds = %84, %39, %35
  %86 = load i32, i32* @RET_ILSEQ, align 4
  store i32 %86, i32* %5, align 4
  br label %91

87:                                               ; preds = %21
  %88 = call i32 @RET_TOOFEW(i32 0)
  store i32 %88, i32* %5, align 4
  br label %91

89:                                               ; preds = %4
  %90 = load i32, i32* @RET_ILSEQ, align 4
  store i32 %90, i32* %5, align 4
  br label %91

91:                                               ; preds = %89, %87, %85, %81
  %92 = load i32, i32* %5, align 4
  ret i32 %92
}

declare dso_local i32 @RET_TOOFEW(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
