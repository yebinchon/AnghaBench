; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_utils.c_av_get_frame_filename2.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_utils.c_av_get_frame_filename2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AV_FRAME_FILENAME_FLAGS_MULTIPLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%0*d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @av_get_frame_filename2(i8* %0, i32 %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca [20 x i8], align 16
  %15 = alloca i8, align 1
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %19 = load i8*, i8** %7, align 8
  store i8* %19, i8** %13, align 8
  %20 = load i8*, i8** %9, align 8
  store i8* %20, i8** %12, align 8
  store i32 0, i32* %18, align 4
  br label %21

21:                                               ; preds = %123, %5
  %22 = load i8*, i8** %12, align 8
  %23 = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %23, i8** %12, align 8
  %24 = load i8, i8* %22, align 1
  store i8 %24, i8* %15, align 1
  %25 = load i8, i8* %15, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %21
  br label %124

29:                                               ; preds = %21
  %30 = load i8, i8* %15, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp eq i32 %31, 37
  br i1 %32, label %33, label %107

33:                                               ; preds = %29
  br label %34

34:                                               ; preds = %53, %33
  store i32 0, i32* %16, align 4
  br label %35

35:                                               ; preds = %40, %34
  %36 = load i8*, i8** %12, align 8
  %37 = load i8, i8* %36, align 1
  %38 = call i64 @av_isdigit(i8 signext %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %35
  %41 = load i32, i32* %16, align 4
  %42 = mul nsw i32 %41, 10
  %43 = load i8*, i8** %12, align 8
  %44 = getelementptr inbounds i8, i8* %43, i32 1
  store i8* %44, i8** %12, align 8
  %45 = load i8, i8* %43, align 1
  %46 = sext i8 %45 to i32
  %47 = add nsw i32 %42, %46
  %48 = sub nsw i32 %47, 48
  store i32 %48, i32* %16, align 4
  br label %35

49:                                               ; preds = %35
  %50 = load i8*, i8** %12, align 8
  %51 = getelementptr inbounds i8, i8* %50, i32 1
  store i8* %51, i8** %12, align 8
  %52 = load i8, i8* %50, align 1
  store i8 %52, i8* %15, align 1
  br label %53

53:                                               ; preds = %49
  %54 = load i8, i8* %15, align 1
  %55 = call i64 @av_isdigit(i8 signext %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %34, label %57

57:                                               ; preds = %53
  %58 = load i8, i8* %15, align 1
  %59 = sext i8 %58 to i32
  switch i32 %59, label %105 [
    i32 37, label %60
    i32 100, label %61
  ]

60:                                               ; preds = %57
  br label %108

61:                                               ; preds = %57
  %62 = load i32, i32* %11, align 4
  %63 = load i32, i32* @AV_FRAME_FILENAME_FLAGS_MULTIPLE, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %70, label %66

66:                                               ; preds = %61
  %67 = load i32, i32* %18, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %66
  br label %130

70:                                               ; preds = %66, %61
  store i32 1, i32* %18, align 4
  %71 = load i32, i32* %10, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %70
  %74 = load i32, i32* %16, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %16, align 4
  br label %76

76:                                               ; preds = %73, %70
  %77 = getelementptr inbounds [20 x i8], [20 x i8]* %14, i64 0, i64 0
  %78 = load i32, i32* %16, align 4
  %79 = load i32, i32* %10, align 4
  %80 = call i32 @snprintf(i8* %77, i32 20, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %78, i32 %79)
  %81 = getelementptr inbounds [20 x i8], [20 x i8]* %14, i64 0, i64 0
  %82 = call i32 @strlen(i8* %81)
  store i32 %82, i32* %17, align 4
  %83 = load i8*, i8** %13, align 8
  %84 = load i8*, i8** %7, align 8
  %85 = ptrtoint i8* %83 to i64
  %86 = ptrtoint i8* %84 to i64
  %87 = sub i64 %85, %86
  %88 = load i32, i32* %17, align 4
  %89 = sext i32 %88 to i64
  %90 = add nsw i64 %87, %89
  %91 = load i32, i32* %8, align 4
  %92 = sub nsw i32 %91, 1
  %93 = sext i32 %92 to i64
  %94 = icmp sgt i64 %90, %93
  br i1 %94, label %95, label %96

95:                                               ; preds = %76
  br label %130

96:                                               ; preds = %76
  %97 = load i8*, i8** %13, align 8
  %98 = getelementptr inbounds [20 x i8], [20 x i8]* %14, i64 0, i64 0
  %99 = load i32, i32* %17, align 4
  %100 = call i32 @memcpy(i8* %97, i8* %98, i32 %99)
  %101 = load i32, i32* %17, align 4
  %102 = load i8*, i8** %13, align 8
  %103 = sext i32 %101 to i64
  %104 = getelementptr inbounds i8, i8* %102, i64 %103
  store i8* %104, i8** %13, align 8
  br label %106

105:                                              ; preds = %57
  br label %130

106:                                              ; preds = %96
  br label %123

107:                                              ; preds = %29
  br label %108

108:                                              ; preds = %107, %60
  %109 = load i8*, i8** %13, align 8
  %110 = load i8*, i8** %7, align 8
  %111 = ptrtoint i8* %109 to i64
  %112 = ptrtoint i8* %110 to i64
  %113 = sub i64 %111, %112
  %114 = load i32, i32* %8, align 4
  %115 = sub nsw i32 %114, 1
  %116 = sext i32 %115 to i64
  %117 = icmp slt i64 %113, %116
  br i1 %117, label %118, label %122

118:                                              ; preds = %108
  %119 = load i8, i8* %15, align 1
  %120 = load i8*, i8** %13, align 8
  %121 = getelementptr inbounds i8, i8* %120, i32 1
  store i8* %121, i8** %13, align 8
  store i8 %119, i8* %120, align 1
  br label %122

122:                                              ; preds = %118, %108
  br label %123

123:                                              ; preds = %122, %106
  br label %21

124:                                              ; preds = %28
  %125 = load i32, i32* %18, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %128, label %127

127:                                              ; preds = %124
  br label %130

128:                                              ; preds = %124
  %129 = load i8*, i8** %13, align 8
  store i8 0, i8* %129, align 1
  store i32 0, i32* %6, align 4
  br label %132

130:                                              ; preds = %127, %105, %95, %69
  %131 = load i8*, i8** %13, align 8
  store i8 0, i8* %131, align 1
  store i32 -1, i32* %6, align 4
  br label %132

132:                                              ; preds = %130, %128
  %133 = load i32, i32* %6, align 4
  ret i32 %133
}

declare dso_local i64 @av_isdigit(i8 signext) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
