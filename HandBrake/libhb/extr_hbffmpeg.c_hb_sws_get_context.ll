; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_hbffmpeg.c_hb_sws_get_context.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_hbffmpeg.c_hb_sws_get_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SwsContext = type { i32 }

@SWS_FULL_CHR_H_INT = common dso_local global i32 0, align 4
@SWS_FULL_CHR_H_INP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"srcw\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"srch\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"src_range\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"src_format\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"dstw\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"dsth\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"dst_range\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"dst_format\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"sws_flags\00", align 1
@.str.9 = private unnamed_addr constant [37 x i8] c"Cannot initialize resampling context\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.SwsContext* @hb_sws_get_context(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.SwsContext*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i32 %0, i32* %9, align 4
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %20 = call %struct.SwsContext* (...) @sws_alloc_context()
  store %struct.SwsContext* %20, %struct.SwsContext** %17, align 8
  %21 = load %struct.SwsContext*, %struct.SwsContext** %17, align 8
  %22 = icmp ne %struct.SwsContext* %21, null
  br i1 %22, label %23, label %74

23:                                               ; preds = %8
  %24 = call i32 @handle_jpeg(i32* %11)
  store i32 %24, i32* %18, align 4
  %25 = call i32 @handle_jpeg(i32* %14)
  store i32 %25, i32* %19, align 4
  %26 = load i32, i32* @SWS_FULL_CHR_H_INT, align 4
  %27 = load i32, i32* @SWS_FULL_CHR_H_INP, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* %15, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %15, align 4
  %31 = load %struct.SwsContext*, %struct.SwsContext** %17, align 8
  %32 = load i32, i32* %9, align 4
  %33 = call i32 @av_opt_set_int(%struct.SwsContext* %31, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %32, i32 0)
  %34 = load %struct.SwsContext*, %struct.SwsContext** %17, align 8
  %35 = load i32, i32* %10, align 4
  %36 = call i32 @av_opt_set_int(%struct.SwsContext* %34, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %35, i32 0)
  %37 = load %struct.SwsContext*, %struct.SwsContext** %17, align 8
  %38 = load i32, i32* %18, align 4
  %39 = call i32 @av_opt_set_int(%struct.SwsContext* %37, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %38, i32 0)
  %40 = load %struct.SwsContext*, %struct.SwsContext** %17, align 8
  %41 = load i32, i32* %11, align 4
  %42 = call i32 @av_opt_set_int(%struct.SwsContext* %40, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 %41, i32 0)
  %43 = load %struct.SwsContext*, %struct.SwsContext** %17, align 8
  %44 = load i32, i32* %12, align 4
  %45 = call i32 @av_opt_set_int(%struct.SwsContext* %43, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 %44, i32 0)
  %46 = load %struct.SwsContext*, %struct.SwsContext** %17, align 8
  %47 = load i32, i32* %13, align 4
  %48 = call i32 @av_opt_set_int(%struct.SwsContext* %46, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %47, i32 0)
  %49 = load %struct.SwsContext*, %struct.SwsContext** %17, align 8
  %50 = load i32, i32* %19, align 4
  %51 = call i32 @av_opt_set_int(%struct.SwsContext* %49, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i32 %50, i32 0)
  %52 = load %struct.SwsContext*, %struct.SwsContext** %17, align 8
  %53 = load i32, i32* %14, align 4
  %54 = call i32 @av_opt_set_int(%struct.SwsContext* %52, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i32 %53, i32 0)
  %55 = load %struct.SwsContext*, %struct.SwsContext** %17, align 8
  %56 = load i32, i32* %15, align 4
  %57 = call i32 @av_opt_set_int(%struct.SwsContext* %55, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i32 %56, i32 0)
  %58 = load %struct.SwsContext*, %struct.SwsContext** %17, align 8
  %59 = load i32, i32* %16, align 4
  %60 = call i32 @sws_getCoefficients(i32 %59)
  %61 = load i32, i32* %18, align 4
  %62 = load i32, i32* %16, align 4
  %63 = call i32 @sws_getCoefficients(i32 %62)
  %64 = load i32, i32* %19, align 4
  %65 = call i32 @sws_setColorspaceDetails(%struct.SwsContext* %58, i32 %60, i32 %61, i32 %63, i32 %64, i32 0, i32 65536, i32 65536)
  %66 = load %struct.SwsContext*, %struct.SwsContext** %17, align 8
  %67 = call i64 @sws_init_context(%struct.SwsContext* %66, i32* null, i32* null)
  %68 = icmp slt i64 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %23
  %70 = call i32 @hb_error(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i64 0, i64 0))
  %71 = load %struct.SwsContext*, %struct.SwsContext** %17, align 8
  %72 = call i32 @sws_freeContext(%struct.SwsContext* %71)
  store %struct.SwsContext* null, %struct.SwsContext** %17, align 8
  br label %73

73:                                               ; preds = %69, %23
  br label %74

74:                                               ; preds = %73, %8
  %75 = load %struct.SwsContext*, %struct.SwsContext** %17, align 8
  ret %struct.SwsContext* %75
}

declare dso_local %struct.SwsContext* @sws_alloc_context(...) #1

declare dso_local i32 @handle_jpeg(i32*) #1

declare dso_local i32 @av_opt_set_int(%struct.SwsContext*, i8*, i32, i32) #1

declare dso_local i32 @sws_setColorspaceDetails(%struct.SwsContext*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @sws_getCoefficients(i32) #1

declare dso_local i64 @sws_init_context(%struct.SwsContext*, i32*, i32*) #1

declare dso_local i32 @hb_error(i8*) #1

declare dso_local i32 @sws_freeContext(%struct.SwsContext*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
