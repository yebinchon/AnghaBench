; ModuleID = '/home/carl/AnghaBench/FFmpeg/fftools/extr_ffprobe.c_match_section.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/fftools/extr_ffprobe.c_match_section.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.section = type { i32, i64, i64 }

@sections = common dso_local global %struct.section* null, align 8
@AV_LOG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"'%s' matches section with unique name '%s'\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32*)* @match_section to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @match_section(i8* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.section*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %10

10:                                               ; preds = %59, %3
  %11 = load i32, i32* %7, align 4
  %12 = load %struct.section*, %struct.section** @sections, align 8
  %13 = call i32 @FF_ARRAY_ELEMS(%struct.section* %12)
  %14 = icmp slt i32 %11, %13
  br i1 %14, label %15, label %62

15:                                               ; preds = %10
  %16 = load %struct.section*, %struct.section** @sections, align 8
  %17 = load i32, i32* %7, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.section, %struct.section* %16, i64 %18
  store %struct.section* %19, %struct.section** %9, align 8
  %20 = load i8*, i8** %4, align 8
  %21 = load %struct.section*, %struct.section** %9, align 8
  %22 = getelementptr inbounds %struct.section, %struct.section* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @strcmp(i8* %20, i64 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %38

26:                                               ; preds = %15
  %27 = load %struct.section*, %struct.section** %9, align 8
  %28 = getelementptr inbounds %struct.section, %struct.section* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %58

31:                                               ; preds = %26
  %32 = load i8*, i8** %4, align 8
  %33 = load %struct.section*, %struct.section** %9, align 8
  %34 = getelementptr inbounds %struct.section, %struct.section* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @strcmp(i8* %32, i64 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %58, label %38

38:                                               ; preds = %31, %15
  %39 = load i32, i32* @AV_LOG_DEBUG, align 4
  %40 = load i8*, i8** %4, align 8
  %41 = load %struct.section*, %struct.section** %9, align 8
  %42 = getelementptr inbounds %struct.section, %struct.section* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.section*, %struct.section** %9, align 8
  %45 = getelementptr inbounds %struct.section, %struct.section* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = call i64 @av_x_if_null(i64 %43, i64 %46)
  %48 = inttoptr i64 %47 to i8*
  %49 = call i32 @av_log(i32* null, i32 %39, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i8* %40, i8* %48)
  %50 = load i32, i32* %8, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %8, align 4
  %52 = load %struct.section*, %struct.section** %9, align 8
  %53 = getelementptr inbounds %struct.section, %struct.section* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* %5, align 4
  %56 = load i32*, i32** %6, align 8
  %57 = call i32 @mark_section_show_entries(i32 %54, i32 %55, i32* %56)
  br label %58

58:                                               ; preds = %38, %31, %26
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %7, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %7, align 4
  br label %10

62:                                               ; preds = %10
  %63 = load i32, i32* %8, align 4
  ret i32 %63
}

declare dso_local i32 @FF_ARRAY_ELEMS(%struct.section*) #1

declare dso_local i32 @strcmp(i8*, i64) #1

declare dso_local i32 @av_log(i32*, i32, i8*, i8*, i8*) #1

declare dso_local i64 @av_x_if_null(i64, i64) #1

declare dso_local i32 @mark_section_show_entries(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
