; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/vmcs/test_apps/mmalplay/extr_mmalplay.c_get_format.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/vmcs/test_apps/mmalplay/extr_mmalplay.c_get_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.get_format.fcc = private unnamed_addr constant [4 x i8] c"    ", align 1
@MMAL_ENCODING_UNKNOWN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"yuv420\00", align 1
@MMAL_ENCODING_I420 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"yuvuv\00", align 1
@MMAL_ENCODING_YUVUV128 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"opaque\00", align 1
@MMAL_ENCODING_OPAQUE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"%ux%u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, i32*, i32*)* @get_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_format(i8* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca [4 x i8], align 1
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %15 = bitcast [4 x i8]* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %15, i8* align 1 getelementptr inbounds ([4 x i8], [4 x i8]* @__const.get_format.fcc, i32 0, i32 0), i64 4, i1 false)
  %16 = load i32*, i32** %9, align 8
  store i32 0, i32* %16, align 4
  %17 = load i32*, i32** %8, align 8
  store i32 0, i32* %17, align 4
  %18 = load i32, i32* @MMAL_ENCODING_UNKNOWN, align 4
  %19 = load i32*, i32** %7, align 8
  store i32 %18, i32* %19, align 4
  %20 = load i8*, i8** %6, align 8
  %21 = call i8* @strchr(i8* %20, i8 signext 58)
  store i8* %21, i8** %10, align 8
  %22 = load i8*, i8** %10, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %30

24:                                               ; preds = %4
  %25 = load i8*, i8** %10, align 8
  %26 = load i8*, i8** %6, align 8
  %27 = ptrtoint i8* %25 to i64
  %28 = ptrtoint i8* %26 to i64
  %29 = sub i64 %27, %28
  br label %33

30:                                               ; preds = %4
  %31 = load i8*, i8** %6, align 8
  %32 = call i64 @strlen(i8* %31)
  br label %33

33:                                               ; preds = %30, %24
  %34 = phi i64 [ %29, %24 ], [ %32, %30 ]
  store i64 %34, i64* %14, align 8
  %35 = getelementptr inbounds [4 x i8], [4 x i8]* %11, i64 0, i64 0
  %36 = load i8*, i8** %6, align 8
  %37 = load i64, i64* %14, align 8
  %38 = call i32 @MMAL_MIN(i64 %37, i32 4)
  %39 = call i32 @memcpy(i8* %35, i8* %36, i32 %38)
  %40 = load i64, i64* %14, align 8
  %41 = icmp eq i64 %40, 6
  br i1 %41, label %42, label %50

42:                                               ; preds = %33
  %43 = load i8*, i8** %6, align 8
  %44 = load i64, i64* %14, align 8
  %45 = call i32 @memcmp(i8* %43, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i64 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %42
  %48 = load i32, i32* @MMAL_ENCODING_I420, align 4
  %49 = load i32*, i32** %7, align 8
  store i32 %48, i32* %49, align 4
  br label %93

50:                                               ; preds = %42, %33
  %51 = load i64, i64* %14, align 8
  %52 = icmp eq i64 %51, 5
  br i1 %52, label %53, label %61

53:                                               ; preds = %50
  %54 = load i8*, i8** %6, align 8
  %55 = load i64, i64* %14, align 8
  %56 = call i32 @memcmp(i8* %54, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i64 %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %53
  %59 = load i32, i32* @MMAL_ENCODING_YUVUV128, align 4
  %60 = load i32*, i32** %7, align 8
  store i32 %59, i32* %60, align 4
  br label %92

61:                                               ; preds = %53, %50
  %62 = load i64, i64* %14, align 8
  %63 = icmp eq i64 %62, 6
  br i1 %63, label %64, label %72

64:                                               ; preds = %61
  %65 = load i8*, i8** %6, align 8
  %66 = load i64, i64* %14, align 8
  %67 = call i32 @memcmp(i8* %65, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i64 %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %72, label %69

69:                                               ; preds = %64
  %70 = load i32, i32* @MMAL_ENCODING_OPAQUE, align 4
  %71 = load i32*, i32** %7, align 8
  store i32 %70, i32* %71, align 4
  br label %91

72:                                               ; preds = %64, %61
  %73 = load i64, i64* %14, align 8
  %74 = icmp ugt i64 %73, 0
  br i1 %74, label %75, label %89

75:                                               ; preds = %72
  %76 = load i64, i64* %14, align 8
  %77 = icmp ule i64 %76, 4
  br i1 %77, label %78, label %89

78:                                               ; preds = %75
  %79 = getelementptr inbounds [4 x i8], [4 x i8]* %11, i64 0, i64 0
  %80 = load i8, i8* %79, align 1
  %81 = getelementptr inbounds [4 x i8], [4 x i8]* %11, i64 0, i64 1
  %82 = load i8, i8* %81, align 1
  %83 = getelementptr inbounds [4 x i8], [4 x i8]* %11, i64 0, i64 2
  %84 = load i8, i8* %83, align 1
  %85 = getelementptr inbounds [4 x i8], [4 x i8]* %11, i64 0, i64 3
  %86 = load i8, i8* %85, align 1
  %87 = call i32 @MMAL_FOURCC(i8 signext %80, i8 signext %82, i8 signext %84, i8 signext %86)
  %88 = load i32*, i32** %7, align 8
  store i32 %87, i32* %88, align 4
  br label %90

89:                                               ; preds = %75, %72
  store i32 1, i32* %5, align 4
  br label %108

90:                                               ; preds = %78
  br label %91

91:                                               ; preds = %90, %69
  br label %92

92:                                               ; preds = %91, %58
  br label %93

93:                                               ; preds = %92, %47
  %94 = load i8*, i8** %10, align 8
  %95 = icmp ne i8* %94, null
  br i1 %95, label %97, label %96

96:                                               ; preds = %93
  store i32 0, i32* %5, align 4
  br label %108

97:                                               ; preds = %93
  %98 = load i8*, i8** %10, align 8
  %99 = getelementptr inbounds i8, i8* %98, i64 1
  %100 = call i32 @sscanf(i8* %99, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32* %12, i32* %13)
  %101 = icmp ne i32 %100, 2
  br i1 %101, label %102, label %103

102:                                              ; preds = %97
  store i32 1, i32* %5, align 4
  br label %108

103:                                              ; preds = %97
  %104 = load i32, i32* %12, align 4
  %105 = load i32*, i32** %8, align 8
  store i32 %104, i32* %105, align 4
  %106 = load i32, i32* %13, align 4
  %107 = load i32*, i32** %9, align 8
  store i32 %106, i32* %107, align 4
  store i32 0, i32* %5, align 4
  br label %108

108:                                              ; preds = %103, %102, %96, %89
  %109 = load i32, i32* %5, align 4
  ret i32 %109
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i8* @strchr(i8*, i8 signext) #2

declare dso_local i64 @strlen(i8*) #2

declare dso_local i32 @memcpy(i8*, i8*, i32) #2

declare dso_local i32 @MMAL_MIN(i64, i32) #2

declare dso_local i32 @memcmp(i8*, i8*, i64) #2

declare dso_local i32 @MMAL_FOURCC(i8 signext, i8 signext, i8 signext, i8 signext) #2

declare dso_local i32 @sscanf(i8*, i8*, i32*, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
