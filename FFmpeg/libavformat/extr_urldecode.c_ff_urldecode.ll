; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_urldecode.c_ff_urldecode.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_urldecode.c_ff_urldecode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @ff_urldecode(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca i8*, align 8
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  store i8* %0, i8** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i8* null, i8** %8, align 8
  %11 = load i8*, i8** %3, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  store i8* null, i8** %2, align 8
  br label %151

14:                                               ; preds = %1
  %15 = load i8*, i8** %3, align 8
  %16 = call i32 @strlen(i8* %15)
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = call i8* @av_malloc(i32 %18)
  store i8* %19, i8** %8, align 8
  %20 = load i8*, i8** %8, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %14
  store i8* null, i8** %2, align 8
  br label %151

23:                                               ; preds = %14
  br label %24

24:                                               ; preds = %148, %23
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %149

28:                                               ; preds = %24
  %29 = load i8*, i8** %3, align 8
  %30 = load i32, i32* %4, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %4, align 4
  %32 = sext i32 %30 to i64
  %33 = getelementptr inbounds i8, i8* %29, i64 %32
  %34 = load i8, i8* %33, align 1
  store i8 %34, i8* %7, align 1
  %35 = load i8, i8* %7, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp eq i32 %36, 37
  br i1 %37, label %38, label %130

38:                                               ; preds = %28
  %39 = load i32, i32* %4, align 4
  %40 = add nsw i32 %39, 2
  %41 = load i32, i32* %6, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %130

43:                                               ; preds = %38
  %44 = load i8*, i8** %3, align 8
  %45 = load i32, i32* %4, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %4, align 4
  %47 = sext i32 %45 to i64
  %48 = getelementptr inbounds i8, i8* %44, i64 %47
  %49 = load i8, i8* %48, align 1
  store i8 %49, i8* %9, align 1
  %50 = load i8*, i8** %3, align 8
  %51 = load i32, i32* %4, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %4, align 4
  %53 = sext i32 %51 to i64
  %54 = getelementptr inbounds i8, i8* %50, i64 %53
  %55 = load i8, i8* %54, align 1
  store i8 %55, i8* %10, align 1
  %56 = load i8, i8* %9, align 1
  %57 = call i64 @av_isxdigit(i8 signext %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %110

59:                                               ; preds = %43
  %60 = load i8, i8* %10, align 1
  %61 = call i64 @av_isxdigit(i8 signext %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %110

63:                                               ; preds = %59
  %64 = load i8, i8* %9, align 1
  %65 = call signext i8 @av_tolower(i8 signext %64)
  store i8 %65, i8* %9, align 1
  %66 = load i8, i8* %10, align 1
  %67 = call signext i8 @av_tolower(i8 signext %66)
  store i8 %67, i8* %10, align 1
  %68 = load i8, i8* %9, align 1
  %69 = sext i8 %68 to i32
  %70 = icmp sle i32 %69, 57
  br i1 %70, label %71, label %76

71:                                               ; preds = %63
  %72 = load i8, i8* %9, align 1
  %73 = sext i8 %72 to i32
  %74 = sub nsw i32 %73, 48
  %75 = trunc i32 %74 to i8
  store i8 %75, i8* %9, align 1
  br label %82

76:                                               ; preds = %63
  %77 = load i8, i8* %9, align 1
  %78 = sext i8 %77 to i32
  %79 = sub nsw i32 %78, 97
  %80 = add nsw i32 %79, 10
  %81 = trunc i32 %80 to i8
  store i8 %81, i8* %9, align 1
  br label %82

82:                                               ; preds = %76, %71
  %83 = load i8, i8* %10, align 1
  %84 = sext i8 %83 to i32
  %85 = icmp sle i32 %84, 57
  br i1 %85, label %86, label %91

86:                                               ; preds = %82
  %87 = load i8, i8* %10, align 1
  %88 = sext i8 %87 to i32
  %89 = sub nsw i32 %88, 48
  %90 = trunc i32 %89 to i8
  store i8 %90, i8* %10, align 1
  br label %97

91:                                               ; preds = %82
  %92 = load i8, i8* %10, align 1
  %93 = sext i8 %92 to i32
  %94 = sub nsw i32 %93, 97
  %95 = add nsw i32 %94, 10
  %96 = trunc i32 %95 to i8
  store i8 %96, i8* %10, align 1
  br label %97

97:                                               ; preds = %91, %86
  %98 = load i8, i8* %9, align 1
  %99 = sext i8 %98 to i32
  %100 = mul nsw i32 16, %99
  %101 = load i8, i8* %10, align 1
  %102 = sext i8 %101 to i32
  %103 = add nsw i32 %100, %102
  %104 = trunc i32 %103 to i8
  %105 = load i8*, i8** %8, align 8
  %106 = load i32, i32* %5, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %5, align 4
  %108 = sext i32 %106 to i64
  %109 = getelementptr inbounds i8, i8* %105, i64 %108
  store i8 %104, i8* %109, align 1
  br label %129

110:                                              ; preds = %59, %43
  %111 = load i8, i8* %7, align 1
  %112 = load i8*, i8** %8, align 8
  %113 = load i32, i32* %5, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %5, align 4
  %115 = sext i32 %113 to i64
  %116 = getelementptr inbounds i8, i8* %112, i64 %115
  store i8 %111, i8* %116, align 1
  %117 = load i8, i8* %9, align 1
  %118 = load i8*, i8** %8, align 8
  %119 = load i32, i32* %5, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %5, align 4
  %121 = sext i32 %119 to i64
  %122 = getelementptr inbounds i8, i8* %118, i64 %121
  store i8 %117, i8* %122, align 1
  %123 = load i8, i8* %10, align 1
  %124 = load i8*, i8** %8, align 8
  %125 = load i32, i32* %5, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %5, align 4
  %127 = sext i32 %125 to i64
  %128 = getelementptr inbounds i8, i8* %124, i64 %127
  store i8 %123, i8* %128, align 1
  br label %129

129:                                              ; preds = %110, %97
  br label %148

130:                                              ; preds = %38, %28
  %131 = load i8, i8* %7, align 1
  %132 = sext i8 %131 to i32
  %133 = icmp eq i32 %132, 43
  br i1 %133, label %134, label %140

134:                                              ; preds = %130
  %135 = load i8*, i8** %8, align 8
  %136 = load i32, i32* %5, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %5, align 4
  %138 = sext i32 %136 to i64
  %139 = getelementptr inbounds i8, i8* %135, i64 %138
  store i8 32, i8* %139, align 1
  br label %147

140:                                              ; preds = %130
  %141 = load i8, i8* %7, align 1
  %142 = load i8*, i8** %8, align 8
  %143 = load i32, i32* %5, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %5, align 4
  %145 = sext i32 %143 to i64
  %146 = getelementptr inbounds i8, i8* %142, i64 %145
  store i8 %141, i8* %146, align 1
  br label %147

147:                                              ; preds = %140, %134
  br label %148

148:                                              ; preds = %147, %129
  br label %24

149:                                              ; preds = %24
  %150 = load i8*, i8** %8, align 8
  store i8* %150, i8** %2, align 8
  br label %151

151:                                              ; preds = %149, %22, %13
  %152 = load i8*, i8** %2, align 8
  ret i8* %152
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @av_malloc(i32) #1

declare dso_local i64 @av_isxdigit(i8 signext) #1

declare dso_local signext i8 @av_tolower(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
