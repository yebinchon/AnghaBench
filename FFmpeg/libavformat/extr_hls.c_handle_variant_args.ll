; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_hls.c_handle_variant_args.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_hls.c_handle_variant_args.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.variant_info = type { i8*, i8*, i8*, i8* }

@.str = private unnamed_addr constant [11 x i8] c"BANDWIDTH=\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"AUDIO=\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"VIDEO=\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"SUBTITLES=\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.variant_info*, i8*, i32, i8**, i32*)* @handle_variant_args to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_variant_args(%struct.variant_info* %0, i8* %1, i32 %2, i8** %3, i32* %4) #0 {
  %6 = alloca %struct.variant_info*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8**, align 8
  %10 = alloca i32*, align 8
  store %struct.variant_info* %0, %struct.variant_info** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8** %3, i8*** %9, align 8
  store i32* %4, i32** %10, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = load i32, i32* %8, align 4
  %13 = call i32 @strncmp(i8* %11, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %5
  %16 = load %struct.variant_info*, %struct.variant_info** %6, align 8
  %17 = getelementptr inbounds %struct.variant_info, %struct.variant_info* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = load i8**, i8*** %9, align 8
  store i8* %18, i8** %19, align 8
  %20 = load i32*, i32** %10, align 8
  store i32 8, i32* %20, align 4
  br label %57

21:                                               ; preds = %5
  %22 = load i8*, i8** %7, align 8
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @strncmp(i8* %22, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %32, label %26

26:                                               ; preds = %21
  %27 = load %struct.variant_info*, %struct.variant_info** %6, align 8
  %28 = getelementptr inbounds %struct.variant_info, %struct.variant_info* %27, i32 0, i32 1
  %29 = load i8*, i8** %28, align 8
  %30 = load i8**, i8*** %9, align 8
  store i8* %29, i8** %30, align 8
  %31 = load i32*, i32** %10, align 8
  store i32 8, i32* %31, align 4
  br label %56

32:                                               ; preds = %21
  %33 = load i8*, i8** %7, align 8
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @strncmp(i8* %33, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %43, label %37

37:                                               ; preds = %32
  %38 = load %struct.variant_info*, %struct.variant_info** %6, align 8
  %39 = getelementptr inbounds %struct.variant_info, %struct.variant_info* %38, i32 0, i32 2
  %40 = load i8*, i8** %39, align 8
  %41 = load i8**, i8*** %9, align 8
  store i8* %40, i8** %41, align 8
  %42 = load i32*, i32** %10, align 8
  store i32 8, i32* %42, align 4
  br label %55

43:                                               ; preds = %32
  %44 = load i8*, i8** %7, align 8
  %45 = load i32, i32* %8, align 4
  %46 = call i32 @strncmp(i8* %44, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %54, label %48

48:                                               ; preds = %43
  %49 = load %struct.variant_info*, %struct.variant_info** %6, align 8
  %50 = getelementptr inbounds %struct.variant_info, %struct.variant_info* %49, i32 0, i32 3
  %51 = load i8*, i8** %50, align 8
  %52 = load i8**, i8*** %9, align 8
  store i8* %51, i8** %52, align 8
  %53 = load i32*, i32** %10, align 8
  store i32 8, i32* %53, align 4
  br label %54

54:                                               ; preds = %48, %43
  br label %55

55:                                               ; preds = %54, %37
  br label %56

56:                                               ; preds = %55, %26
  br label %57

57:                                               ; preds = %56, %15
  ret void
}

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
