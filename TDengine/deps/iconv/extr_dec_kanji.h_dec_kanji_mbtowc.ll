; ModuleID = '/home/carl/AnghaBench/TDengine/deps/iconv/extr_dec_kanji.h_dec_kanji_mbtowc.c'
source_filename = "/home/carl/AnghaBench/TDengine/deps/iconv/extr_dec_kanji.h_dec_kanji_mbtowc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RET_ILSEQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i8*, i32)* @dec_kanji_mbtowc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dec_kanji_mbtowc(i32 %0, i32* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  %12 = alloca [2 x i8], align 1
  store i32 %0, i32* %6, align 4
  store i32* %1, i32** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load i8*, i8** %8, align 8
  %14 = load i8, i8* %13, align 1
  store i8 %14, i8* %10, align 1
  %15 = load i8, i8* %10, align 1
  %16 = zext i8 %15 to i32
  %17 = icmp slt i32 %16, 128
  br i1 %17, label %18, label %24

18:                                               ; preds = %4
  %19 = load i32, i32* %6, align 4
  %20 = load i32*, i32** %7, align 8
  %21 = load i8*, i8** %8, align 8
  %22 = load i32, i32* %9, align 4
  %23 = call i32 @ascii_mbtowc(i32 %19, i32* %20, i8* %21, i32 %22)
  store i32 %23, i32* %5, align 4
  br label %66

24:                                               ; preds = %4
  %25 = load i8, i8* %10, align 1
  %26 = zext i8 %25 to i32
  %27 = icmp sge i32 %26, 161
  br i1 %27, label %28, label %64

28:                                               ; preds = %24
  %29 = load i8, i8* %10, align 1
  %30 = zext i8 %29 to i32
  %31 = icmp slt i32 %30, 245
  br i1 %31, label %32, label %64

32:                                               ; preds = %28
  %33 = load i32, i32* %9, align 4
  %34 = icmp slt i32 %33, 2
  br i1 %34, label %35, label %37

35:                                               ; preds = %32
  %36 = call i32 @RET_TOOFEW(i32 0)
  store i32 %36, i32* %5, align 4
  br label %66

37:                                               ; preds = %32
  %38 = load i8*, i8** %8, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 1
  %40 = load i8, i8* %39, align 1
  store i8 %40, i8* %11, align 1
  %41 = load i8, i8* %11, align 1
  %42 = zext i8 %41 to i32
  %43 = icmp sge i32 %42, 161
  br i1 %43, label %44, label %63

44:                                               ; preds = %37
  %45 = load i8, i8* %11, align 1
  %46 = zext i8 %45 to i32
  %47 = icmp slt i32 %46, 255
  br i1 %47, label %48, label %63

48:                                               ; preds = %44
  %49 = load i8, i8* %10, align 1
  %50 = zext i8 %49 to i32
  %51 = sub nsw i32 %50, 128
  %52 = trunc i32 %51 to i8
  %53 = getelementptr inbounds [2 x i8], [2 x i8]* %12, i64 0, i64 0
  store i8 %52, i8* %53, align 1
  %54 = load i8, i8* %11, align 1
  %55 = zext i8 %54 to i32
  %56 = sub nsw i32 %55, 128
  %57 = trunc i32 %56 to i8
  %58 = getelementptr inbounds [2 x i8], [2 x i8]* %12, i64 0, i64 1
  store i8 %57, i8* %58, align 1
  %59 = load i32, i32* %6, align 4
  %60 = load i32*, i32** %7, align 8
  %61 = getelementptr inbounds [2 x i8], [2 x i8]* %12, i64 0, i64 0
  %62 = call i32 @jisx0208_mbtowc(i32 %59, i32* %60, i8* %61, i32 2)
  store i32 %62, i32* %5, align 4
  br label %66

63:                                               ; preds = %44, %37
  br label %64

64:                                               ; preds = %63, %28, %24
  %65 = load i32, i32* @RET_ILSEQ, align 4
  store i32 %65, i32* %5, align 4
  br label %66

66:                                               ; preds = %64, %48, %35, %18
  %67 = load i32, i32* %5, align 4
  ret i32 %67
}

declare dso_local i32 @ascii_mbtowc(i32, i32*, i8*, i32) #1

declare dso_local i32 @RET_TOOFEW(i32) #1

declare dso_local i32 @jisx0208_mbtowc(i32, i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
