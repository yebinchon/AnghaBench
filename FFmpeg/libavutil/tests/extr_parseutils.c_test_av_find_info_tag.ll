; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavutil/tests/extr_parseutils.c_test_av_find_info_tag.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavutil/tests/extr_parseutils.c_test_av_find_info_tag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_av_find_info_tag.args = internal constant [60 x i8] c"?tag1=val1&tag2=val2&tag3=val3&tag41=value 41&tag42=random1\00", align 16
@test_av_find_info_tag.tags = internal global [7 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [5 x i8] c"tag1\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"tag2\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"tag3\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"tag4\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"tag41\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"41\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"random1\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"%d. %s found: %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"%d. %s not found\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_av_find_info_tag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_av_find_info_tag() #0 {
  %1 = alloca [16 x i8], align 16
  %2 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  br label %3

3:                                                ; preds = %31, %0
  %4 = load i32, i32* %2, align 4
  %5 = call i32 @FF_ARRAY_ELEMS(i8** getelementptr inbounds ([7 x i8*], [7 x i8*]* @test_av_find_info_tag.tags, i64 0, i64 0))
  %6 = icmp slt i32 %4, %5
  br i1 %6, label %7, label %34

7:                                                ; preds = %3
  %8 = getelementptr inbounds [16 x i8], [16 x i8]* %1, i64 0, i64 0
  %9 = load i32, i32* %2, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [7 x i8*], [7 x i8*]* @test_av_find_info_tag.tags, i64 0, i64 %10
  %12 = load i8*, i8** %11, align 8
  %13 = call i64 @av_find_info_tag(i8* %8, i32 16, i8* %12, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @test_av_find_info_tag.args, i64 0, i64 0))
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %23

15:                                               ; preds = %7
  %16 = load i32, i32* %2, align 4
  %17 = load i32, i32* %2, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [7 x i8*], [7 x i8*]* @test_av_find_info_tag.tags, i64 0, i64 %18
  %20 = load i8*, i8** %19, align 8
  %21 = getelementptr inbounds [16 x i8], [16 x i8]* %1, i64 0, i64 0
  %22 = call i32 (i8*, i32, i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0), i32 %16, i8* %20, i8* %21)
  br label %30

23:                                               ; preds = %7
  %24 = load i32, i32* %2, align 4
  %25 = load i32, i32* %2, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [7 x i8*], [7 x i8*]* @test_av_find_info_tag.tags, i64 0, i64 %26
  %28 = load i8*, i8** %27, align 8
  %29 = call i32 (i8*, i32, i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0), i32 %24, i8* %28)
  br label %30

30:                                               ; preds = %23, %15
  br label %31

31:                                               ; preds = %30
  %32 = load i32, i32* %2, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %2, align 4
  br label %3

34:                                               ; preds = %3
  ret void
}

declare dso_local i32 @FF_ARRAY_ELEMS(i8**) #1

declare dso_local i64 @av_find_info_tag(i8*, i32, i8*, i8*) #1

declare dso_local i32 @printf(i8*, i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
