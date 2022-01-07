; ModuleID = '/home/carl/AnghaBench/TDengine/deps/iconv/extr_atarist.h_atarist_wctomb.c'
source_filename = "/home/carl/AnghaBench/TDengine/deps/iconv/extr_atarist.h_atarist_wctomb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@atarist_page00 = common dso_local global i8* null, align 8
@atarist_page01 = common dso_local global i8* null, align 8
@atarist_page03 = common dso_local global i8* null, align 8
@atarist_page05 = common dso_local global i8* null, align 8
@atarist_page22 = common dso_local global i8* null, align 8
@atarist_page23 = common dso_local global i8* null, align 8
@RET_ILUNI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32, i32)* @atarist_wctomb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atarist_wctomb(i32 %0, i8* %1, i32 %2, i32 %3) #0 {
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
  br label %125

17:                                               ; preds = %4
  %18 = load i32, i32* %8, align 4
  %19 = icmp sge i32 %18, 160
  br i1 %19, label %20, label %30

20:                                               ; preds = %17
  %21 = load i32, i32* %8, align 4
  %22 = icmp slt i32 %21, 256
  br i1 %22, label %23, label %30

23:                                               ; preds = %20
  %24 = load i8*, i8** @atarist_page00, align 8
  %25 = load i32, i32* %8, align 4
  %26 = sub nsw i32 %25, 160
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8, i8* %24, i64 %27
  %29 = load i8, i8* %28, align 1
  store i8 %29, i8* %10, align 1
  br label %115

30:                                               ; preds = %20, %17
  %31 = load i32, i32* %8, align 4
  %32 = icmp sge i32 %31, 304
  br i1 %32, label %33, label %43

33:                                               ; preds = %30
  %34 = load i32, i32* %8, align 4
  %35 = icmp slt i32 %34, 408
  br i1 %35, label %36, label %43

36:                                               ; preds = %33
  %37 = load i8*, i8** @atarist_page01, align 8
  %38 = load i32, i32* %8, align 4
  %39 = sub nsw i32 %38, 304
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8, i8* %37, i64 %40
  %42 = load i8, i8* %41, align 1
  store i8 %42, i8* %10, align 1
  br label %114

43:                                               ; preds = %33, %30
  %44 = load i32, i32* %8, align 4
  %45 = icmp sge i32 %44, 912
  br i1 %45, label %46, label %56

46:                                               ; preds = %43
  %47 = load i32, i32* %8, align 4
  %48 = icmp slt i32 %47, 968
  br i1 %48, label %49, label %56

49:                                               ; preds = %46
  %50 = load i8*, i8** @atarist_page03, align 8
  %51 = load i32, i32* %8, align 4
  %52 = sub nsw i32 %51, 912
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8, i8* %50, i64 %53
  %55 = load i8, i8* %54, align 1
  store i8 %55, i8* %10, align 1
  br label %113

56:                                               ; preds = %46, %43
  %57 = load i32, i32* %8, align 4
  %58 = icmp sge i32 %57, 1488
  br i1 %58, label %59, label %69

59:                                               ; preds = %56
  %60 = load i32, i32* %8, align 4
  %61 = icmp slt i32 %60, 1520
  br i1 %61, label %62, label %69

62:                                               ; preds = %59
  %63 = load i8*, i8** @atarist_page05, align 8
  %64 = load i32, i32* %8, align 4
  %65 = sub nsw i32 %64, 1488
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i8, i8* %63, i64 %66
  %68 = load i8, i8* %67, align 1
  store i8 %68, i8* %10, align 1
  br label %112

69:                                               ; preds = %59, %56
  %70 = load i32, i32* %8, align 4
  %71 = icmp eq i32 %70, 8224
  br i1 %71, label %72, label %73

72:                                               ; preds = %69
  store i8 -69, i8* %10, align 1
  br label %111

73:                                               ; preds = %69
  %74 = load i32, i32* %8, align 4
  %75 = icmp eq i32 %74, 8319
  br i1 %75, label %76, label %77

76:                                               ; preds = %73
  store i8 -4, i8* %10, align 1
  br label %110

77:                                               ; preds = %73
  %78 = load i32, i32* %8, align 4
  %79 = icmp eq i32 %78, 8482
  br i1 %79, label %80, label %81

80:                                               ; preds = %77
  store i8 -65, i8* %10, align 1
  br label %109

81:                                               ; preds = %77
  %82 = load i32, i32* %8, align 4
  %83 = icmp sge i32 %82, 8712
  br i1 %83, label %84, label %94

84:                                               ; preds = %81
  %85 = load i32, i32* %8, align 4
  %86 = icmp slt i32 %85, 8808
  br i1 %86, label %87, label %94

87:                                               ; preds = %84
  %88 = load i8*, i8** @atarist_page22, align 8
  %89 = load i32, i32* %8, align 4
  %90 = sub nsw i32 %89, 8712
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i8, i8* %88, i64 %91
  %93 = load i8, i8* %92, align 1
  store i8 %93, i8* %10, align 1
  br label %108

94:                                               ; preds = %84, %81
  %95 = load i32, i32* %8, align 4
  %96 = icmp sge i32 %95, 8976
  br i1 %96, label %97, label %107

97:                                               ; preds = %94
  %98 = load i32, i32* %8, align 4
  %99 = icmp slt i32 %98, 9000
  br i1 %99, label %100, label %107

100:                                              ; preds = %97
  %101 = load i8*, i8** @atarist_page23, align 8
  %102 = load i32, i32* %8, align 4
  %103 = sub nsw i32 %102, 8976
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i8, i8* %101, i64 %104
  %106 = load i8, i8* %105, align 1
  store i8 %106, i8* %10, align 1
  br label %107

107:                                              ; preds = %100, %97, %94
  br label %108

108:                                              ; preds = %107, %87
  br label %109

109:                                              ; preds = %108, %80
  br label %110

110:                                              ; preds = %109, %76
  br label %111

111:                                              ; preds = %110, %72
  br label %112

112:                                              ; preds = %111, %62
  br label %113

113:                                              ; preds = %112, %49
  br label %114

114:                                              ; preds = %113, %36
  br label %115

115:                                              ; preds = %114, %23
  br label %116

116:                                              ; preds = %115
  %117 = load i8, i8* %10, align 1
  %118 = zext i8 %117 to i32
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %116
  %121 = load i8, i8* %10, align 1
  %122 = load i8*, i8** %7, align 8
  store i8 %121, i8* %122, align 1
  store i32 1, i32* %5, align 4
  br label %125

123:                                              ; preds = %116
  %124 = load i32, i32* @RET_ILUNI, align 4
  store i32 %124, i32* %5, align 4
  br label %125

125:                                              ; preds = %123, %120, %13
  %126 = load i32, i32* %5, align 4
  ret i32 %126
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
