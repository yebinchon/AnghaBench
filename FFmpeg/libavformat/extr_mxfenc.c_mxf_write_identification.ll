; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_mxfenc.c_mxf_write_identification.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_mxfenc.c_mxf_write_identification.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i32*, %struct.TYPE_14__*, %struct.TYPE_13__* }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_13__ = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"FFmpeg\00", align 1
@ff_mxf_opatom_muxer = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"OP1a Muxer\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"OPAtom Muxer\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"identification key\00", align 1
@AVFMT_FLAG_BITEXACT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"0.0.0\00", align 1
@LIBAVFORMAT_VERSION = common dso_local global i32 0, align 4
@Identification = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [19 x i8] c"identification uid\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_15__*)* @mxf_write_identification to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mxf_write_identification(%struct.TYPE_15__* %0) #0 {
  %2 = alloca %struct.TYPE_15__*, align 8
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %2, align 8
  %9 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 3
  %11 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  store %struct.TYPE_13__* %11, %struct.TYPE_13__** %3, align 8
  %12 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 2
  %14 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  store %struct.TYPE_14__* %14, %struct.TYPE_14__** %4, align 8
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %5, align 8
  %15 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  %18 = icmp ne i32* %17, @ff_mxf_opatom_muxer
  %19 = zext i1 %18 to i64
  %20 = select i1 %18, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0)
  store i8* %20, i8** %6, align 8
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %22 = call i32 @mxf_write_metadata_key(%struct.TYPE_14__* %21, i32 77824)
  %23 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = sub nsw i64 %26, 16
  %28 = call i32 @PRINT_KEY(%struct.TYPE_15__* %23, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i64 %27)
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @AVFMT_FLAG_BITEXACT, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %1
  br label %39

36:                                               ; preds = %1
  %37 = load i32, i32* @LIBAVFORMAT_VERSION, align 4
  %38 = call i8* @AV_STRINGIFY(i32 %37)
  br label %39

39:                                               ; preds = %36, %35
  %40 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), %35 ], [ %38, %36 ]
  store i8* %40, i8** %7, align 8
  %41 = load i8*, i8** %5, align 8
  %42 = call i32 @mxf_utf16_local_tag_length(i8* %41)
  %43 = add nsw i32 100, %42
  %44 = load i8*, i8** %6, align 8
  %45 = call i32 @mxf_utf16_local_tag_length(i8* %44)
  %46 = add nsw i32 %43, %45
  %47 = load i8*, i8** %7, align 8
  %48 = call i32 @mxf_utf16_local_tag_length(i8* %47)
  %49 = add nsw i32 %46, %48
  store i32 %49, i32* %8, align 4
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %51 = load i32, i32* %8, align 4
  %52 = call i32 @klv_encode_ber_length(%struct.TYPE_14__* %50, i32 %51)
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %54 = call i32 @mxf_write_local_tag(%struct.TYPE_14__* %53, i32 16, i32 15370)
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %56 = load i32, i32* @Identification, align 4
  %57 = call i32 @mxf_write_uuid(%struct.TYPE_14__* %55, i32 %56, i32 0)
  %58 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = sub nsw i64 %61, 16
  %63 = call i32 @PRINT_KEY(%struct.TYPE_15__* %58, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i64 %62)
  %64 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %65 = call i32 @mxf_write_local_tag(%struct.TYPE_14__* %64, i32 16, i32 15369)
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %67 = load i32, i32* @Identification, align 4
  %68 = call i32 @mxf_write_uuid(%struct.TYPE_14__* %66, i32 %67, i32 1)
  %69 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %70 = load i8*, i8** %5, align 8
  %71 = call i32 @mxf_write_local_tag_utf16(%struct.TYPE_14__* %69, i32 15361, i8* %70)
  %72 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %73 = load i8*, i8** %6, align 8
  %74 = call i32 @mxf_write_local_tag_utf16(%struct.TYPE_14__* %72, i32 15362, i8* %73)
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %76 = call i32 @mxf_write_local_tag(%struct.TYPE_14__* %75, i32 10, i32 15363)
  %77 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %78 = call i32 @store_version(%struct.TYPE_15__* %77)
  %79 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %80 = load i8*, i8** %7, align 8
  %81 = call i32 @mxf_write_local_tag_utf16(%struct.TYPE_14__* %79, i32 15364, i8* %80)
  %82 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %83 = call i32 @mxf_write_local_tag(%struct.TYPE_14__* %82, i32 16, i32 15365)
  %84 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %85 = load i32, i32* @Identification, align 4
  %86 = call i32 @mxf_write_uuid(%struct.TYPE_14__* %84, i32 %85, i32 2)
  %87 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %88 = call i32 @mxf_write_local_tag(%struct.TYPE_14__* %87, i32 8, i32 15366)
  %89 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %90 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @avio_wb64(%struct.TYPE_14__* %89, i32 %92)
  %94 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %95 = call i32 @mxf_write_local_tag(%struct.TYPE_14__* %94, i32 10, i32 15367)
  %96 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %97 = call i32 @store_version(%struct.TYPE_15__* %96)
  ret void
}

declare dso_local i32 @mxf_write_metadata_key(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @PRINT_KEY(%struct.TYPE_15__*, i8*, i64) #1

declare dso_local i8* @AV_STRINGIFY(i32) #1

declare dso_local i32 @mxf_utf16_local_tag_length(i8*) #1

declare dso_local i32 @klv_encode_ber_length(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @mxf_write_local_tag(%struct.TYPE_14__*, i32, i32) #1

declare dso_local i32 @mxf_write_uuid(%struct.TYPE_14__*, i32, i32) #1

declare dso_local i32 @mxf_write_local_tag_utf16(%struct.TYPE_14__*, i32, i8*) #1

declare dso_local i32 @store_version(%struct.TYPE_15__*) #1

declare dso_local i32 @avio_wb64(%struct.TYPE_14__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
