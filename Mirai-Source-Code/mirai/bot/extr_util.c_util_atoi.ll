; ModuleID = '/home/carl/AnghaBench/Mirai-Source-Code/mirai/bot/extr_util.c_util_atoi.c'
source_filename = "/home/carl/AnghaBench/Mirai-Source-Code/mirai/bot/extr_util.c_util_atoi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LONG_MIN = common dso_local global i64 0, align 8
@LONG_MAX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @util_atoi(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  store i64 0, i64* %5, align 8
  store i32 0, i32* %8, align 4
  br label %11

11:                                               ; preds = %16, %2
  %12 = load i8*, i8** %3, align 8
  %13 = getelementptr inbounds i8, i8* %12, i32 1
  store i8* %13, i8** %3, align 8
  %14 = load i8, i8* %12, align 1
  %15 = sext i8 %14 to i32
  store i32 %15, i32* %6, align 4
  br label %16

16:                                               ; preds = %11
  %17 = load i32, i32* %6, align 4
  %18 = call i64 @util_isspace(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %11, label %20

20:                                               ; preds = %16
  %21 = load i32, i32* %6, align 4
  %22 = icmp eq i32 %21, 45
  br i1 %22, label %23, label %28

23:                                               ; preds = %20
  store i32 1, i32* %8, align 4
  %24 = load i8*, i8** %3, align 8
  %25 = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %25, i8** %3, align 8
  %26 = load i8, i8* %24, align 1
  %27 = sext i8 %26 to i32
  store i32 %27, i32* %6, align 4
  br label %37

28:                                               ; preds = %20
  %29 = load i32, i32* %6, align 4
  %30 = icmp eq i32 %29, 43
  br i1 %30, label %31, label %36

31:                                               ; preds = %28
  %32 = load i8*, i8** %3, align 8
  %33 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %33, i8** %3, align 8
  %34 = load i8, i8* %32, align 1
  %35 = sext i8 %34 to i32
  store i32 %35, i32* %6, align 4
  br label %36

36:                                               ; preds = %31, %28
  br label %37

37:                                               ; preds = %36, %23
  %38 = load i32, i32* %8, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %37
  %41 = load i64, i64* @LONG_MIN, align 8
  %42 = sub i64 0, %41
  br label %45

43:                                               ; preds = %37
  %44 = load i64, i64* @LONG_MAX, align 8
  br label %45

45:                                               ; preds = %43, %40
  %46 = phi i64 [ %42, %40 ], [ %44, %43 ]
  store i64 %46, i64* %7, align 8
  %47 = load i64, i64* %7, align 8
  %48 = load i32, i32* %4, align 4
  %49 = sext i32 %48 to i64
  %50 = urem i64 %47, %49
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %10, align 4
  %52 = load i32, i32* %4, align 4
  %53 = sext i32 %52 to i64
  %54 = load i64, i64* %7, align 8
  %55 = udiv i64 %54, %53
  store i64 %55, i64* %7, align 8
  store i64 0, i64* %5, align 8
  store i32 0, i32* %9, align 4
  br label %56

56:                                               ; preds = %108, %45
  %57 = load i32, i32* %6, align 4
  %58 = call i64 @util_isdigit(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %56
  %61 = load i32, i32* %6, align 4
  %62 = sub nsw i32 %61, 48
  store i32 %62, i32* %6, align 4
  br label %77

63:                                               ; preds = %56
  %64 = load i32, i32* %6, align 4
  %65 = call i64 @util_isalpha(i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %75

67:                                               ; preds = %63
  %68 = load i32, i32* %6, align 4
  %69 = call i64 @util_isupper(i32 %68)
  %70 = icmp ne i64 %69, 0
  %71 = zext i1 %70 to i64
  %72 = select i1 %70, i32 55, i32 87
  %73 = load i32, i32* %6, align 4
  %74 = sub nsw i32 %73, %72
  store i32 %74, i32* %6, align 4
  br label %76

75:                                               ; preds = %63
  br label %113

76:                                               ; preds = %67
  br label %77

77:                                               ; preds = %76, %60
  %78 = load i32, i32* %6, align 4
  %79 = load i32, i32* %4, align 4
  %80 = icmp sge i32 %78, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %77
  br label %113

82:                                               ; preds = %77
  %83 = load i32, i32* %9, align 4
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %97, label %85

85:                                               ; preds = %82
  %86 = load i64, i64* %5, align 8
  %87 = load i64, i64* %7, align 8
  %88 = icmp ugt i64 %86, %87
  br i1 %88, label %97, label %89

89:                                               ; preds = %85
  %90 = load i64, i64* %5, align 8
  %91 = load i64, i64* %7, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %98

93:                                               ; preds = %89
  %94 = load i32, i32* %6, align 4
  %95 = load i32, i32* %10, align 4
  %96 = icmp sgt i32 %94, %95
  br i1 %96, label %97, label %98

97:                                               ; preds = %93, %85, %82
  store i32 -1, i32* %9, align 4
  br label %107

98:                                               ; preds = %93, %89
  store i32 1, i32* %9, align 4
  %99 = load i32, i32* %4, align 4
  %100 = sext i32 %99 to i64
  %101 = load i64, i64* %5, align 8
  %102 = mul i64 %101, %100
  store i64 %102, i64* %5, align 8
  %103 = load i32, i32* %6, align 4
  %104 = sext i32 %103 to i64
  %105 = load i64, i64* %5, align 8
  %106 = add i64 %105, %104
  store i64 %106, i64* %5, align 8
  br label %107

107:                                              ; preds = %98, %97
  br label %108

108:                                              ; preds = %107
  %109 = load i8*, i8** %3, align 8
  %110 = getelementptr inbounds i8, i8* %109, i32 1
  store i8* %110, i8** %3, align 8
  %111 = load i8, i8* %109, align 1
  %112 = sext i8 %111 to i32
  store i32 %112, i32* %6, align 4
  br label %56

113:                                              ; preds = %81, %75
  %114 = load i32, i32* %9, align 4
  %115 = icmp slt i32 %114, 0
  br i1 %115, label %116, label %125

116:                                              ; preds = %113
  %117 = load i32, i32* %8, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %121

119:                                              ; preds = %116
  %120 = load i64, i64* @LONG_MIN, align 8
  br label %123

121:                                              ; preds = %116
  %122 = load i64, i64* @LONG_MAX, align 8
  br label %123

123:                                              ; preds = %121, %119
  %124 = phi i64 [ %120, %119 ], [ %122, %121 ]
  store i64 %124, i64* %5, align 8
  br label %132

125:                                              ; preds = %113
  %126 = load i32, i32* %8, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %131

128:                                              ; preds = %125
  %129 = load i64, i64* %5, align 8
  %130 = sub i64 0, %129
  store i64 %130, i64* %5, align 8
  br label %131

131:                                              ; preds = %128, %125
  br label %132

132:                                              ; preds = %131, %123
  %133 = load i64, i64* %5, align 8
  %134 = trunc i64 %133 to i32
  ret i32 %134
}

declare dso_local i64 @util_isspace(i32) #1

declare dso_local i64 @util_isdigit(i32) #1

declare dso_local i64 @util_isalpha(i32) #1

declare dso_local i64 @util_isupper(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
