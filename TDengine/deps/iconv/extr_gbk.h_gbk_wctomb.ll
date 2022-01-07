; ModuleID = '/home/carl/AnghaBench/TDengine/deps/iconv/extr_gbk.h_gbk_wctomb.c'
source_filename = "/home/carl/AnghaBench/TDengine/deps/iconv/extr_gbk.h_gbk_wctomb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RET_ILUNI = common dso_local global i32 0, align 4
@RET_TOOSMALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32, i32)* @gbk_wctomb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gbk_wctomb(i32 %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [2 x i8], align 1
  %11 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* %8, align 4
  %13 = icmp ne i32 %12, 12539
  br i1 %13, label %14, label %51

14:                                               ; preds = %4
  %15 = load i32, i32* %8, align 4
  %16 = icmp ne i32 %15, 8213
  br i1 %16, label %17, label %51

17:                                               ; preds = %14
  %18 = load i32, i32* %6, align 4
  %19 = getelementptr inbounds [2 x i8], [2 x i8]* %10, i64 0, i64 0
  %20 = load i32, i32* %8, align 4
  %21 = call i32 @gb2312_wctomb(i32 %18, i8* %19, i32 %20, i32 2)
  store i32 %21, i32* %11, align 4
  %22 = load i32, i32* %11, align 4
  %23 = load i32, i32* @RET_ILUNI, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %25, label %50

25:                                               ; preds = %17
  %26 = load i32, i32* %11, align 4
  %27 = icmp ne i32 %26, 2
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  %29 = call i32 (...) @abort() #3
  unreachable

30:                                               ; preds = %25
  %31 = load i32, i32* %9, align 4
  %32 = icmp slt i32 %31, 2
  br i1 %32, label %33, label %35

33:                                               ; preds = %30
  %34 = load i32, i32* @RET_TOOSMALL, align 4
  store i32 %34, i32* %5, align 4
  br label %153

35:                                               ; preds = %30
  %36 = getelementptr inbounds [2 x i8], [2 x i8]* %10, i64 0, i64 0
  %37 = load i8, i8* %36, align 1
  %38 = zext i8 %37 to i32
  %39 = add nsw i32 %38, 128
  %40 = trunc i32 %39 to i8
  %41 = load i8*, i8** %7, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 0
  store i8 %40, i8* %42, align 1
  %43 = getelementptr inbounds [2 x i8], [2 x i8]* %10, i64 0, i64 1
  %44 = load i8, i8* %43, align 1
  %45 = zext i8 %44 to i32
  %46 = add nsw i32 %45, 128
  %47 = trunc i32 %46 to i8
  %48 = load i8*, i8** %7, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 1
  store i8 %47, i8* %49, align 1
  store i32 2, i32* %5, align 4
  br label %153

50:                                               ; preds = %17
  br label %51

51:                                               ; preds = %50, %14, %4
  %52 = load i32, i32* %6, align 4
  %53 = getelementptr inbounds [2 x i8], [2 x i8]* %10, i64 0, i64 0
  %54 = load i32, i32* %8, align 4
  %55 = call i32 @gbkext_inv_wctomb(i32 %52, i8* %53, i32 %54, i32 2)
  store i32 %55, i32* %11, align 4
  %56 = load i32, i32* %11, align 4
  %57 = load i32, i32* @RET_ILUNI, align 4
  %58 = icmp ne i32 %56, %57
  br i1 %58, label %59, label %78

59:                                               ; preds = %51
  %60 = load i32, i32* %11, align 4
  %61 = icmp ne i32 %60, 2
  br i1 %61, label %62, label %64

62:                                               ; preds = %59
  %63 = call i32 (...) @abort() #3
  unreachable

64:                                               ; preds = %59
  %65 = load i32, i32* %9, align 4
  %66 = icmp slt i32 %65, 2
  br i1 %66, label %67, label %69

67:                                               ; preds = %64
  %68 = load i32, i32* @RET_TOOSMALL, align 4
  store i32 %68, i32* %5, align 4
  br label %153

69:                                               ; preds = %64
  %70 = getelementptr inbounds [2 x i8], [2 x i8]* %10, i64 0, i64 0
  %71 = load i8, i8* %70, align 1
  %72 = load i8*, i8** %7, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 0
  store i8 %71, i8* %73, align 1
  %74 = getelementptr inbounds [2 x i8], [2 x i8]* %10, i64 0, i64 1
  %75 = load i8, i8* %74, align 1
  %76 = load i8*, i8** %7, align 8
  %77 = getelementptr inbounds i8, i8* %76, i64 1
  store i8 %75, i8* %77, align 1
  store i32 2, i32* %5, align 4
  br label %153

78:                                               ; preds = %51
  %79 = load i32, i32* %8, align 4
  %80 = icmp sge i32 %79, 8560
  br i1 %80, label %81, label %98

81:                                               ; preds = %78
  %82 = load i32, i32* %8, align 4
  %83 = icmp sle i32 %82, 8569
  br i1 %83, label %84, label %98

84:                                               ; preds = %81
  %85 = load i32, i32* %9, align 4
  %86 = icmp slt i32 %85, 2
  br i1 %86, label %87, label %89

87:                                               ; preds = %84
  %88 = load i32, i32* @RET_TOOSMALL, align 4
  store i32 %88, i32* %5, align 4
  br label %153

89:                                               ; preds = %84
  %90 = load i8*, i8** %7, align 8
  %91 = getelementptr inbounds i8, i8* %90, i64 0
  store i8 -94, i8* %91, align 1
  %92 = load i32, i32* %8, align 4
  %93 = sub nsw i32 %92, 8560
  %94 = add nsw i32 161, %93
  %95 = trunc i32 %94 to i8
  %96 = load i8*, i8** %7, align 8
  %97 = getelementptr inbounds i8, i8* %96, i64 1
  store i8 %95, i8* %97, align 1
  store i32 2, i32* %5, align 4
  br label %153

98:                                               ; preds = %81, %78
  %99 = load i32, i32* %6, align 4
  %100 = getelementptr inbounds [2 x i8], [2 x i8]* %10, i64 0, i64 0
  %101 = load i32, i32* %8, align 4
  %102 = call i32 @cp936ext_wctomb(i32 %99, i8* %100, i32 %101, i32 2)
  store i32 %102, i32* %11, align 4
  %103 = load i32, i32* %11, align 4
  %104 = load i32, i32* @RET_ILUNI, align 4
  %105 = icmp ne i32 %103, %104
  br i1 %105, label %106, label %125

106:                                              ; preds = %98
  %107 = load i32, i32* %11, align 4
  %108 = icmp ne i32 %107, 2
  br i1 %108, label %109, label %111

109:                                              ; preds = %106
  %110 = call i32 (...) @abort() #3
  unreachable

111:                                              ; preds = %106
  %112 = load i32, i32* %9, align 4
  %113 = icmp slt i32 %112, 2
  br i1 %113, label %114, label %116

114:                                              ; preds = %111
  %115 = load i32, i32* @RET_TOOSMALL, align 4
  store i32 %115, i32* %5, align 4
  br label %153

116:                                              ; preds = %111
  %117 = getelementptr inbounds [2 x i8], [2 x i8]* %10, i64 0, i64 0
  %118 = load i8, i8* %117, align 1
  %119 = load i8*, i8** %7, align 8
  %120 = getelementptr inbounds i8, i8* %119, i64 0
  store i8 %118, i8* %120, align 1
  %121 = getelementptr inbounds [2 x i8], [2 x i8]* %10, i64 0, i64 1
  %122 = load i8, i8* %121, align 1
  %123 = load i8*, i8** %7, align 8
  %124 = getelementptr inbounds i8, i8* %123, i64 1
  store i8 %122, i8* %124, align 1
  store i32 2, i32* %5, align 4
  br label %153

125:                                              ; preds = %98
  %126 = load i32, i32* %8, align 4
  %127 = icmp eq i32 %126, 183
  br i1 %127, label %128, label %138

128:                                              ; preds = %125
  %129 = load i32, i32* %9, align 4
  %130 = icmp slt i32 %129, 2
  br i1 %130, label %131, label %133

131:                                              ; preds = %128
  %132 = load i32, i32* @RET_TOOSMALL, align 4
  store i32 %132, i32* %5, align 4
  br label %153

133:                                              ; preds = %128
  %134 = load i8*, i8** %7, align 8
  %135 = getelementptr inbounds i8, i8* %134, i64 0
  store i8 -95, i8* %135, align 1
  %136 = load i8*, i8** %7, align 8
  %137 = getelementptr inbounds i8, i8* %136, i64 1
  store i8 -92, i8* %137, align 1
  store i32 2, i32* %5, align 4
  br label %153

138:                                              ; preds = %125
  %139 = load i32, i32* %8, align 4
  %140 = icmp eq i32 %139, 8212
  br i1 %140, label %141, label %151

141:                                              ; preds = %138
  %142 = load i32, i32* %9, align 4
  %143 = icmp slt i32 %142, 2
  br i1 %143, label %144, label %146

144:                                              ; preds = %141
  %145 = load i32, i32* @RET_TOOSMALL, align 4
  store i32 %145, i32* %5, align 4
  br label %153

146:                                              ; preds = %141
  %147 = load i8*, i8** %7, align 8
  %148 = getelementptr inbounds i8, i8* %147, i64 0
  store i8 -95, i8* %148, align 1
  %149 = load i8*, i8** %7, align 8
  %150 = getelementptr inbounds i8, i8* %149, i64 1
  store i8 -86, i8* %150, align 1
  store i32 2, i32* %5, align 4
  br label %153

151:                                              ; preds = %138
  %152 = load i32, i32* @RET_ILUNI, align 4
  store i32 %152, i32* %5, align 4
  br label %153

153:                                              ; preds = %151, %146, %144, %133, %131, %116, %114, %89, %87, %69, %67, %35, %33
  %154 = load i32, i32* %5, align 4
  ret i32 %154
}

declare dso_local i32 @gb2312_wctomb(i32, i8*, i32, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i32 @gbkext_inv_wctomb(i32, i8*, i32, i32) #1

declare dso_local i32 @cp936ext_wctomb(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
