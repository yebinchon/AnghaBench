; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/vmcs/test_apps/mmalcam/extr_viewfinder.c_parse_vformat.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/vmcs/test_apps/mmalcam/extr_viewfinder.c_parse_vformat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [12 x i8] c"%4ux%4u:%7s\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"Error, malformed or unsupported video format: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"h263\00", align 1
@MMAL_ENCODING_H263 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [84 x i8] c"Error, only 128x96, 176x144, 352x288, 704x576 and 1408x1152 are supported for H263\0A\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"mp4v\00", align 1
@MMAL_ENCODING_MP4V = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [5 x i8] c"h264\00", align 1
@MMAL_ENCODING_H264 = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [5 x i8] c"jpeg\00", align 1
@MMAL_ENCODING_JPEG = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [35 x i8] c"Error, unknown video encoding: %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [36 x i8] c"Video format: w:%d h:%d codec:%4.4s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, i32*, i32*)* @parse_vformat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_vformat(i8* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca [8 x i8], align 1
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = getelementptr inbounds [8 x i8], [8 x i8]* %10, i64 0, i64 0
  %16 = call i32 @sscanf(i8* %14, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32* %11, i32* %12, i8* %15)
  %17 = icmp ne i32 %16, 3
  br i1 %17, label %18, label %22

18:                                               ; preds = %4
  %19 = load i32, i32* @stderr, align 4
  %20 = load i8*, i8** %6, align 8
  %21 = call i32 (i32, i8*, ...) @fprintf(i32 %19, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i8* %20)
  store i32 -1, i32* %5, align 4
  br label %109

22:                                               ; preds = %4
  %23 = getelementptr inbounds [8 x i8], [8 x i8]* %10, i64 0, i64 0
  %24 = call i32 @vcos_strncasecmp(i8* %23, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 4)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %61, label %26

26:                                               ; preds = %22
  %27 = load i32, i32* @MMAL_ENCODING_H263, align 4
  store i32 %27, i32* %13, align 4
  %28 = load i32, i32* %11, align 4
  %29 = icmp eq i32 %28, 128
  br i1 %29, label %30, label %33

30:                                               ; preds = %26
  %31 = load i32, i32* %12, align 4
  %32 = icmp eq i32 %31, 96
  br i1 %32, label %60, label %33

33:                                               ; preds = %30, %26
  %34 = load i32, i32* %11, align 4
  %35 = icmp eq i32 %34, 176
  br i1 %35, label %36, label %39

36:                                               ; preds = %33
  %37 = load i32, i32* %12, align 4
  %38 = icmp eq i32 %37, 144
  br i1 %38, label %60, label %39

39:                                               ; preds = %36, %33
  %40 = load i32, i32* %11, align 4
  %41 = icmp eq i32 %40, 352
  br i1 %41, label %42, label %45

42:                                               ; preds = %39
  %43 = load i32, i32* %12, align 4
  %44 = icmp eq i32 %43, 288
  br i1 %44, label %60, label %45

45:                                               ; preds = %42, %39
  %46 = load i32, i32* %11, align 4
  %47 = icmp eq i32 %46, 704
  br i1 %47, label %48, label %51

48:                                               ; preds = %45
  %49 = load i32, i32* %12, align 4
  %50 = icmp eq i32 %49, 576
  br i1 %50, label %60, label %51

51:                                               ; preds = %48, %45
  %52 = load i32, i32* %11, align 4
  %53 = icmp eq i32 %52, 1408
  br i1 %53, label %54, label %57

54:                                               ; preds = %51
  %55 = load i32, i32* %12, align 4
  %56 = icmp eq i32 %55, 1152
  br i1 %56, label %60, label %57

57:                                               ; preds = %54, %51
  %58 = load i32, i32* @stderr, align 4
  %59 = call i32 (i32, i8*, ...) @fprintf(i32 %58, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %109

60:                                               ; preds = %54, %48, %42, %36, %30
  br label %86

61:                                               ; preds = %22
  %62 = getelementptr inbounds [8 x i8], [8 x i8]* %10, i64 0, i64 0
  %63 = call i32 @vcos_strncasecmp(i8* %62, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 4)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %67, label %65

65:                                               ; preds = %61
  %66 = load i32, i32* @MMAL_ENCODING_MP4V, align 4
  store i32 %66, i32* %13, align 4
  br label %85

67:                                               ; preds = %61
  %68 = getelementptr inbounds [8 x i8], [8 x i8]* %10, i64 0, i64 0
  %69 = call i32 @vcos_strncasecmp(i8* %68, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 4)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %73, label %71

71:                                               ; preds = %67
  %72 = load i32, i32* @MMAL_ENCODING_H264, align 4
  store i32 %72, i32* %13, align 4
  br label %84

73:                                               ; preds = %67
  %74 = getelementptr inbounds [8 x i8], [8 x i8]* %10, i64 0, i64 0
  %75 = call i32 @vcos_strncasecmp(i8* %74, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i32 4)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %79, label %77

77:                                               ; preds = %73
  %78 = load i32, i32* @MMAL_ENCODING_JPEG, align 4
  store i32 %78, i32* %13, align 4
  br label %83

79:                                               ; preds = %73
  %80 = load i32, i32* @stderr, align 4
  %81 = getelementptr inbounds [8 x i8], [8 x i8]* %10, i64 0, i64 0
  %82 = call i32 (i32, i8*, ...) @fprintf(i32 %80, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0), i8* %81)
  store i32 -1, i32* %5, align 4
  br label %109

83:                                               ; preds = %77
  br label %84

84:                                               ; preds = %83, %71
  br label %85

85:                                               ; preds = %84, %65
  br label %86

86:                                               ; preds = %85, %60
  %87 = load i32*, i32** %7, align 8
  %88 = icmp ne i32* %87, null
  br i1 %88, label %89, label %92

89:                                               ; preds = %86
  %90 = load i32, i32* %11, align 4
  %91 = load i32*, i32** %7, align 8
  store i32 %90, i32* %91, align 4
  br label %92

92:                                               ; preds = %89, %86
  %93 = load i32*, i32** %8, align 8
  %94 = icmp ne i32* %93, null
  br i1 %94, label %95, label %98

95:                                               ; preds = %92
  %96 = load i32, i32* %12, align 4
  %97 = load i32*, i32** %8, align 8
  store i32 %96, i32* %97, align 4
  br label %98

98:                                               ; preds = %95, %92
  %99 = load i32*, i32** %9, align 8
  %100 = icmp ne i32* %99, null
  br i1 %100, label %101, label %104

101:                                              ; preds = %98
  %102 = load i32, i32* %13, align 4
  %103 = load i32*, i32** %9, align 8
  store i32 %102, i32* %103, align 4
  br label %104

104:                                              ; preds = %101, %98
  %105 = load i32, i32* %11, align 4
  %106 = load i32, i32* %12, align 4
  %107 = bitcast i32* %13 to i8*
  %108 = call i32 @LOG_DEBUG(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8, i64 0, i64 0), i32 %105, i32 %106, i8* %107)
  store i32 0, i32* %5, align 4
  br label %109

109:                                              ; preds = %104, %79, %57, %18
  %110 = load i32, i32* %5, align 4
  ret i32 %110
}

declare dso_local i32 @sscanf(i8*, i8*, i32*, i32*, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @vcos_strncasecmp(i8*, i8*, i32) #1

declare dso_local i32 @LOG_DEBUG(i8*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
