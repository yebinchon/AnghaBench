; ModuleID = '/home/carl/AnghaBench/TDengine/deps/iconv/extr_cp1254.h_cp1254_wctomb.c'
source_filename = "/home/carl/AnghaBench/TDengine/deps/iconv/extr_cp1254.h_cp1254_wctomb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cp1254_page00 = common dso_local global i8* null, align 8
@cp1254_page01 = common dso_local global i8* null, align 8
@cp1254_page02 = common dso_local global i8* null, align 8
@cp1254_page20 = common dso_local global i8* null, align 8
@RET_ILUNI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32, i32)* @cp1254_wctomb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cp1254_wctomb(i32 %0, i8* %1, i32 %2, i32 %3) #0 {
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
  br label %102

17:                                               ; preds = %4
  %18 = load i32, i32* %8, align 4
  %19 = icmp sge i32 %18, 160
  br i1 %19, label %20, label %26

20:                                               ; preds = %17
  %21 = load i32, i32* %8, align 4
  %22 = icmp slt i32 %21, 208
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = load i32, i32* %8, align 4
  %25 = trunc i32 %24 to i8
  store i8 %25, i8* %10, align 1
  br label %92

26:                                               ; preds = %20, %17
  %27 = load i32, i32* %8, align 4
  %28 = icmp sge i32 %27, 208
  br i1 %28, label %29, label %39

29:                                               ; preds = %26
  %30 = load i32, i32* %8, align 4
  %31 = icmp slt i32 %30, 256
  br i1 %31, label %32, label %39

32:                                               ; preds = %29
  %33 = load i8*, i8** @cp1254_page00, align 8
  %34 = load i32, i32* %8, align 4
  %35 = sub nsw i32 %34, 208
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8, i8* %33, i64 %36
  %38 = load i8, i8* %37, align 1
  store i8 %38, i8* %10, align 1
  br label %91

39:                                               ; preds = %29, %26
  %40 = load i32, i32* %8, align 4
  %41 = icmp sge i32 %40, 280
  br i1 %41, label %42, label %52

42:                                               ; preds = %39
  %43 = load i32, i32* %8, align 4
  %44 = icmp slt i32 %43, 408
  br i1 %44, label %45, label %52

45:                                               ; preds = %42
  %46 = load i8*, i8** @cp1254_page01, align 8
  %47 = load i32, i32* %8, align 4
  %48 = sub nsw i32 %47, 280
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8, i8* %46, i64 %49
  %51 = load i8, i8* %50, align 1
  store i8 %51, i8* %10, align 1
  br label %90

52:                                               ; preds = %42, %39
  %53 = load i32, i32* %8, align 4
  %54 = icmp sge i32 %53, 704
  br i1 %54, label %55, label %65

55:                                               ; preds = %52
  %56 = load i32, i32* %8, align 4
  %57 = icmp slt i32 %56, 736
  br i1 %57, label %58, label %65

58:                                               ; preds = %55
  %59 = load i8*, i8** @cp1254_page02, align 8
  %60 = load i32, i32* %8, align 4
  %61 = sub nsw i32 %60, 704
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8, i8* %59, i64 %62
  %64 = load i8, i8* %63, align 1
  store i8 %64, i8* %10, align 1
  br label %89

65:                                               ; preds = %55, %52
  %66 = load i32, i32* %8, align 4
  %67 = icmp sge i32 %66, 8208
  br i1 %67, label %68, label %78

68:                                               ; preds = %65
  %69 = load i32, i32* %8, align 4
  %70 = icmp slt i32 %69, 8256
  br i1 %70, label %71, label %78

71:                                               ; preds = %68
  %72 = load i8*, i8** @cp1254_page20, align 8
  %73 = load i32, i32* %8, align 4
  %74 = sub nsw i32 %73, 8208
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i8, i8* %72, i64 %75
  %77 = load i8, i8* %76, align 1
  store i8 %77, i8* %10, align 1
  br label %88

78:                                               ; preds = %68, %65
  %79 = load i32, i32* %8, align 4
  %80 = icmp eq i32 %79, 8364
  br i1 %80, label %81, label %82

81:                                               ; preds = %78
  store i8 -128, i8* %10, align 1
  br label %87

82:                                               ; preds = %78
  %83 = load i32, i32* %8, align 4
  %84 = icmp eq i32 %83, 8482
  br i1 %84, label %85, label %86

85:                                               ; preds = %82
  store i8 -103, i8* %10, align 1
  br label %86

86:                                               ; preds = %85, %82
  br label %87

87:                                               ; preds = %86, %81
  br label %88

88:                                               ; preds = %87, %71
  br label %89

89:                                               ; preds = %88, %58
  br label %90

90:                                               ; preds = %89, %45
  br label %91

91:                                               ; preds = %90, %32
  br label %92

92:                                               ; preds = %91, %23
  br label %93

93:                                               ; preds = %92
  %94 = load i8, i8* %10, align 1
  %95 = zext i8 %94 to i32
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %93
  %98 = load i8, i8* %10, align 1
  %99 = load i8*, i8** %7, align 8
  store i8 %98, i8* %99, align 1
  store i32 1, i32* %5, align 4
  br label %102

100:                                              ; preds = %93
  %101 = load i32, i32* @RET_ILUNI, align 4
  store i32 %101, i32* %5, align 4
  br label %102

102:                                              ; preds = %100, %97, %13
  %103 = load i32, i32* %5, align 4
  ret i32 %103
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
