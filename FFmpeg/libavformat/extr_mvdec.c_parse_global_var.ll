; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_mvdec.c_parse_global_var.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_mvdec.c_parse_global_var.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32*, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i8*, i8* }

@.str = private unnamed_addr constant [15 x i8] c"__NUM_I_TRACKS\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"__NUM_A_TRACKS\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"COMMENT\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"TITLE\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"LOOP_MODE\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"NUM_LOOPS\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"OPTIMIZED\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32*, i8*, i32)* @parse_global_var to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_global_var(%struct.TYPE_6__* %0, i32* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_5__*, align 8
  %11 = alloca i32*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  store %struct.TYPE_5__* %14, %struct.TYPE_5__** %10, align 8
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  store i32* %17, i32** %11, align 8
  %18 = load i8*, i8** %8, align 8
  %19 = call i32 @strcmp(i8* %18, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %4
  %22 = load i32*, i32** %11, align 8
  %23 = load i32, i32* %9, align 4
  %24 = call i8* @var_read_int(i32* %22, i32 %23)
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 1
  store i8* %24, i8** %26, align 8
  br label %71

27:                                               ; preds = %4
  %28 = load i8*, i8** %8, align 8
  %29 = call i32 @strcmp(i8* %28, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %37, label %31

31:                                               ; preds = %27
  %32 = load i32*, i32** %11, align 8
  %33 = load i32, i32* %9, align 4
  %34 = call i8* @var_read_int(i32* %32, i32 %33)
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  store i8* %34, i8** %36, align 8
  br label %70

37:                                               ; preds = %27
  %38 = load i8*, i8** %8, align 8
  %39 = call i32 @strcmp(i8* %38, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %37
  %42 = load i8*, i8** %8, align 8
  %43 = call i32 @strcmp(i8* %42, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %50, label %45

45:                                               ; preds = %41, %37
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %47 = load i8*, i8** %8, align 8
  %48 = load i32, i32* %9, align 4
  %49 = call i32 @var_read_metadata(%struct.TYPE_6__* %46, i8* %47, i32 %48)
  br label %69

50:                                               ; preds = %41
  %51 = load i8*, i8** %8, align 8
  %52 = call i32 @strcmp(i8* %51, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %62

54:                                               ; preds = %50
  %55 = load i8*, i8** %8, align 8
  %56 = call i32 @strcmp(i8* %55, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %54
  %59 = load i8*, i8** %8, align 8
  %60 = call i32 @strcmp(i8* %59, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %66, label %62

62:                                               ; preds = %58, %54, %50
  %63 = load i32*, i32** %11, align 8
  %64 = load i32, i32* %9, align 4
  %65 = call i32 @avio_skip(i32* %63, i32 %64)
  br label %68

66:                                               ; preds = %58
  %67 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %67, i32* %5, align 4
  br label %72

68:                                               ; preds = %62
  br label %69

69:                                               ; preds = %68, %45
  br label %70

70:                                               ; preds = %69, %31
  br label %71

71:                                               ; preds = %70, %21
  store i32 0, i32* %5, align 4
  br label %72

72:                                               ; preds = %71, %66
  %73 = load i32, i32* %5, align 4
  ret i32 %73
}

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i8* @var_read_int(i32*, i32) #1

declare dso_local i32 @var_read_metadata(%struct.TYPE_6__*, i8*, i32) #1

declare dso_local i32 @avio_skip(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
