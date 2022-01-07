; ModuleID = '/home/carl/AnghaBench/TDengine/deps/iconv/extr_cp864.h_cp864_wctomb.c'
source_filename = "/home/carl/AnghaBench/TDengine/deps/iconv/extr_cp864.h_cp864_wctomb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cp864_page00 = common dso_local global i8* null, align 8
@cp864_page00_1 = common dso_local global i8* null, align 8
@cp864_page06 = common dso_local global i8* null, align 8
@cp864_page22 = common dso_local global i8* null, align 8
@cp864_page25 = common dso_local global i8* null, align 8
@cp864_pagefe = common dso_local global i8* null, align 8
@RET_ILUNI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32, i32)* @cp864_wctomb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cp864_wctomb(i32 %0, i8* %1, i32 %2, i32 %3) #0 {
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
  %12 = icmp slt i32 %11, 32
  br i1 %12, label %13, label %17

13:                                               ; preds = %4
  %14 = load i32, i32* %8, align 4
  %15 = trunc i32 %14 to i8
  %16 = load i8*, i8** %7, align 8
  store i8 %15, i8* %16, align 1
  store i32 1, i32* %5, align 4
  br label %140

17:                                               ; preds = %4
  %18 = load i32, i32* %8, align 4
  %19 = icmp sge i32 %18, 32
  br i1 %19, label %20, label %30

20:                                               ; preds = %17
  %21 = load i32, i32* %8, align 4
  %22 = icmp slt i32 %21, 40
  br i1 %22, label %23, label %30

23:                                               ; preds = %20
  %24 = load i8*, i8** @cp864_page00, align 8
  %25 = load i32, i32* %8, align 4
  %26 = sub nsw i32 %25, 32
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8, i8* %24, i64 %27
  %29 = load i8, i8* %28, align 1
  store i8 %29, i8* %10, align 1
  br label %130

30:                                               ; preds = %20, %17
  %31 = load i32, i32* %8, align 4
  %32 = icmp sge i32 %31, 40
  br i1 %32, label %33, label %39

33:                                               ; preds = %30
  %34 = load i32, i32* %8, align 4
  %35 = icmp slt i32 %34, 128
  br i1 %35, label %36, label %39

36:                                               ; preds = %33
  %37 = load i32, i32* %8, align 4
  %38 = trunc i32 %37 to i8
  store i8 %38, i8* %10, align 1
  br label %129

39:                                               ; preds = %33, %30
  %40 = load i32, i32* %8, align 4
  %41 = icmp sge i32 %40, 160
  br i1 %41, label %42, label %52

42:                                               ; preds = %39
  %43 = load i32, i32* %8, align 4
  %44 = icmp slt i32 %43, 248
  br i1 %44, label %45, label %52

45:                                               ; preds = %42
  %46 = load i8*, i8** @cp864_page00_1, align 8
  %47 = load i32, i32* %8, align 4
  %48 = sub nsw i32 %47, 160
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8, i8* %46, i64 %49
  %51 = load i8, i8* %50, align 1
  store i8 %51, i8* %10, align 1
  br label %128

52:                                               ; preds = %42, %39
  %53 = load i32, i32* %8, align 4
  %54 = icmp eq i32 %53, 946
  br i1 %54, label %55, label %56

55:                                               ; preds = %52
  store i8 -112, i8* %10, align 1
  br label %127

56:                                               ; preds = %52
  %57 = load i32, i32* %8, align 4
  %58 = icmp eq i32 %57, 966
  br i1 %58, label %59, label %60

59:                                               ; preds = %56
  store i8 -110, i8* %10, align 1
  br label %126

60:                                               ; preds = %56
  %61 = load i32, i32* %8, align 4
  %62 = icmp sge i32 %61, 1544
  br i1 %62, label %63, label %73

63:                                               ; preds = %60
  %64 = load i32, i32* %8, align 4
  %65 = icmp slt i32 %64, 1648
  br i1 %65, label %66, label %73

