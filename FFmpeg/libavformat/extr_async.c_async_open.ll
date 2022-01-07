; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_async.c_async_open.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_async.c_async_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, i32, i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, %struct.TYPE_15__*, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { %struct.TYPE_12__*, i32 }

@async_check_interrupt = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"async:\00", align 1
@BUFFER_CAPACITY = common dso_local global i32 0, align 4
@READ_BACK_CAPACITY = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"ffurl_open failed : %s, %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"pthread_mutex_init failed : %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"pthread_cond_init failed : %s\0A\00", align 1
@async_buffer_task = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [28 x i8] c"pthread_create failed : %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, i8*, i32, i32**)* @async_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @async_open(%struct.TYPE_12__* %0, i8* %1, i32 %2, i32** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32**, align 8
  %10 = alloca %struct.TYPE_13__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_14__, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32** %3, i32*** %9, align 8
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 4
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  store %struct.TYPE_13__* %15, %struct.TYPE_13__** %10, align 8
  %16 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %12, i32 0, i32 0
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  store %struct.TYPE_12__* %17, %struct.TYPE_12__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %12, i32 0, i32 1
  %19 = load i32, i32* @async_check_interrupt, align 4
  store i32 %19, i32* %18, align 8
  %20 = load i8*, i8** %7, align 8
  %21 = call i32 @av_strstart(i8* %20, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %7)
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 0
  %24 = load i32, i32* @BUFFER_CAPACITY, align 4
  %25 = load i32, i32* @READ_BACK_CAPACITY, align 4
  %26 = call i32 @ring_init(i32* %23, i32 %24, i32 %25)
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* %11, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %4
  br label %143

30:                                               ; preds = %4
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i32 0, i32 7
  store i32 %33, i32* %35, align 4
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i32 0, i32 1
  %38 = load i8*, i8** %7, align 8
  %39 = load i32, i32* %8, align 4
  %40 = load i32**, i32*** %9, align 8
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %48 = call i32 @ffurl_open_whitelist(%struct.TYPE_15__** %37, i8* %38, i32 %39, %struct.TYPE_14__* %12, i32** %40, i32 %43, i32 %46, %struct.TYPE_12__* %47)
  store i32 %48, i32* %11, align 4
  %49 = load i32, i32* %11, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %30
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %53 = load i32, i32* @AV_LOG_ERROR, align 4
  %54 = load i32, i32* %11, align 4
  %55 = call i32 @av_err2str(i32 %54)
  %56 = load i8*, i8** %7, align 8
  %57 = call i32 (%struct.TYPE_12__*, i32, i8*, i32, ...) @av_log(%struct.TYPE_12__* %52, i32 %53, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %55, i8* %56)
  br label %139

58:                                               ; preds = %30
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i32 0, i32 1
  %61 = load %struct.TYPE_15__*, %struct.TYPE_15__** %60, align 8
  %62 = call i32 @ffurl_size(%struct.TYPE_15__* %61)
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 6
  store i32 %62, i32* %64, align 8
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %65, i32 0, i32 1
  %67 = load %struct.TYPE_15__*, %struct.TYPE_15__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 8
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %72, i32 0, i32 2
  %74 = call i32 @pthread_mutex_init(i32* %73, i32* null)
  store i32 %74, i32* %11, align 4
  %75 = load i32, i32* %11, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %58
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %79 = load i32, i32* @AV_LOG_ERROR, align 4
  %80 = load i32, i32* %11, align 4
  %81 = call i32 @av_err2str(i32 %80)
  %82 = call i32 (%struct.TYPE_12__*, i32, i8*, i32, ...) @av_log(%struct.TYPE_12__* %78, i32 %79, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %81)
  br label %134

83:                                               ; preds = %58
  %84 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %85 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %84, i32 0, i32 3
  %86 = call i32 @pthread_cond_init(i32* %85, i32* null)
  store i32 %86, i32* %11, align 4
  %87 = load i32, i32* %11, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %95

89:                                               ; preds = %83
  %90 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %91 = load i32, i32* @AV_LOG_ERROR, align 4
  %92 = load i32, i32* %11, align 4
  %93 = call i32 @av_err2str(i32 %92)
  %94 = call i32 (%struct.TYPE_12__*, i32, i8*, i32, ...) @av_log(%struct.TYPE_12__* %90, i32 %91, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %93)
  br label %130

