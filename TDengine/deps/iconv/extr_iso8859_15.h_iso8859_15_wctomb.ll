; ModuleID = '/home/carl/AnghaBench/TDengine/deps/iconv/extr_iso8859_15.h_iso8859_15_wctomb.c'
source_filename = "/home/carl/AnghaBench/TDengine/deps/iconv/extr_iso8859_15.h_iso8859_15_wctomb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@iso8859_15_page00 = common dso_local global i8* null, align 8
@iso8859_15_page01 = common dso_local global i8* null, align 8
@RET_ILUNI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32, i32)* @iso8859_15_wctomb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iso8859_15_wctomb(i32 %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i8 0, i8* %10, align 1
  %11 = load i32, i32* %8, align 4
  %12 = icmp slt i32 %11, 160
  br i1 %12, label %13, label %17

13:                                               ; preds = %4
  %14 = load i32, i32* %8, align 4
  %15 = trunc i32 %14 to i8
  %16 = load i8*, i8** %7, align 8
  store i8 %15, i8* %16, align 1
  store i32 1, i32* %5, align 4
  br label %69

17:                                               ; preds = %4
  %18 = load i32, i32* %8, align 4
  %19 = icmp sge i32 %18, 160
  br i1 %19, label %20, label %30

20:                                               ; preds = %17
  %21 = load i32, i32* %8, align 4
  %22 = icmp slt i32 %21, 192
  br i1 %22, label %23, label %30

23:                                               ; preds = %20
  %24 = load i8*, i8** @iso8859_15_page00, align 8
  %25 = load i32, i32* %8, align 4
  %26 = sub nsw i32 %25, 160
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8, i8* %24, i64 %27
  %29 = load i8, i8* %28, align 1
  store i8 %29, i8* %10, align 1
  br label %59

30:                                               ; preds = %20, %17
  %31 = load i32, i32* %8, align 4
  %32 = icmp sge i32 %31, 192
  br i1 %32, label %33, label %39

33:                                               ; preds = %30
  %34 = load i32, i32* %8, align 4
  %35 = icmp slt i32 %34, 256
  br i1 %35, label %36, label %39

36:                                               ; preds = %33
  %37 = load i32, i32* %8, align 4
  %38 = trunc i32 %37 to i8
  store i8 %38, i8* %10, align 1
  br label %58

39:                                               ; preds = %33, %30
  %40 = load i32, i32* %8, align 4
  %41 = icmp sge i32 %40, 336
  br i1 %41, label %42, label %52

42:                                               ; preds = %39
  %43 = load i32, i32* %8, align 4
  %44 = icmp slt i32 %43, 384
  br i1 %44, label %45, label %52

45:                                               ; preds = %42
  %46 = load i8*, i8** @iso8859_15_page01, align 8
  %47 = load i32, i32* %8, align 4
  %48 = sub nsw i32 %47, 336
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8, i8* %46, i64 %49
  %51 = load i8, i8* %50, align 1
  store i8 %51, i8* %10, align 1
  br label %57

52:                                               ; preds = %42, %39
  %53 = load i32, i32* %8, align 4
  %54 = icmp eq i32 %53, 8364
  br i1 %54, label %55, label %56

55:                                               ; preds = %52
  store i8 -92, i8* %10, align 1
  br label %56

56:                                               ; preds = %55, %52
  br label %57

57:                                               ; preds = %56, %45
  br label %58

58:                                               ; preds = %57, %36
  br label %59

59:                                               ; preds = %58, %23
  br label %60

60:                                               ; preds = %59
  %61 = load i8, i8* %10, align 1
  %62 = zext i8 %61 to i32
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %60
  %65 = load i8, i8* %10, align 1
  %66 = load i8*, i8** %7, align 8
  store i8 %65, i8* %66, align 1
  store i32 1, i32* %5, align 4
  br label %69

67:                                               ; preds = %60
  %68 = load i32, i32* @RET_ILUNI, align 4
  store i32 %68, i32* %5, align 4
  br label %69

69:                                               ; preds = %67, %64, %13
  %70 = load i32, i32* %5, align 4
  ret i32 %70
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
