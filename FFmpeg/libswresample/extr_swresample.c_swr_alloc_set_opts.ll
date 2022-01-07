; ModuleID = '/home/carl/AnghaBench/FFmpeg/libswresample/extr_swresample.c_swr_alloc_set_opts.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libswresample/extr_swresample.c_swr_alloc_set_opts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SwrContext = type { i32, i32, i32, i8* }

@.str = private unnamed_addr constant [4 x i8] c"ocl\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"osf\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"osr\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"icl\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"isf\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"isr\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"ich\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"och\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"uch\00", align 1
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [22 x i8] c"Failed to set option\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.SwrContext* @swr_alloc_set_opts(%struct.SwrContext* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i8* %8) #0 {
  %10 = alloca %struct.SwrContext*, align 8
  %11 = alloca %struct.SwrContext*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  store %struct.SwrContext* %0, %struct.SwrContext** %11, align 8
  store i32 %1, i32* %12, align 4
  store i32 %2, i32* %13, align 4
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store i8* %8, i8** %19, align 8
  %20 = load %struct.SwrContext*, %struct.SwrContext** %11, align 8
  %21 = icmp ne %struct.SwrContext* %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %9
  %23 = call %struct.SwrContext* (...) @swr_alloc()
  store %struct.SwrContext* %23, %struct.SwrContext** %11, align 8
  br label %24

24:                                               ; preds = %22, %9
  %25 = load %struct.SwrContext*, %struct.SwrContext** %11, align 8
  %26 = icmp ne %struct.SwrContext* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %24
  store %struct.SwrContext* null, %struct.SwrContext** %10, align 8
  br label %97

28:                                               ; preds = %24
  %29 = load i32, i32* %18, align 4
  %30 = load %struct.SwrContext*, %struct.SwrContext** %11, align 8
  %31 = getelementptr inbounds %struct.SwrContext, %struct.SwrContext* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  %32 = load i8*, i8** %19, align 8
  %33 = load %struct.SwrContext*, %struct.SwrContext** %11, align 8
  %34 = getelementptr inbounds %struct.SwrContext, %struct.SwrContext* %33, i32 0, i32 3
  store i8* %32, i8** %34, align 8
  %35 = load %struct.SwrContext*, %struct.SwrContext** %11, align 8
  %36 = load i32, i32* %12, align 4
  %37 = call i64 @av_opt_set_int(%struct.SwrContext* %35, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %36, i32 0)
  %38 = icmp slt i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %28
  br label %92

40:                                               ; preds = %28
  %41 = load %struct.SwrContext*, %struct.SwrContext** %11, align 8
  %42 = load i32, i32* %13, align 4
  %43 = call i64 @av_opt_set_int(%struct.SwrContext* %41, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %42, i32 0)
  %44 = icmp slt i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  br label %92

46:                                               ; preds = %40
  %47 = load %struct.SwrContext*, %struct.SwrContext** %11, align 8
  %48 = load i32, i32* %14, align 4
  %49 = call i64 @av_opt_set_int(%struct.SwrContext* %47, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %48, i32 0)
  %50 = icmp slt i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  br label %92

52:                                               ; preds = %46
  %53 = load %struct.SwrContext*, %struct.SwrContext** %11, align 8
  %54 = load i32, i32* %15, align 4
  %55 = call i64 @av_opt_set_int(%struct.SwrContext* %53, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %54, i32 0)
  %56 = icmp slt i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %52
  br label %92

58:                                               ; preds = %52
  %59 = load %struct.SwrContext*, %struct.SwrContext** %11, align 8
  %60 = load i32, i32* %16, align 4
  %61 = call i64 @av_opt_set_int(%struct.SwrContext* %59, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %60, i32 0)
  %62 = icmp slt i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %58
  br label %92

64:                                               ; preds = %58
  %65 = load %struct.SwrContext*, %struct.SwrContext** %11, align 8
  %66 = load i32, i32* %17, align 4
  %67 = call i64 @av_opt_set_int(%struct.SwrContext* %65, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32 %66, i32 0)
  %68 = icmp slt i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %64
  br label %92

70:                                               ; preds = %64
  %71 = load %struct.SwrContext*, %struct.SwrContext** %11, align 8
  %72 = load %struct.SwrContext*, %struct.SwrContext** %11, align 8
  %73 = getelementptr inbounds %struct.SwrContext, %struct.SwrContext* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @av_get_channel_layout_nb_channels(i32 %74)
  %76 = call i64 @av_opt_set_int(%struct.SwrContext* %71, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i32 %75, i32 0)
  %77 = icmp slt i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %70
  br label %92

79:                                               ; preds = %70
  %80 = load %struct.SwrContext*, %struct.SwrContext** %11, align 8
  %81 = load %struct.SwrContext*, %struct.SwrContext** %11, align 8
  %82 = getelementptr inbounds %struct.SwrContext, %struct.SwrContext* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @av_get_channel_layout_nb_channels(i32 %83)
  %85 = call i64 @av_opt_set_int(%struct.SwrContext* %80, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i32 %84, i32 0)
  %86 = icmp slt i64 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %79
  br label %92

88:                                               ; preds = %79
  %89 = load %struct.SwrContext*, %struct.SwrContext** %11, align 8
  %90 = call i64 @av_opt_set_int(%struct.SwrContext* %89, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i32 0, i32 0)
  %91 = load %struct.SwrContext*, %struct.SwrContext** %11, align 8
  store %struct.SwrContext* %91, %struct.SwrContext** %10, align 8
  br label %97

92:                                               ; preds = %87, %78, %69, %63, %57, %51, %45, %39
  %93 = load %struct.SwrContext*, %struct.SwrContext** %11, align 8
  %94 = load i32, i32* @AV_LOG_ERROR, align 4
  %95 = call i32 @av_log(%struct.SwrContext* %93, i32 %94, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0))
  %96 = call i32 @swr_free(%struct.SwrContext** %11)
  store %struct.SwrContext* null, %struct.SwrContext** %10, align 8
  br label %97

97:                                               ; preds = %92, %88, %27
  %98 = load %struct.SwrContext*, %struct.SwrContext** %10, align 8
  ret %struct.SwrContext* %98
}

declare dso_local %struct.SwrContext* @swr_alloc(...) #1

declare dso_local i64 @av_opt_set_int(%struct.SwrContext*, i8*, i32, i32) #1

declare dso_local i32 @av_get_channel_layout_nb_channels(i32) #1

declare dso_local i32 @av_log(%struct.SwrContext*, i32, i8*) #1

declare dso_local i32 @swr_free(%struct.SwrContext**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
