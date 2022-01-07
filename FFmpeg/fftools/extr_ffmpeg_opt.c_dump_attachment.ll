; ModuleID = '/home/carl/AnghaBench/FFmpeg/fftools/extr_ffmpeg_opt.c_dump_attachment.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/fftools/extr_ffmpeg_opt.c_dump_attachment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__*, i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_8__ = type { i8* }

@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"No extradata to dump in stream #%d:%d.\0A\00", align 1
@nb_input_files = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"filename\00", align 1
@AV_LOG_FATAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [62 x i8] c"No filename specified and no 'filename' tagin stream #%d:%d.\0A\00", align 1
@AVIO_FLAG_WRITE = common dso_local global i32 0, align 4
@int_cb = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [37 x i8] c"Could not open file %s for writing.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, i8*)* @dump_attachment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_attachment(%struct.TYPE_7__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32* null, i32** %6, align 8
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %23, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @AV_LOG_WARNING, align 4
  %16 = load i64, i64* @nb_input_files, align 8
  %17 = sub nsw i64 %16, 1
  %18 = inttoptr i64 %17 to i8*
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = call i32 (i32*, i32, i8*, i8*, ...) @av_log(i32* null, i32 %15, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i8* %18, i32 %21)
  br label %80

23:                                               ; preds = %2
  %24 = load i8*, i8** %4, align 8
  %25 = load i8, i8* %24, align 1
  %26 = icmp ne i8 %25, 0
  br i1 %26, label %37, label %27

27:                                               ; preds = %23
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = call %struct.TYPE_8__* @av_dict_get(i32 %30, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32* null, i32 0)
  store %struct.TYPE_8__* %31, %struct.TYPE_8__** %7, align 8
  %32 = icmp ne %struct.TYPE_8__* %31, null
  br i1 %32, label %33, label %37

33:                                               ; preds = %27
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  store i8* %36, i8** %4, align 8
  br label %37

37:                                               ; preds = %33, %27, %23
  %38 = load i8*, i8** %4, align 8
  %39 = load i8, i8* %38, align 1
  %40 = icmp ne i8 %39, 0
  br i1 %40, label %51, label %41

41:                                               ; preds = %37
  %42 = load i32, i32* @AV_LOG_FATAL, align 4
  %43 = load i64, i64* @nb_input_files, align 8
  %44 = sub nsw i64 %43, 1
  %45 = inttoptr i64 %44 to i8*
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = call i32 (i32*, i32, i8*, i8*, ...) @av_log(i32* null, i32 %42, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.2, i64 0, i64 0), i8* %45, i32 %48)
  %50 = call i32 @exit_program(i32 1)
  br label %51

51:                                               ; preds = %41, %37
  %52 = load i8*, i8** %4, align 8
  %53 = call i32 @assert_file_overwrite(i8* %52)
  %54 = load i8*, i8** %4, align 8
  %55 = load i32, i32* @AVIO_FLAG_WRITE, align 4
  %56 = call i32 @avio_open2(i32** %6, i8* %54, i32 %55, i32* @int_cb, i32* null)
  store i32 %56, i32* %5, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %51
  %59 = load i32, i32* @AV_LOG_FATAL, align 4
  %60 = load i8*, i8** %4, align 8
  %61 = call i32 (i32*, i32, i8*, i8*, ...) @av_log(i32* null, i32 %59, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i8* %60)
  %62 = call i32 @exit_program(i32 1)
  br label %63

63:                                               ; preds = %58, %51
  %64 = load i32*, i32** %6, align 8
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @avio_write(i32* %64, i32 %69, i32 %74)
  %76 = load i32*, i32** %6, align 8
  %77 = call i32 @avio_flush(i32* %76)
  %78 = load i32*, i32** %6, align 8
  %79 = call i32 @avio_close(i32* %78)
  br label %80

80:                                               ; preds = %63, %14
  ret void
}

declare dso_local i32 @av_log(i32*, i32, i8*, i8*, ...) #1

declare dso_local %struct.TYPE_8__* @av_dict_get(i32, i8*, i32*, i32) #1

declare dso_local i32 @exit_program(i32) #1

declare dso_local i32 @assert_file_overwrite(i8*) #1

declare dso_local i32 @avio_open2(i32**, i8*, i32, i32*, i32*) #1

declare dso_local i32 @avio_write(i32*, i32, i32) #1

declare dso_local i32 @avio_flush(i32*) #1

declare dso_local i32 @avio_close(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
