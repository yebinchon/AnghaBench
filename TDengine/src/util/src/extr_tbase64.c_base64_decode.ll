; ModuleID = '/home/carl/AnghaBench/TDengine/src/util/src/extr_tbase64.c_base64_decode.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/util/src/extr_tbase64.c_base64_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @base64_decode(i8* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %14 = load i32, i32* %6, align 4
  %15 = mul nsw i32 %14, 3
  %16 = sext i32 %15 to i64
  %17 = udiv i64 %16, 4
  %18 = add i64 %17, 1
  %19 = call i64 @malloc(i64 %18)
  %20 = inttoptr i64 %19 to i8*
  store i8* %20, i8** %12, align 8
  %21 = load i8*, i8** %12, align 8
  store i8* %21, i8** %13, align 8
  %22 = load i32*, i32** %7, align 8
  store i32 0, i32* %22, align 4
  br label %23

23:                                               ; preds = %3, %44, %139
  %24 = load i8*, i8** %5, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 0
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %23
  %30 = load i8*, i8** %13, align 8
  store i8 0, i8* %30, align 1
  %31 = load i8*, i8** %12, align 8
  store i8* %31, i8** %4, align 8
  br label %146

32:                                               ; preds = %23
  %33 = load i8*, i8** %5, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 0
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp eq i32 %36, 10
  br i1 %37, label %44, label %38

38:                                               ; preds = %32
  %39 = load i8*, i8** %5, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 0
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp eq i32 %42, 13
  br i1 %43, label %44, label %47

44:                                               ; preds = %38, %32
  %45 = load i8*, i8** %5, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 1
  store i8* %46, i8** %5, align 8
  br label %23

47:                                               ; preds = %38
  %48 = load i8*, i8** %5, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 0
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @CHAR64(i32 %52)
  %54 = icmp eq i32 %53, -1
  br i1 %54, label %55, label %56

55:                                               ; preds = %47
  br label %140

56:                                               ; preds = %47
  %57 = load i8*, i8** %5, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 1
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  store i32 %60, i32* %9, align 4
  %61 = load i32, i32* %9, align 4
  %62 = call i32 @CHAR64(i32 %61)
  %63 = icmp eq i32 %62, -1
  br i1 %63, label %64, label %65

64:                                               ; preds = %56
  br label %140

65:                                               ; preds = %56
  %66 = load i8*, i8** %5, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 2
  %68 = load i8, i8* %67, align 1
  %69 = sext i8 %68 to i32
  store i32 %69, i32* %10, align 4
  %70 = load i32, i32* %10, align 4
  %71 = icmp ne i32 %70, 61
  br i1 %71, label %72, label %77

72:                                               ; preds = %65
  %73 = load i32, i32* %10, align 4
  %74 = call i32 @CHAR64(i32 %73)
  %75 = icmp eq i32 %74, -1
  br i1 %75, label %76, label %77

76:                                               ; preds = %72
  br label %140

77:                                               ; preds = %72, %65
  %78 = load i8*, i8** %5, align 8
  %79 = getelementptr inbounds i8, i8* %78, i64 3
  %80 = load i8, i8* %79, align 1
  %81 = sext i8 %80 to i32
  store i32 %81, i32* %11, align 4
  %82 = load i32, i32* %11, align 4
  %83 = icmp ne i32 %82, 61
  br i1 %83, label %84, label %89

84:                                               ; preds = %77
  %85 = load i32, i32* %11, align 4
  %86 = call i32 @CHAR64(i32 %85)
  %87 = icmp eq i32 %86, -1
  br i1 %87, label %88, label %89

88:                                               ; preds = %84
  br label %140

89:                                               ; preds = %84, %77
  %90 = load i8*, i8** %5, align 8
  %91 = getelementptr inbounds i8, i8* %90, i64 4
  store i8* %91, i8** %5, align 8
  %92 = load i32, i32* %8, align 4
  %93 = call i32 @CHAR64(i32 %92)
  %94 = shl i32 %93, 2
  %95 = load i32, i32* %9, align 4
  %96 = call i32 @CHAR64(i32 %95)
  %97 = ashr i32 %96, 4
  %98 = or i32 %94, %97
  %99 = trunc i32 %98 to i8
  %100 = load i8*, i8** %13, align 8
  %101 = getelementptr inbounds i8, i8* %100, i32 1
  store i8* %101, i8** %13, align 8
  store i8 %99, i8* %100, align 1
  %102 = load i32*, i32** %7, align 8
  %103 = load i32, i32* %102, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %102, align 4
  %105 = load i32, i32* %10, align 4
  %106 = icmp ne i32 %105, 61
  br i1 %106, label %107, label %139

107:                                              ; preds = %89
  %108 = load i32, i32* %9, align 4
  %109 = call i32 @CHAR64(i32 %108)
  %110 = shl i32 %109, 4
  %111 = and i32 %110, 240
  %112 = load i32, i32* %10, align 4
  %113 = call i32 @CHAR64(i32 %112)
  %114 = ashr i32 %113, 2
  %115 = or i32 %111, %114
  %116 = trunc i32 %115 to i8
  %117 = load i8*, i8** %13, align 8
  %118 = getelementptr inbounds i8, i8* %117, i32 1
  store i8* %118, i8** %13, align 8
  store i8 %116, i8* %117, align 1
  %119 = load i32*, i32** %7, align 8
  %120 = load i32, i32* %119, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %119, align 4
  %122 = load i32, i32* %11, align 4
  %123 = icmp ne i32 %122, 61
  br i1 %123, label %124, label %138

124:                                              ; preds = %107
  %125 = load i32, i32* %10, align 4
  %126 = call i32 @CHAR64(i32 %125)
  %127 = shl i32 %126, 6
  %128 = and i32 %127, 192
  %129 = load i32, i32* %11, align 4
  %130 = call i32 @CHAR64(i32 %129)
  %131 = or i32 %128, %130
  %132 = trunc i32 %131 to i8
  %133 = load i8*, i8** %13, align 8
  %134 = getelementptr inbounds i8, i8* %133, i32 1
  store i8* %134, i8** %13, align 8
  store i8 %132, i8* %133, align 1
  %135 = load i32*, i32** %7, align 8
  %136 = load i32, i32* %135, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %135, align 4
  br label %138

138:                                              ; preds = %124, %107
  br label %139

139:                                              ; preds = %138, %89
  br label %23

140:                                              ; preds = %88, %76, %64, %55
  %141 = load i8*, i8** %12, align 8
  %142 = call i32 @free(i8* %141)
  %143 = load i8*, i8** %12, align 8
  store i8 0, i8* %143, align 1
  %144 = load i32*, i32** %7, align 8
  store i32 0, i32* %144, align 4
  %145 = load i8*, i8** %12, align 8
  store i8* %145, i8** %4, align 8
  br label %146

146:                                              ; preds = %140, %29
  %147 = load i8*, i8** %4, align 8
  ret i8* %147
}

declare dso_local i64 @malloc(i64) #1

declare dso_local i32 @CHAR64(i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
