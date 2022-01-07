; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_amfenc.c_amf_load_library.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_amfenc.c_amf_load_library.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, %struct.TYPE_12__*, i32, i32, i32*, i64, i32, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64 (%struct.TYPE_12__*, i32*)*, i64 (%struct.TYPE_12__*, i32*)* }

@ENOMEM = common dso_local global i32 0, align 4
@AMF_DLL_NAMEA = common dso_local global i64 0, align 8
@RTLD_NOW = common dso_local global i32 0, align 4
@RTLD_LOCAL = common dso_local global i32 0, align 4
@AVERROR_UNKNOWN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"DLL %s failed to open\0A\00", align 1
@AMF_INIT_FUNCTION_NAME = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"DLL %s failed to find function %s\0A\00", align 1
@AMF_QUERY_VERSION_FUNCTION_NAME = common dso_local global i32 0, align 4
@AMF_OK = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [25 x i8] c"%s failed with error %d\0A\00", align 1
@AMF_FULL_VERSION = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"GetTrace() failed with error %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"GetDebug() failed with error %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*)* @amf_load_library to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amf_load_library(%struct.TYPE_11__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i64 (i32, %struct.TYPE_12__**)*, align 8
  %6 = alloca i64 (i32*)*, align 8
  %7 = alloca i64, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  %8 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 1
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  store %struct.TYPE_10__* %10, %struct.TYPE_10__** %4, align 8
  %11 = call i32 (...) @av_frame_alloc()
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 7
  store i32 %11, i32* %13, align 4
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 7
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = call i32 @AVERROR(i32 %19)
  store i32 %20, i32* %2, align 4
  br label %157

21:                                               ; preds = %1
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = add nsw i32 %24, 16
  %26 = sext i32 %25 to i64
  %27 = mul i64 %26, 4
  %28 = trunc i64 %27 to i32
  %29 = call i32 @av_fifo_alloc(i32 %28)
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 6
  store i32 %29, i32* %31, align 8
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 6
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %21
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = call i32 @AVERROR(i32 %37)
  store i32 %38, i32* %2, align 4
  br label %157

39:                                               ; preds = %21
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 5
  store i64 0, i64* %41, align 8
  %42 = load i64, i64* @AMF_DLL_NAMEA, align 8
  %43 = load i32, i32* @RTLD_NOW, align 4
  %44 = load i32, i32* @RTLD_LOCAL, align 4
  %45 = or i32 %43, %44
  %46 = call i32* @dlopen(i64 %42, i32 %45)
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 4
  store i32* %46, i32** %48, align 8
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 4
  %52 = load i32*, i32** %51, align 8
  %53 = icmp ne i32* %52, null
  %54 = zext i1 %53 to i32
  %55 = load i32, i32* @AVERROR_UNKNOWN, align 4
  %56 = load i64, i64* @AMF_DLL_NAMEA, align 8
  %57 = call i32 (%struct.TYPE_10__*, i32, i32, i8*, i64, ...) @AMF_RETURN_IF_FALSE(%struct.TYPE_10__* %49, i32 %54, i32 %55, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i64 %56)
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 4
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* @AMF_INIT_FUNCTION_NAME, align 4
  %62 = call i64 @dlsym(i32* %60, i32 %61)
  %63 = inttoptr i64 %62 to i64 (i32, %struct.TYPE_12__**)*
  store i64 (i32, %struct.TYPE_12__**)* %63, i64 (i32, %struct.TYPE_12__**)** %5, align 8
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %65 = load i64 (i32, %struct.TYPE_12__**)*, i64 (i32, %struct.TYPE_12__**)** %5, align 8
  %66 = icmp ne i64 (i32, %struct.TYPE_12__**)* %65, null
  %67 = zext i1 %66 to i32
  %68 = load i32, i32* @AVERROR_UNKNOWN, align 4
  %69 = load i64, i64* @AMF_DLL_NAMEA, align 8
  %70 = load i32, i32* @AMF_INIT_FUNCTION_NAME, align 4
  %71 = call i32 (%struct.TYPE_10__*, i32, i32, i8*, i64, ...) @AMF_RETURN_IF_FALSE(%struct.TYPE_10__* %64, i32 %67, i32 %68, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i64 %69, i32 %70)
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 4
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* @AMF_QUERY_VERSION_FUNCTION_NAME, align 4
  %76 = call i64 @dlsym(i32* %74, i32 %75)
  %77 = inttoptr i64 %76 to i64 (i32*)*
  store i64 (i32*)* %77, i64 (i32*)** %6, align 8
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %79 = load i64 (i32*)*, i64 (i32*)** %6, align 8
  %80 = icmp ne i64 (i32*)* %79, null
  %81 = zext i1 %80 to i32
  %82 = load i32, i32* @AVERROR_UNKNOWN, align 4
  %83 = load i64, i64* @AMF_DLL_NAMEA, align 8
  %84 = load i32, i32* @AMF_QUERY_VERSION_FUNCTION_NAME, align 4
  %85 = call i32 (%struct.TYPE_10__*, i32, i32, i8*, i64, ...) @AMF_RETURN_IF_FALSE(%struct.TYPE_10__* %78, i32 %81, i32 %82, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i64 %83, i32 %84)
  %86 = load i64 (i32*)*, i64 (i32*)** %6, align 8
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 3
  %89 = call i64 %86(i32* %88)
  store i64 %89, i64* %7, align 8
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %91 = load i64, i64* %7, align 8
  %92 = load i64, i64* @AMF_OK, align 8
  %93 = icmp eq i64 %91, %92
  %94 = zext i1 %93 to i32
  %95 = load i32, i32* @AVERROR_UNKNOWN, align 4
  %96 = load i32, i32* @AMF_QUERY_VERSION_FUNCTION_NAME, align 4
  %97 = sext i32 %96 to i64
  %98 = load i64, i64* %7, align 8
  %99 = call i32 (%struct.TYPE_10__*, i32, i32, i8*, i64, ...) @AMF_RETURN_IF_FALSE(%struct.TYPE_10__* %90, i32 %94, i32 %95, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i64 %97, i64 %98)
  %100 = load i64 (i32, %struct.TYPE_12__**)*, i64 (i32, %struct.TYPE_12__**)** %5, align 8
  %101 = load i32, i32* @AMF_FULL_VERSION, align 4
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 1
  %104 = call i64 %100(i32 %101, %struct.TYPE_12__** %103)
  store i64 %104, i64* %7, align 8
  %105 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %106 = load i64, i64* %7, align 8
  %107 = load i64, i64* @AMF_OK, align 8
  %108 = icmp eq i64 %106, %107
  %109 = zext i1 %108 to i32
  %110 = load i32, i32* @AVERROR_UNKNOWN, align 4
  %111 = load i32, i32* @AMF_INIT_FUNCTION_NAME, align 4
  %112 = sext i32 %111 to i64
  %113 = load i64, i64* %7, align 8
  %114 = call i32 (%struct.TYPE_10__*, i32, i32, i8*, i64, ...) @AMF_RETURN_IF_FALSE(%struct.TYPE_10__* %105, i32 %109, i32 %110, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i64 %112, i64 %113)
  %115 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i32 0, i32 1
  %117 = load %struct.TYPE_12__*, %struct.TYPE_12__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %117, i32 0, i32 0
  %119 = load %struct.TYPE_9__*, %struct.TYPE_9__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %119, i32 0, i32 0
  %121 = load i64 (%struct.TYPE_12__*, i32*)*, i64 (%struct.TYPE_12__*, i32*)** %120, align 8
  %122 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 1
  %124 = load %struct.TYPE_12__*, %struct.TYPE_12__** %123, align 8
  %125 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %126 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %125, i32 0, i32 2
  %127 = call i64 %121(%struct.TYPE_12__* %124, i32* %126)
  store i64 %127, i64* %7, align 8
  %128 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %129 = load i64, i64* %7, align 8
  %130 = load i64, i64* @AMF_OK, align 8
  %131 = icmp eq i64 %129, %130
  %132 = zext i1 %131 to i32
  %133 = load i32, i32* @AVERROR_UNKNOWN, align 4
  %134 = load i64, i64* %7, align 8
  %135 = call i32 (%struct.TYPE_10__*, i32, i32, i8*, i64, ...) @AMF_RETURN_IF_FALSE(%struct.TYPE_10__* %128, i32 %132, i32 %133, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i64 %134)
  %136 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %137 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %136, i32 0, i32 1
  %138 = load %struct.TYPE_12__*, %struct.TYPE_12__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %138, i32 0, i32 0
  %140 = load %struct.TYPE_9__*, %struct.TYPE_9__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %140, i32 0, i32 1
  %142 = load i64 (%struct.TYPE_12__*, i32*)*, i64 (%struct.TYPE_12__*, i32*)** %141, align 8
  %143 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %144 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %143, i32 0, i32 1
  %145 = load %struct.TYPE_12__*, %struct.TYPE_12__** %144, align 8
  %146 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %147 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %146, i32 0, i32 0
  %148 = call i64 %142(%struct.TYPE_12__* %145, i32* %147)
  store i64 %148, i64* %7, align 8
  %149 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %150 = load i64, i64* %7, align 8
  %151 = load i64, i64* @AMF_OK, align 8
  %152 = icmp eq i64 %150, %151
  %153 = zext i1 %152 to i32
  %154 = load i32, i32* @AVERROR_UNKNOWN, align 4
  %155 = load i64, i64* %7, align 8
  %156 = call i32 (%struct.TYPE_10__*, i32, i32, i8*, i64, ...) @AMF_RETURN_IF_FALSE(%struct.TYPE_10__* %149, i32 %153, i32 %154, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i64 %155)
  store i32 0, i32* %2, align 4
  br label %157

157:                                              ; preds = %39, %36, %18
  %158 = load i32, i32* %2, align 4
  ret i32 %158
}

declare dso_local i32 @av_frame_alloc(...) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @av_fifo_alloc(i32) #1

declare dso_local i32* @dlopen(i64, i32) #1

declare dso_local i32 @AMF_RETURN_IF_FALSE(%struct.TYPE_10__*, i32, i32, i8*, i64, ...) #1

declare dso_local i64 @dlsym(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
