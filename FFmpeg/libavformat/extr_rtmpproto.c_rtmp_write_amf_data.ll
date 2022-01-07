; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_rtmpproto.c_rtmp_write_amf_data.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_rtmpproto.c_rtmp_write_amf_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Invalid AMF parameter: %s\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32**)* @rtmp_write_amf_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtmp_write_amf_data(i32* %0, i8* %1, i32** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8, align 1
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32** %2, i32*** %7, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = getelementptr inbounds i8, i8* %11, i64 0
  %13 = load i8, i8* %12, align 1
  %14 = sext i8 %13 to i32
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %28

16:                                               ; preds = %3
  %17 = load i8*, i8** %6, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 1
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp eq i32 %20, 58
  br i1 %21, label %22, label %28

22:                                               ; preds = %16
  %23 = load i8*, i8** %6, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 0
  %25 = load i8, i8* %24, align 1
  store i8 %25, i8* %10, align 1
  %26 = load i8*, i8** %6, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 2
  store i8* %27, i8** %9, align 8
  br label %66

28:                                               ; preds = %16, %3
  %29 = load i8*, i8** %6, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 0
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %32, 78
  br i1 %33, label %34, label %64

34:                                               ; preds = %28
  %35 = load i8*, i8** %6, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 1
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %64

40:                                               ; preds = %34
  %41 = load i8*, i8** %6, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 2
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp eq i32 %44, 58
  br i1 %45, label %46, label %64

46:                                               ; preds = %40
  %47 = load i8*, i8** %6, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 1
  %49 = load i8, i8* %48, align 1
  store i8 %49, i8* %10, align 1
  %50 = load i8*, i8** %6, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 3
  store i8* %51, i8** %8, align 8
  %52 = load i8*, i8** %8, align 8
  %53 = call i8* @strchr(i8* %52, i8 signext 58)
  store i8* %53, i8** %9, align 8
  %54 = load i8*, i8** %9, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %57, label %56

56:                                               ; preds = %46
  br label %105

57:                                               ; preds = %46
  %58 = load i8*, i8** %9, align 8
  store i8 0, i8* %58, align 1
  %59 = load i8*, i8** %9, align 8
  %60 = getelementptr inbounds i8, i8* %59, i32 1
  store i8* %60, i8** %9, align 8
  %61 = load i32**, i32*** %7, align 8
  %62 = load i8*, i8** %8, align 8
  %63 = call i32 @ff_amf_write_field_name(i32** %61, i8* %62)
  br label %65

64:                                               ; preds = %40, %34, %28
  br label %105

65:                                               ; preds = %57
  br label %66

66:                                               ; preds = %65, %22
  %67 = load i8, i8* %10, align 1
  %68 = sext i8 %67 to i32
  switch i32 %68, label %103 [
    i32 66, label %69
    i32 83, label %78
    i32 78, label %82
    i32 90, label %87
    i32 79, label %90
  ]

69:                                               ; preds = %66
  %70 = load i32**, i32*** %7, align 8
  %71 = load i8*, i8** %9, align 8
  %72 = getelementptr inbounds i8, i8* %71, i64 0
  %73 = load i8, i8* %72, align 1
  %74 = sext i8 %73 to i32
  %75 = icmp ne i32 %74, 48
  %76 = zext i1 %75 to i32
  %77 = call i32 @ff_amf_write_bool(i32** %70, i32 %76)
  br label %104

78:                                               ; preds = %66
  %79 = load i32**, i32*** %7, align 8
  %80 = load i8*, i8** %9, align 8
  %81 = call i32 @ff_amf_write_string(i32** %79, i8* %80)
  br label %104

82:                                               ; preds = %66
  %83 = load i32**, i32*** %7, align 8
  %84 = load i8*, i8** %9, align 8
  %85 = call i32 @strtod(i8* %84, i32* null)
  %86 = call i32 @ff_amf_write_number(i32** %83, i32 %85)
  br label %104

87:                                               ; preds = %66
  %88 = load i32**, i32*** %7, align 8
  %89 = call i32 @ff_amf_write_null(i32** %88)
  br label %104

90:                                               ; preds = %66
  %91 = load i8*, i8** %9, align 8
  %92 = getelementptr inbounds i8, i8* %91, i64 0
  %93 = load i8, i8* %92, align 1
  %94 = sext i8 %93 to i32
  %95 = icmp ne i32 %94, 48
  br i1 %95, label %96, label %99

96:                                               ; preds = %90
  %97 = load i32**, i32*** %7, align 8
  %98 = call i32 @ff_amf_write_object_start(i32** %97)
  br label %102

99:                                               ; preds = %90
  %100 = load i32**, i32*** %7, align 8
  %101 = call i32 @ff_amf_write_object_end(i32** %100)
  br label %102

102:                                              ; preds = %99, %96
  br label %104

103:                                              ; preds = %66
  br label %105

104:                                              ; preds = %102, %87, %82, %78, %69
  store i32 0, i32* %4, align 4
  br label %112

105:                                              ; preds = %103, %64, %56
  %106 = load i32*, i32** %5, align 8
  %107 = load i32, i32* @AV_LOG_ERROR, align 4
  %108 = load i8*, i8** %6, align 8
  %109 = call i32 @av_log(i32* %106, i32 %107, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8* %108)
  %110 = load i32, i32* @EINVAL, align 4
  %111 = call i32 @AVERROR(i32 %110)
  store i32 %111, i32* %4, align 4
  br label %112

112:                                              ; preds = %105, %104
  %113 = load i32, i32* %4, align 4
  ret i32 %113
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @ff_amf_write_field_name(i32**, i8*) #1

declare dso_local i32 @ff_amf_write_bool(i32**, i32) #1

declare dso_local i32 @ff_amf_write_string(i32**, i8*) #1

declare dso_local i32 @ff_amf_write_number(i32**, i32) #1

declare dso_local i32 @strtod(i8*, i32*) #1

declare dso_local i32 @ff_amf_write_null(i32**) #1

declare dso_local i32 @ff_amf_write_object_start(i32**) #1

declare dso_local i32 @ff_amf_write_object_end(i32**) #1

declare dso_local i32 @av_log(i32*, i32, i8*, i8*) #1

declare dso_local i32 @AVERROR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
