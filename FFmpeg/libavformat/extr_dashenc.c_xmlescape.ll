; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_dashenc.c_xmlescape.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_dashenc.c_xmlescape.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"&amp;\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"&lt;\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"&gt;\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"&apos;\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"&quot;\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @xmlescape to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @xmlescape(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = call i32 @strlen(i8* %8)
  %10 = mul nsw i32 %9, 3
  %11 = sdiv i32 %10, 2
  %12 = add nsw i32 %11, 6
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = add nsw i32 %13, 1
  %15 = call i8* @av_realloc(i8* null, i32 %14)
  store i8* %15, i8** %5, align 8
  store i32 0, i32* %6, align 4
  %16 = load i8*, i8** %5, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %1
  store i8* null, i8** %2, align 8
  br label %131

19:                                               ; preds = %1
  br label %20

20:                                               ; preds = %122, %19
  %21 = load i8*, i8** %3, align 8
  %22 = load i8, i8* %21, align 1
  %23 = icmp ne i8 %22, 0
  br i1 %23, label %24, label %125

24:                                               ; preds = %20
  %25 = load i32, i32* %6, align 4
  %26 = add nsw i32 %25, 6
  %27 = load i32, i32* %4, align 4
  %28 = icmp sgt i32 %26, %27
  br i1 %28, label %29, label %44

29:                                               ; preds = %24
  %30 = load i32, i32* %4, align 4
  %31 = mul nsw i32 2, %30
  %32 = add nsw i32 %31, 6
  store i32 %32, i32* %4, align 4
  %33 = load i8*, i8** %5, align 8
  %34 = load i32, i32* %4, align 4
  %35 = add nsw i32 %34, 1
  %36 = call i8* @av_realloc(i8* %33, i32 %35)
  store i8* %36, i8** %7, align 8
  %37 = load i8*, i8** %7, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %29
  %40 = load i8*, i8** %5, align 8
  %41 = call i32 @av_free(i8* %40)
  store i8* null, i8** %2, align 8
  br label %131

42:                                               ; preds = %29
  %43 = load i8*, i8** %7, align 8
  store i8* %43, i8** %5, align 8
  br label %44

44:                                               ; preds = %42, %24
  %45 = load i8*, i8** %3, align 8
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp eq i32 %47, 38
  br i1 %48, label %49, label %57

49:                                               ; preds = %44
  %50 = load i8*, i8** %5, align 8
  %51 = load i32, i32* %6, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8, i8* %50, i64 %52
  %54 = call i32 @memcpy(i8* %53, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 5)
  %55 = load i32, i32* %6, align 4
  %56 = add nsw i32 %55, 5
  store i32 %56, i32* %6, align 4
  br label %121

57:                                               ; preds = %44
  %58 = load i8*, i8** %3, align 8
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp eq i32 %60, 60
  br i1 %61, label %62, label %70

62:                                               ; preds = %57
  %63 = load i8*, i8** %5, align 8
  %64 = load i32, i32* %6, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8, i8* %63, i64 %65
  %67 = call i32 @memcpy(i8* %66, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 4)
  %68 = load i32, i32* %6, align 4
  %69 = add nsw i32 %68, 4
  store i32 %69, i32* %6, align 4
  br label %120

70:                                               ; preds = %57
  %71 = load i8*, i8** %3, align 8
  %72 = load i8, i8* %71, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp eq i32 %73, 62
  br i1 %74, label %75, label %83

75:                                               ; preds = %70
  %76 = load i8*, i8** %5, align 8
  %77 = load i32, i32* %6, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i8, i8* %76, i64 %78
  %80 = call i32 @memcpy(i8* %79, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 4)
  %81 = load i32, i32* %6, align 4
  %82 = add nsw i32 %81, 4
  store i32 %82, i32* %6, align 4
  br label %119

83:                                               ; preds = %70
  %84 = load i8*, i8** %3, align 8
  %85 = load i8, i8* %84, align 1
  %86 = sext i8 %85 to i32
  %87 = icmp eq i32 %86, 39
  br i1 %87, label %88, label %96

88:                                               ; preds = %83
  %89 = load i8*, i8** %5, align 8
  %90 = load i32, i32* %6, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i8, i8* %89, i64 %91
  %93 = call i32 @memcpy(i8* %92, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 6)
  %94 = load i32, i32* %6, align 4
  %95 = add nsw i32 %94, 6
  store i32 %95, i32* %6, align 4
  br label %118

96:                                               ; preds = %83
  %97 = load i8*, i8** %3, align 8
  %98 = load i8, i8* %97, align 1
  %99 = sext i8 %98 to i32
  %100 = icmp eq i32 %99, 34
  br i1 %100, label %101, label %109

101:                                              ; preds = %96
  %102 = load i8*, i8** %5, align 8
  %103 = load i32, i32* %6, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i8, i8* %102, i64 %104
  %106 = call i32 @memcpy(i8* %105, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 6)
  %107 = load i32, i32* %6, align 4
  %108 = add nsw i32 %107, 6
  store i32 %108, i32* %6, align 4
  br label %117

109:                                              ; preds = %96
  %110 = load i8*, i8** %3, align 8
  %111 = load i8, i8* %110, align 1
  %112 = load i8*, i8** %5, align 8
  %113 = load i32, i32* %6, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %6, align 4
  %115 = sext i32 %113 to i64
  %116 = getelementptr inbounds i8, i8* %112, i64 %115
  store i8 %111, i8* %116, align 1
  br label %117

117:                                              ; preds = %109, %101
  br label %118

118:                                              ; preds = %117, %88
  br label %119

119:                                              ; preds = %118, %75
  br label %120

120:                                              ; preds = %119, %62
  br label %121

121:                                              ; preds = %120, %49
  br label %122

122:                                              ; preds = %121
  %123 = load i8*, i8** %3, align 8
  %124 = getelementptr inbounds i8, i8* %123, i32 1
  store i8* %124, i8** %3, align 8
  br label %20

125:                                              ; preds = %20
  %126 = load i8*, i8** %5, align 8
  %127 = load i32, i32* %6, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i8, i8* %126, i64 %128
  store i8 0, i8* %129, align 1
  %130 = load i8*, i8** %5, align 8
  store i8* %130, i8** %2, align 8
  br label %131

131:                                              ; preds = %125, %39, %18
  %132 = load i8*, i8** %2, align 8
  ret i8* %132
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @av_realloc(i8*, i32) #1

declare dso_local i32 @av_free(i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
