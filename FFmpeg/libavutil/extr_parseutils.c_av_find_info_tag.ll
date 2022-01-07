; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavutil/extr_parseutils.c_av_find_info_tag.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavutil/extr_parseutils.c_av_find_info_tag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @av_find_info_tag(i8* %0, i32 %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca [128 x i8], align 16
  %12 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %13 = load i8*, i8** %9, align 8
  store i8* %13, i8** %10, align 8
  %14 = load i8*, i8** %10, align 8
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp eq i32 %16, 63
  br i1 %17, label %18, label %21

18:                                               ; preds = %4
  %19 = load i8*, i8** %10, align 8
  %20 = getelementptr inbounds i8, i8* %19, i32 1
  store i8* %20, i8** %10, align 8
  br label %21

21:                                               ; preds = %18, %4
  br label %22

22:                                               ; preds = %119, %21
  %23 = getelementptr inbounds [128 x i8], [128 x i8]* %11, i64 0, i64 0
  store i8* %23, i8** %12, align 8
  br label %24

24:                                               ; preds = %53, %22
  %25 = load i8*, i8** %10, align 8
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %39

29:                                               ; preds = %24
  %30 = load i8*, i8** %10, align 8
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp ne i32 %32, 61
  br i1 %33, label %34, label %39

34:                                               ; preds = %29
  %35 = load i8*, i8** %10, align 8
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp ne i32 %37, 38
  br label %39

39:                                               ; preds = %34, %29, %24
  %40 = phi i1 [ false, %29 ], [ false, %24 ], [ %38, %34 ]
  br i1 %40, label %41, label %56

41:                                               ; preds = %39
  %42 = load i8*, i8** %12, align 8
  %43 = getelementptr inbounds [128 x i8], [128 x i8]* %11, i64 0, i64 0
  %44 = ptrtoint i8* %42 to i64
  %45 = ptrtoint i8* %43 to i64
  %46 = sub i64 %44, %45
  %47 = icmp ult i64 %46, 127
  br i1 %47, label %48, label %53

48:                                               ; preds = %41
  %49 = load i8*, i8** %10, align 8
  %50 = load i8, i8* %49, align 1
  %51 = load i8*, i8** %12, align 8
  %52 = getelementptr inbounds i8, i8* %51, i32 1
  store i8* %52, i8** %12, align 8
  store i8 %50, i8* %51, align 1
  br label %53

53:                                               ; preds = %48, %41
  %54 = load i8*, i8** %10, align 8
  %55 = getelementptr inbounds i8, i8* %54, i32 1
  store i8* %55, i8** %10, align 8
  br label %24

56:                                               ; preds = %39
  %57 = load i8*, i8** %12, align 8
  store i8 0, i8* %57, align 1
  %58 = load i8*, i8** %6, align 8
  store i8* %58, i8** %12, align 8
  %59 = load i8*, i8** %10, align 8
  %60 = load i8, i8* %59, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp eq i32 %61, 61
  br i1 %62, label %63, label %106

63:                                               ; preds = %56
  %64 = load i8*, i8** %10, align 8
  %65 = getelementptr inbounds i8, i8* %64, i32 1
  store i8* %65, i8** %10, align 8
  br label %66

66:                                               ; preds = %102, %63
  %67 = load i8*, i8** %10, align 8
  %68 = load i8, i8* %67, align 1
  %69 = sext i8 %68 to i32
  %70 = icmp ne i32 %69, 38
  br i1 %70, label %71, label %76

71:                                               ; preds = %66
  %72 = load i8*, i8** %10, align 8
  %73 = load i8, i8* %72, align 1
  %74 = sext i8 %73 to i32
  %75 = icmp ne i32 %74, 0
  br label %76

76:                                               ; preds = %71, %66
  %77 = phi i1 [ false, %66 ], [ %75, %71 ]
  br i1 %77, label %78, label %105

78:                                               ; preds = %76
  %79 = load i8*, i8** %12, align 8
  %80 = load i8*, i8** %6, align 8
  %81 = ptrtoint i8* %79 to i64
  %82 = ptrtoint i8* %80 to i64
  %83 = sub i64 %81, %82
  %84 = load i32, i32* %7, align 4
  %85 = sub nsw i32 %84, 1
  %86 = sext i32 %85 to i64
  %87 = icmp slt i64 %83, %86
  br i1 %87, label %88, label %102

88:                                               ; preds = %78
  %89 = load i8*, i8** %10, align 8
  %90 = load i8, i8* %89, align 1
  %91 = sext i8 %90 to i32
  %92 = icmp eq i32 %91, 43
  br i1 %92, label %93, label %96

93:                                               ; preds = %88
  %94 = load i8*, i8** %12, align 8
  %95 = getelementptr inbounds i8, i8* %94, i32 1
  store i8* %95, i8** %12, align 8
  store i8 32, i8* %94, align 1
  br label %101

96:                                               ; preds = %88
  %97 = load i8*, i8** %10, align 8
  %98 = load i8, i8* %97, align 1
  %99 = load i8*, i8** %12, align 8
  %100 = getelementptr inbounds i8, i8* %99, i32 1
  store i8* %100, i8** %12, align 8
  store i8 %98, i8* %99, align 1
  br label %101

101:                                              ; preds = %96, %93
  br label %102

102:                                              ; preds = %101, %78
  %103 = load i8*, i8** %10, align 8
  %104 = getelementptr inbounds i8, i8* %103, i32 1
  store i8* %104, i8** %10, align 8
  br label %66

105:                                              ; preds = %76
  br label %106

106:                                              ; preds = %105, %56
  %107 = load i8*, i8** %12, align 8
  store i8 0, i8* %107, align 1
  %108 = getelementptr inbounds [128 x i8], [128 x i8]* %11, i64 0, i64 0
  %109 = load i8*, i8** %8, align 8
  %110 = call i32 @strcmp(i8* %108, i8* %109)
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %113, label %112

112:                                              ; preds = %106
  store i32 1, i32* %5, align 4
  br label %123

113:                                              ; preds = %106
  %114 = load i8*, i8** %10, align 8
  %115 = load i8, i8* %114, align 1
  %116 = sext i8 %115 to i32
  %117 = icmp ne i32 %116, 38
  br i1 %117, label %118, label %119

118:                                              ; preds = %113
  br label %122

119:                                              ; preds = %113
  %120 = load i8*, i8** %10, align 8
  %121 = getelementptr inbounds i8, i8* %120, i32 1
  store i8* %121, i8** %10, align 8
  br label %22

122:                                              ; preds = %118
  store i32 0, i32* %5, align 4
  br label %123

123:                                              ; preds = %122, %112
  %124 = load i32, i32* %5, align 4
  ret i32 %124
}

declare dso_local i32 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
