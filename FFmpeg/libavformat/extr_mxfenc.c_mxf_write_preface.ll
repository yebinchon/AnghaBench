; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_mxfenc.c_mxf_write_preface.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_mxfenc.c_mxf_write_preface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32*, %struct.TYPE_17__*, %struct.TYPE_16__* }
%struct.TYPE_17__ = type { i64 }
%struct.TYPE_16__ = type { i32, i32 }

@.str = private unnamed_addr constant [12 x i8] c"preface key\00", align 1
@Preface = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"preface uid\00", align 1
@Identification = common dso_local global i32 0, align 4
@ContentStorage = common dso_local global i32 0, align 4
@ff_mxf_opatom_muxer = common dso_local global i32 0, align 4
@opatom_ul = common dso_local global i32 0, align 4
@op1a_ul = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_18__*)* @mxf_write_preface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mxf_write_preface(%struct.TYPE_18__* %0) #0 {
  %2 = alloca %struct.TYPE_18__*, align 8
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca %struct.TYPE_17__*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %2, align 8
  %5 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %5, i32 0, i32 2
  %7 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  store %struct.TYPE_16__* %7, %struct.TYPE_16__** %3, align 8
  %8 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %8, i32 0, i32 1
  %10 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  store %struct.TYPE_17__* %10, %struct.TYPE_17__** %4, align 8
  %11 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %12 = call i32 @mxf_write_metadata_key(%struct.TYPE_17__* %11, i32 77568)
  %13 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %14 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = sub nsw i64 %16, 16
  %18 = call i32 @PRINT_KEY(%struct.TYPE_18__* %13, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 %17)
  %19 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %20 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @DESCRIPTOR_COUNT(i32 %22)
  %24 = mul nsw i64 16, %23
  %25 = add nsw i64 138, %24
  %26 = trunc i64 %25 to i32
  %27 = call i32 @klv_encode_ber_length(%struct.TYPE_17__* %19, i32 %26)
  %28 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %29 = call i32 @mxf_write_local_tag(%struct.TYPE_17__* %28, i32 16, i32 15370)
  %30 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %31 = load i32, i32* @Preface, align 4
  %32 = call i32 @mxf_write_uuid(%struct.TYPE_17__* %30, i32 %31, i32 0)
  %33 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %34 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = sub nsw i64 %36, 16
  %38 = call i32 @PRINT_KEY(%struct.TYPE_18__* %33, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i64 %37)
  %39 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %40 = call i32 @mxf_write_local_tag(%struct.TYPE_17__* %39, i32 8, i32 15106)
  %41 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %42 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @avio_wb64(%struct.TYPE_17__* %41, i32 %44)
  %46 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %47 = call i32 @mxf_write_local_tag(%struct.TYPE_17__* %46, i32 2, i32 15109)
  %48 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %49 = call i32 @avio_wb16(%struct.TYPE_17__* %48, i32 259)
  %50 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %51 = call i32 @mxf_write_local_tag(%struct.TYPE_17__* %50, i32 4, i32 15111)
  %52 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %53 = call i32 @avio_wb32(%struct.TYPE_17__* %52, i32 1)
  %54 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %55 = call i32 @mxf_write_local_tag(%struct.TYPE_17__* %54, i32 24, i32 15110)
  %56 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %57 = call i32 @mxf_write_refs_count(%struct.TYPE_17__* %56, i32 1)
  %58 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %59 = load i32, i32* @Identification, align 4
  %60 = call i32 @mxf_write_uuid(%struct.TYPE_17__* %58, i32 %59, i32 0)
  %61 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %62 = call i32 @mxf_write_local_tag(%struct.TYPE_17__* %61, i32 16, i32 15107)
  %63 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %64 = load i32, i32* @ContentStorage, align 4
  %65 = call i32 @mxf_write_uuid(%struct.TYPE_17__* %63, i32 %64, i32 0)
  %66 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %67 = call i32 @mxf_write_local_tag(%struct.TYPE_17__* %66, i32 16, i32 15113)
  %68 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %69 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = icmp eq i32* %70, @ff_mxf_opatom_muxer
  br i1 %71, label %72, label %76

72:                                               ; preds = %1
  %73 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %74 = load i32, i32* @opatom_ul, align 4
  %75 = call i32 @avio_write(%struct.TYPE_17__* %73, i32 %74, i32 16)
  br label %80

76:                                               ; preds = %1
  %77 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %78 = load i32, i32* @op1a_ul, align 4
  %79 = call i32 @avio_write(%struct.TYPE_17__* %77, i32 %78, i32 16)
  br label %80

80:                                               ; preds = %76, %72
  %81 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %82 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i64 @DESCRIPTOR_COUNT(i32 %84)
  %86 = mul nsw i64 16, %85
  %87 = add nsw i64 8, %86
  %88 = trunc i64 %87 to i32
  %89 = call i32 @mxf_write_local_tag(%struct.TYPE_17__* %81, i32 %88, i32 15114)
  %90 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %91 = call i32 @mxf_write_essence_container_refs(%struct.TYPE_18__* %90)
  %92 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %93 = call i32 @mxf_write_local_tag(%struct.TYPE_17__* %92, i32 8, i32 15115)
  %94 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %95 = call i32 @avio_wb64(%struct.TYPE_17__* %94, i32 0)
  ret void
}

declare dso_local i32 @mxf_write_metadata_key(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @PRINT_KEY(%struct.TYPE_18__*, i8*, i64) #1

declare dso_local i32 @klv_encode_ber_length(%struct.TYPE_17__*, i32) #1

declare dso_local i64 @DESCRIPTOR_COUNT(i32) #1

declare dso_local i32 @mxf_write_local_tag(%struct.TYPE_17__*, i32, i32) #1

declare dso_local i32 @mxf_write_uuid(%struct.TYPE_17__*, i32, i32) #1

declare dso_local i32 @avio_wb64(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @avio_wb16(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @avio_wb32(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @mxf_write_refs_count(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @avio_write(%struct.TYPE_17__*, i32, i32) #1

declare dso_local i32 @mxf_write_essence_container_refs(%struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
