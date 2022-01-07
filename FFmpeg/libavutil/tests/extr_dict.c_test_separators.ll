; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavutil/tests/extr_dict.c_test_separators.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavutil/tests/extr_dict.c_test_separators.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"ret %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8, i8)* @test_separators to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_separators(i32* %0, i8 signext %1, i8 signext %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i32*, align 8
  %8 = alloca [2 x i8], align 1
  %9 = alloca [2 x i8], align 1
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8 %1, i8* %5, align 1
  store i8 %2, i8* %6, align 1
  store i32* null, i32** %7, align 8
  %12 = getelementptr inbounds [2 x i8], [2 x i8]* %8, i64 0, i64 0
  %13 = load i8, i8* %5, align 1
  store i8 %13, i8* %12, align 1
  %14 = getelementptr inbounds i8, i8* %12, i64 1
  store i8 0, i8* %14, align 1
  %15 = getelementptr inbounds [2 x i8], [2 x i8]* %9, i64 0, i64 0
  %16 = load i8, i8* %6, align 1
  store i8 %16, i8* %15, align 1
  %17 = getelementptr inbounds i8, i8* %15, i64 1
  store i8 0, i8* %17, align 1
  store i8* null, i8** %10, align 8
  %18 = load i32*, i32** %4, align 8
  %19 = call i32 @av_dict_copy(i32** %7, i32* %18, i32 0)
  %20 = load i32*, i32** %7, align 8
  %21 = call i32 @print_dict(i32* %20)
  %22 = load i32*, i32** %7, align 8
  %23 = load i8, i8* %6, align 1
  %24 = load i8, i8* %5, align 1
  %25 = call i32 @av_dict_get_string(i32* %22, i8** %10, i8 signext %23, i8 signext %24)
  %26 = load i8*, i8** %10, align 8
  %27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %26)
  %28 = call i32 @av_dict_free(i32** %7)
  %29 = load i8*, i8** %10, align 8
  %30 = getelementptr inbounds [2 x i8], [2 x i8]* %9, i64 0, i64 0
  %31 = getelementptr inbounds [2 x i8], [2 x i8]* %8, i64 0, i64 0
  %32 = call i32 @av_dict_parse_string(i32** %7, i8* %29, i8* %30, i8* %31, i32 0)
  store i32 %32, i32* %11, align 4
  %33 = load i32, i32* %11, align 4
  %34 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %33)
  %35 = call i32 @av_freep(i8** %10)
  %36 = load i32*, i32** %7, align 8
  %37 = call i32 @print_dict(i32* %36)
  %38 = call i32 @av_dict_free(i32** %7)
  ret void
}

declare dso_local i32 @av_dict_copy(i32**, i32*, i32) #1

declare dso_local i32 @print_dict(i32*) #1

declare dso_local i32 @av_dict_get_string(i32*, i8**, i8 signext, i8 signext) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @av_dict_free(i32**) #1

declare dso_local i32 @av_dict_parse_string(i32**, i8*, i8*, i8*, i32) #1

declare dso_local i32 @av_freep(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
