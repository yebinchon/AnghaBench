; ModuleID = '/home/carl/AnghaBench/TDengine/deps/iconv/extr_cns11643_7.h_cns11643_7_mbtowc.c'
source_filename = "/home/carl/AnghaBench/TDengine/deps/iconv/extr_cns11643_7.h_cns11643_7_mbtowc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cns11643_7_2uni_page21 = common dso_local global i16* null, align 8
@cns11643_7_2uni_upages = common dso_local global i16* null, align 8
@RET_ILSEQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i8*, i32)* @cns11643_7_mbtowc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cns11643_7_mbtowc(i32 %0, i32* %1, i8* %2, i32 %3) #0 {
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
  %20 = icmp sge i32 %19, 33
  br i1 %20, label %21, label %79

21:                                               ; preds = %4
  %22 = load i8, i8* %10, align 1
  %23 = zext i8 %22 to i32
  %24 = icmp sle i32 %23, 102
  br i1 %24, label %25, label %79

25:                                               ; preds = %21
  %26 = load i32, i32* %9, align 4
  %27 = icmp sge i32 %26, 2
  br i1 %27, label %28, label %77

28:                                               ; preds = %25
  %29 = load i8*, i8** %8, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 1
  %31 = load i8, i8* %30, align 1
  store i8 %31, i8* %11, align 1
  %32 = load i8, i8* %11, align 1
  %33 = zext i8 %32 to i32
  %34 = icmp sge i32 %33, 33
  br i1 %34, label %35, label %75

35:                                               ; preds = %28
  %36 = load i8, i8* %11, align 1
  %37 = zext i8 %36 to i32
  %38 = icmp slt i32 %37, 127
  br i1 %38, label %39, label %75

39:                                               ; preds = %35
  %40 = load i8, i8* %10, align 1
  %41 = zext i8 %40 to i32
  %42 = sub nsw i32 %41, 33
  %43 = mul nsw i32 94, %42
  %44 = load i8, i8* %11, align 1
  %45 = zext i8 %44 to i32
  %46 = sub nsw i32 %45, 33
  %47 = add nsw i32 %43, %46
  store i32 %47, i32* %12, align 4
  store i32 65533, i32* %13, align 4
  %48 = load i32, i32* %12, align 4
  %49 = icmp ult i32 %48, 6539
  br i1 %49, label %50, label %68

50:                                               ; preds = %39
  %51 = load i16*, i16** @cns11643_7_2uni_page21, align 8
  %52 = load i32, i32* %12, align 4
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds i16, i16* %51, i64 %53
  %55 = load i16, i16* %54, align 2
  store i16 %55, i16* %14, align 2
  %56 = load i16*, i16** @cns11643_7_2uni_upages, align 8
  %57 = load i16, i16* %14, align 2
  %58 = zext i16 %57 to i32
  %59 = ashr i32 %58, 8
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i16, i16* %56, i64 %60
  %62 = load i16, i16* %61, align 2
  %63 = zext i16 %62 to i32
  %64 = load i16, i16* %14, align 2
  %65 = zext i16 %64 to i32
  %66 = and i32 %65, 255
  %67 = or i32 %63, %66
  store i32 %67, i32* %13, align 4
  br label %68

68:                                               ; preds = %50, %39
  %69 = load i32, i32* %13, align 4
  %70 = icmp ne i32 %69, 65533
  br i1 %70, label %71, label %74

71:                                               ; preds = %68
  %72 = load i32, i32* %13, align 4
  %73 = load i32*, i32** %7, align 8
  store i32 %72, i32* %73, align 4
  store i32 2, i32* %5, align 4
  br label %81

74:                                               ; preds = %68
  br label %75

75:                                               ; preds = %74, %35, %28
  %76 = load i32, i32* @RET_ILSEQ, align 4
  store i32 %76, i32* %5, align 4
  br label %81

77:                                               ; preds = %25
  %78 = call i32 @RET_TOOFEW(i32 0)
  store i32 %78, i32* %5, align 4
  br label %81

79:                                               ; preds = %21, %4
  %80 = load i32, i32* @RET_ILSEQ, align 4
  store i32 %80, i32* %5, align 4
  br label %81

81:                                               ; preds = %79, %77, %75, %71
  %82 = load i32, i32* %5, align 4
  ret i32 %82
}

declare dso_local i32 @RET_TOOFEW(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