66:                                               ; preds = %63
  %67 = load i8*, i8** @cp864_page06, align 8
  %68 = load i32, i32* %8, align 4
  %69 = sub nsw i32 %68, 1544
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i8, i8* %67, i64 %70
  %72 = load i8, i8* %71, align 1
  store i8 %72, i8* %10, align 1
  br label %125

73:                                               ; preds = %63, %60
  %74 = load i32, i32* %8, align 4
  %75 = icmp sge i32 %74, 8728
  br i1 %75, label %76, label %86

76:                                               ; preds = %73
  %77 = load i32, i32* %8, align 4
  %78 = icmp slt i32 %77, 8784
  br i1 %78, label %79, label %86

79:                                               ; preds = %76
  %80 = load i8*, i8** @cp864_page22, align 8
  %81 = load i32, i32* %8, align 4
  %82 = sub nsw i32 %81, 8728
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i8, i8* %80, i64 %83
  %85 = load i8, i8* %84, align 1
  store i8 %85, i8* %10, align 1
  br label %124

86:                                               ; preds = %76, %73
  %87 = load i32, i32* %8, align 4
  %88 = icmp sge i32 %87, 9472
  br i1 %88, label %89, label %99

89:                                               ; preds = %86
  %90 = load i32, i32* %8, align 4
  %91 = icmp slt i32 %90, 9536
  br i1 %91, label %92, label %99

92:                                               ; preds = %89
  %93 = load i8*, i8** @cp864_page25, align 8
  %94 = load i32, i32* %8, align 4
  %95 = sub nsw i32 %94, 9472
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i8, i8* %93, i64 %96
  %98 = load i8, i8* %97, align 1
  store i8 %98, i8* %10, align 1
  br label %123

99:                                               ; preds = %89, %86
  %100 = load i32, i32* %8, align 4
  %101 = icmp eq i32 %100, 9618
  br i1 %101, label %102, label %103

102:                                              ; preds = %99
  store i8 -124, i8* %10, align 1
  br label %122

103:                                              ; preds = %99
  %104 = load i32, i32* %8, align 4
  %105 = icmp eq i32 %104, 9632
  br i1 %105, label %106, label %107

106:                                              ; preds = %103
  store i8 -2, i8* %10, align 1
  br label %121

107:                                              ; preds = %103
  %108 = load i32, i32* %8, align 4
  %109 = icmp sge i32 %108, 65144
  br i1 %109, label %110, label %120

110:                                              ; preds = %107
  %111 = load i32, i32* %8, align 4
  %112 = icmp slt i32 %111, 65280
  br i1 %112, label %113, label %120

113:                                              ; preds = %110
  %114 = load i8*, i8** @cp864_pagefe, align 8
  %115 = load i32, i32* %8, align 4
  %116 = sub nsw i32 %115, 65144
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i8, i8* %114, i64 %117
  %119 = load i8, i8* %118, align 1
  store i8 %119, i8* %10, align 1
  br label %120

120:                                              ; preds = %113, %110, %107
  br label %121

121:                                              ; preds = %120, %106
  br label %122

122:                                              ; preds = %121, %102
  br label %123

123:                                              ; preds = %122, %92
  br label %124

124:                                              ; preds = %123, %79
  br label %125

125:                                              ; preds = %124, %66
  br label %126

126:                                              ; preds = %125, %59
  br label %127

127:                                              ; preds = %126, %55
  br label %128

128:                                              ; preds = %127, %45
  br label %129

129:                                              ; preds = %128, %36
  br label %130

130:                                              ; preds = %129, %23
  br label %131

131:                                              ; preds = %130
  %132 = load i8, i8* %10, align 1
  %133 = zext i8 %132 to i32
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %138

135:                                              ; preds = %131
  %136 = load i8, i8* %10, align 1
  %137 = load i8*, i8** %7, align 8
  store i8 %136, i8* %137, align 1
  store i32 1, i32* %5, align 4
  br label %140

138:                                              ; preds = %131
  %139 = load i32, i32* @RET_ILUNI, align 4
  store i32 %139, i32* %5, align 4
  br label %140

140:                                              ; preds = %138, %135, %13
  %141 = load i32, i32* %5, align 4
  ret i32 %141
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
