; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_url.c_ff_make_absolute_url.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_url.c_ff_make_absolute_url.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"://\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"../\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"/\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_make_absolute_url(i8* %0, i32 %1, i8* %2, i8* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %62

13:                                               ; preds = %4
  %14 = load i8*, i8** %7, align 8
  %15 = call i8* @strstr(i8* %14, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %62

17:                                               ; preds = %13
  %18 = load i8*, i8** %8, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 0
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp eq i32 %21, 47
  br i1 %22, label %23, label %62

23:                                               ; preds = %17
  %24 = load i8*, i8** %7, align 8
  %25 = load i8*, i8** %5, align 8
  %26 = icmp ne i8* %24, %25
  br i1 %26, label %27, label %32

27:                                               ; preds = %23
  %28 = load i8*, i8** %5, align 8
  %29 = load i8*, i8** %7, align 8
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @av_strlcpy(i8* %28, i8* %29, i32 %30)
  br label %32

32:                                               ; preds = %27, %23
  %33 = load i8*, i8** %5, align 8
  %34 = call i8* @strstr(i8* %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i8* %34, i8** %9, align 8
  %35 = load i8*, i8** %9, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %57

37:                                               ; preds = %32
  %38 = load i8*, i8** %8, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 1
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp eq i32 %41, 47
  br i1 %42, label %43, label %46

43:                                               ; preds = %37
  %44 = load i8*, i8** %9, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 1
  store i8 0, i8* %45, align 1
  br label %56

46:                                               ; preds = %37
  %47 = load i8*, i8** %9, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 3
  store i8* %48, i8** %9, align 8
  %49 = load i8*, i8** %9, align 8
  %50 = call i8* @strchr(i8* %49, i8 signext 47)
  store i8* %50, i8** %9, align 8
  %51 = load i8*, i8** %9, align 8
  %52 = icmp ne i8* %51, null
  br i1 %52, label %53, label %55

53:                                               ; preds = %46
  %54 = load i8*, i8** %9, align 8
  store i8 0, i8* %54, align 1
  br label %55

55:                                               ; preds = %53, %46
  br label %56

56:                                               ; preds = %55, %43
  br label %57

57:                                               ; preds = %56, %32
  %58 = load i8*, i8** %5, align 8
  %59 = load i8*, i8** %8, align 8
  %60 = load i32, i32* %6, align 4
  %61 = call i32 @av_strlcat(i8* %58, i8* %59, i32 %60)
  br label %165

62:                                               ; preds = %17, %13, %4
  %63 = load i8*, i8** %7, align 8
  %64 = icmp ne i8* %63, null
  br i1 %64, label %65, label %75

65:                                               ; preds = %62
  %66 = load i8*, i8** %8, align 8
  %67 = call i8* @strstr(i8* %66, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %68 = icmp ne i8* %67, null
  br i1 %68, label %75, label %69

69:                                               ; preds = %65
  %70 = load i8*, i8** %8, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 0
  %72 = load i8, i8* %71, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp eq i32 %73, 47
  br i1 %74, label %75, label %80

75:                                               ; preds = %69, %65, %62
  %76 = load i8*, i8** %5, align 8
  %77 = load i8*, i8** %8, align 8
  %78 = load i32, i32* %6, align 4
  %79 = call i32 @av_strlcpy(i8* %76, i8* %77, i32 %78)
  br label %165

80:                                               ; preds = %69
  %81 = load i8*, i8** %7, align 8
  %82 = load i8*, i8** %5, align 8
  %83 = icmp ne i8* %81, %82
  br i1 %83, label %84, label %89

84:                                               ; preds = %80
  %85 = load i8*, i8** %5, align 8
  %86 = load i8*, i8** %7, align 8
  %87 = load i32, i32* %6, align 4
  %88 = call i32 @av_strlcpy(i8* %85, i8* %86, i32 %87)
  br label %89

89:                                               ; preds = %84, %80
  %90 = load i8*, i8** %5, align 8
  %91 = call i8* @strchr(i8* %90, i8 signext 63)
  store i8* %91, i8** %10, align 8
  %92 = load i8*, i8** %10, align 8
  %93 = icmp ne i8* %92, null
  br i1 %93, label %94, label %96

94:                                               ; preds = %89
  %95 = load i8*, i8** %10, align 8
  store i8 0, i8* %95, align 1
  br label %96

96:                                               ; preds = %94, %89
  %97 = load i8*, i8** %8, align 8
  %98 = getelementptr inbounds i8, i8* %97, i64 0
  %99 = load i8, i8* %98, align 1
  %100 = sext i8 %99 to i32
  %101 = icmp eq i32 %100, 63
  br i1 %101, label %102, label %107

102:                                              ; preds = %96
  %103 = load i8*, i8** %5, align 8
  %104 = load i8*, i8** %8, align 8
  %105 = load i32, i32* %6, align 4
  %106 = call i32 @av_strlcat(i8* %103, i8* %104, i32 %105)
  br label %165

107:                                              ; preds = %96
  %108 = load i8*, i8** %5, align 8
  %109 = call i8* @strrchr(i8* %108, i8 signext 47)
  store i8* %109, i8** %9, align 8
  %110 = load i8*, i8** %9, align 8
  %111 = icmp ne i8* %110, null
  br i1 %111, label %112, label %115

112:                                              ; preds = %107
  %113 = load i8*, i8** %9, align 8
  %114 = getelementptr inbounds i8, i8* %113, i64 1
  store i8 0, i8* %114, align 1
  br label %118

115:                                              ; preds = %107
  %116 = load i8*, i8** %5, align 8
  %117 = getelementptr inbounds i8, i8* %116, i64 0
  store i8 0, i8* %117, align 1
  br label %118

118:                                              ; preds = %115, %112
  br label %119

119:                                              ; preds = %157, %118
  %120 = load i8*, i8** %8, align 8
  %121 = call i64 @av_strstart(i8* %120, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32* null)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %126

123:                                              ; preds = %119
  %124 = load i8*, i8** %9, align 8
  %125 = icmp ne i8* %124, null
  br label %126

126:                                              ; preds = %123, %119
  %127 = phi i1 [ false, %119 ], [ %125, %123 ]
  br i1 %127, label %128, label %160

128:                                              ; preds = %126
  %129 = load i8*, i8** %9, align 8
  %130 = getelementptr inbounds i8, i8* %129, i64 0
  store i8 0, i8* %130, align 1
  %131 = load i8*, i8** %5, align 8
  %132 = call i8* @strrchr(i8* %131, i8 signext 47)
  store i8* %132, i8** %9, align 8
  %133 = load i8*, i8** %9, align 8
  %134 = icmp ne i8* %133, null
  br i1 %134, label %135, label %138

135:                                              ; preds = %128
  %136 = load i8*, i8** %9, align 8
  %137 = getelementptr inbounds i8, i8* %136, i64 1
  br label %140

138:                                              ; preds = %128
  %139 = load i8*, i8** %5, align 8
  br label %140

140:                                              ; preds = %138, %135
  %141 = phi i8* [ %137, %135 ], [ %139, %138 ]
  %142 = call i32 @strcmp(i8* %141, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %148, label %144

144:                                              ; preds = %140
  %145 = load i8*, i8** %5, align 8
  %146 = load i32, i32* %6, align 4
  %147 = call i32 @av_strlcat(i8* %145, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i32 %146)
  br label %160

148:                                              ; preds = %140
  %149 = load i8*, i8** %9, align 8
  %150 = icmp ne i8* %149, null
  br i1 %150, label %151, label %154

151:                                              ; preds = %148
  %152 = load i8*, i8** %9, align 8
  %153 = getelementptr inbounds i8, i8* %152, i64 1
  store i8 0, i8* %153, align 1
  br label %157

154:                                              ; preds = %148
  %155 = load i8*, i8** %5, align 8
  %156 = getelementptr inbounds i8, i8* %155, i64 0
  store i8 0, i8* %156, align 1
  br label %157

157:                                              ; preds = %154, %151
  %158 = load i8*, i8** %8, align 8
  %159 = getelementptr inbounds i8, i8* %158, i64 3
  store i8* %159, i8** %8, align 8
  br label %119

160:                                              ; preds = %144, %126
  %161 = load i8*, i8** %5, align 8
  %162 = load i8*, i8** %8, align 8
  %163 = load i32, i32* %6, align 4
  %164 = call i32 @av_strlcat(i8* %161, i8* %162, i32 %163)
  br label %165

165:                                              ; preds = %160, %102, %75, %57
  ret void
}

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i32 @av_strlcpy(i8*, i8*, i32) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @av_strlcat(i8*, i8*, i32) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i64 @av_strstart(i8*, i8*, i32*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
