; ModuleID = '/home/carl/AnghaBench/GloVe/src/extr_cooccur.c_get_word.c'
source_filename = "/home/carl/AnghaBench/GloVe/src/extr_cooccur.c_get_word.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EOF = common dso_local global i32 0, align 4
@MAX_STRING_LENGTH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_word(i8* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %6, align 4
  br label %8

8:                                                ; preds = %73, %38, %13, %2
  %9 = load i32*, i32** %5, align 8
  %10 = call i32 @fgetc(i32* %9)
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = icmp eq i32 %11, 13
  br i1 %12, label %13, label %14

13:                                               ; preds = %8
  br label %8

14:                                               ; preds = %8
  %15 = load i32, i32* %6, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %29

17:                                               ; preds = %14
  %18 = load i32, i32* %7, align 4
  %19 = icmp eq i32 %18, 10
  br i1 %19, label %24, label %20

20:                                               ; preds = %17
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @EOF, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %20, %17
  %25 = load i8*, i8** %4, align 8
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8, i8* %25, i64 %27
  store i8 0, i8* %28, align 1
  store i32 1, i32* %3, align 4
  br label %151

29:                                               ; preds = %20, %14
  %30 = load i32, i32* %6, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %29
  %33 = load i32, i32* %7, align 4
  %34 = icmp eq i32 %33, 32
  br i1 %34, label %38, label %35

35:                                               ; preds = %32
  %36 = load i32, i32* %7, align 4
  %37 = icmp eq i32 %36, 9
  br i1 %37, label %38, label %39

38:                                               ; preds = %35, %32
  br label %8

39:                                               ; preds = %35, %29
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* @EOF, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %52, label %43

43:                                               ; preds = %39
  %44 = load i32, i32* %7, align 4
  %45 = icmp eq i32 %44, 32
  br i1 %45, label %52, label %46

46:                                               ; preds = %43
  %47 = load i32, i32* %7, align 4
  %48 = icmp eq i32 %47, 9
  br i1 %48, label %52, label %49

49:                                               ; preds = %46
  %50 = load i32, i32* %7, align 4
  %51 = icmp eq i32 %50, 10
  br i1 %51, label %52, label %60

52:                                               ; preds = %49, %46, %43, %39
  %53 = load i32, i32* %7, align 4
  %54 = icmp eq i32 %53, 10
  br i1 %54, label %55, label %59

55:                                               ; preds = %52
  %56 = load i32, i32* %7, align 4
  %57 = load i32*, i32** %5, align 8
  %58 = call i32 @ungetc(i32 %56, i32* %57)
  br label %59

59:                                               ; preds = %55, %52
  br label %74

60:                                               ; preds = %49
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* @MAX_STRING_LENGTH, align 4
  %63 = sub nsw i32 %62, 1
  %64 = icmp slt i32 %61, %63
  br i1 %64, label %65, label %73

65:                                               ; preds = %60
  %66 = load i32, i32* %7, align 4
  %67 = trunc i32 %66 to i8
  %68 = load i8*, i8** %4, align 8
  %69 = load i32, i32* %6, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %6, align 4
  %71 = sext i32 %69 to i64
  %72 = getelementptr inbounds i8, i8* %68, i64 %71
  store i8 %67, i8* %72, align 1
  br label %73

73:                                               ; preds = %65, %60
  br label %8

74:                                               ; preds = %59
  %75 = load i8*, i8** %4, align 8
  %76 = load i32, i32* %6, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i8, i8* %75, i64 %77
  store i8 0, i8* %78, align 1
  %79 = load i32, i32* %6, align 4
  %80 = load i32, i32* @MAX_STRING_LENGTH, align 4
  %81 = sub nsw i32 %80, 1
  %82 = icmp eq i32 %79, %81
  br i1 %82, label %83, label %150

83:                                               ; preds = %74
  %84 = load i8*, i8** %4, align 8
  %85 = load i32, i32* %6, align 4
  %86 = sub nsw i32 %85, 1
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i8, i8* %84, i64 %87
  %89 = load i8, i8* %88, align 1
  %90 = sext i8 %89 to i32
  %91 = and i32 %90, 128
  %92 = icmp eq i32 %91, 128
  br i1 %92, label %93, label %150

93:                                               ; preds = %83
  %94 = load i8*, i8** %4, align 8
  %95 = load i32, i32* %6, align 4
  %96 = sub nsw i32 %95, 1
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i8, i8* %94, i64 %97
  %99 = load i8, i8* %98, align 1
  %100 = sext i8 %99 to i32
  %101 = and i32 %100, 192
  %102 = icmp eq i32 %101, 192
  br i1 %102, label %103, label %109

103:                                              ; preds = %93
  %104 = load i8*, i8** %4, align 8
  %105 = load i32, i32* %6, align 4
  %106 = sub nsw i32 %105, 1
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i8, i8* %104, i64 %107
  store i8 0, i8* %108, align 1
  br label %149

109:                                              ; preds = %93
  %110 = load i32, i32* %6, align 4
  %111 = icmp sgt i32 %110, 2
  br i1 %111, label %112, label %128

112:                                              ; preds = %109
  %113 = load i8*, i8** %4, align 8
  %114 = load i32, i32* %6, align 4
  %115 = sub nsw i32 %114, 2
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i8, i8* %113, i64 %116
  %118 = load i8, i8* %117, align 1
  %119 = sext i8 %118 to i32
  %120 = and i32 %119, 224
  %121 = icmp eq i32 %120, 224
  br i1 %121, label %122, label %128

122:                                              ; preds = %112
  %123 = load i8*, i8** %4, align 8
  %124 = load i32, i32* %6, align 4
  %125 = sub nsw i32 %124, 2
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i8, i8* %123, i64 %126
  store i8 0, i8* %127, align 1
  br label %148

128:                                              ; preds = %112, %109
  %129 = load i32, i32* %6, align 4
  %130 = icmp sgt i32 %129, 3
  br i1 %130, label %131, label %147

131:                                              ; preds = %128
  %132 = load i8*, i8** %4, align 8
  %133 = load i32, i32* %6, align 4
  %134 = sub nsw i32 %133, 3
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i8, i8* %132, i64 %135
  %137 = load i8, i8* %136, align 1
  %138 = sext i8 %137 to i32
  %139 = and i32 %138, 248
  %140 = icmp eq i32 %139, 240
  br i1 %140, label %141, label %147

141:                                              ; preds = %131
  %142 = load i8*, i8** %4, align 8
  %143 = load i32, i32* %6, align 4
  %144 = sub nsw i32 %143, 3
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i8, i8* %142, i64 %145
  store i8 0, i8* %146, align 1
  br label %147

147:                                              ; preds = %141, %131, %128
  br label %148

148:                                              ; preds = %147, %122
  br label %149

149:                                              ; preds = %148, %103
  br label %150

150:                                              ; preds = %149, %83, %74
  store i32 0, i32* %3, align 4
  br label %151

151:                                              ; preds = %150, %24
  %152 = load i32, i32* %3, align 4
  ret i32 %152
}

declare dso_local i32 @fgetc(i32*) #1

declare dso_local i32 @ungetc(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
