; ModuleID = '/home/carl/AnghaBench/FFmpeg/fftools/extr_ffmpeg_opt.c_assert_file_overwrite.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/fftools/extr_ffmpeg_opt.c_assert_file_overwrite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i8*, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@file_overwrite = common dso_local global i64 0, align 8
@no_file_overwrite = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Error, both -y and -n supplied. Exiting.\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"file\00", align 1
@stdin_interaction = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [44 x i8] c"File '%s' already exists. Overwrite? [y/N] \00", align 1
@SIGINT = common dso_local global i32 0, align 4
@SIG_DFL = common dso_local global i32 0, align 4
@AV_LOG_FATAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"Not overwriting - exiting\0A\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"File '%s' already exists. Exiting.\0A\00", align 1
@nb_input_files = common dso_local global i32 0, align 4
@input_files = common dso_local global %struct.TYPE_7__** null, align 8
@AVFMT_NOFILE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [39 x i8] c"Output %s same as Input #%d - exiting\0A\00", align 1
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [45 x i8] c"FFmpeg cannot edit existing files in-place.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @assert_file_overwrite to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @assert_file_overwrite(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = call i8* @avio_find_protocol_name(i8* %6)
  store i8* %7, i8** %3, align 8
  %8 = load i64, i64* @file_overwrite, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %17

10:                                               ; preds = %1
  %11 = load i64, i64* @no_file_overwrite, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %10
  %14 = load i32, i32* @stderr, align 4
  %15 = call i32 (i32, i8*, ...) @fprintf(i32 %14, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %16 = call i32 @exit_program(i32 1)
  br label %17

17:                                               ; preds = %13, %10, %1
  %18 = load i64, i64* @file_overwrite, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %62, label %20

20:                                               ; preds = %17
  %21 = load i8*, i8** %3, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %61

23:                                               ; preds = %20
  %24 = load i8*, i8** %3, align 8
  %25 = call i32 @strcmp(i8* %24, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %61, label %27

27:                                               ; preds = %23
  %28 = load i8*, i8** %2, align 8
  %29 = call i64 @avio_check(i8* %28, i32 0)
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %61

31:                                               ; preds = %27
  %32 = load i64, i64* @stdin_interaction, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %55

34:                                               ; preds = %31
  %35 = load i64, i64* @no_file_overwrite, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %55, label %37

37:                                               ; preds = %34
  %38 = load i32, i32* @stderr, align 4
  %39 = load i8*, i8** %2, align 8
  %40 = call i32 (i32, i8*, ...) @fprintf(i32 %38, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i8* %39)
  %41 = load i32, i32* @stderr, align 4
  %42 = call i32 @fflush(i32 %41)
  %43 = call i32 (...) @term_exit()
  %44 = load i32, i32* @SIGINT, align 4
  %45 = load i32, i32* @SIG_DFL, align 4
  %46 = call i32 @signal(i32 %44, i32 %45)
  %47 = call i32 (...) @read_yesno()
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %53, label %49

49:                                               ; preds = %37
  %50 = load i32, i32* @AV_LOG_FATAL, align 4
  %51 = call i32 (i32*, i32, i8*, ...) @av_log(i32* null, i32 %50, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %52 = call i32 @exit_program(i32 1)
  br label %53

53:                                               ; preds = %49, %37
  %54 = call i32 (...) @term_init()
  br label %60

55:                                               ; preds = %34, %31
  %56 = load i32, i32* @AV_LOG_FATAL, align 4
  %57 = load i8*, i8** %2, align 8
  %58 = call i32 (i32*, i32, i8*, ...) @av_log(i32* null, i32 %56, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i8* %57)
  %59 = call i32 @exit_program(i32 1)
  br label %60

60:                                               ; preds = %55, %53
  br label %61

61:                                               ; preds = %60, %27, %23, %20
  br label %62

62:                                               ; preds = %61, %17
  %63 = load i8*, i8** %3, align 8
  %64 = icmp ne i8* %63, null
  br i1 %64, label %65, label %113

65:                                               ; preds = %62
  %66 = load i8*, i8** %3, align 8
  %67 = call i32 @strcmp(i8* %66, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %113, label %69

69:                                               ; preds = %65
  store i32 0, i32* %4, align 4
  br label %70

70:                                               ; preds = %109, %69
  %71 = load i32, i32* %4, align 4
  %72 = load i32, i32* @nb_input_files, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %112

74:                                               ; preds = %70
  %75 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @input_files, align 8
  %76 = load i32, i32* %4, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %75, i64 %77
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %78, align 8
  store %struct.TYPE_7__* %79, %struct.TYPE_7__** %5, align 8
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 0
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 1
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @AVFMT_NOFILE, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %74
  br label %109

91:                                               ; preds = %74
  %92 = load i8*, i8** %2, align 8
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 0
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  %97 = load i8*, i8** %96, align 8
  %98 = call i32 @strcmp(i8* %92, i8* %97)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %108, label %100

100:                                              ; preds = %91
  %101 = load i32, i32* @AV_LOG_FATAL, align 4
  %102 = load i8*, i8** %2, align 8
  %103 = load i32, i32* %4, align 4
  %104 = call i32 (i32*, i32, i8*, ...) @av_log(i32* null, i32 %101, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0), i8* %102, i32 %103)
  %105 = load i32, i32* @AV_LOG_WARNING, align 4
  %106 = call i32 (i32*, i32, i8*, ...) @av_log(i32* null, i32 %105, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.6, i64 0, i64 0))
  %107 = call i32 @exit_program(i32 1)
  br label %108

108:                                              ; preds = %100, %91
  br label %109

109:                                              ; preds = %108, %90
  %110 = load i32, i32* %4, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %4, align 4
  br label %70

112:                                              ; preds = %70
  br label %113

113:                                              ; preds = %112, %65, %62
  ret void
}

declare dso_local i8* @avio_find_protocol_name(i8*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @exit_program(i32) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i64 @avio_check(i8*, i32) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i32 @term_exit(...) #1

declare dso_local i32 @signal(i32, i32) #1

declare dso_local i32 @read_yesno(...) #1

declare dso_local i32 @av_log(i32*, i32, i8*, ...) #1

declare dso_local i32 @term_init(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
