; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_webm_chunk.c_chunk_mux_init.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_webm_chunk.c_chunk_mux_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, %struct.TYPE_9__*, %struct.TYPE_8__*, i32, i32, i32 }
%struct.TYPE_9__ = type { i32, %struct.TYPE_10__*, i32 }
%struct.TYPE_8__ = type { i32* }

@.str = private unnamed_addr constant [5 x i8] c"dash\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"cluster_time_limit\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"live\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*)* @chunk_mux_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chunk_mux_init(%struct.TYPE_10__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  %7 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 2
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  store %struct.TYPE_9__* %9, %struct.TYPE_9__** %4, align 8
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 1
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @avformat_alloc_output_context2(%struct.TYPE_10__** %11, i32 %14, i32* null, i32* null)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = load i32, i32* %6, align 4
  store i32 %19, i32* %2, align 4
  br label %78

20:                                               ; preds = %1
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %22, align 8
  store %struct.TYPE_10__* %23, %struct.TYPE_10__** %5, align 8
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 6
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 6
  store i32 %26, i32* %28, align 8
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 5
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 5
  store i32 %31, i32* %33, align 4
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 4
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @av_dict_copy(i32* %35, i32 %38, i32 0)
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 3
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 2
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %46, align 8
  %48 = bitcast %struct.TYPE_9__* %47 to i32**
  store i32* %44, i32** %48, align 8
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 2
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %50, align 8
  %52 = call i32 @av_opt_set_defaults(%struct.TYPE_9__* %51)
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 2
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %54, align 8
  %56 = call i32 @av_opt_set_int(%struct.TYPE_9__* %55, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 1, i32 0)
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 2
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %58, align 8
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @av_opt_set_int(%struct.TYPE_9__* %59, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %62, i32 0)
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 2
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %65, align 8
  %67 = call i32 @av_opt_set_int(%struct.TYPE_9__* %66, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 1, i32 0)
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 1
  store i32 %70, i32* %72, align 4
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 8
  store i32 0, i32* %2, align 4
  br label %78

78:                                               ; preds = %20, %18
  %79 = load i32, i32* %2, align 4
  ret i32 %79
}

declare dso_local i32 @avformat_alloc_output_context2(%struct.TYPE_10__**, i32, i32*, i32*) #1

declare dso_local i32 @av_dict_copy(i32*, i32, i32) #1

declare dso_local i32 @av_opt_set_defaults(%struct.TYPE_9__*) #1

declare dso_local i32 @av_opt_set_int(%struct.TYPE_9__*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
