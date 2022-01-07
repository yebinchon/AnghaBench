; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_avfilter.c_avfilter_process_command.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_avfilter.c_avfilter_process_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__*, i32 }
%struct.TYPE_7__ = type { {}*, i32 }

@.str = private unnamed_addr constant [5 x i8] c"ping\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"pong from:%s %s\0A\00", align 1
@AV_LOG_INFO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@ENOSYS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @avfilter_process_command(%struct.TYPE_8__* %0, i8* %1, i8* %2, i8* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [256 x i8], align 16
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %15 = load i8*, i8** %9, align 8
  %16 = call i32 @strcmp(i8* %15, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %45, label %18

18:                                               ; preds = %6
  %19 = bitcast [256 x i8]* %14 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %19, i8 0, i64 256, i1 false)
  %20 = load i8*, i8** %11, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds [256 x i8], [256 x i8]* %14, i64 0, i64 0
  store i8* %23, i8** %11, align 8
  store i32 256, i32* %12, align 4
  br label %24

24:                                               ; preds = %22, %18
  %25 = load i8*, i8** %11, align 8
  %26 = load i32, i32* %12, align 4
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @av_strlcatf(i8* %25, i32 %26, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %31, i32 %34)
  %36 = load i8*, i8** %11, align 8
  %37 = getelementptr inbounds [256 x i8], [256 x i8]* %14, i64 0, i64 0
  %38 = icmp eq i8* %36, %37
  br i1 %38, label %39, label %44

39:                                               ; preds = %24
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %41 = load i32, i32* @AV_LOG_INFO, align 4
  %42 = load i8*, i8** %11, align 8
  %43 = call i32 @av_log(%struct.TYPE_8__* %40, i32 %41, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %42)
  br label %44

44:                                               ; preds = %39, %24
  store i32 0, i32* %7, align 4
  br label %80

45:                                               ; preds = %6
  %46 = load i8*, i8** %9, align 8
  %47 = call i32 @strcmp(i8* %46, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %53, label %49

49:                                               ; preds = %45
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %51 = load i8*, i8** %10, align 8
  %52 = call i32 @set_enable_expr(%struct.TYPE_8__* %50, i8* %51)
  store i32 %52, i32* %7, align 4
  br label %80

53:                                               ; preds = %45
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = bitcast {}** %57 to i32 (%struct.TYPE_8__*, i8*, i8*, i8*, i32, i32)**
  %59 = load i32 (%struct.TYPE_8__*, i8*, i8*, i8*, i32, i32)*, i32 (%struct.TYPE_8__*, i8*, i8*, i8*, i32, i32)** %58, align 8
  %60 = icmp ne i32 (%struct.TYPE_8__*, i8*, i8*, i8*, i32, i32)* %59, null
  br i1 %60, label %61, label %75

61:                                               ; preds = %53
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 0
  %66 = bitcast {}** %65 to i32 (%struct.TYPE_8__*, i8*, i8*, i8*, i32, i32)**
  %67 = load i32 (%struct.TYPE_8__*, i8*, i8*, i8*, i32, i32)*, i32 (%struct.TYPE_8__*, i8*, i8*, i8*, i32, i32)** %66, align 8
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %69 = load i8*, i8** %9, align 8
  %70 = load i8*, i8** %10, align 8
  %71 = load i8*, i8** %11, align 8
  %72 = load i32, i32* %12, align 4
  %73 = load i32, i32* %13, align 4
  %74 = call i32 %67(%struct.TYPE_8__* %68, i8* %69, i8* %70, i8* %71, i32 %72, i32 %73)
  store i32 %74, i32* %7, align 4
  br label %80

75:                                               ; preds = %53
  br label %76

76:                                               ; preds = %75
  br label %77

77:                                               ; preds = %76
  %78 = load i32, i32* @ENOSYS, align 4
  %79 = call i32 @AVERROR(i32 %78)
  store i32 %79, i32* %7, align 4
  br label %80

80:                                               ; preds = %77, %61, %49, %44
  %81 = load i32, i32* %7, align 4
  ret i32 %81
}

declare dso_local i32 @strcmp(i8*, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @av_strlcatf(i8*, i32, i8*, i32, i32) #1

declare dso_local i32 @av_log(%struct.TYPE_8__*, i32, i8*, i8*) #1

declare dso_local i32 @set_enable_expr(%struct.TYPE_8__*, i8*) #1

declare dso_local i32 @AVERROR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
