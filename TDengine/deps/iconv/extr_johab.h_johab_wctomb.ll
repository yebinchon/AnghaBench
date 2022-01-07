; ModuleID = '/home/carl/AnghaBench/TDengine/deps/iconv/extr_johab.h_johab_wctomb.c'
source_filename = "/home/carl/AnghaBench/TDengine/deps/iconv/extr_johab.h_johab_wctomb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RET_ILUNI = common dso_local global i32 0, align 4
@RET_TOOSMALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32, i32)* @johab_wctomb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @johab_wctomb(i32 %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [2 x i8], align 1
  %11 = alloca i32, align 4
  %12 = alloca i8, align 1
  %13 = alloca i8, align 1
  %14 = alloca i32, align 4
  %15 = alloca i8, align 1
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp slt i32 %16, 128
  br i1 %17, label %18, label %25

18:                                               ; preds = %4
  %19 = load i32, i32* %8, align 4
  %20 = icmp ne i32 %19, 92
  br i1 %20, label %21, label %25

21:                                               ; preds = %18
  %22 = load i32, i32* %8, align 4
  %23 = trunc i32 %22 to i8
  %24 = load i8*, i8** %7, align 8
  store i8 %23, i8* %24, align 1
  store i32 1, i32* %5, align 4
  br label %153

25:                                               ; preds = %18, %4
  %26 = load i32, i32* %8, align 4
  %27 = icmp eq i32 %26, 8361
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  %29 = load i8*, i8** %7, align 8
  store i8 92, i8* %29, align 1
  store i32 1, i32* %5, align 4
  br label %153

30:                                               ; preds = %25
  %31 = load i32, i32* %6, align 4
  %32 = getelementptr inbounds [2 x i8], [2 x i8]* %10, i64 0, i64 0
  %33 = load i32, i32* %8, align 4
  %34 = call i32 @johab_hangul_wctomb(i32 %31, i8* %32, i32 %33, i32 2)
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* %11, align 4
  %36 = load i32, i32* @RET_ILUNI, align 4
  %37 = icmp ne i32 %35, %36
  br i1 %37, label %38, label %57

38:                                               ; preds = %30
  %39 = load i32, i32* %11, align 4
  %40 = icmp ne i32 %39, 2
  br i1 %40, label %41, label %43

41:                                               ; preds = %38
  %42 = call i32 (...) @abort() #3
  unreachable

43:                                               ; preds = %38
  %44 = load i32, i32* %9, align 4
  %45 = icmp slt i32 %44, 2
  br i1 %45, label %46, label %48

46:                                               ; preds = %43
  %47 = load i32, i32* @RET_TOOSMALL, align 4
  store i32 %47, i32* %5, align 4
  br label %153

48:                                               ; preds = %43
  %49 = getelementptr inbounds [2 x i8], [2 x i8]* %10, i64 0, i64 0
  %50 = load i8, i8* %49, align 1
  %51 = load i8*, i8** %7, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 0
  store i8 %50, i8* %52, align 1
  %53 = getelementptr inbounds [2 x i8], [2 x i8]* %10, i64 0, i64 1
  %54 = load i8, i8* %53, align 1
  %55 = load i8*, i8** %7, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 1
  store i8 %54, i8* %56, align 1
  store i32 2, i32* %5, align 4
  br label %153

57:                                               ; preds = %30
  %58 = load i32, i32* %6, align 4
  %59 = getelementptr inbounds [2 x i8], [2 x i8]* %10, i64 0, i64 0
  %60 = load i32, i32* %8, align 4
  %61 = call i32 @ksc5601_wctomb(i32 %58, i8* %59, i32 %60, i32 2)
  store i32 %61, i32* %11, align 4
  %62 = load i32, i32* %11, align 4
  %63 = load i32, i32* @RET_ILUNI, align 4
  %64 = icmp ne i32 %62, %63
  br i1 %64, label %65, label %151

65:                                               ; preds = %57
  %66 = load i32, i32* %11, align 4
  %67 = icmp ne i32 %66, 2
  br i1 %67, label %68, label %70

68:                                               ; preds = %65
  %69 = call i32 (...) @abort() #3
  unreachable

70:                                               ; preds = %65
  %71 = load i32, i32* %9, align 4
  %72 = icmp slt i32 %71, 2
  br i1 %72, label %73, label %75

73:                                               ; preds = %70
  %74 = load i32, i32* @RET_TOOSMALL, align 4
  store i32 %74, i32* %5, align 4
  br label %153

75:                                               ; preds = %70
  %76 = getelementptr inbounds [2 x i8], [2 x i8]* %10, i64 0, i64 0
  %77 = load i8, i8* %76, align 1
  store i8 %77, i8* %12, align 1
  %78 = getelementptr inbounds [2 x i8], [2 x i8]* %10, i64 0, i64 1
  %79 = load i8, i8* %78, align 1
  store i8 %79, i8* %13, align 1
  %80 = load i8, i8* %12, align 1
  %81 = zext i8 %80 to i32
  %82 = icmp sge i32 %81, 33
  br i1 %82, label %83, label %87

83:                                               ; preds = %75
  %84 = load i8, i8* %12, align 1
  %85 = zext i8 %84 to i32
  %86 = icmp sle i32 %85, 44
  br i1 %86, label %95, label %87

87:                                               ; preds = %83, %75
  %88 = load i8, i8* %12, align 1
  %89 = zext i8 %88 to i32
  %90 = icmp sge i32 %89, 74
  br i1 %90, label %91, label %150

91:                                               ; preds = %87
  %92 = load i8, i8* %12, align 1
  %93 = zext i8 %92 to i32
  %94 = icmp sle i32 %93, 125
  br i1 %94, label %95, label %150

95:                                               ; preds = %91, %83
  %96 = load i8, i8* %13, align 1
  %97 = zext i8 %96 to i32
  %98 = icmp sge i32 %97, 33
  br i1 %98, label %99, label %150

99:                                               ; preds = %95
  %100 = load i8, i8* %13, align 1
  %101 = zext i8 %100 to i32
  %102 = icmp sle i32 %101, 126
  br i1 %102, label %103, label %150

103:                                              ; preds = %99
  %104 = load i8, i8* %12, align 1
  %105 = zext i8 %104 to i32
  %106 = icmp slt i32 %105, 74
  br i1 %106, label %107, label %112

107:                                              ; preds = %103
  %108 = load i8, i8* %12, align 1
  %109 = zext i8 %108 to i32
  %110 = sub nsw i32 %109, 33
  %111 = add nsw i32 %110, 434
  br label %117

112:                                              ; preds = %103
  %113 = load i8, i8* %12, align 1
  %114 = zext i8 %113 to i32
  %115 = sub nsw i32 %114, 33
  %116 = add nsw i32 %115, 407
  br label %117

117:                                              ; preds = %112, %107
  %118 = phi i32 [ %111, %107 ], [ %116, %112 ]
  store i32 %118, i32* %14, align 4
  %119 = load i32, i32* %14, align 4
  %120 = and i32 %119, 1
  %121 = icmp ne i32 %120, 0
  %122 = zext i1 %121 to i64
  %123 = select i1 %121, i32 94, i32 0
  %124 = load i8, i8* %13, align 1
  %125 = zext i8 %124 to i32
  %126 = sub nsw i32 %125, 33
  %127 = add nsw i32 %123, %126
  %128 = trunc i32 %127 to i8
  store i8 %128, i8* %15, align 1
  %129 = load i32, i32* %14, align 4
  %130 = lshr i32 %129, 1
  %131 = trunc i32 %130 to i8
  %132 = load i8*, i8** %7, align 8
  %133 = getelementptr inbounds i8, i8* %132, i64 0
  store i8 %131, i8* %133, align 1
  %134 = load i8, i8* %15, align 1
  %135 = zext i8 %134 to i32
  %136 = icmp slt i32 %135, 78
  br i1 %136, label %137, label %141

137:                                              ; preds = %117
  %138 = load i8, i8* %15, align 1
  %139 = zext i8 %138 to i32
  %140 = add nsw i32 %139, 49
  br label %145

141:                                              ; preds = %117
  %142 = load i8, i8* %15, align 1
  %143 = zext i8 %142 to i32
  %144 = add nsw i32 %143, 67
  br label %145

145:                                              ; preds = %141, %137
  %146 = phi i32 [ %140, %137 ], [ %144, %141 ]
  %147 = trunc i32 %146 to i8
  %148 = load i8*, i8** %7, align 8
  %149 = getelementptr inbounds i8, i8* %148, i64 1
  store i8 %147, i8* %149, align 1
  store i32 2, i32* %5, align 4
  br label %153

150:                                              ; preds = %99, %95, %91, %87
  br label %151

151:                                              ; preds = %150, %57
  %152 = load i32, i32* @RET_ILUNI, align 4
  store i32 %152, i32* %5, align 4
  br label %153

153:                                              ; preds = %151, %145, %73, %48, %46, %28, %21
  %154 = load i32, i32* %5, align 4
  ret i32 %154
}

declare dso_local i32 @johab_hangul_wctomb(i32, i8*, i32, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i32 @ksc5601_wctomb(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
