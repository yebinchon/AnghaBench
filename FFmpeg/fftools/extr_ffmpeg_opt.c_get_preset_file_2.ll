; ModuleID = '/home/carl/AnghaBench/FFmpeg/fftools/extr_ffmpeg_opt.c_get_preset_file_2.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/fftools/extr_ffmpeg_opt.c_get_preset_file_2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [15 x i8] c"AVCONV_DATADIR\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"HOME\00", align 1
@AVCONV_DATADIR = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [20 x i8] c"%s%s/%s-%s.avpreset\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"/.avconv\00", align 1
@AVIO_FLAG_READ = common dso_local global i32 0, align 4
@int_cb = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [17 x i8] c"%s%s/%s.avpreset\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32**)* @get_preset_file_2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_preset_file_2(i8* %0, i8* %1, i32** %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [1000 x i8], align 16
  %10 = alloca [3 x i8*], align 16
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32** %2, i32*** %6, align 8
  store i32 -1, i32* %8, align 4
  %11 = getelementptr inbounds [3 x i8*], [3 x i8*]* %10, i64 0, i64 0
  %12 = call i8* @getenv(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  store i8* %12, i8** %11, align 8
  %13 = getelementptr inbounds i8*, i8** %11, i64 1
  %14 = call i8* @getenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store i8* %14, i8** %13, align 8
  %15 = getelementptr inbounds i8*, i8** %13, i64 1
  %16 = load i8*, i8** @AVCONV_DATADIR, align 8
  store i8* %16, i8** %15, align 8
  store i32 0, i32* %7, align 4
  br label %17

17:                                               ; preds = %74, %3
  %18 = load i32, i32* %7, align 4
  %19 = getelementptr inbounds [3 x i8*], [3 x i8*]* %10, i64 0, i64 0
  %20 = call i32 @FF_ARRAY_ELEMS(i8** %19)
  %21 = icmp slt i32 %18, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = load i32, i32* %8, align 4
  %24 = icmp slt i32 %23, 0
  br label %25

25:                                               ; preds = %22, %17
  %26 = phi i1 [ false, %17 ], [ %24, %22 ]
  br i1 %26, label %27, label %77

27:                                               ; preds = %25
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [3 x i8*], [3 x i8*]* %10, i64 0, i64 %29
  %31 = load i8*, i8** %30, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %27
  br label %74

34:                                               ; preds = %27
  %35 = load i8*, i8** %5, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %54

37:                                               ; preds = %34
  %38 = getelementptr inbounds [1000 x i8], [1000 x i8]* %9, i64 0, i64 0
  %39 = load i32, i32* %7, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [3 x i8*], [3 x i8*]* %10, i64 0, i64 %40
  %42 = load i8*, i8** %41, align 8
  %43 = load i32, i32* %7, align 4
  %44 = icmp ne i32 %43, 1
  %45 = zext i1 %44 to i64
  %46 = select i1 %44, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0)
  %47 = load i8*, i8** %5, align 8
  %48 = load i8*, i8** %4, align 8
  %49 = call i32 (i8*, i32, i8*, i8*, i8*, i8*, ...) @snprintf(i8* %38, i32 1000, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i8* %42, i8* %46, i8* %47, i8* %48)
  %50 = load i32**, i32*** %6, align 8
  %51 = getelementptr inbounds [1000 x i8], [1000 x i8]* %9, i64 0, i64 0
  %52 = load i32, i32* @AVIO_FLAG_READ, align 4
  %53 = call i32 @avio_open2(i32** %50, i8* %51, i32 %52, i32* @int_cb, i32* null)
  store i32 %53, i32* %8, align 4
  br label %54

54:                                               ; preds = %37, %34
  %55 = load i32, i32* %8, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %73

57:                                               ; preds = %54
  %58 = getelementptr inbounds [1000 x i8], [1000 x i8]* %9, i64 0, i64 0
  %59 = load i32, i32* %7, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds [3 x i8*], [3 x i8*]* %10, i64 0, i64 %60
  %62 = load i8*, i8** %61, align 8
  %63 = load i32, i32* %7, align 4
  %64 = icmp ne i32 %63, 1
  %65 = zext i1 %64 to i64
  %66 = select i1 %64, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0)
  %67 = load i8*, i8** %4, align 8
  %68 = call i32 (i8*, i32, i8*, i8*, i8*, i8*, ...) @snprintf(i8* %58, i32 1000, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i8* %62, i8* %66, i8* %67)
  %69 = load i32**, i32*** %6, align 8
  %70 = getelementptr inbounds [1000 x i8], [1000 x i8]* %9, i64 0, i64 0
  %71 = load i32, i32* @AVIO_FLAG_READ, align 4
  %72 = call i32 @avio_open2(i32** %69, i8* %70, i32 %71, i32* @int_cb, i32* null)
  store i32 %72, i32* %8, align 4
  br label %73

73:                                               ; preds = %57, %54
  br label %74

74:                                               ; preds = %73, %33
  %75 = load i32, i32* %7, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %7, align 4
  br label %17

77:                                               ; preds = %25
  %78 = load i32, i32* %8, align 4
  ret i32 %78
}

declare dso_local i8* @getenv(i8*) #1

declare dso_local i32 @FF_ARRAY_ELEMS(i8**) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*, i8*, ...) #1

declare dso_local i32 @avio_open2(i32**, i8*, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