95:                                               ; preds = %83
  %96 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %97 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %96, i32 0, i32 4
  %98 = call i32 @pthread_cond_init(i32* %97, i32* null)
  store i32 %98, i32* %11, align 4
  %99 = load i32, i32* %11, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %107

101:                                              ; preds = %95
  %102 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %103 = load i32, i32* @AV_LOG_ERROR, align 4
  %104 = load i32, i32* %11, align 4
  %105 = call i32 @av_err2str(i32 %104)
  %106 = call i32 (%struct.TYPE_12__*, i32, i8*, i32, ...) @av_log(%struct.TYPE_12__* %102, i32 %103, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %105)
  br label %126

107:                                              ; preds = %95
  %108 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %109 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %108, i32 0, i32 5
  %110 = load i32, i32* @async_buffer_task, align 4
  %111 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %112 = call i32 @pthread_create(i32* %109, i32* null, i32 %110, %struct.TYPE_12__* %111)
  store i32 %112, i32* %11, align 4
  %113 = load i32, i32* %11, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %121

115:                                              ; preds = %107
  %116 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %117 = load i32, i32* @AV_LOG_ERROR, align 4
  %118 = load i32, i32* %11, align 4
  %119 = call i32 @av_err2str(i32 %118)
  %120 = call i32 (%struct.TYPE_12__*, i32, i8*, i32, ...) @av_log(%struct.TYPE_12__* %116, i32 %117, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 %119)
  br label %122

121:                                              ; preds = %107
  store i32 0, i32* %5, align 4
  br label %145

122:                                              ; preds = %115
  %123 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %124 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %123, i32 0, i32 4
  %125 = call i32 @pthread_cond_destroy(i32* %124)
  br label %126

126:                                              ; preds = %122, %101
  %127 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %128 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %127, i32 0, i32 3
  %129 = call i32 @pthread_cond_destroy(i32* %128)
  br label %130

130:                                              ; preds = %126, %89
  %131 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %132 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %131, i32 0, i32 2
  %133 = call i32 @pthread_mutex_destroy(i32* %132)
  br label %134

134:                                              ; preds = %130, %77
  %135 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %136 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %135, i32 0, i32 1
  %137 = load %struct.TYPE_15__*, %struct.TYPE_15__** %136, align 8
  %138 = call i32 @ffurl_close(%struct.TYPE_15__* %137)
  br label %139

139:                                              ; preds = %134, %51
  %140 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %141 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %140, i32 0, i32 0
  %142 = call i32 @ring_destroy(i32* %141)
  br label %143

143:                                              ; preds = %139, %29
  %144 = load i32, i32* %11, align 4
  store i32 %144, i32* %5, align 4
  br label %145

145:                                              ; preds = %143, %121
  %146 = load i32, i32* %5, align 4
  ret i32 %146
}

declare dso_local i32 @av_strstart(i8*, i8*, i8**) #1

declare dso_local i32 @ring_init(i32*, i32, i32) #1

declare dso_local i32 @ffurl_open_whitelist(%struct.TYPE_15__**, i8*, i32, %struct.TYPE_14__*, i32**, i32, i32, %struct.TYPE_12__*) #1

declare dso_local i32 @av_log(%struct.TYPE_12__*, i32, i8*, i32, ...) #1

declare dso_local i32 @av_err2str(i32) #1

declare dso_local i32 @ffurl_size(%struct.TYPE_15__*) #1

declare dso_local i32 @pthread_mutex_init(i32*, i32*) #1

declare dso_local i32 @pthread_cond_init(i32*, i32*) #1

declare !callback !2 dso_local i32 @pthread_create(i32*, i32*, i32, %struct.TYPE_12__*) #1

declare dso_local i32 @pthread_cond_destroy(i32*) #1

declare dso_local i32 @pthread_mutex_destroy(i32*) #1

declare dso_local i32 @ffurl_close(%struct.TYPE_15__*) #1

declare dso_local i32 @ring_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{!3}
!3 = !{i64 2, i64 3, i1 false}
