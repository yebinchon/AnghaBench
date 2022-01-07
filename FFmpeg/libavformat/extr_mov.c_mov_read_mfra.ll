; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_mov.c_mov_read_mfra.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_mov.c_mov_read_mfra.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@SEEK_SET = common dso_local global i32 0, align 4
@AV_LOG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"doesn't look like mfra (unreasonable size)\0A\00", align 1
@SEEK_CUR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"doesn't look like mfra (size mismatch)\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"doesn't look like mfra (tag mismatch)\0A\00", align 1
@AV_LOG_VERBOSE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"stream has mfra\0A\00", align 1
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [44 x i8] c"failed to seek back after looking for mfra\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32*)* @mov_read_mfra to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mov_read_mfra(%struct.TYPE_4__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i32* %1, i32** %4, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = call i32 @avio_size(i32* %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32*, i32** %4, align 8
  %13 = call i32 @avio_tell(i32* %12)
  store i32 %13, i32* %6, align 4
  store i32 -1, i32* %9, align 4
  %14 = load i32*, i32** %4, align 8
  %15 = load i32, i32* %5, align 4
  %16 = sub nsw i32 %15, 4
  %17 = load i32, i32* @SEEK_SET, align 4
  %18 = call i32 @avio_seek(i32* %14, i32 %16, i32 %17)
  store i32 %18, i32* %7, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = load i32, i32* %7, align 4
  store i32 %21, i32* %9, align 4
  br label %87

22:                                               ; preds = %2
  %23 = load i32*, i32** %4, align 8
  %24 = call i32 @avio_rb32(i32* %23)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %22
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp sgt i32 %28, %29
  br i1 %30, label %31, label %37

31:                                               ; preds = %27, %22
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @AV_LOG_DEBUG, align 4
  %36 = call i32 @av_log(i32 %34, i32 %35, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  br label %87

37:                                               ; preds = %27
  %38 = load i32*, i32** %4, align 8
  %39 = load i32, i32* %8, align 4
  %40 = sub nsw i32 0, %39
  %41 = load i32, i32* @SEEK_CUR, align 4
  %42 = call i32 @avio_seek(i32* %38, i32 %40, i32 %41)
  store i32 %42, i32* %7, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %37
  %45 = load i32, i32* %7, align 4
  store i32 %45, i32* %9, align 4
  br label %87

46:                                               ; preds = %37
  %47 = load i32*, i32** %4, align 8
  %48 = call i32 @avio_rb32(i32* %47)
  %49 = load i32, i32* %8, align 4
  %50 = icmp ne i32 %48, %49
  br i1 %50, label %51, label %57

51:                                               ; preds = %46
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @AV_LOG_DEBUG, align 4
  %56 = call i32 @av_log(i32 %54, i32 %55, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  br label %87

57:                                               ; preds = %46
  %58 = load i32*, i32** %4, align 8
  %59 = call i32 @avio_rb32(i32* %58)
  %60 = call i32 @MKBETAG(i8 signext 109, float 1.020000e+02, i8 signext 114, i8 signext 97)
  %61 = icmp ne i32 %59, %60
  br i1 %61, label %62, label %68

62:                                               ; preds = %57
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @AV_LOG_DEBUG, align 4
  %67 = call i32 @av_log(i32 %65, i32 %66, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  br label %87

68:                                               ; preds = %57
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @AV_LOG_VERBOSE, align 4
  %73 = call i32 @av_log(i32 %71, i32 %72, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  br label %74

74:                                               ; preds = %82, %68
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %76 = load i32*, i32** %4, align 8
  %77 = call i32 @read_tfra(%struct.TYPE_4__* %75, i32* %76)
  store i32 %77, i32* %9, align 4
  %78 = load i32, i32* %9, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %74
  br label %87

81:                                               ; preds = %74
  br label %82

82:                                               ; preds = %81
  %83 = load i32, i32* %9, align 4
  %84 = icmp ne i32 %83, 0
  %85 = xor i1 %84, true
  br i1 %85, label %74, label %86

86:                                               ; preds = %82
  store i32 0, i32* %9, align 4
  br label %87

87:                                               ; preds = %86, %80, %62, %51, %44, %31, %20
  %88 = load i32*, i32** %4, align 8
  %89 = load i32, i32* %6, align 4
  %90 = load i32, i32* @SEEK_SET, align 4
  %91 = call i32 @avio_seek(i32* %88, i32 %89, i32 %90)
  store i32 %91, i32* %7, align 4
  %92 = load i32, i32* %7, align 4
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %94, label %101

94:                                               ; preds = %87
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @AV_LOG_ERROR, align 4
  %99 = call i32 @av_log(i32 %97, i32 %98, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0))
  %100 = load i32, i32* %7, align 4
  store i32 %100, i32* %9, align 4
  br label %101

101:                                              ; preds = %94, %87
  %102 = load i32, i32* %9, align 4
  ret i32 %102
}

declare dso_local i32 @avio_size(i32*) #1

declare dso_local i32 @avio_tell(i32*) #1

declare dso_local i32 @avio_seek(i32*, i32, i32) #1

declare dso_local i32 @avio_rb32(i32*) #1

declare dso_local i32 @av_log(i32, i32, i8*) #1

declare dso_local i32 @MKBETAG(i8 signext, float, i8 signext, i8 signext) #1

declare dso_local i32 @read_tfra(%struct.TYPE_4__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
