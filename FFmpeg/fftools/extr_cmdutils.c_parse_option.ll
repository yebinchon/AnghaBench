; ModuleID = '/home/carl/AnghaBench/FFmpeg/fftools/extr_cmdutils.c_parse_option.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/fftools/extr_cmdutils.c_parse_option.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i64 }

@OPT_BOOL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"Unrecognized option '%s'\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@HAS_ARG = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [34 x i8] c"Missing argument for option '%s'\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @parse_option(i8* %0, i8* %1, i8* %2, %struct.TYPE_6__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store %struct.TYPE_6__* %3, %struct.TYPE_6__** %9, align 8
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = call %struct.TYPE_6__* @find_option(%struct.TYPE_6__* %12, i8* %13)
  store %struct.TYPE_6__* %14, %struct.TYPE_6__** %10, align 8
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %49, label %19

19:                                               ; preds = %4
  %20 = load i8*, i8** %7, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 0
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp eq i32 %23, 110
  br i1 %24, label %25, label %49

25:                                               ; preds = %19
  %26 = load i8*, i8** %7, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 1
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp eq i32 %29, 111
  br i1 %30, label %31, label %49

31:                                               ; preds = %25
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %33 = load i8*, i8** %7, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 2
  %35 = call %struct.TYPE_6__* @find_option(%struct.TYPE_6__* %32, i8* %34)
  store %struct.TYPE_6__* %35, %struct.TYPE_6__** %10, align 8
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %31
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @OPT_BOOL, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %40
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %8, align 8
  br label %48

48:                                               ; preds = %47, %40, %31
  br label %58

49:                                               ; preds = %25, %19, %4
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @OPT_BOOL, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %49
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8** %8, align 8
  br label %57

57:                                               ; preds = %56, %49
  br label %58

58:                                               ; preds = %57, %48
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %58
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %65 = call %struct.TYPE_6__* @find_option(%struct.TYPE_6__* %64, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  store %struct.TYPE_6__* %65, %struct.TYPE_6__** %10, align 8
  br label %66

66:                                               ; preds = %63, %58
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %77, label %71

71:                                               ; preds = %66
  %72 = load i32, i32* @AV_LOG_ERROR, align 4
  %73 = load i8*, i8** %7, align 8
  %74 = call i32 @av_log(i32* null, i32 %72, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i8* %73)
  %75 = load i32, i32* @EINVAL, align 4
  %76 = call i32 @AVERROR(i32 %75)
  store i32 %76, i32* %5, align 4
  br label %113

77:                                               ; preds = %66
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @HAS_ARG, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %93

84:                                               ; preds = %77
  %85 = load i8*, i8** %8, align 8
  %86 = icmp ne i8* %85, null
  br i1 %86, label %93, label %87

87:                                               ; preds = %84
  %88 = load i32, i32* @AV_LOG_ERROR, align 4
  %89 = load i8*, i8** %7, align 8
  %90 = call i32 @av_log(i32* null, i32 %88, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i8* %89)
  %91 = load i32, i32* @EINVAL, align 4
  %92 = call i32 @AVERROR(i32 %91)
  store i32 %92, i32* %5, align 4
  br label %113

93:                                               ; preds = %84, %77
  %94 = load i8*, i8** %6, align 8
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %96 = load i8*, i8** %7, align 8
  %97 = load i8*, i8** %8, align 8
  %98 = call i32 @write_option(i8* %94, %struct.TYPE_6__* %95, i8* %96, i8* %97)
  store i32 %98, i32* %11, align 4
  %99 = load i32, i32* %11, align 4
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %93
  %102 = load i32, i32* %11, align 4
  store i32 %102, i32* %5, align 4
  br label %113

103:                                              ; preds = %93
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* @HAS_ARG, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  %110 = xor i1 %109, true
  %111 = xor i1 %110, true
  %112 = zext i1 %111 to i32
  store i32 %112, i32* %5, align 4
  br label %113

113:                                              ; preds = %103, %101, %87, %71
  %114 = load i32, i32* %5, align 4
  ret i32 %114
}

declare dso_local %struct.TYPE_6__* @find_option(%struct.TYPE_6__*, i8*) #1

declare dso_local i32 @av_log(i32*, i32, i8*, i8*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @write_option(i8*, %struct.TYPE_6__*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
