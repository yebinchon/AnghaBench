; ModuleID = '/home/carl/AnghaBench/TDengine/deps/iconv/extr_cns11643_2.h_cns11643_2_mbtowc.c'
source_filename = "/home/carl/AnghaBench/TDengine/deps/iconv/extr_cns11643_2.h_cns11643_2_mbtowc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cns11643_2_2uni_page21 = common dso_local global i16* null, align 8
@RET_ILSEQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64*, i8*, i32)* @cns11643_2_mbtowc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cns11643_2_mbtowc(i32 %0, i64* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  %12 = alloca i32, align 4
  %13 = alloca i16, align 2
  store i32 %0, i32* %6, align 4
  store i64* %1, i64** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load i8*, i8** %8, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 0
  %16 = load i8, i8* %15, align 1
  store i8 %16, i8* %10, align 1
  %17 = load i8, i8* %10, align 1
  %18 = zext i8 %17 to i32
  %19 = icmp sge i32 %18, 33
  br i1 %19, label %20, label %68

20:                                               ; preds = %4
  %21 = load i8, i8* %10, align 1
  %22 = zext i8 %21 to i32
  %23 = icmp sle i32 %22, 114
  br i1 %23, label %24, label %68

24:                                               ; preds = %20
  %25 = load i32, i32* %9, align 4
  %26 = icmp sge i32 %25, 2
  br i1 %26, label %27, label %66

27:                                               ; preds = %24
  %28 = load i8*, i8** %8, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 1
  %30 = load i8, i8* %29, align 1
  store i8 %30, i8* %11, align 1
  %31 = load i8, i8* %11, align 1
  %32 = zext i8 %31 to i32
  %33 = icmp sge i32 %32, 33
  br i1 %33, label %34, label %64

34:                                               ; preds = %27
  %35 = load i8, i8* %11, align 1
  %36 = zext i8 %35 to i32
  %37 = icmp slt i32 %36, 127
  br i1 %37, label %38, label %64

38:                                               ; preds = %34
  %39 = load i8, i8* %10, align 1
  %40 = zext i8 %39 to i32
  %41 = sub nsw i32 %40, 33
  %42 = mul nsw i32 94, %41
  %43 = load i8, i8* %11, align 1
  %44 = zext i8 %43 to i32
  %45 = sub nsw i32 %44, 33
  %46 = add nsw i32 %42, %45
  store i32 %46, i32* %12, align 4
  store i16 -3, i16* %13, align 2
  %47 = load i32, i32* %12, align 4
  %48 = icmp ult i32 %47, 7650
  br i1 %48, label %49, label %55

49:                                               ; preds = %38
  %50 = load i16*, i16** @cns11643_2_2uni_page21, align 8
  %51 = load i32, i32* %12, align 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds i16, i16* %50, i64 %52
  %54 = load i16, i16* %53, align 2
  store i16 %54, i16* %13, align 2
  br label %55

55:                                               ; preds = %49, %38
  %56 = load i16, i16* %13, align 2
  %57 = zext i16 %56 to i32
  %58 = icmp ne i32 %57, 65533
  br i1 %58, label %59, label %63

59:                                               ; preds = %55
  %60 = load i16, i16* %13, align 2
  %61 = zext i16 %60 to i64
  %62 = load i64*, i64** %7, align 8
  store i64 %61, i64* %62, align 8
  store i32 2, i32* %5, align 4
  br label %70

63:                                               ; preds = %55
  br label %64

64:                                               ; preds = %63, %34, %27
  %65 = load i32, i32* @RET_ILSEQ, align 4
  store i32 %65, i32* %5, align 4
  br label %70

66:                                               ; preds = %24
  %67 = call i32 @RET_TOOFEW(i32 0)
  store i32 %67, i32* %5, align 4
  br label %70

68:                                               ; preds = %20, %4
  %69 = load i32, i32* @RET_ILSEQ, align 4
  store i32 %69, i32* %5, align 4
  br label %70

70:                                               ; preds = %68, %66, %64, %59
  %71 = load i32, i32* %5, align 4
  ret i32 %71
}

declare dso_local i32 @RET_TOOFEW(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
