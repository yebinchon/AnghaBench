; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_stream.c_ffmpeg_track_name.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_stream.c_ffmpeg_track_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i64* }

@.str = private unnamed_addr constant [6 x i8] c"title\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"title-und\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"title-%s\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"title-\00", align 1
@AV_DICT_IGNORE_SUFFIX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_6__*, i8*)* @ffmpeg_track_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ffmpeg_track_name(%struct.TYPE_6__* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i8*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.TYPE_7__* @av_dict_get(i32 %10, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), %struct.TYPE_7__* null, i32 0)
  store %struct.TYPE_7__* %11, %struct.TYPE_7__** %6, align 8
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %13 = icmp ne %struct.TYPE_7__* %12, null
  br i1 %13, label %14, label %26

14:                                               ; preds = %2
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load i64*, i64** %16, align 8
  %18 = getelementptr inbounds i64, i64* %17, i64 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %14
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load i64*, i64** %23, align 8
  %25 = bitcast i64* %24 to i8*
  store i8* %25, i8** %3, align 8
  br label %95

26:                                               ; preds = %14, %2
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call %struct.TYPE_7__* @av_dict_get(i32 %29, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_7__* null, i32 0)
  store %struct.TYPE_7__* %30, %struct.TYPE_7__** %6, align 8
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %32 = icmp ne %struct.TYPE_7__* %31, null
  br i1 %32, label %33, label %45

33:                                               ; preds = %26
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load i64*, i64** %35, align 8
  %37 = getelementptr inbounds i64, i64* %36, i64 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %33
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = load i64*, i64** %42, align 8
  %44 = bitcast i64* %43 to i8*
  store i8* %44, i8** %3, align 8
  br label %95

45:                                               ; preds = %33, %26
  %46 = load i8*, i8** %5, align 8
  %47 = call i8* @hb_strdup_printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* %46)
  store i8* %47, i8** %7, align 8
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i8*, i8** %7, align 8
  %52 = call %struct.TYPE_7__* @av_dict_get(i32 %50, i8* %51, %struct.TYPE_7__* null, i32 0)
  store %struct.TYPE_7__* %52, %struct.TYPE_7__** %6, align 8
  %53 = load i8*, i8** %7, align 8
  %54 = call i32 @free(i8* %53)
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %56 = icmp ne %struct.TYPE_7__* %55, null
  br i1 %56, label %57, label %69

57:                                               ; preds = %45
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = load i64*, i64** %59, align 8
  %61 = getelementptr inbounds i64, i64* %60, i64 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %57
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 0
  %67 = load i64*, i64** %66, align 8
  %68 = bitcast i64* %67 to i8*
  store i8* %68, i8** %3, align 8
  br label %95

69:                                               ; preds = %57, %45
  br label %70

70:                                               ; preds = %93, %69
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %75 = load i32, i32* @AV_DICT_IGNORE_SUFFIX, align 4
  %76 = call %struct.TYPE_7__* @av_dict_get(i32 %73, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), %struct.TYPE_7__* %74, i32 %75)
  store %struct.TYPE_7__* %76, %struct.TYPE_7__** %6, align 8
  %77 = icmp ne %struct.TYPE_7__* %76, null
  br i1 %77, label %78, label %94

78:                                               ; preds = %70
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %80 = icmp ne %struct.TYPE_7__* %79, null
  br i1 %80, label %81, label %93

81:                                               ; preds = %78
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 0
  %84 = load i64*, i64** %83, align 8
  %85 = getelementptr inbounds i64, i64* %84, i64 0
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %81
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 0
  %91 = load i64*, i64** %90, align 8
  %92 = bitcast i64* %91 to i8*
  store i8* %92, i8** %3, align 8
  br label %95

93:                                               ; preds = %81, %78
  br label %70

94:                                               ; preds = %70
  store i8* null, i8** %3, align 8
  br label %95

95:                                               ; preds = %94, %88, %64, %40, %21
  %96 = load i8*, i8** %3, align 8
  ret i8* %96
}

declare dso_local %struct.TYPE_7__* @av_dict_get(i32, i8*, %struct.TYPE_7__*, i32) #1

declare dso_local i8* @hb_strdup_printf(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
