; ModuleID = '/home/carl/AnghaBench/TDengine/deps/iconv/extr_cp1252.h_cp1252_wctomb.c'
source_filename = "/home/carl/AnghaBench/TDengine/deps/iconv/extr_cp1252.h_cp1252_wctomb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cp1252_page01 = common dso_local global i8* null, align 8
@cp1252_page02 = common dso_local global i8* null, align 8
@cp1252_page20 = common dso_local global i8* null, align 8
@RET_ILUNI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32, i32)* @cp1252_wctomb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cp1252_wctomb(i32 %0, i8* %1, i32 %2, i32 %3) #0 {
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
  %12 = icmp slt i32 %11, 128
  br i1 %12, label %13, label %17

13:                                               ; preds = %4
  %14 = load i32, i32* %8, align 4
  %15 = trunc i32 %14 to i8
  %16 = load i8*, i8** %7, align 8
  store i8 %15, i8* %16, align 1
  store i32 1, i32* %5, align 4
  br label %88

17:                                               ; preds = %4
  %18 = load i32, i32* %8, align 4
  %19 = icmp sge i32 %18, 160
  br i1 %19, label %20, label %26

20:                                               ; preds = %17
  %21 = load i32, i32* %8, align 4
  %22 = icmp slt i32 %21, 256
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = load i32, i32* %8, align 4
  %25 = trunc i32 %24 to i8
  store i8 %25, i8* %10, align 1
  br label %78

26:                                               ; preds = %20, %17
  %27 = load i32, i32* %8, align 4
  %28 = icmp sge i32 %27, 336
  br i1 %28, label %29, label %39

29:                                               ; preds = %26
  %30 = load i32, i32* %8, align 4
  %31 = icmp slt i32 %30, 408
  br i1 %31, label %32, label %39

32:                                               ; preds = %29
  %33 = load i8*, i8** @cp1252_page01, align 8
  %34 = load i32, i32* %8, align 4
  %35 = sub nsw i32 %34, 336
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8, i8* %33, i64 %36
  %38 = load i8, i8* %37, align 1
  store i8 %38, i8* %10, align 1
  br label %77

39:                                               ; preds = %29, %26
  %40 = load i32, i32* %8, align 4
  %41 = icmp sge i32 %40, 704
  br i1 %41, label %42, label %52

42:                                               ; preds = %39
  %43 = load i32, i32* %8, align 4
  %44 = icmp slt i32 %43, 736
  br i1 %44, label %45, label %52

45:                                               ; preds = %42
  %46 = load i8*, i8** @cp1252_page02, align 8
  %47 = load i32, i32* %8, align 4
  %48 = sub nsw i32 %47, 704
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8, i8* %46, i64 %49
  %51 = load i8, i8* %50, align 1
  store i8 %51, i8* %10, align 1
  br label %76

52:                                               ; preds = %42, %39
  %53 = load i32, i32* %8, align 4
  %54 = icmp sge i32 %53, 8208
  br i1 %54, label %55, label %65

55:                                               ; preds = %52
  %56 = load i32, i32* %8, align 4
  %57 = icmp slt i32 %56, 8256
  br i1 %57, label %58, label %65

58:                                               ; preds = %55
  %59 = load i8*, i8** @cp1252_page20, align 8
  %60 = load i32, i32* %8, align 4
  %61 = sub nsw i32 %60, 8208
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8, i8* %59, i64 %62
  %64 = load i8, i8* %63, align 1
  store i8 %64, i8* %10, align 1
  br label %75

65:                                               ; preds = %55, %52
  %66 = load i32, i32* %8, align 4
  %67 = icmp eq i32 %66, 8364
  br i1 %67, label %68, label %69

68:                                               ; preds = %65
  store i8 -128, i8* %10, align 1
  br label %74

69:                                               ; preds = %65
  %70 = load i32, i32* %8, align 4
  %71 = icmp eq i32 %70, 8482
  br i1 %71, label %72, label %73

72:                                               ; preds = %69
  store i8 -103, i8* %10, align 1
  br label %73

73:                                               ; preds = %72, %69
  br label %74

74:                                               ; preds = %73, %68
  br label %75

75:                                               ; preds = %74, %58
  br label %76

76:                                               ; preds = %75, %45
  br label %77

77:                                               ; preds = %76, %32
  br label %78

78:                                               ; preds = %77, %23
  br label %79

79:                                               ; preds = %78
  %80 = load i8, i8* %10, align 1
  %81 = zext i8 %80 to i32
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %79
  %84 = load i8, i8* %10, align 1
  %85 = load i8*, i8** %7, align 8
  store i8 %84, i8* %85, align 1
  store i32 1, i32* %5, align 4
  br label %88

86:                                               ; preds = %79
  %87 = load i32, i32* @RET_ILUNI, align 4
  store i32 %87, i32* %5, align 4
  br label %88

88:                                               ; preds = %86, %83, %13
  %89 = load i32, i32* %5, align 4
  ret i32 %89
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
