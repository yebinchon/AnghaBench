; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_firequalizer.c_process_command.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_firequalizer.c_process_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i8*, i8* }

@ENOSYS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"gain\00", align 1
@AV_LOG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"equal gain, do not rebuild.\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"gain_entry\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"equal gain_entry, do not rebuild.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i8*, i8*, i8*, i32, i32)* @process_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_command(%struct.TYPE_9__* %0, i8* %1, i8* %2, i8* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_8__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  store %struct.TYPE_8__* %20, %struct.TYPE_8__** %14, align 8
  %21 = load i32, i32* @ENOSYS, align 4
  %22 = call i32 @AVERROR(i32 %21)
  store i32 %22, i32* %15, align 4
  %23 = load i8*, i8** %9, align 8
  %24 = call i32 @strcmp(i8* %23, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %66, label %26

26:                                               ; preds = %6
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %28 = call i8* @SELECT_GAIN(%struct.TYPE_8__* %27)
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %40

30:                                               ; preds = %26
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %32 = call i8* @SELECT_GAIN(%struct.TYPE_8__* %31)
  %33 = load i8*, i8** %10, align 8
  %34 = call i32 @strcmp(i8* %32, i8* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %30
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %38 = load i32, i32* @AV_LOG_DEBUG, align 4
  %39 = call i32 @av_log(%struct.TYPE_9__* %37, i32 %38, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %113

40:                                               ; preds = %30, %26
  %41 = load i8*, i8** %10, align 8
  %42 = call i8* @av_strdup(i8* %41)
  store i8* %42, i8** %16, align 8
  %43 = load i8*, i8** %16, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %40
  %46 = load i32, i32* @ENOMEM, align 4
  %47 = call i32 @AVERROR(i32 %46)
  store i32 %47, i32* %7, align 4
  br label %113

48:                                               ; preds = %40
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %50 = load i8*, i8** %16, align 8
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %52 = call i8* @SELECT_GAIN_ENTRY(%struct.TYPE_8__* %51)
  %53 = call i32 @generate_kernel(%struct.TYPE_9__* %49, i8* %50, i8* %52)
  store i32 %53, i32* %15, align 4
  %54 = load i32, i32* %15, align 4
  %55 = icmp sge i32 %54, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %48
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  %59 = call i32 @av_freep(i8** %58)
  %60 = load i8*, i8** %16, align 8
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  store i8* %60, i8** %62, align 8
  br label %65

63:                                               ; preds = %48
  %64 = call i32 @av_freep(i8** %16)
  br label %65

65:                                               ; preds = %63, %56
  br label %111

66:                                               ; preds = %6
  %67 = load i8*, i8** %9, align 8
  %68 = call i32 @strcmp(i8* %67, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %110, label %70

70:                                               ; preds = %66
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %72 = call i8* @SELECT_GAIN_ENTRY(%struct.TYPE_8__* %71)
  %73 = icmp ne i8* %72, null
  br i1 %73, label %74, label %84

74:                                               ; preds = %70
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %76 = call i8* @SELECT_GAIN_ENTRY(%struct.TYPE_8__* %75)
  %77 = load i8*, i8** %10, align 8
  %78 = call i32 @strcmp(i8* %76, i8* %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %84, label %80

80:                                               ; preds = %74
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %82 = load i32, i32* @AV_LOG_DEBUG, align 4
  %83 = call i32 @av_log(%struct.TYPE_9__* %81, i32 %82, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %113

84:                                               ; preds = %74, %70
  %85 = load i8*, i8** %10, align 8
  %86 = call i8* @av_strdup(i8* %85)
  store i8* %86, i8** %17, align 8
  %87 = load i8*, i8** %17, align 8
  %88 = icmp ne i8* %87, null
  br i1 %88, label %92, label %89

89:                                               ; preds = %84
  %90 = load i32, i32* @ENOMEM, align 4
  %91 = call i32 @AVERROR(i32 %90)
  store i32 %91, i32* %7, align 4
  br label %113

92:                                               ; preds = %84
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %95 = call i8* @SELECT_GAIN(%struct.TYPE_8__* %94)
  %96 = load i8*, i8** %17, align 8
  %97 = call i32 @generate_kernel(%struct.TYPE_9__* %93, i8* %95, i8* %96)
  store i32 %97, i32* %15, align 4
  %98 = load i32, i32* %15, align 4
  %99 = icmp sge i32 %98, 0
  br i1 %99, label %100, label %107

100:                                              ; preds = %92
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 1
  %103 = call i32 @av_freep(i8** %102)
  %104 = load i8*, i8** %17, align 8
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 1
  store i8* %104, i8** %106, align 8
  br label %109

107:                                              ; preds = %92
  %108 = call i32 @av_freep(i8** %17)
  br label %109

109:                                              ; preds = %107, %100
  br label %110

110:                                              ; preds = %109, %66
  br label %111

111:                                              ; preds = %110, %65
  %112 = load i32, i32* %15, align 4
  store i32 %112, i32* %7, align 4
  br label %113

113:                                              ; preds = %111, %89, %80, %45, %36
  %114 = load i32, i32* %7, align 4
  ret i32 %114
}

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i8* @SELECT_GAIN(%struct.TYPE_8__*) #1

declare dso_local i32 @av_log(%struct.TYPE_9__*, i32, i8*) #1

declare dso_local i8* @av_strdup(i8*) #1

declare dso_local i32 @generate_kernel(%struct.TYPE_9__*, i8*, i8*) #1

declare dso_local i8* @SELECT_GAIN_ENTRY(%struct.TYPE_8__*) #1

declare dso_local i32 @av_freep(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
