; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_stream.c_hb_stream_open.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_stream.c_hb_stream_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32, %struct.TYPE_14__*, i32*, %struct.TYPE_13__*, i32* }
%struct.TYPE_13__ = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"hb_stream_open: title is null\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"hb_stream_open: open %s failed\00", align 1
@.str.3 = private unnamed_addr constant [57 x i8] c"hb_stream_open: can't allocate space for %s stream state\00", align 1
@HBTF_NO_IDR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_14__* @hb_stream_open(i32* %0, i8* %1, %struct.TYPE_13__* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_14__*, align 8
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.TYPE_13__* %2, %struct.TYPE_13__** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %13 = icmp eq %struct.TYPE_13__* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %4
  %15 = call i32 (i8*, ...) @hb_log(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %5, align 8
  br label %118

16:                                               ; preds = %4
  %17 = load i8*, i8** %7, align 8
  %18 = call i32* @hb_fopen(i8* %17, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i32* %18, i32** %10, align 8
  %19 = load i32*, i32** %10, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %16
  %22 = load i8*, i8** %7, align 8
  %23 = call i32 (i8*, ...) @hb_log(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i8* %22)
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %5, align 8
  br label %118

24:                                               ; preds = %16
  %25 = call %struct.TYPE_14__* @calloc(i32 40, i32 1)
  store %struct.TYPE_14__* %25, %struct.TYPE_14__** %11, align 8
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %27 = icmp eq %struct.TYPE_14__* %26, null
  br i1 %27, label %28, label %33

28:                                               ; preds = %24
  %29 = load i32*, i32** %10, align 8
  %30 = call i32 @fclose(i32* %29)
  %31 = load i8*, i8** %7, align 8
  %32 = call i32 (i8*, ...) @hb_log(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.3, i64 0, i64 0), i8* %31)
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %5, align 8
  br label %118

33:                                               ; preds = %24
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @HBTF_NO_IDR, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %33
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %41, i32 0, i32 0
  store i32 1, i32* %42, align 8
  br label %43

43:                                               ; preds = %40, %33
  %44 = load i32*, i32** %6, align 8
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i32 0, i32 5
  store i32* %44, i32** %46, align 8
  %47 = load i32*, i32** %10, align 8
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %48, i32 0, i32 3
  store i32* %47, i32** %49, align 8
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %51, i32 0, i32 4
  store %struct.TYPE_13__* %50, %struct.TYPE_13__** %52, align 8
  %53 = load i32, i32* %9, align 4
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 4
  %56 = load i8*, i8** %7, align 8
  %57 = call %struct.TYPE_14__* @strdup(i8* %56)
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 2
  store %struct.TYPE_14__* %57, %struct.TYPE_14__** %59, align 8
  %60 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i32 0, i32 2
  %62 = load %struct.TYPE_14__*, %struct.TYPE_14__** %61, align 8
  %63 = icmp ne %struct.TYPE_14__* %62, null
  br i1 %63, label %64, label %93

64:                                               ; preds = %43
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %66 = call i64 @hb_stream_get_type(%struct.TYPE_14__* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %78

68:                                               ; preds = %64
  %69 = load i32, i32* %9, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %74, label %71

71:                                               ; preds = %68
  %72 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %73 = call i32 @prune_streams(%struct.TYPE_14__* %72)
  br label %74

74:                                               ; preds = %71, %68
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %76 = call i32 @hb_stream_seek(%struct.TYPE_14__* %75, i32 0)
  %77 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  store %struct.TYPE_14__* %77, %struct.TYPE_14__** %5, align 8
  br label %118

78:                                               ; preds = %64
  %79 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %80 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %79, i32 0, i32 3
  %81 = load i32*, i32** %80, align 8
  %82 = call i32 @fclose(i32* %81)
  %83 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %84 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %83, i32 0, i32 3
  store i32* null, i32** %84, align 8
  %85 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %86 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %87 = load i32, i32* %9, align 4
  %88 = call i64 @ffmpeg_open(%struct.TYPE_14__* %85, %struct.TYPE_13__* %86, i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %78
  %91 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  store %struct.TYPE_14__* %91, %struct.TYPE_14__** %5, align 8
  br label %118

92:                                               ; preds = %78
  br label %93

93:                                               ; preds = %92, %43
  %94 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %95 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %94, i32 0, i32 3
  %96 = load i32*, i32** %95, align 8
  %97 = icmp ne i32* %96, null
  br i1 %97, label %98, label %103

98:                                               ; preds = %93
  %99 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %100 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %99, i32 0, i32 3
  %101 = load i32*, i32** %100, align 8
  %102 = call i32 @fclose(i32* %101)
  br label %103

103:                                              ; preds = %98, %93
  %104 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %105 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %104, i32 0, i32 2
  %106 = load %struct.TYPE_14__*, %struct.TYPE_14__** %105, align 8
  %107 = icmp ne %struct.TYPE_14__* %106, null
  br i1 %107, label %108, label %113

108:                                              ; preds = %103
  %109 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %110 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %109, i32 0, i32 2
  %111 = load %struct.TYPE_14__*, %struct.TYPE_14__** %110, align 8
  %112 = call i32 @free(%struct.TYPE_14__* %111)
  br label %113

113:                                              ; preds = %108, %103
  %114 = load i8*, i8** %7, align 8
  %115 = call i32 (i8*, ...) @hb_log(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i8* %114)
  %116 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %117 = call i32 @free(%struct.TYPE_14__* %116)
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %5, align 8
  br label %118

118:                                              ; preds = %113, %90, %74, %28, %21, %14
  %119 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  ret %struct.TYPE_14__* %119
}

declare dso_local i32 @hb_log(i8*, ...) #1

declare dso_local i32* @hb_fopen(i8*, i8*) #1

declare dso_local %struct.TYPE_14__* @calloc(i32, i32) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local %struct.TYPE_14__* @strdup(i8*) #1

declare dso_local i64 @hb_stream_get_type(%struct.TYPE_14__*) #1

declare dso_local i32 @prune_streams(%struct.TYPE_14__*) #1

declare dso_local i32 @hb_stream_seek(%struct.TYPE_14__*, i32) #1

declare dso_local i64 @ffmpeg_open(%struct.TYPE_14__*, %struct.TYPE_13__*, i32) #1

declare dso_local i32 @free(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
