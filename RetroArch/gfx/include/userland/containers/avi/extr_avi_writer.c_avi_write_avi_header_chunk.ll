; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/avi/extr_avi_writer.c_avi_write_avi_header_chunk.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/avi/extr_avi_writer.c_avi_write_avi_header_chunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32, %struct.TYPE_19__**, %struct.TYPE_14__* }
%struct.TYPE_19__ = type { %struct.TYPE_18__*, %struct.TYPE_15__* }
%struct.TYPE_18__ = type { i64, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32, i32, i32, i32 }
%struct.TYPE_15__ = type { %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i32, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i64, i64 }

@VC_CONTAINER_ES_TYPE_VIDEO = common dso_local global i64 0, align 8
@VC_CONTAINER_SUCCESS = common dso_local global i64 0, align 8
@AVIF_HASINDEX = common dso_local global i32 0, align 4
@AVIF_TRUSTCKTYPE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"Chunk ID\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"Chunk Size\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"dwMicroSecPerFrame\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"dwMaxBytesPerSec\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"dwPaddingGranularity\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"dwFlags\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"dwTotalFrames\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"dwInitialFrames\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"dwStreams\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"dwSuggestedBufferSize\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"dwWidth\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"dwHeight\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"dwReserved0\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"dwReserved1\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"dwReserved2\00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c"dwReserved3\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_21__*)* @avi_write_avi_header_chunk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @avi_write_avi_header_chunk(%struct.TYPE_21__* %0) #0 {
  %2 = alloca %struct.TYPE_21__*, align 8
  %3 = alloca %struct.TYPE_22__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_19__*, align 8
  %14 = alloca %struct.TYPE_20__*, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %2, align 8
  %15 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %15, i32 0, i32 2
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_22__*, %struct.TYPE_22__** %18, align 8
  store %struct.TYPE_22__* %19, %struct.TYPE_22__** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %20 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %23

23:                                               ; preds = %109, %1
  %24 = load i32, i32* %12, align 4
  %25 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp ult i32 %24, %27
  br i1 %28, label %29, label %112

29:                                               ; preds = %23
  %30 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %31, align 8
  %33 = load i32, i32* %12, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %32, i64 %34
  %36 = load %struct.TYPE_19__*, %struct.TYPE_19__** %35, align 8
  store %struct.TYPE_19__* %36, %struct.TYPE_19__** %13, align 8
  %37 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %38, align 8
  %40 = load i32, i32* %12, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %39, i64 %41
  %43 = load %struct.TYPE_19__*, %struct.TYPE_19__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %43, i32 0, i32 1
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_20__*, %struct.TYPE_20__** %46, align 8
  store %struct.TYPE_20__* %47, %struct.TYPE_20__** %14, align 8
  %48 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %49 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_18__*, %struct.TYPE_18__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @VC_CONTAINER_ES_TYPE_VIDEO, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %108

55:                                               ; preds = %29
  %56 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %57 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_18__*, %struct.TYPE_18__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %58, i32 0, i32 1
  %60 = load %struct.TYPE_17__*, %struct.TYPE_17__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %5, align 4
  %64 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %65 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_18__*, %struct.TYPE_18__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %66, i32 0, i32 1
  %68 = load %struct.TYPE_17__*, %struct.TYPE_17__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  store i32 %71, i32* %6, align 4
  %72 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %73 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %72, i32 0, i32 0
  %74 = load %struct.TYPE_18__*, %struct.TYPE_18__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %74, i32 0, i32 1
  %76 = load %struct.TYPE_17__*, %struct.TYPE_17__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %101

81:                                               ; preds = %55
  %82 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %83 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %82, i32 0, i32 0
  %84 = load %struct.TYPE_18__*, %struct.TYPE_18__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %84, i32 0, i32 1
  %86 = load %struct.TYPE_17__*, %struct.TYPE_17__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @UINT64_C(i32 1000000)
  %91 = mul nsw i32 %89, %90
  %92 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %93 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %92, i32 0, i32 0
  %94 = load %struct.TYPE_18__*, %struct.TYPE_18__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %94, i32 0, i32 1
  %96 = load %struct.TYPE_17__*, %struct.TYPE_17__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = sdiv i32 %91, %99
  store i32 %100, i32* %7, align 4
  br label %101

