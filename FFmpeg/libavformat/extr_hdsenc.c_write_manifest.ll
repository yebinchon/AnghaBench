; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_hdsenc.c_write_manifest.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_hdsenc.c_write_manifest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i8*, i32 (%struct.TYPE_13__*, i32**, i8*, i32, i32*)*, %struct.TYPE_10__**, %struct.TYPE_12__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_12__ = type { i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { double, i32, i32, i32 }

@.str = private unnamed_addr constant [13 x i8] c"%s/index.f4m\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"%s/index.f4m.tmp\00", align 1
@AVIO_FLAG_WRITE = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"Unable to open %s for writing\0A\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"<?xml version=\221.0\22 encoding=\22utf-8\22?>\0A\00", align 1
@.str.4 = private unnamed_addr constant [48 x i8] c"<manifest xmlns=\22http://ns.adobe.com/f4m/1.0\22>\0A\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"\09<id>%s</id>\0A\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"\09<streamType>%s</streamType>\0A\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"recorded\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"live\00", align 1
@.str.9 = private unnamed_addr constant [41 x i8] c"\09<deliveryType>streaming</deliveryType>\0A\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"\09<duration>%f</duration>\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [73 x i8] c"\09<bootstrapInfo profile=\22named\22 url=\22stream%d.abst\22 id=\22bootstrap%d\22 />\0A\00", align 1
@.str.12 = private unnamed_addr constant [68 x i8] c"\09<media bitrate=\22%d\22 url=\22stream%d\22 bootstrapInfoId=\22bootstrap%d\22>\0A\00", align 1
@.str.13 = private unnamed_addr constant [27 x i8] c"\09\09<metadata>%s</metadata>\0A\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"\09</media>\0A\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"</manifest>\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, i32)* @write_manifest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_manifest(%struct.TYPE_13__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca [1024 x i8], align 16
  %9 = alloca [1024 x i8], align 16
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca double, align 8
  %13 = alloca %struct.TYPE_11__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store i32 %1, i32* %5, align 4
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 3
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  store %struct.TYPE_12__* %18, %struct.TYPE_12__** %6, align 8
  store double 0.000000e+00, double* %12, align 8
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %23, label %39

23:                                               ; preds = %2
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i64 0
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 0
  %29 = load double, double* %28, align 8
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 2
  %32 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %32, i64 0
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call double @av_q2d(i32 %36)
  %38 = fmul double %29, %37
  store double %38, double* %12, align 8
  br label %39

39:                                               ; preds = %23, %2
  %40 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 0
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  %44 = call i32 @snprintf(i8* %40, i32 1024, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* %43)
  %45 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  %49 = call i32 @snprintf(i8* %45, i32 1024, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8* %48)
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 1
  %52 = load i32 (%struct.TYPE_13__*, i32**, i8*, i32, i32*)*, i32 (%struct.TYPE_13__*, i32**, i8*, i32, i32*)** %51, align 8
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %54 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %55 = load i32, i32* @AVIO_FLAG_WRITE, align 4
  %56 = call i32 %52(%struct.TYPE_13__* %53, i32** %7, i8* %54, i32 %55, i32* null)
  store i32 %56, i32* %10, align 4
  %57 = load i32, i32* %10, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %39
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %61 = load i32, i32* @AV_LOG_ERROR, align 4
  %62 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %63 = call i32 @av_log(%struct.TYPE_13__* %60, i32 %61, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i8* %62)
  %64 = load i32, i32* %10, align 4
  store i32 %64, i32* %3, align 4
  br label %160

65:                                               ; preds = %39
  %66 = load i32*, i32** %7, align 8
  %67 = call i32 (i32*, i8*, ...) @avio_printf(i32* %66, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  %68 = load i32*, i32** %7, align 8
  %69 = call i32 (i32*, i8*, ...) @avio_printf(i32* %68, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i64 0, i64 0))
  %70 = load i32*, i32** %7, align 8
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %71, i32 0, i32 0
  %73 = load i8*, i8** %72, align 8
  %74 = call i32 @av_basename(i8* %73)
  %75 = call i32 (i32*, i8*, ...) @avio_printf(i32* %70, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i32 %74)
  %76 = load i32*, i32** %7, align 8
  %77 = load i32, i32* %5, align 4
  %78 = icmp ne i32 %77, 0
  %79 = zext i1 %78 to i64
  %80 = select i1 %78, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0)
  %81 = call i32 (i32*, i8*, ...) @avio_printf(i32* %76, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0), i8* %80)
  %82 = load i32*, i32** %7, align 8
  %83 = call i32 (i32*, i8*, ...) @avio_printf(i32* %82, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.9, i64 0, i64 0))
  %84 = load i32, i32* %5, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %65
  %87 = load i32*, i32** %7, align 8
  %88 = load double, double* %12, align 8
  %89 = call i32 (i32*, i8*, ...) @avio_printf(i32* %87, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), double %88)
  br label %90

