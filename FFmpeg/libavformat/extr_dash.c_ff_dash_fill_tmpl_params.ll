; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_dash.c_ff_dash_fill_tmpl_params.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_dash.c_ff_dash_fill_tmpl_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"$\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_dash_fill_tmpl_params(i8* %0, i64 %1, i8* %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca [7 x i8], align 1
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  store i64 %1, i64* %9, align 8
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %22 = load i8*, i8** %10, align 8
  store i8* %22, i8** %16, align 8
  br label %23

23:                                               ; preds = %157, %7
  %24 = load i32, i32* %15, align 4
  %25 = sext i32 %24 to i64
  %26 = load i64, i64* %9, align 8
  %27 = sub i64 %26, 1
  %28 = icmp ult i64 %25, %27
  br i1 %28, label %29, label %34

29:                                               ; preds = %23
  %30 = load i8*, i8** %16, align 8
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp ne i32 %32, 0
  br label %34

34:                                               ; preds = %29, %23
  %35 = phi i1 [ false, %23 ], [ %33, %29 ]
  br i1 %35, label %36, label %168

36:                                               ; preds = %34
  store i32 0, i32* %18, align 4
  %37 = load i8*, i8** %16, align 8
  %38 = call i8* @strchr(i8* %37, i8 signext 36)
  store i8* %38, i8** %20, align 8
  %39 = load i8*, i8** %20, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %41, label %66

41:                                               ; preds = %36
  %42 = load i8*, i8** %20, align 8
  %43 = load i8*, i8** %16, align 8
  %44 = ptrtoint i8* %42 to i64
  %45 = ptrtoint i8* %43 to i64
  %46 = sub i64 %44, %45
  %47 = trunc i64 %46 to i32
  %48 = load i64, i64* %9, align 8
  %49 = load i32, i32* %15, align 4
  %50 = sext i32 %49 to i64
  %51 = sub i64 %48, %50
  %52 = sub i64 %51, 1
  %53 = call i32 @FFMIN(i32 %47, i64 %52)
  store i32 %53, i32* %21, align 4
  %54 = load i8*, i8** %8, align 8
  %55 = load i32, i32* %15, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8, i8* %54, i64 %56
  %58 = load i8*, i8** %16, align 8
  %59 = load i32, i32* %21, align 4
  %60 = add nsw i32 %59, 1
  %61 = call i32 @av_strlcpy(i8* %57, i8* %58, i32 %60)
  %62 = load i32, i32* %21, align 4
  %63 = load i32, i32* %15, align 4
  %64 = add nsw i32 %63, %62
  store i32 %64, i32* %15, align 4
  %65 = load i8*, i8** %20, align 8
  store i8* %65, i8** %16, align 8
  br label %78

66:                                               ; preds = %36
  %67 = load i8*, i8** %8, align 8
  %68 = load i32, i32* %15, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i8, i8* %67, i64 %69
  %71 = load i8*, i8** %16, align 8
  %72 = load i64, i64* %9, align 8
  %73 = load i32, i32* %15, align 4
  %74 = sext i32 %73 to i64
  %75 = sub i64 %72, %74
  %76 = trunc i64 %75 to i32
  %77 = call i32 @av_strlcpy(i8* %70, i8* %71, i32 %76)
  br label %168

78:                                               ; preds = %41
  %79 = load i32, i32* %15, align 4
  %80 = sext i32 %79 to i64
  %81 = load i64, i64* %9, align 8
  %82 = sub i64 %81, 1
  %83 = icmp uge i64 %80, %82
  br i1 %83, label %88, label %84

84:                                               ; preds = %78
  %85 = load i8*, i8** %16, align 8
  %86 = load i8, i8* %85, align 1
  %87 = icmp ne i8 %86, 0
  br i1 %87, label %89, label %88

88:                                               ; preds = %84, %78
  br label %168

89:                                               ; preds = %84
  %90 = load i8*, i8** %16, align 8
  %91 = getelementptr inbounds [7 x i8], [7 x i8]* %17, i64 0, i64 0
  %92 = call i32 @dash_read_tmpl_id(i8* %90, i8* %91, i32 7, i8** %20)
  store i32 %92, i32* %19, align 4
  %93 = load i32, i32* %19, align 4
  switch i32 %93, label %157 [
    i32 132, label %94
    i32 130, label %100
    i32 131, label %112
    i32 133, label %124
    i32 129, label %136
    i32 128, label %148
  ]

