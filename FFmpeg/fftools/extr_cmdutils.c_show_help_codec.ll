; ModuleID = '/home/carl/AnghaBench/FFmpeg/fftools/extr_cmdutils.c_show_help_codec.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/fftools/extr_cmdutils.c_show_help_codec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"No codec name specified.\0A\00", align 1
@.str.1 = private unnamed_addr constant [135 x i8] c"Codec '%s' is known to FFmpeg, but no %s for it are available. FFmpeg might need to be recompiled with additional external libraries.\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"encoders\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"decoders\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"Codec '%s' is not recognized by FFmpeg.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @show_help_codec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @show_help_codec(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i8*, i8** %3, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = load i32, i32* @AV_LOG_ERROR, align 4
  %12 = call i32 (i32*, i32, i8*, ...) @av_log(i32* null, i32 %11, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %62

13:                                               ; preds = %2
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %13
  %17 = load i8*, i8** %3, align 8
  %18 = call i32* @avcodec_find_encoder_by_name(i8* %17)
  br label %22

19:                                               ; preds = %13
  %20 = load i8*, i8** %3, align 8
  %21 = call i32* @avcodec_find_decoder_by_name(i8* %20)
  br label %22

22:                                               ; preds = %19, %16
  %23 = phi i32* [ %18, %16 ], [ %21, %19 ]
  store i32* %23, i32** %6, align 8
  %24 = load i32*, i32** %6, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = load i32*, i32** %6, align 8
  %28 = call i32 @print_codec(i32* %27)
  br label %62

29:                                               ; preds = %22
  %30 = load i8*, i8** %3, align 8
  %31 = call %struct.TYPE_3__* @avcodec_descriptor_get_by_name(i8* %30)
  store %struct.TYPE_3__* %31, %struct.TYPE_3__** %5, align 8
  %32 = icmp ne %struct.TYPE_3__* %31, null
  br i1 %32, label %33, label %57

33:                                               ; preds = %29
  store i32 0, i32* %7, align 4
  br label %34

34:                                               ; preds = %42, %33
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32*, i32** %6, align 8
  %39 = load i32, i32* %4, align 4
  %40 = call i32* @next_codec_for_id(i32 %37, i32* %38, i32 %39)
  store i32* %40, i32** %6, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %42, label %45

42:                                               ; preds = %34
  store i32 1, i32* %7, align 4
  %43 = load i32*, i32** %6, align 8
  %44 = call i32 @print_codec(i32* %43)
  br label %34

45:                                               ; preds = %34
  %46 = load i32, i32* %7, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %56, label %48

48:                                               ; preds = %45
  %49 = load i32, i32* @AV_LOG_ERROR, align 4
  %50 = load i8*, i8** %3, align 8
  %51 = load i32, i32* %4, align 4
  %52 = icmp ne i32 %51, 0
  %53 = zext i1 %52 to i64
  %54 = select i1 %52, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0)
  %55 = call i32 (i32*, i32, i8*, ...) @av_log(i32* null, i32 %49, i8* getelementptr inbounds ([135 x i8], [135 x i8]* @.str.1, i64 0, i64 0), i8* %50, i8* %54)
  br label %56

56:                                               ; preds = %48, %45
  br label %61

57:                                               ; preds = %29
  %58 = load i32, i32* @AV_LOG_ERROR, align 4
  %59 = load i8*, i8** %3, align 8
  %60 = call i32 (i32*, i32, i8*, ...) @av_log(i32* null, i32 %58, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i8* %59)
  br label %61

61:                                               ; preds = %57, %56
  br label %62

62:                                               ; preds = %10, %61, %26
  ret void
}

declare dso_local i32 @av_log(i32*, i32, i8*, ...) #1

declare dso_local i32* @avcodec_find_encoder_by_name(i8*) #1

declare dso_local i32* @avcodec_find_decoder_by_name(i8*) #1

declare dso_local i32 @print_codec(i32*) #1

declare dso_local %struct.TYPE_3__* @avcodec_descriptor_get_by_name(i8*) #1

declare dso_local i32* @next_codec_for_id(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