101:                                              ; preds = %81, %55
  %102 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %103 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  store i32 %104, i32* %9, align 4
  %105 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %106 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  store i32 %107, i32* %10, align 4
  br label %112

108:                                              ; preds = %29
  br label %109

109:                                              ; preds = %108
  %110 = load i32, i32* %12, align 4
  %111 = add i32 %110, 1
  store i32 %111, i32* %12, align 4
  br label %23

112:                                              ; preds = %101, %23
  %113 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %114 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %127

117:                                              ; preds = %112
  %118 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %119 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  %122 = icmp eq i64 %120, %121
  br i1 %122, label %123, label %127

123:                                              ; preds = %117
  %124 = load i32, i32* @AVIF_HASINDEX, align 4
  %125 = load i32, i32* @AVIF_TRUSTCKTYPE, align 4
  %126 = or i32 %124, %125
  br label %128

127:                                              ; preds = %117, %112
  br label %128

128:                                              ; preds = %127, %123
  %129 = phi i32 [ %126, %123 ], [ 0, %127 ]
  store i32 %129, i32* %8, align 4
  %130 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %131 = call i32 @VC_FOURCC(i8 signext 97, i8 signext 118, i8 signext 105, i8 signext 104)
  %132 = call i32 @WRITE_FOURCC(%struct.TYPE_21__* %130, i32 %131, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %133 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %134 = call i32 @WRITE_U32(%struct.TYPE_21__* %133, i32 56, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %135 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %136 = load i32, i32* %7, align 4
  %137 = call i32 @WRITE_U32(%struct.TYPE_21__* %135, i32 %136, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %138 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %139 = load i32, i32* %4, align 4
  %140 = ashr i32 %139, 3
  %141 = call i32 @WRITE_U32(%struct.TYPE_21__* %138, i32 %140, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  %142 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %143 = call i32 @WRITE_U32(%struct.TYPE_21__* %142, i32 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  %144 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %145 = load i32, i32* %8, align 4
  %146 = call i32 @WRITE_U32(%struct.TYPE_21__* %144, i32 %145, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %147 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %148 = load i32, i32* %9, align 4
  %149 = call i32 @WRITE_U32(%struct.TYPE_21__* %147, i32 %148, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  %150 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %151 = call i32 @WRITE_U32(%struct.TYPE_21__* %150, i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0))
  %152 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %153 = load i32, i32* %11, align 4
  %154 = call i32 @WRITE_U32(%struct.TYPE_21__* %152, i32 %153, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0))
  %155 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %156 = load i32, i32* %10, align 4
  %157 = call i32 @WRITE_U32(%struct.TYPE_21__* %155, i32 %156, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0))
  %158 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %159 = load i32, i32* %5, align 4
  %160 = call i32 @WRITE_U32(%struct.TYPE_21__* %158, i32 %159, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0))
  %161 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %162 = load i32, i32* %6, align 4
  %163 = call i32 @WRITE_U32(%struct.TYPE_21__* %161, i32 %162, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0))
  %164 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %165 = call i32 @WRITE_U32(%struct.TYPE_21__* %164, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0))
  %166 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %167 = call i32 @WRITE_U32(%struct.TYPE_21__* %166, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i64 0, i64 0))
  %168 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %169 = call i32 @WRITE_U32(%struct.TYPE_21__* %168, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i64 0, i64 0))
  %170 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %171 = call i32 @WRITE_U32(%struct.TYPE_21__* %170, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i64 0, i64 0))
  %172 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %173 = call i32 @STREAM_STATUS(%struct.TYPE_21__* %172)
  ret i32 %173
}

declare dso_local i32 @UINT64_C(i32) #1

declare dso_local i32 @WRITE_FOURCC(%struct.TYPE_21__*, i32, i8*) #1

declare dso_local i32 @VC_FOURCC(i8 signext, i8 signext, i8 signext, i8 signext) #1

declare dso_local i32 @WRITE_U32(%struct.TYPE_21__*, i32, i8*) #1

declare dso_local i32 @STREAM_STATUS(%struct.TYPE_21__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