94:                                               ; preds = %89
  %95 = load i8*, i8** %8, align 8
  %96 = load i32, i32* %15, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i8, i8* %95, i64 %97
  %99 = call i32 @av_strlcpy(i8* %98, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 2)
  store i32 1, i32* %18, align 4
  br label %157

100:                                              ; preds = %89
  %101 = load i8*, i8** %8, align 8
  %102 = load i32, i32* %15, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i8, i8* %101, i64 %103
  %105 = load i64, i64* %9, align 8
  %106 = load i32, i32* %15, align 4
  %107 = sext i32 %106 to i64
  %108 = sub i64 %105, %107
  %109 = getelementptr inbounds [7 x i8], [7 x i8]* %17, i64 0, i64 0
  %110 = load i32, i32* %11, align 4
  %111 = call i32 @snprintf(i8* %104, i64 %108, i8* %109, i32 %110)
  store i32 %111, i32* %18, align 4
  br label %157

112:                                              ; preds = %89
  %113 = load i8*, i8** %8, align 8
  %114 = load i32, i32* %15, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i8, i8* %113, i64 %115
  %117 = load i64, i64* %9, align 8
  %118 = load i32, i32* %15, align 4
  %119 = sext i32 %118 to i64
  %120 = sub i64 %117, %119
  %121 = getelementptr inbounds [7 x i8], [7 x i8]* %17, i64 0, i64 0
  %122 = load i32, i32* %12, align 4
  %123 = call i32 @snprintf(i8* %116, i64 %120, i8* %121, i32 %122)
  store i32 %123, i32* %18, align 4
  br label %157

124:                                              ; preds = %89
  %125 = load i8*, i8** %8, align 8
  %126 = load i32, i32* %15, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i8, i8* %125, i64 %127
  %129 = load i64, i64* %9, align 8
  %130 = load i32, i32* %15, align 4
  %131 = sext i32 %130 to i64
  %132 = sub i64 %129, %131
  %133 = getelementptr inbounds [7 x i8], [7 x i8]* %17, i64 0, i64 0
  %134 = load i32, i32* %13, align 4
  %135 = call i32 @snprintf(i8* %128, i64 %132, i8* %133, i32 %134)
  store i32 %135, i32* %18, align 4
  br label %157

136:                                              ; preds = %89
  %137 = load i8*, i8** %8, align 8
  %138 = load i32, i32* %15, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i8, i8* %137, i64 %139
  %141 = load i64, i64* %9, align 8
  %142 = load i32, i32* %15, align 4
  %143 = sext i32 %142 to i64
  %144 = sub i64 %141, %143
  %145 = getelementptr inbounds [7 x i8], [7 x i8]* %17, i64 0, i64 0
  %146 = load i32, i32* %14, align 4
  %147 = call i32 @snprintf(i8* %140, i64 %144, i8* %145, i32 %146)
  store i32 %147, i32* %18, align 4
  br label %157

148:                                              ; preds = %89
  %149 = load i8*, i8** %8, align 8
  %150 = load i32, i32* %15, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i8, i8* %149, i64 %151
  %153 = load i8*, i8** %16, align 8
  %154 = call i32 @av_strlcpy(i8* %152, i8* %153, i32 2)
  store i32 1, i32* %18, align 4
  %155 = load i8*, i8** %16, align 8
  %156 = getelementptr inbounds i8, i8* %155, i64 1
  store i8* %156, i8** %20, align 8
  br label %157

157:                                              ; preds = %89, %148, %136, %124, %112, %100, %94
  %158 = load i32, i32* %18, align 4
  %159 = load i64, i64* %9, align 8
  %160 = load i32, i32* %15, align 4
  %161 = sext i32 %160 to i64
  %162 = sub i64 %159, %161
  %163 = sub i64 %162, 1
  %164 = call i32 @FFMIN(i32 %158, i64 %163)
  %165 = load i32, i32* %15, align 4
  %166 = add nsw i32 %165, %164
  store i32 %166, i32* %15, align 4
  %167 = load i8*, i8** %20, align 8
  store i8* %167, i8** %16, align 8
  br label %23

168:                                              ; preds = %88, %66, %34
  ret void
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @FFMIN(i32, i64) #1

declare dso_local i32 @av_strlcpy(i8*, i8*, i32) #1

declare dso_local i32 @dash_read_tmpl_id(i8*, i8*, i32, i8**) #1

declare dso_local i32 @snprintf(i8*, i64, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
