; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavutil/extr_channel_layout.c_av_bprint_channel_layout.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavutil/extr_channel_layout.c_av_bprint_channel_layout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64, i32 }
%struct.AVBPrint = type { i32 }

@channel_layout_map = common dso_local global %struct.TYPE_3__* null, align 8
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"%d channels\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c" (\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c")\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @av_bprint_channel_layout(%struct.AVBPrint* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.AVBPrint*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store %struct.AVBPrint* %0, %struct.AVBPrint** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %11 = load i32, i32* %5, align 4
  %12 = icmp sle i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  %14 = load i64, i64* %6, align 8
  %15 = call i32 @av_get_channel_layout_nb_channels(i64 %14)
  store i32 %15, i32* %5, align 4
  br label %16

16:                                               ; preds = %13, %3
  store i32 0, i32* %7, align 4
  br label %17

17:                                               ; preds = %50, %16
  %18 = load i32, i32* %7, align 4
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** @channel_layout_map, align 8
  %20 = call i32 @FF_ARRAY_ELEMS(%struct.TYPE_3__* %19)
  %21 = icmp slt i32 %18, %20
  br i1 %21, label %22, label %53

22:                                               ; preds = %17
  %23 = load i32, i32* %5, align 4
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** @channel_layout_map, align 8
  %25 = load i32, i32* %7, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp eq i32 %23, %29
  br i1 %30, label %31, label %49

31:                                               ; preds = %22
  %32 = load i64, i64* %6, align 8
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** @channel_layout_map, align 8
  %34 = load i32, i32* %7, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp eq i64 %32, %38
  br i1 %39, label %40, label %49

40:                                               ; preds = %31
  %41 = load %struct.AVBPrint*, %struct.AVBPrint** %4, align 8
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** @channel_layout_map, align 8
  %43 = load i32, i32* %7, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = call i32 (%struct.AVBPrint*, i8*, ...) @av_bprintf(%struct.AVBPrint* %41, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %47)
  br label %98

49:                                               ; preds = %31, %22
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %7, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %7, align 4
  br label %17

53:                                               ; preds = %17
  %54 = load %struct.AVBPrint*, %struct.AVBPrint** %4, align 8
  %55 = load i32, i32* %5, align 4
  %56 = call i32 (%struct.AVBPrint*, i8*, ...) @av_bprintf(%struct.AVBPrint* %54, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %55)
  %57 = load i64, i64* %6, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %98

59:                                               ; preds = %53
  %60 = load %struct.AVBPrint*, %struct.AVBPrint** %4, align 8
  %61 = call i32 (%struct.AVBPrint*, i8*, ...) @av_bprintf(%struct.AVBPrint* %60, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %62

62:                                               ; preds = %92, %59
  %63 = load i32, i32* %8, align 4
  %64 = icmp slt i32 %63, 64
  br i1 %64, label %65, label %95

65:                                               ; preds = %62
  %66 = load i64, i64* %6, align 8
  %67 = call i32 @UINT64_C(i32 1)
  %68 = load i32, i32* %8, align 4
  %69 = shl i32 %67, %68
  %70 = sext i32 %69 to i64
  %71 = and i64 %66, %70
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %91

73:                                               ; preds = %65
  %74 = load i32, i32* %8, align 4
  %75 = call i8* @get_channel_name(i32 %74)
  store i8* %75, i8** %10, align 8
  %76 = load i8*, i8** %10, align 8
  %77 = icmp ne i8* %76, null
  br i1 %77, label %78, label %88

78:                                               ; preds = %73
  %79 = load i32, i32* %9, align 4
  %80 = icmp sgt i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %78
  %82 = load %struct.AVBPrint*, %struct.AVBPrint** %4, align 8
  %83 = call i32 (%struct.AVBPrint*, i8*, ...) @av_bprintf(%struct.AVBPrint* %82, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %84

84:                                               ; preds = %81, %78
  %85 = load %struct.AVBPrint*, %struct.AVBPrint** %4, align 8
  %86 = load i8*, i8** %10, align 8
  %87 = call i32 (%struct.AVBPrint*, i8*, ...) @av_bprintf(%struct.AVBPrint* %85, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %86)
  br label %88

88:                                               ; preds = %84, %73
  %89 = load i32, i32* %9, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %9, align 4
  br label %91

91:                                               ; preds = %88, %65
  br label %92

92:                                               ; preds = %91
  %93 = load i32, i32* %8, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %8, align 4
  br label %62

95:                                               ; preds = %62
  %96 = load %struct.AVBPrint*, %struct.AVBPrint** %4, align 8
  %97 = call i32 (%struct.AVBPrint*, i8*, ...) @av_bprintf(%struct.AVBPrint* %96, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  br label %98

98:                                               ; preds = %40, %95, %53
  ret void
}

declare dso_local i32 @av_get_channel_layout_nb_channels(i64) #1

declare dso_local i32 @FF_ARRAY_ELEMS(%struct.TYPE_3__*) #1

declare dso_local i32 @av_bprintf(%struct.AVBPrint*, i8*, ...) #1

declare dso_local i32 @UINT64_C(i32) #1

declare dso_local i8* @get_channel_name(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
