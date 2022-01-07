; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavutil/tests/extr_cpu.c_main.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavutil/tests/extr_cpu.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i64 }

@__const.main.threads = private unnamed_addr constant [5 x i8] c"auto\00", align 1
@cpu_flag_tab = common dso_local global %struct.TYPE_2__* null, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Table missing %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"c:t:\00", align 1
@optarg = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [27 x i8] c"Invalid thread count '%s'\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"raw\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"effective\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"threads = %s (cpu_count = %d)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [5 x i8], align 1
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %15 = call i8* (...) @av_get_cpu_flags()
  %16 = ptrtoint i8* %15 to i32
  store i32 %16, i32* %6, align 4
  %17 = call i32 (...) @av_cpu_count()
  store i32 %17, i32* %8, align 4
  %18 = bitcast [5 x i8]* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %18, i8* align 1 getelementptr inbounds ([5 x i8], [5 x i8]* @__const.main.threads, i32 0, i32 0), i64 5, i1 false)
  store i32 0, i32* %10, align 4
  br label %19

19:                                               ; preds = %46, %2
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cpu_flag_tab, align 8
  %21 = load i32, i32* %10, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %49

27:                                               ; preds = %19
  store i32 0, i32* %11, align 4
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cpu_flag_tab, align 8
  %29 = load i32, i32* %10, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = call i64 @av_parse_cpu_caps(i32* %11, i8* %33)
  %35 = icmp slt i64 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %27
  %37 = load i32, i32* @stderr, align 4
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cpu_flag_tab, align 8
  %39 = load i32, i32* %10, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  %44 = call i32 @fprintf(i32 %37, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* %43)
  store i32 4, i32* %3, align 4
  br label %100

45:                                               ; preds = %27
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %10, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %10, align 4
  br label %19

49:                                               ; preds = %19
  %50 = load i32, i32* %6, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %49
  store i32 1, i32* %3, align 4
  br label %100

53:                                               ; preds = %49
  br label %54

54:                                               ; preds = %85, %53
  %55 = load i32, i32* %4, align 4
  %56 = load i8**, i8*** %5, align 8
  %57 = call i32 @getopt(i32 %55, i8** %56, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store i32 %57, i32* %12, align 4
  %58 = load i32, i32* %12, align 4
  %59 = icmp eq i32 %58, -1
  br i1 %59, label %60, label %61

60:                                               ; preds = %54
  br label %86

61:                                               ; preds = %54
  %62 = load i32, i32* %12, align 4
  switch i32 %62, label %85 [
    i32 99, label %63
    i32 116, label %73
  ]

63:                                               ; preds = %61
  %64 = call i8* (...) @av_get_cpu_flags()
  %65 = ptrtoint i8* %64 to i32
  store i32 %65, i32* %13, align 4
  %66 = load i8*, i8** @optarg, align 8
  %67 = call i64 @av_parse_cpu_caps(i32* %13, i8* %66)
  %68 = icmp slt i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %63
  store i32 2, i32* %3, align 4
  br label %100

70:                                               ; preds = %63
  %71 = load i32, i32* %13, align 4
  %72 = call i32 @av_force_cpu_flags(i32 %71)
  br label %85

73:                                               ; preds = %61
  %74 = getelementptr inbounds [5 x i8], [5 x i8]* %9, i64 0, i64 0
  %75 = load i8*, i8** @optarg, align 8
  %76 = call i32 @av_strlcpy(i8* %74, i8* %75, i32 5)
  store i32 %76, i32* %14, align 4
  %77 = load i32, i32* %14, align 4
  %78 = sext i32 %77 to i64
  %79 = icmp uge i64 %78, 5
  br i1 %79, label %80, label %84

80:                                               ; preds = %73
  %81 = load i32, i32* @stderr, align 4
  %82 = load i8*, i8** @optarg, align 8
  %83 = call i32 @fprintf(i32 %81, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i8* %82)
  store i32 2, i32* %3, align 4
  br label %100

84:                                               ; preds = %73
  br label %85

85:                                               ; preds = %84, %61, %70
  br label %54

86:                                               ; preds = %60
  %87 = call i8* (...) @av_get_cpu_flags()
  %88 = ptrtoint i8* %87 to i32
  store i32 %88, i32* %7, align 4
  %89 = load i32, i32* %7, align 4
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %86
  store i32 3, i32* %3, align 4
  br label %100

92:                                               ; preds = %86
  %93 = load i32, i32* %6, align 4
  %94 = call i32 @print_cpu_flags(i32 %93, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %95 = load i32, i32* %7, align 4
  %96 = call i32 @print_cpu_flags(i32 %95, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  %97 = getelementptr inbounds [5 x i8], [5 x i8]* %9, i64 0, i64 0
  %98 = load i32, i32* %8, align 4
  %99 = call i32 @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i8* %97, i32 %98)
  store i32 0, i32* %3, align 4
  br label %100

100:                                              ; preds = %92, %91, %80, %69, %52, %36
  %101 = load i32, i32* %3, align 4
  ret i32 %101
}

declare dso_local i8* @av_get_cpu_flags(...) #1

declare dso_local i32 @av_cpu_count(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @av_parse_cpu_caps(i32*, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @av_force_cpu_flags(i32) #1

declare dso_local i32 @av_strlcpy(i8*, i8*, i32) #1

declare dso_local i32 @print_cpu_flags(i32, i8*) #1

declare dso_local i32 @printf(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
