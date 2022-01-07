; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavdevice/extr_fbdev_common.c_ff_fbdev_get_device_list.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavdevice/extr_fbdev_common.c_ff_fbdev_get_device_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i64, i32 }
%struct.fb_var_screeninfo = type { i8* }
%struct.fb_fix_screeninfo = type { i8* }
%struct.TYPE_9__ = type { %struct.TYPE_9__*, %struct.TYPE_9__* }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"/dev/fb%d\00", align 1
@O_RDWR = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"Could not open framebuffer device '%s': %s\0A\00", align 1
@FBIOGET_VSCREENINFO = common dso_local global i32 0, align 4
@FBIOGET_FSCREENINFO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_fbdev_get_device_list(%struct.TYPE_8__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca %struct.fb_var_screeninfo, align 8
  %5 = alloca %struct.fb_fix_screeninfo, align 8
  %6 = alloca [12 x i8], align 1
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %7, align 8
  store i32 0, i32* %10, align 4
  %13 = call i8* (...) @ff_fbdev_default_device()
  store i8* %13, i8** %11, align 8
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %15 = icmp ne %struct.TYPE_8__* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @EINVAL, align 4
  %18 = call i32 @AVERROR(i32 %17)
  store i32 %18, i32* %2, align 4
  br label %145

19:                                               ; preds = %1
  store i32 0, i32* %8, align 4
  br label %20

20:                                               ; preds = %141, %19
  %21 = load i32, i32* %8, align 4
  %22 = icmp sle i32 %21, 31
  br i1 %22, label %23, label %144

23:                                               ; preds = %20
  %24 = getelementptr inbounds [12 x i8], [12 x i8]* %6, i64 0, i64 0
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @snprintf(i8* %24, i32 12, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = getelementptr inbounds [12 x i8], [12 x i8]* %6, i64 0, i64 0
  %28 = load i32, i32* @O_RDWR, align 4
  %29 = call i32 @avpriv_open(i8* %27, i32 %28)
  store i32 %29, i32* %9, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %45

31:                                               ; preds = %23
  %32 = load i32, i32* @errno, align 4
  %33 = call i32 @AVERROR(i32 %32)
  store i32 %33, i32* %12, align 4
  %34 = load i32, i32* %12, align 4
  %35 = load i32, i32* @ENOENT, align 4
  %36 = call i32 @AVERROR(i32 %35)
  %37 = icmp ne i32 %34, %36
  br i1 %37, label %38, label %44

38:                                               ; preds = %31
  %39 = load i32, i32* @AV_LOG_ERROR, align 4
  %40 = getelementptr inbounds [12 x i8], [12 x i8]* %6, i64 0, i64 0
  %41 = load i32, i32* %12, align 4
  %42 = call i32 @av_err2str(i32 %41)
  %43 = call i32 @av_log(i32* null, i32 %39, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i8* %40, i32 %42)
  br label %44

44:                                               ; preds = %38, %31
  br label %141

45:                                               ; preds = %23
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* @FBIOGET_VSCREENINFO, align 4
  %48 = call i32 @ioctl(i32 %46, i32 %47, %struct.fb_var_screeninfo* %4)
  %49 = icmp eq i32 %48, -1
  br i1 %49, label %50, label %51

50:                                               ; preds = %45
  br label %118

51:                                               ; preds = %45
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* @FBIOGET_FSCREENINFO, align 4
  %54 = bitcast %struct.fb_fix_screeninfo* %5 to %struct.fb_var_screeninfo*
  %55 = call i32 @ioctl(i32 %52, i32 %53, %struct.fb_var_screeninfo* %54)
  %56 = icmp eq i32 %55, -1
  br i1 %56, label %57, label %58

57:                                               ; preds = %51
  br label %118

58:                                               ; preds = %51
  %59 = call %struct.TYPE_9__* @av_mallocz(i32 16)
  store %struct.TYPE_9__* %59, %struct.TYPE_9__** %7, align 8
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %61 = icmp ne %struct.TYPE_9__* %60, null
  br i1 %61, label %65, label %62

62:                                               ; preds = %58
  %63 = load i32, i32* @ENOMEM, align 4
  %64 = call i32 @AVERROR(i32 %63)
  store i32 %64, i32* %10, align 4
  br label %118

65:                                               ; preds = %58
  %66 = getelementptr inbounds [12 x i8], [12 x i8]* %6, i64 0, i64 0
  %67 = call i8* @av_strdup(i8* %66)
  %68 = bitcast i8* %67 to %struct.TYPE_9__*
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 1
  store %struct.TYPE_9__* %68, %struct.TYPE_9__** %70, align 8
  %71 = getelementptr inbounds %struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* %5, i32 0, i32 0
  %72 = load i8*, i8** %71, align 8
  %73 = call i8* @av_strdup(i8* %72)
  %74 = bitcast i8* %73 to %struct.TYPE_9__*
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 0
  store %struct.TYPE_9__* %74, %struct.TYPE_9__** %76, align 8
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 1
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %78, align 8
  %80 = icmp ne %struct.TYPE_9__* %79, null
  br i1 %80, label %81, label %86

81:                                               ; preds = %65
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 0
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %83, align 8
  %85 = icmp ne %struct.TYPE_9__* %84, null
  br i1 %85, label %89, label %86

86:                                               ; preds = %81, %65
  %87 = load i32, i32* @ENOMEM, align 4
  %88 = call i32 @AVERROR(i32 %87)
  store i32 %88, i32* %10, align 4
  br label %118

89:                                               ; preds = %81
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 2
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 0
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %95 = call i32 @av_dynarray_add_nofree(i32* %91, i64* %93, %struct.TYPE_9__* %94)
  store i32 %95, i32* %10, align 4
  %96 = icmp slt i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %89
  br label %118

98:                                               ; preds = %89
  %99 = load i8*, i8** %11, align 8
  %100 = icmp ne i8* %99, null
  br i1 %100, label %101, label %115

101:                                              ; preds = %98
  %102 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 1
  %104 = load %struct.TYPE_9__*, %struct.TYPE_9__** %103, align 8
  %105 = load i8*, i8** %11, align 8
  %106 = call i32 @strcmp(%struct.TYPE_9__* %104, i8* %105)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %115, label %108

108:                                              ; preds = %101
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = sub nsw i64 %111, 1
  %113 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 1
  store i64 %112, i64* %114, align 8
  store i8* null, i8** %11, align 8
  br label %115

115:                                              ; preds = %108, %101, %98
  %116 = load i32, i32* %9, align 4
  %117 = call i32 @close(i32 %116)
  br label %141

118:                                              ; preds = %97, %86, %62, %57, %50
  %119 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %120 = icmp ne %struct.TYPE_9__* %119, null
  br i1 %120, label %121, label %129

121:                                              ; preds = %118
  %122 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %122, i32 0, i32 1
  %124 = call i32 @av_freep(%struct.TYPE_9__** %123)
  %125 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %126 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %125, i32 0, i32 0
  %127 = call i32 @av_freep(%struct.TYPE_9__** %126)
  %128 = call i32 @av_freep(%struct.TYPE_9__** %7)
  br label %129

129:                                              ; preds = %121, %118
  %130 = load i32, i32* %9, align 4
  %131 = icmp sge i32 %130, 0
  br i1 %131, label %132, label %135

132:                                              ; preds = %129
  %133 = load i32, i32* %9, align 4
  %134 = call i32 @close(i32 %133)
  br label %135

135:                                              ; preds = %132, %129
  %136 = load i32, i32* %10, align 4
  %137 = icmp slt i32 %136, 0
  br i1 %137, label %138, label %140

138:                                              ; preds = %135
  %139 = load i32, i32* %10, align 4
  store i32 %139, i32* %2, align 4
  br label %145

140:                                              ; preds = %135
  br label %141

141:                                              ; preds = %140, %115, %44
  %142 = load i32, i32* %8, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %8, align 4
  br label %20

144:                                              ; preds = %20
  store i32 0, i32* %2, align 4
  br label %145

145:                                              ; preds = %144, %138, %16
  %146 = load i32, i32* %2, align 4
  ret i32 %146
}

declare dso_local i8* @ff_fbdev_default_device(...) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @avpriv_open(i8*, i32) #1

declare dso_local i32 @av_log(i32*, i32, i8*, i8*, i32) #1

declare dso_local i32 @av_err2str(i32) #1

declare dso_local i32 @ioctl(i32, i32, %struct.fb_var_screeninfo*) #1

declare dso_local %struct.TYPE_9__* @av_mallocz(i32) #1

declare dso_local i8* @av_strdup(i8*) #1

declare dso_local i32 @av_dynarray_add_nofree(i32*, i64*, %struct.TYPE_9__*) #1

declare dso_local i32 @strcmp(%struct.TYPE_9__*, i8*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @av_freep(%struct.TYPE_9__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
