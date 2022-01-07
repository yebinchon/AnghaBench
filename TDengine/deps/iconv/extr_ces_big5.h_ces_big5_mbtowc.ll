; ModuleID = '/home/carl/AnghaBench/TDengine/deps/iconv/extr_ces_big5.h_ces_big5_mbtowc.c'
source_filename = "/home/carl/AnghaBench/TDengine/deps/iconv/extr_ces_big5.h_ces_big5_mbtowc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RET_ILSEQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i8*, i32)* @ces_big5_mbtowc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ces_big5_mbtowc(i32 %0, i32* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  store i32 %0, i32* %6, align 4
  store i32* %1, i32** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load i8*, i8** %8, align 8
  %13 = load i8, i8* %12, align 1
  store i8 %13, i8* %10, align 1
  %14 = load i8, i8* %10, align 1
  %15 = zext i8 %14 to i32
  %16 = icmp slt i32 %15, 128
  br i1 %16, label %17, label %23

17:                                               ; preds = %4
  %18 = load i32, i32* %6, align 4
  %19 = load i32*, i32** %7, align 8
  %20 = load i8*, i8** %8, align 8
  %21 = load i32, i32* %9, align 4
  %22 = call i32 @ascii_mbtowc(i32 %18, i32* %19, i8* %20, i32 %21)
  store i32 %22, i32* %5, align 4
  br label %64

23:                                               ; preds = %4
  %24 = load i8, i8* %10, align 1
  %25 = zext i8 %24 to i32
  %26 = icmp sge i32 %25, 161
  br i1 %26, label %27, label %62

27:                                               ; preds = %23
  %28 = load i8, i8* %10, align 1
  %29 = zext i8 %28 to i32
  %30 = icmp slt i32 %29, 255
  br i1 %30, label %31, label %62

31:                                               ; preds = %27
  %32 = load i32, i32* %9, align 4
  %33 = icmp slt i32 %32, 2
  br i1 %33, label %34, label %36

34:                                               ; preds = %31
  %35 = call i32 @RET_TOOFEW(i32 0)
  store i32 %35, i32* %5, align 4
  br label %64

36:                                               ; preds = %31
  %37 = load i8*, i8** %8, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 1
  %39 = load i8, i8* %38, align 1
  store i8 %39, i8* %11, align 1
  %40 = load i8, i8* %11, align 1
  %41 = zext i8 %40 to i32
  %42 = icmp sge i32 %41, 64
  br i1 %42, label %43, label %47

43:                                               ; preds = %36
  %44 = load i8, i8* %11, align 1
  %45 = zext i8 %44 to i32
  %46 = icmp slt i32 %45, 127
  br i1 %46, label %55, label %47

47:                                               ; preds = %43, %36
  %48 = load i8, i8* %11, align 1
  %49 = zext i8 %48 to i32
  %50 = icmp sge i32 %49, 161
  br i1 %50, label %51, label %60

51:                                               ; preds = %47
  %52 = load i8, i8* %11, align 1
  %53 = zext i8 %52 to i32
  %54 = icmp slt i32 %53, 255
  br i1 %54, label %55, label %60

55:                                               ; preds = %51, %43
  %56 = load i32, i32* %6, align 4
  %57 = load i32*, i32** %7, align 8
  %58 = load i8*, i8** %8, align 8
  %59 = call i32 @big5_mbtowc(i32 %56, i32* %57, i8* %58, i32 2)
  store i32 %59, i32* %5, align 4
  br label %64

60:                                               ; preds = %51, %47
  %61 = load i32, i32* @RET_ILSEQ, align 4
  store i32 %61, i32* %5, align 4
  br label %64

62:                                               ; preds = %27, %23
  %63 = load i32, i32* @RET_ILSEQ, align 4
  store i32 %63, i32* %5, align 4
  br label %64

64:                                               ; preds = %62, %60, %55, %34, %17
  %65 = load i32, i32* %5, align 4
  ret i32 %65
}

declare dso_local i32 @ascii_mbtowc(i32, i32*, i8*, i32) #1

declare dso_local i32 @RET_TOOFEW(i32) #1

declare dso_local i32 @big5_mbtowc(i32, i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
