; ModuleID = '/home/carl/AnghaBench/TDengine/deps/iconv/extr_cp862.h_cp862_wctomb.c'
source_filename = "/home/carl/AnghaBench/TDengine/deps/iconv/extr_cp862.h_cp862_wctomb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cp862_page00 = common dso_local global i8* null, align 8
@cp862_page03 = common dso_local global i8* null, align 8
@cp862_page22 = common dso_local global i8* null, align 8
@cp862_page25 = common dso_local global i8* null, align 8
@RET_ILUNI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32, i32)* @cp862_wctomb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cp862_wctomb(i32 %0, i8* %1, i32 %2, i32 %3) #0 {
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
  br label %124

17:                                               ; preds = %4
  %18 = load i32, i32* %8, align 4
  %19 = icmp sge i32 %18, 160
  br i1 %19, label %20, label %30

20:                                               ; preds = %17
  %21 = load i32, i32* %8, align 4
  %22 = icmp slt i32 %21, 256
  br i1 %22, label %23, label %30

23:                                               ; preds = %20
  %24 = load i8*, i8** @cp862_page00, align 8
  %25 = load i32, i32* %8, align 4
  %26 = sub nsw i32 %25, 160
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8, i8* %24, i64 %27
  %29 = load i8, i8* %28, align 1
  store i8 %29, i8* %10, align 1
  br label %114

30:                                               ; preds = %20, %17
  %31 = load i32, i32* %8, align 4
  %32 = icmp eq i32 %31, 402
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  store i8 -97, i8* %10, align 1
  br label %113

34:                                               ; preds = %30
  %35 = load i32, i32* %8, align 4
  %36 = icmp sge i32 %35, 912
  br i1 %36, label %37, label %47

37:                                               ; preds = %34
  %38 = load i32, i32* %8, align 4
  %39 = icmp slt i32 %38, 968
  br i1 %39, label %40, label %47

40:                                               ; preds = %37
  %41 = load i8*, i8** @cp862_page03, align 8
  %42 = load i32, i32* %8, align 4
  %43 = sub nsw i32 %42, 912
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8, i8* %41, i64 %44
  %46 = load i8, i8* %45, align 1
  store i8 %46, i8* %10, align 1
  br label %112

47:                                               ; preds = %37, %34
  %48 = load i32, i32* %8, align 4
  %49 = icmp sge i32 %48, 1488
  br i1 %49, label %50, label %57

50:                                               ; preds = %47
  %51 = load i32, i32* %8, align 4
  %52 = icmp slt i32 %51, 1515
  br i1 %52, label %53, label %57

53:                                               ; preds = %50
  %54 = load i32, i32* %8, align 4
  %55 = sub nsw i32 %54, 1360
  %56 = trunc i32 %55 to i8
  store i8 %56, i8* %10, align 1
  br label %111

57:                                               ; preds = %50, %47
  %58 = load i32, i32* %8, align 4
  %59 = icmp eq i32 %58, 8319
  br i1 %59, label %60, label %61

60:                                               ; preds = %57
  store i8 -4, i8* %10, align 1
  br label %110

61:                                               ; preds = %57
  %62 = load i32, i32* %8, align 4
  %63 = icmp eq i32 %62, 8359
  br i1 %63, label %64, label %65

64:                                               ; preds = %61
  store i8 -98, i8* %10, align 1
  br label %109

65:                                               ; preds = %61
  %66 = load i32, i32* %8, align 4
  %67 = icmp sge i32 %66, 8728
  br i1 %67, label %68, label %78

68:                                               ; preds = %65
  %69 = load i32, i32* %8, align 4
  %70 = icmp slt i32 %69, 8808
  br i1 %70, label %71, label %78

71:                                               ; preds = %68
  %72 = load i8*, i8** @cp862_page22, align 8
  %73 = load i32, i32* %8, align 4
  %74 = sub nsw i32 %73, 8728
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i8, i8* %72, i64 %75
  %77 = load i8, i8* %76, align 1
  store i8 %77, i8* %10, align 1
  br label %108

78:                                               ; preds = %68, %65
  %79 = load i32, i32* %8, align 4
  %80 = icmp eq i32 %79, 8976
  br i1 %80, label %81, label %82

81:                                               ; preds = %78
  store i8 -87, i8* %10, align 1
  br label %107

82:                                               ; preds = %78
  %83 = load i32, i32* %8, align 4
  %84 = icmp sge i32 %83, 8992
  br i1 %84, label %85, label %92

85:                                               ; preds = %82
  %86 = load i32, i32* %8, align 4
  %87 = icmp slt i32 %86, 8994
  br i1 %87, label %88, label %92

88:                                               ; preds = %85
  %89 = load i32, i32* %8, align 4
  %90 = sub nsw i32 %89, 8748
  %91 = trunc i32 %90 to i8
  store i8 %91, i8* %10, align 1
  br label %106

92:                                               ; preds = %85, %82
  %93 = load i32, i32* %8, align 4
  %94 = icmp sge i32 %93, 9472
  br i1 %94, label %95, label %105

95:                                               ; preds = %92
  %96 = load i32, i32* %8, align 4
  %97 = icmp slt i32 %96, 9640
  br i1 %97, label %98, label %105

98:                                               ; preds = %95
  %99 = load i8*, i8** @cp862_page25, align 8
  %100 = load i32, i32* %8, align 4
  %101 = sub nsw i32 %100, 9472
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i8, i8* %99, i64 %102
  %104 = load i8, i8* %103, align 1
  store i8 %104, i8* %10, align 1
  br label %105

105:                                              ; preds = %98, %95, %92
  br label %106

106:                                              ; preds = %105, %88
  br label %107

107:                                              ; preds = %106, %81
  br label %108

108:                                              ; preds = %107, %71
  br label %109

109:                                              ; preds = %108, %64
  br label %110

110:                                              ; preds = %109, %60
  br label %111

111:                                              ; preds = %110, %53
  br label %112

112:                                              ; preds = %111, %40
  br label %113

113:                                              ; preds = %112, %33
  br label %114

114:                                              ; preds = %113, %23
  br label %115

115:                                              ; preds = %114
  %116 = load i8, i8* %10, align 1
  %117 = zext i8 %116 to i32
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %122

119:                                              ; preds = %115
  %120 = load i8, i8* %10, align 1
  %121 = load i8*, i8** %7, align 8
  store i8 %120, i8* %121, align 1
  store i32 1, i32* %5, align 4
  br label %124

122:                                              ; preds = %115
  %123 = load i32, i32* @RET_ILUNI, align 4
  store i32 %123, i32* %5, align 4
  br label %124

124:                                              ; preds = %122, %119, %13
  %125 = load i32, i32* %5, align 4
  ret i32 %125
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
