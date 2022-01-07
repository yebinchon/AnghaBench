; ModuleID = '/home/carl/AnghaBench/TDengine/deps/iconv/extr_riscos1.h_riscos1_wctomb.c'
source_filename = "/home/carl/AnghaBench/TDengine/deps/iconv/extr_riscos1.h_riscos1_wctomb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@riscos1_page01 = common dso_local global i8* null, align 8
@riscos1_page20 = common dso_local global i8* null, align 8
@riscos1_page21 = common dso_local global i8* null, align 8
@riscos1_page22 = common dso_local global i8* null, align 8
@RET_ILUNI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32, i32)* @riscos1_wctomb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @riscos1_wctomb(i32 %0, i8* %1, i32 %2, i32 %3) #0 {
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
  br i1 %12, label %25, label %13

13:                                               ; preds = %4
  %14 = load i32, i32* %8, align 4
  %15 = icmp eq i32 %14, 131
  br i1 %15, label %25, label %16

16:                                               ; preds = %13
  %17 = load i32, i32* %8, align 4
  %18 = icmp eq i32 %17, 135
  br i1 %18, label %25, label %19

19:                                               ; preds = %16
  %20 = load i32, i32* %8, align 4
  %21 = icmp sge i32 %20, 160
  br i1 %21, label %22, label %29

22:                                               ; preds = %19
  %23 = load i32, i32* %8, align 4
  %24 = icmp slt i32 %23, 256
  br i1 %24, label %25, label %29

25:                                               ; preds = %22, %16, %13, %4
  %26 = load i32, i32* %8, align 4
  %27 = trunc i32 %26 to i8
  %28 = load i8*, i8** %7, align 8
  store i8 %27, i8* %28, align 1
  store i32 1, i32* %5, align 4
  br label %115

29:                                               ; preds = %22, %19
  %30 = load i32, i32* %8, align 4
  %31 = icmp sge i32 %30, 336
  br i1 %31, label %32, label %42

32:                                               ; preds = %29
  %33 = load i32, i32* %8, align 4
  %34 = icmp slt i32 %33, 376
  br i1 %34, label %35, label %42

35:                                               ; preds = %32
  %36 = load i8*, i8** @riscos1_page01, align 8
  %37 = load i32, i32* %8, align 4
  %38 = sub nsw i32 %37, 336
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8, i8* %36, i64 %39
  %41 = load i8, i8* %40, align 1
  store i8 %41, i8* %10, align 1
  br label %105

42:                                               ; preds = %32, %29
  %43 = load i32, i32* %8, align 4
  %44 = icmp sge i32 %43, 8208
  br i1 %44, label %45, label %55

45:                                               ; preds = %42
  %46 = load i32, i32* %8, align 4
  %47 = icmp slt i32 %46, 8256
  br i1 %47, label %48, label %55

48:                                               ; preds = %45
  %49 = load i8*, i8** @riscos1_page20, align 8
  %50 = load i32, i32* %8, align 4
  %51 = sub nsw i32 %50, 8208
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8, i8* %49, i64 %52
  %54 = load i8, i8* %53, align 1
  store i8 %54, i8* %10, align 1
  br label %104

55:                                               ; preds = %45, %42
  %56 = load i32, i32* %8, align 4
  %57 = icmp eq i32 %56, 8482
  br i1 %57, label %58, label %59

58:                                               ; preds = %55
  store i8 -115, i8* %10, align 1
  br label %103

59:                                               ; preds = %55
  %60 = load i32, i32* %8, align 4
  %61 = icmp sge i32 %60, 8672
  br i1 %61, label %62, label %72

62:                                               ; preds = %59
  %63 = load i32, i32* %8, align 4
  %64 = icmp slt i32 %63, 8688
  br i1 %64, label %65, label %72

65:                                               ; preds = %62
  %66 = load i8*, i8** @riscos1_page21, align 8
  %67 = load i32, i32* %8, align 4
  %68 = sub nsw i32 %67, 8672
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i8, i8* %66, i64 %69
  %71 = load i8, i8* %70, align 1
  store i8 %71, i8* %10, align 1
  br label %102

72:                                               ; preds = %62, %59
  %73 = load i32, i32* %8, align 4
  %74 = icmp sge i32 %73, 8720
  br i1 %74, label %75, label %85

75:                                               ; preds = %72
  %76 = load i32, i32* %8, align 4
  %77 = icmp slt i32 %76, 8736
  br i1 %77, label %78, label %85

78:                                               ; preds = %75
  %79 = load i8*, i8** @riscos1_page22, align 8
  %80 = load i32, i32* %8, align 4
  %81 = sub nsw i32 %80, 8720
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i8, i8* %79, i64 %82
  %84 = load i8, i8* %83, align 1
  store i8 %84, i8* %10, align 1
  br label %101

85:                                               ; preds = %75, %72
  %86 = load i32, i32* %8, align 4
  %87 = icmp eq i32 %86, 9587
  br i1 %87, label %88, label %89

88:                                               ; preds = %85
  store i8 -124, i8* %10, align 1
  br label %100

89:                                               ; preds = %85
  %90 = load i32, i32* %8, align 4
  %91 = icmp sge i32 %90, 64257
  br i1 %91, label %92, label %99

92:                                               ; preds = %89
  %93 = load i32, i32* %8, align 4
  %94 = icmp slt i32 %93, 64259
  br i1 %94, label %95, label %99

95:                                               ; preds = %92
  %96 = load i32, i32* %8, align 4
  %97 = sub nsw i32 %96, 64099
  %98 = trunc i32 %97 to i8
  store i8 %98, i8* %10, align 1
  br label %99

99:                                               ; preds = %95, %92, %89
  br label %100

100:                                              ; preds = %99, %88
  br label %101

101:                                              ; preds = %100, %78
  br label %102

102:                                              ; preds = %101, %65
  br label %103

103:                                              ; preds = %102, %58
  br label %104

104:                                              ; preds = %103, %48
  br label %105

105:                                              ; preds = %104, %35
  br label %106

106:                                              ; preds = %105
  %107 = load i8, i8* %10, align 1
  %108 = zext i8 %107 to i32
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %106
  %111 = load i8, i8* %10, align 1
  %112 = load i8*, i8** %7, align 8
  store i8 %111, i8* %112, align 1
  store i32 1, i32* %5, align 4
  br label %115

113:                                              ; preds = %106
  %114 = load i32, i32* @RET_ILUNI, align 4
  store i32 %114, i32* %5, align 4
  br label %115

115:                                              ; preds = %113, %110, %25
  %116 = load i32, i32* %5, align 4
  ret i32 %116
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
