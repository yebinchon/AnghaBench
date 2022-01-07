; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavutil/extr_avstring.c_av_get_token.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavutil/extr_avstring.c_av_get_token.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@WHITESPACES = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @av_get_token(i8** %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8, align 1
  store i8** %0, i8*** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = load i8**, i8*** %4, align 8
  %12 = load i8*, i8** %11, align 8
  %13 = call i64 @strlen(i8* %12)
  %14 = add nsw i64 %13, 1
  %15 = call i8* @av_malloc(i64 %14)
  store i8* %15, i8** %6, align 8
  %16 = load i8*, i8** %6, align 8
  store i8* %16, i8** %7, align 8
  %17 = load i8*, i8** %6, align 8
  store i8* %17, i8** %8, align 8
  %18 = load i8**, i8*** %4, align 8
  %19 = load i8*, i8** %18, align 8
  store i8* %19, i8** %9, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  br label %118

23:                                               ; preds = %2
  %24 = load i8*, i8** %9, align 8
  %25 = load i8*, i8** @WHITESPACES, align 8
  %26 = call i64 @strspn(i8* %24, i8* %25)
  %27 = load i8*, i8** %9, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 %26
  store i8* %28, i8** %9, align 8
  br label %29

29:                                               ; preds = %98, %23
  %30 = load i8*, i8** %9, align 8
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %29
  %35 = load i8*, i8** %9, align 8
  %36 = load i8*, i8** %5, align 8
  %37 = call i64 @strspn(i8* %35, i8* %36)
  %38 = icmp ne i64 %37, 0
  %39 = xor i1 %38, true
  br label %40

40:                                               ; preds = %34, %29
  %41 = phi i1 [ false, %29 ], [ %39, %34 ]
  br i1 %41, label %42, label %99

42:                                               ; preds = %40
  %43 = load i8*, i8** %9, align 8
  %44 = getelementptr inbounds i8, i8* %43, i32 1
  store i8* %44, i8** %9, align 8
  %45 = load i8, i8* %43, align 1
  store i8 %45, i8* %10, align 1
  %46 = load i8, i8* %10, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp eq i32 %47, 92
  br i1 %48, label %49, label %61

49:                                               ; preds = %42
  %50 = load i8*, i8** %9, align 8
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %49
  %55 = load i8*, i8** %9, align 8
  %56 = getelementptr inbounds i8, i8* %55, i32 1
  store i8* %56, i8** %9, align 8
  %57 = load i8, i8* %55, align 1
  %58 = load i8*, i8** %6, align 8
  %59 = getelementptr inbounds i8, i8* %58, i32 1
  store i8* %59, i8** %6, align 8
  store i8 %57, i8* %58, align 1
  %60 = load i8*, i8** %6, align 8
  store i8* %60, i8** %8, align 8
  br label %98

61:                                               ; preds = %49, %42
  %62 = load i8, i8* %10, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp eq i32 %63, 39
  br i1 %64, label %65, label %93

65:                                               ; preds = %61
  br label %66

66:                                               ; preds = %78, %65
  %67 = load i8*, i8** %9, align 8
  %68 = load i8, i8* %67, align 1
  %69 = sext i8 %68 to i32
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %66
  %72 = load i8*, i8** %9, align 8
  %73 = load i8, i8* %72, align 1
  %74 = sext i8 %73 to i32
  %75 = icmp ne i32 %74, 39
  br label %76

76:                                               ; preds = %71, %66
  %77 = phi i1 [ false, %66 ], [ %75, %71 ]
  br i1 %77, label %78, label %84

78:                                               ; preds = %76
  %79 = load i8*, i8** %9, align 8
  %80 = getelementptr inbounds i8, i8* %79, i32 1
  store i8* %80, i8** %9, align 8
  %81 = load i8, i8* %79, align 1
  %82 = load i8*, i8** %6, align 8
  %83 = getelementptr inbounds i8, i8* %82, i32 1
  store i8* %83, i8** %6, align 8
  store i8 %81, i8* %82, align 1
  br label %66

84:                                               ; preds = %76
  %85 = load i8*, i8** %9, align 8
  %86 = load i8, i8* %85, align 1
  %87 = icmp ne i8 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %84
  %89 = load i8*, i8** %9, align 8
  %90 = getelementptr inbounds i8, i8* %89, i32 1
  store i8* %90, i8** %9, align 8
  %91 = load i8*, i8** %6, align 8
  store i8* %91, i8** %8, align 8
  br label %92

92:                                               ; preds = %88, %84
  br label %97

93:                                               ; preds = %61
  %94 = load i8, i8* %10, align 1
  %95 = load i8*, i8** %6, align 8
  %96 = getelementptr inbounds i8, i8* %95, i32 1
  store i8* %96, i8** %6, align 8
  store i8 %94, i8* %95, align 1
  br label %97

97:                                               ; preds = %93, %92
  br label %98

98:                                               ; preds = %97, %54
  br label %29

99:                                               ; preds = %40
  br label %100

100:                                              ; preds = %112, %99
  %101 = load i8*, i8** %6, align 8
  %102 = getelementptr inbounds i8, i8* %101, i32 -1
  store i8* %102, i8** %6, align 8
  store i8 0, i8* %101, align 1
  br label %103

103:                                              ; preds = %100
  %104 = load i8*, i8** %6, align 8
  %105 = load i8*, i8** %8, align 8
  %106 = icmp uge i8* %104, %105
  br i1 %106, label %107, label %112

107:                                              ; preds = %103
  %108 = load i8*, i8** %6, align 8
  %109 = load i8*, i8** @WHITESPACES, align 8
  %110 = call i64 @strspn(i8* %108, i8* %109)
  %111 = icmp ne i64 %110, 0
  br label %112

112:                                              ; preds = %107, %103
  %113 = phi i1 [ false, %103 ], [ %111, %107 ]
  br i1 %113, label %100, label %114

114:                                              ; preds = %112
  %115 = load i8*, i8** %9, align 8
  %116 = load i8**, i8*** %4, align 8
  store i8* %115, i8** %116, align 8
  %117 = load i8*, i8** %7, align 8
  store i8* %117, i8** %3, align 8
  br label %118

118:                                              ; preds = %114, %22
  %119 = load i8*, i8** %3, align 8
  ret i8* %119
}

declare dso_local i8* @av_malloc(i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @strspn(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
