; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_hlsenc.c_hls_encryption_start.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_hlsenc.c_hls_encryption_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 (%struct.TYPE_9__*, i32**, i8*, i32, i32*)*, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i8*, i8*, i8*, i8*, i32 }

@KEYSIZE = common dso_local global i32 0, align 4
@AVIO_FLAG_READ = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"error opening key info file %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"no key URI specified in key info file\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [40 x i8] c"no key file specified in key info file\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"error opening key file %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"error reading key file %s\0A\00", align 1
@AVERROR_EOF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*)* @hls_encryption_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hls_encryption_start(%struct.TYPE_9__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 1
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  store %struct.TYPE_8__* %12, %struct.TYPE_8__** %4, align 8
  %13 = load i32, i32* @KEYSIZE, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %7, align 8
  %16 = alloca i32, i64 %14, align 16
  store i64 %14, i64* %8, align 8
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %19 = load i32 (%struct.TYPE_9__*, i32**, i8*, i32, i32*)*, i32 (%struct.TYPE_9__*, i32**, i8*, i32, i32*)** %18, align 8
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = load i32, i32* @AVIO_FLAG_READ, align 4
  %25 = call i32 %19(%struct.TYPE_9__* %20, i32** %6, i8* %23, i32 %24, i32* null)
  store i32 %25, i32* %5, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %1
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %29 = load i32, i32* @AV_LOG_ERROR, align 4
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = call i32 (%struct.TYPE_8__*, i32, i8*, ...) @av_log(%struct.TYPE_8__* %28, i32 %29, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i8* %32)
  %34 = load i32, i32* %5, align 4
  store i32 %34, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %155

35:                                               ; preds = %1
  %36 = load i32*, i32** %6, align 8
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 1
  %39 = load i8*, i8** %38, align 8
  %40 = call i32 @ff_get_line(i32* %36, i8* %39, i32 8)
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 1
  %43 = load i8*, i8** %42, align 8
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 1
  %46 = load i8*, i8** %45, align 8
  %47 = call i64 @strcspn(i8* %46, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %48 = getelementptr inbounds i8, i8* %43, i64 %47
  store i8 0, i8* %48, align 1
  %49 = load i32*, i32** %6, align 8
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 2
  %52 = load i8*, i8** %51, align 8
  %53 = call i32 @ff_get_line(i32* %49, i8* %52, i32 8)
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 2
  %56 = load i8*, i8** %55, align 8
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 2
  %59 = load i8*, i8** %58, align 8
  %60 = call i64 @strcspn(i8* %59, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %61 = getelementptr inbounds i8, i8* %56, i64 %60
  store i8 0, i8* %61, align 1
  %62 = load i32*, i32** %6, align 8
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 3
  %65 = load i8*, i8** %64, align 8
  %66 = call i32 @ff_get_line(i32* %62, i8* %65, i32 8)
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 3
  %69 = load i8*, i8** %68, align 8
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 3
  %72 = load i8*, i8** %71, align 8
  %73 = call i64 @strcspn(i8* %72, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %74 = getelementptr inbounds i8, i8* %69, i64 %73
  store i8 0, i8* %74, align 1
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %76 = call i32 @ff_format_io_close(%struct.TYPE_9__* %75, i32** %6)
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 1
  %79 = load i8*, i8** %78, align 8
  %80 = load i8, i8* %79, align 1
  %81 = icmp ne i8 %80, 0
  br i1 %81, label %88, label %82

82:                                               ; preds = %35
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %84 = load i32, i32* @AV_LOG_ERROR, align 4
  %85 = call i32 (%struct.TYPE_8__*, i32, i8*, ...) @av_log(%struct.TYPE_8__* %83, i32 %84, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  %86 = load i32, i32* @EINVAL, align 4
  %87 = call i32 @AVERROR(i32 %86)
  store i32 %87, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %155

88:                                               ; preds = %35
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 2
  %91 = load i8*, i8** %90, align 8
  %92 = load i8, i8* %91, align 1
  %93 = icmp ne i8 %92, 0
  br i1 %93, label %100, label %94

94:                                               ; preds = %88
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %96 = load i32, i32* @AV_LOG_ERROR, align 4
  %97 = call i32 (%struct.TYPE_8__*, i32, i8*, ...) @av_log(%struct.TYPE_8__* %95, i32 %96, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  %98 = load i32, i32* @EINVAL, align 4
  %99 = call i32 @AVERROR(i32 %98)
  store i32 %99, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %155

100:                                              ; preds = %88
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 0
  %103 = load i32 (%struct.TYPE_9__*, i32**, i8*, i32, i32*)*, i32 (%struct.TYPE_9__*, i32**, i8*, i32, i32*)** %102, align 8
  %104 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 2
  %107 = load i8*, i8** %106, align 8
  %108 = load i32, i32* @AVIO_FLAG_READ, align 4
  %109 = call i32 %103(%struct.TYPE_9__* %104, i32** %6, i8* %107, i32 %108, i32* null)
  store i32 %109, i32* %5, align 4
  %110 = icmp slt i32 %109, 0
  br i1 %110, label %111, label %119

111:                                              ; preds = %100
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %113 = load i32, i32* @AV_LOG_ERROR, align 4
  %114 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 2
  %116 = load i8*, i8** %115, align 8
  %117 = call i32 (%struct.TYPE_8__*, i32, i8*, ...) @av_log(%struct.TYPE_8__* %112, i32 %113, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i8* %116)
  %118 = load i32, i32* %5, align 4
  store i32 %118, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %155

119:                                              ; preds = %100
  %120 = load i32*, i32** %6, align 8
  %121 = mul nuw i64 4, %14
  %122 = trunc i64 %121 to i32
  %123 = call i32 @avio_read(i32* %120, i32* %16, i32 %122)
  store i32 %123, i32* %5, align 4
  %124 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %125 = call i32 @ff_format_io_close(%struct.TYPE_9__* %124, i32** %6)
  %126 = load i32, i32* %5, align 4
  %127 = sext i32 %126 to i64
  %128 = mul nuw i64 4, %14
  %129 = icmp ne i64 %127, %128
  br i1 %129, label %130, label %148

130:                                              ; preds = %119
  %131 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %132 = load i32, i32* @AV_LOG_ERROR, align 4
  %133 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i32 0, i32 2
  %135 = load i8*, i8** %134, align 8
  %136 = call i32 (%struct.TYPE_8__*, i32, i8*, ...) @av_log(%struct.TYPE_8__* %131, i32 %132, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i8* %135)
  %137 = load i32, i32* %5, align 4
  %138 = icmp sge i32 %137, 0
  br i1 %138, label %143, label %139

139:                                              ; preds = %130
  %140 = load i32, i32* %5, align 4
  %141 = load i32, i32* @AVERROR_EOF, align 4
  %142 = icmp eq i32 %140, %141
  br i1 %142, label %143, label %146

143:                                              ; preds = %139, %130
  %144 = load i32, i32* @EINVAL, align 4
  %145 = call i32 @AVERROR(i32 %144)
  store i32 %145, i32* %5, align 4
  br label %146

146:                                              ; preds = %143, %139
  %147 = load i32, i32* %5, align 4
  store i32 %147, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %155

148:                                              ; preds = %119
  %149 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %150 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %149, i32 0, i32 4
  %151 = load i32, i32* %150, align 8
  %152 = mul nuw i64 4, %14
  %153 = trunc i64 %152 to i32
  %154 = call i32 @ff_data_to_hex(i32 %151, i32* %16, i32 %153, i32 0)
  store i32 0, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %155

155:                                              ; preds = %148, %146, %111, %94, %82, %27
  %156 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %156)
  %157 = load i32, i32* %2, align 4
  ret i32 %157
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @av_log(%struct.TYPE_8__*, i32, i8*, ...) #2

declare dso_local i32 @ff_get_line(i32*, i8*, i32) #2

declare dso_local i64 @strcspn(i8*, i8*) #2

declare dso_local i32 @ff_format_io_close(%struct.TYPE_9__*, i32**) #2

declare dso_local i32 @AVERROR(i32) #2

declare dso_local i32 @avio_read(i32*, i32*, i32) #2

declare dso_local i32 @ff_data_to_hex(i32, i32*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