90:                                               ; preds = %86, %65
  store i32 0, i32* %11, align 4
  br label %91

91:                                               ; preds = %146, %90
  %92 = load i32, i32* %11, align 4
  %93 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = icmp slt i32 %92, %95
  br i1 %96, label %97, label %149

97:                                               ; preds = %91
  %98 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %98, i32 0, i32 1
  %100 = load %struct.TYPE_11__*, %struct.TYPE_11__** %99, align 8
  %101 = load i32, i32* %11, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %100, i64 %102
  store %struct.TYPE_11__* %103, %struct.TYPE_11__** %13, align 8
  %104 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @AV_BASE64_SIZE(i32 %106)
  store i32 %107, i32* %14, align 4
  %108 = load i32, i32* %14, align 4
  %109 = call i8* @av_malloc(i32 %108)
  store i8* %109, i8** %15, align 8
  %110 = load i8*, i8** %15, align 8
  %111 = icmp ne i8* %110, null
  br i1 %111, label %117, label %112

112:                                              ; preds = %97
  %113 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %114 = call i32 @ff_format_io_close(%struct.TYPE_13__* %113, i32** %7)
  %115 = load i32, i32* @ENOMEM, align 4
  %116 = call i32 @AVERROR(i32 %115)
  store i32 %116, i32* %3, align 4
  br label %160

117:                                              ; preds = %97
  %118 = load i8*, i8** %15, align 8
  %119 = load i32, i32* %14, align 4
  %120 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %121 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %120, i32 0, i32 3
  %122 = load i32, i32* %121, align 8
  %123 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %124 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @av_base64_encode(i8* %118, i32 %119, i32 %122, i32 %125)
  %127 = load i32*, i32** %7, align 8
  %128 = load i32, i32* %11, align 4
  %129 = load i32, i32* %11, align 4
  %130 = call i32 (i32*, i8*, ...) @avio_printf(i32* %127, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.11, i64 0, i64 0), i32 %128, i32 %129)
  %131 = load i32*, i32** %7, align 8
  %132 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %133 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 8
  %135 = sdiv i32 %134, 1000
  %136 = load i32, i32* %11, align 4
  %137 = load i32, i32* %11, align 4
  %138 = call i32 (i32*, i8*, ...) @avio_printf(i32* %131, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.12, i64 0, i64 0), i32 %135, i32 %136, i32 %137)
  %139 = load i32*, i32** %7, align 8
  %140 = load i8*, i8** %15, align 8
  %141 = call i32 (i32*, i8*, ...) @avio_printf(i32* %139, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.13, i64 0, i64 0), i8* %140)
  %142 = load i32*, i32** %7, align 8
  %143 = call i32 (i32*, i8*, ...) @avio_printf(i32* %142, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i64 0, i64 0))
  %144 = load i8*, i8** %15, align 8
  %145 = call i32 @av_free(i8* %144)
  br label %146

146:                                              ; preds = %117
  %147 = load i32, i32* %11, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %11, align 4
  br label %91

149:                                              ; preds = %91
  %150 = load i32*, i32** %7, align 8
  %151 = call i32 (i32*, i8*, ...) @avio_printf(i32* %150, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i64 0, i64 0))
  %152 = load i32*, i32** %7, align 8
  %153 = call i32 @avio_flush(i32* %152)
  %154 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %155 = call i32 @ff_format_io_close(%struct.TYPE_13__* %154, i32** %7)
  %156 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %157 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 0
  %158 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %159 = call i32 @ff_rename(i8* %156, i8* %157, %struct.TYPE_13__* %158)
  store i32 %159, i32* %3, align 4
  br label %160

160:                                              ; preds = %149, %112, %59
  %161 = load i32, i32* %3, align 4
  ret i32 %161
}

declare dso_local double @av_q2d(i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i32 @av_log(%struct.TYPE_13__*, i32, i8*, i8*) #1

declare dso_local i32 @avio_printf(i32*, i8*, ...) #1

declare dso_local i32 @av_basename(i8*) #1

declare dso_local i32 @AV_BASE64_SIZE(i32) #1

declare dso_local i8* @av_malloc(i32) #1

declare dso_local i32 @ff_format_io_close(%struct.TYPE_13__*, i32**) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @av_base64_encode(i8*, i32, i32, i32) #1

declare dso_local i32 @av_free(i8*) #1

declare dso_local i32 @avio_flush(i32*) #1

declare dso_local i32 @ff_rename(i8*, i8*, %struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
