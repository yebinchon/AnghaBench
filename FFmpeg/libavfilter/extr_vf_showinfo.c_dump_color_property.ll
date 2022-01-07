; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_showinfo.c_dump_color_property.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_showinfo.c_dump_color_property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i64, i64 }

@AVCOL_RANGE_UNSPECIFIED = common dso_local global i64 0, align 8
@AV_LOG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"color_range:unknown\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"color_range:%s\00", align 1
@AVCOL_SPC_UNSPECIFIED = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [21 x i8] c" color_space:unknown\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c" color_space:%s\00", align 1
@AVCOL_PRI_UNSPECIFIED = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [25 x i8] c" color_primaries:unknown\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c" color_primaries:%s\00", align 1
@AVCOL_TRC_UNSPECIFIED = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [19 x i8] c" color_trc:unknown\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c" color_trc:%s\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_3__*)* @dump_color_property to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_color_property(i32* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = call i8* @av_color_range_name(i64 %11)
  store i8* %12, i8** %5, align 8
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = call i8* @av_color_space_name(i64 %15)
  store i8* %16, i8** %6, align 8
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = call i8* @av_color_primaries_name(i64 %19)
  store i8* %20, i8** %7, align 8
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 3
  %23 = load i64, i64* %22, align 8
  %24 = call i8* @av_color_transfer_name(i64 %23)
  store i8* %24, i8** %8, align 8
  %25 = load i8*, i8** %5, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %33

27:                                               ; preds = %2
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @AVCOL_RANGE_UNSPECIFIED, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %27, %2
  %34 = load i32*, i32** %3, align 8
  %35 = load i32, i32* @AV_LOG_INFO, align 4
  %36 = call i32 (i32*, i32, i8*, ...) @av_log(i32* %34, i32 %35, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %42

37:                                               ; preds = %27
  %38 = load i32*, i32** %3, align 8
  %39 = load i32, i32* @AV_LOG_INFO, align 4
  %40 = load i8*, i8** %5, align 8
  %41 = call i32 (i32*, i32, i8*, ...) @av_log(i32* %38, i32 %39, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* %40)
  br label %42

42:                                               ; preds = %37, %33
  %43 = load i8*, i8** %6, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %45, label %51

45:                                               ; preds = %42
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @AVCOL_SPC_UNSPECIFIED, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %45, %42
  %52 = load i32*, i32** %3, align 8
  %53 = load i32, i32* @AV_LOG_INFO, align 4
  %54 = call i32 (i32*, i32, i8*, ...) @av_log(i32* %52, i32 %53, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  br label %60

55:                                               ; preds = %45
  %56 = load i32*, i32** %3, align 8
  %57 = load i32, i32* @AV_LOG_INFO, align 4
  %58 = load i8*, i8** %6, align 8
  %59 = call i32 (i32*, i32, i8*, ...) @av_log(i32* %56, i32 %57, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i8* %58)
  br label %60

60:                                               ; preds = %55, %51
  %61 = load i8*, i8** %7, align 8
  %62 = icmp ne i8* %61, null
  br i1 %62, label %63, label %69

63:                                               ; preds = %60
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @AVCOL_PRI_UNSPECIFIED, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %73

69:                                               ; preds = %63, %60
  %70 = load i32*, i32** %3, align 8
  %71 = load i32, i32* @AV_LOG_INFO, align 4
  %72 = call i32 (i32*, i32, i8*, ...) @av_log(i32* %70, i32 %71, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  br label %78

73:                                               ; preds = %63
  %74 = load i32*, i32** %3, align 8
  %75 = load i32, i32* @AV_LOG_INFO, align 4
  %76 = load i8*, i8** %7, align 8
  %77 = call i32 (i32*, i32, i8*, ...) @av_log(i32* %74, i32 %75, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i8* %76)
  br label %78

78:                                               ; preds = %73, %69
  %79 = load i8*, i8** %8, align 8
  %80 = icmp ne i8* %79, null
  br i1 %80, label %81, label %87

81:                                               ; preds = %78
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 3
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @AVCOL_TRC_UNSPECIFIED, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %91

87:                                               ; preds = %81, %78
  %88 = load i32*, i32** %3, align 8
  %89 = load i32, i32* @AV_LOG_INFO, align 4
  %90 = call i32 (i32*, i32, i8*, ...) @av_log(i32* %88, i32 %89, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0))
  br label %96

91:                                               ; preds = %81
  %92 = load i32*, i32** %3, align 8
  %93 = load i32, i32* @AV_LOG_INFO, align 4
  %94 = load i8*, i8** %8, align 8
  %95 = call i32 (i32*, i32, i8*, ...) @av_log(i32* %92, i32 %93, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i8* %94)
  br label %96

96:                                               ; preds = %91, %87
  %97 = load i32*, i32** %3, align 8
  %98 = load i32, i32* @AV_LOG_INFO, align 4
  %99 = call i32 (i32*, i32, i8*, ...) @av_log(i32* %97, i32 %98, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  ret void
}

declare dso_local i8* @av_color_range_name(i64) #1

declare dso_local i8* @av_color_space_name(i64) #1

declare dso_local i8* @av_color_primaries_name(i64) #1

declare dso_local i8* @av_color_transfer_name(i64) #1

declare dso_local i32 @av_log(i32*, i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
