; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/tools/extr_cdtest.c_IsTOCValid.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/tools/extr_cdtest.c_IsTOCValid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @IsTOCValid(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 1, i32* %4, align 4
  %6 = load i32*, i32** %3, align 8
  %7 = getelementptr inbounds i32, i32* %6, i64 0
  %8 = load i32, i32* %7, align 4
  %9 = and i32 %8, 16777215
  %10 = icmp ne i32 %9, 150
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %145

12:                                               ; preds = %1
  store i32 1, i32* %5, align 4
  br label %13

13:                                               ; preds = %43, %12
  %14 = load i32, i32* %5, align 4
  %15 = icmp slt i32 %14, 99
  br i1 %15, label %16, label %46

16:                                               ; preds = %13
  %17 = load i32*, i32** %3, align 8
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = icmp eq i32 %21, -1
  br i1 %22, label %23, label %24

23:                                               ; preds = %16
  br label %46

24:                                               ; preds = %16
  %25 = load i32, i32* %4, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %4, align 4
  %27 = load i32*, i32** %3, align 8
  %28 = load i32, i32* %5, align 4
  %29 = sub nsw i32 %28, 1
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %27, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = and i32 %32, 16777215
  %34 = load i32*, i32** %3, align 8
  %35 = load i32, i32* %5, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = and i32 %38, 16777215
  %40 = icmp sge i32 %33, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %24
  store i32 0, i32* %2, align 4
  br label %145

42:                                               ; preds = %24
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %5, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %5, align 4
  br label %13

46:                                               ; preds = %23, %13
  %47 = load i32*, i32** %3, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 99
  %49 = load i32, i32* %48, align 4
  %50 = and i32 %49, 255
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %46
  store i32 0, i32* %2, align 4
  br label %145

53:                                               ; preds = %46
  %54 = load i32*, i32** %3, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 99
  %56 = load i32, i32* %55, align 4
  %57 = and i32 %56, 65280
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %53
  store i32 0, i32* %2, align 4
  br label %145

60:                                               ; preds = %53
  %61 = load i32*, i32** %3, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 99
  %63 = load i32, i32* %62, align 4
  %64 = and i32 %63, 16711680
  %65 = ashr i32 %64, 16
  %66 = icmp ne i32 %65, 1
  br i1 %66, label %67, label %68

67:                                               ; preds = %60
  store i32 0, i32* %2, align 4
  br label %145

68:                                               ; preds = %60
  %69 = load i32*, i32** %3, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 99
  %71 = load i32, i32* %70, align 4
  %72 = and i32 %71, -16777216
  %73 = load i32*, i32** %3, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 0
  %75 = load i32, i32* %74, align 4
  %76 = and i32 %75, -16777216
  %77 = icmp ne i32 %72, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %68
  store i32 0, i32* %2, align 4
  br label %145

79:                                               ; preds = %68
  %80 = load i32*, i32** %3, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 100
  %82 = load i32, i32* %81, align 4
  %83 = and i32 %82, 255
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %79
  store i32 0, i32* %2, align 4
  br label %145

86:                                               ; preds = %79
  %87 = load i32*, i32** %3, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 100
  %89 = load i32, i32* %88, align 4
  %90 = and i32 %89, 65280
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %86
  store i32 0, i32* %2, align 4
  br label %145

93:                                               ; preds = %86
  %94 = load i32*, i32** %3, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 100
  %96 = load i32, i32* %95, align 4
  %97 = and i32 %96, 16711680
  %98 = ashr i32 %97, 16
  %99 = load i32, i32* %4, align 4
  %100 = icmp ne i32 %98, %99
  br i1 %100, label %101, label %102

101:                                              ; preds = %93
  store i32 0, i32* %2, align 4
  br label %145

102:                                              ; preds = %93
  %103 = load i32*, i32** %3, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 100
  %105 = load i32, i32* %104, align 4
  %106 = and i32 %105, -16777216
  %107 = load i32*, i32** %3, align 8
  %108 = load i32, i32* %4, align 4
  %109 = sub nsw i32 %108, 1
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %107, i64 %110
  %112 = load i32, i32* %111, align 4
  %113 = and i32 %112, -16777216
  %114 = icmp ne i32 %106, %113
  br i1 %114, label %115, label %116

115:                                              ; preds = %102
  store i32 0, i32* %2, align 4
  br label %145

116:                                              ; preds = %102
  %117 = load i32*, i32** %3, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 101
  %119 = load i32, i32* %118, align 4
  %120 = and i32 %119, 16777215
  %121 = load i32*, i32** %3, align 8
  %122 = load i32, i32* %4, align 4
  %123 = sub nsw i32 %122, 1
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32, i32* %121, i64 %124
  %126 = load i32, i32* %125, align 4
  %127 = and i32 %126, 16777215
  %128 = icmp sle i32 %120, %127
  br i1 %128, label %129, label %130

129:                                              ; preds = %116
  store i32 0, i32* %2, align 4
  br label %145

130:                                              ; preds = %116
  %131 = load i32*, i32** %3, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 101
  %133 = load i32, i32* %132, align 4
  %134 = and i32 %133, -16777216
  %135 = load i32*, i32** %3, align 8
  %136 = load i32, i32* %4, align 4
  %137 = sub nsw i32 %136, 1
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i32, i32* %135, i64 %138
  %140 = load i32, i32* %139, align 4
  %141 = and i32 %140, -16777216
  %142 = icmp ne i32 %134, %141
  br i1 %142, label %143, label %144

143:                                              ; preds = %130
  store i32 0, i32* %2, align 4
  br label %145

144:                                              ; preds = %130
  store i32 1, i32* %2, align 4
  br label %145

145:                                              ; preds = %144, %143, %129, %115, %101, %92, %85, %78, %67, %59, %52, %41, %11
  %146 = load i32, i32* %2, align 4
  ret i32 %146
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
