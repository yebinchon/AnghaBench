; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_gxf.c_add_timecode_metadata.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_gxf.c_add_timecode_metadata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [21 x i8] c"%02d:%02d:%02d%c%02d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32**, i8*, i32, i32)* @add_timecode_metadata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_timecode_metadata(i32** %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [128 x i8], align 16
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32** %0, i32*** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %17 = load i32, i32* %8, align 4
  %18 = and i32 %17, 255
  store i32 %18, i32* %11, align 4
  %19 = load i32, i32* %9, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %4
  %22 = load i32, i32* %11, align 4
  %23 = load i32, i32* %9, align 4
  %24 = sdiv i32 %22, %23
  br label %27

25:                                               ; preds = %4
  %26 = load i32, i32* %11, align 4
  br label %27

27:                                               ; preds = %25, %21
  %28 = phi i32 [ %24, %21 ], [ %26, %25 ]
  store i32 %28, i32* %12, align 4
  %29 = load i32, i32* %8, align 4
  %30 = ashr i32 %29, 8
  %31 = and i32 %30, 255
  store i32 %31, i32* %13, align 4
  %32 = load i32, i32* %8, align 4
  %33 = ashr i32 %32, 16
  %34 = and i32 %33, 255
  store i32 %34, i32* %14, align 4
  %35 = load i32, i32* %8, align 4
  %36 = ashr i32 %35, 24
  %37 = and i32 %36, 31
  store i32 %37, i32* %15, align 4
  %38 = load i32, i32* %8, align 4
  %39 = ashr i32 %38, 29
  %40 = and i32 %39, 1
  store i32 %40, i32* %16, align 4
  %41 = load i32, i32* %8, align 4
  %42 = ashr i32 %41, 31
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %27
  store i32 0, i32* %5, align 4
  br label %61

45:                                               ; preds = %27
  %46 = getelementptr inbounds [128 x i8], [128 x i8]* %10, i64 0, i64 0
  %47 = load i32, i32* %15, align 4
  %48 = load i32, i32* %14, align 4
  %49 = load i32, i32* %13, align 4
  %50 = load i32, i32* %16, align 4
  %51 = icmp ne i32 %50, 0
  %52 = zext i1 %51 to i64
  %53 = select i1 %51, i32 59, i32 58
  %54 = trunc i32 %53 to i8
  %55 = load i32, i32* %12, align 4
  %56 = call i32 @snprintf(i8* %46, i32 128, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %47, i32 %48, i32 %49, i8 signext %54, i32 %55)
  %57 = load i32**, i32*** %6, align 8
  %58 = load i8*, i8** %7, align 8
  %59 = getelementptr inbounds [128 x i8], [128 x i8]* %10, i64 0, i64 0
  %60 = call i32 @av_dict_set(i32** %57, i8* %58, i8* %59, i32 0)
  store i32 %60, i32* %5, align 4
  br label %61

61:                                               ; preds = %45, %44
  %62 = load i32, i32* %5, align 4
  ret i32 %62
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i32, i32, i8 signext, i32) #1

declare dso_local i32 @av_dict_set(i32**, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
