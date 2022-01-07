; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_mxfenc.c_mxf_write_multi_descriptor.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_mxfenc.c_mxf_write_multi_descriptor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32* }
%struct.TYPE_23__ = type { i64, %struct.TYPE_19__**, %struct.TYPE_22__*, %struct.TYPE_21__* }
%struct.TYPE_19__ = type { %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i64 }
%struct.TYPE_22__ = type { i64 }
%struct.TYPE_21__ = type { i32, %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32, i32 }

@.str = private unnamed_addr constant [24 x i8] c"multiple descriptor key\00", align 1
@MultipleDescriptor = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"multi_desc uid\00", align 1
@multiple_desc_ul = common dso_local global i32* null, align 8
@mxf_essence_container_uls = common dso_local global %struct.TYPE_17__* null, align 8
@SubDescriptor = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_23__*)* @mxf_write_multi_descriptor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mxf_write_multi_descriptor(%struct.TYPE_23__* %0) #0 {
  %2 = alloca %struct.TYPE_23__*, align 8
  %3 = alloca %struct.TYPE_21__*, align 8
  %4 = alloca %struct.TYPE_22__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_20__*, align 8
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %2, align 8
  %8 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %8, i32 0, i32 3
  %10 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  store %struct.TYPE_21__* %10, %struct.TYPE_21__** %3, align 8
  %11 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %11, i32 0, i32 2
  %13 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  store %struct.TYPE_22__* %13, %struct.TYPE_22__** %4, align 8
  %14 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %15 = call i32 @mxf_write_metadata_key(%struct.TYPE_22__* %14, i32 82944)
  %16 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %17 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = sub nsw i64 %19, 16
  %21 = call i32 @PRINT_KEY(%struct.TYPE_23__* %16, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i64 %20)
  %22 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %23 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = mul nsw i64 16, %25
  %27 = add nsw i64 64, %26
  %28 = trunc i64 %27 to i32
  %29 = call i32 @klv_encode_ber_length(%struct.TYPE_22__* %22, i32 %28)
  %30 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %31 = call i32 @mxf_write_local_tag(%struct.TYPE_22__* %30, i32 16, i32 15370)
  %32 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %33 = load i32, i32* @MultipleDescriptor, align 4
  %34 = call i32 @mxf_write_uuid(%struct.TYPE_22__* %32, i32 %33, i32 0)
  %35 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %36 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = sub nsw i64 %38, 16
  %40 = call i32 @PRINT_KEY(%struct.TYPE_23__* %35, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i64 %39)
  %41 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %42 = call i32 @mxf_write_local_tag(%struct.TYPE_22__* %41, i32 8, i32 12289)
  %43 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %44 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @avio_wb32(%struct.TYPE_22__* %43, i32 %47)
  %49 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %50 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @avio_wb32(%struct.TYPE_22__* %49, i32 %53)
  %55 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %56 = call i32 @mxf_write_local_tag(%struct.TYPE_22__* %55, i32 16, i32 12292)
  %57 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = icmp sgt i32 %59, 1
  br i1 %60, label %61, label %63

61:                                               ; preds = %1
  %62 = load i32*, i32** @multiple_desc_ul, align 8
  store i32* %62, i32** %5, align 8
  br label %78

63:                                               ; preds = %1
  %64 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %65 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %64, i32 0, i32 1
  %66 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %66, i64 0
  %68 = load %struct.TYPE_19__*, %struct.TYPE_19__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_20__*, %struct.TYPE_20__** %69, align 8
  store %struct.TYPE_20__* %70, %struct.TYPE_20__** %7, align 8
  %71 = load %struct.TYPE_17__*, %struct.TYPE_17__** @mxf_essence_container_uls, align 8
  %72 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %71, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  store i32* %77, i32** %5, align 8
  br label %78

78:                                               ; preds = %63, %61
  %79 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %80 = load i32*, i32** %5, align 8
  %81 = call i32 @avio_write(%struct.TYPE_22__* %79, i32* %80, i32 16)
  %82 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %83 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %84 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = mul nsw i64 %85, 16
  %87 = add nsw i64 %86, 8
  %88 = trunc i64 %87 to i32
  %89 = call i32 @mxf_write_local_tag(%struct.TYPE_22__* %82, i32 %88, i32 16129)
  %90 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %91 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %92 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = trunc i64 %93 to i32
  %95 = call i32 @mxf_write_refs_count(%struct.TYPE_22__* %90, i32 %94)
  store i32 0, i32* %6, align 4
  br label %96

96:                                               ; preds = %108, %78
  %97 = load i32, i32* %6, align 4
  %98 = sext i32 %97 to i64
  %99 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %100 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = icmp slt i64 %98, %101
  br i1 %102, label %103, label %111

103:                                              ; preds = %96
  %104 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %105 = load i32, i32* @SubDescriptor, align 4
  %106 = load i32, i32* %6, align 4
  %107 = call i32 @mxf_write_uuid(%struct.TYPE_22__* %104, i32 %105, i32 %106)
  br label %108

108:                                              ; preds = %103
  %109 = load i32, i32* %6, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %6, align 4
  br label %96

111:                                              ; preds = %96
  ret void
}

declare dso_local i32 @mxf_write_metadata_key(%struct.TYPE_22__*, i32) #1

declare dso_local i32 @PRINT_KEY(%struct.TYPE_23__*, i8*, i64) #1

declare dso_local i32 @klv_encode_ber_length(%struct.TYPE_22__*, i32) #1

declare dso_local i32 @mxf_write_local_tag(%struct.TYPE_22__*, i32, i32) #1

declare dso_local i32 @mxf_write_uuid(%struct.TYPE_22__*, i32, i32) #1

declare dso_local i32 @avio_wb32(%struct.TYPE_22__*, i32) #1

declare dso_local i32 @avio_write(%struct.TYPE_22__*, i32*, i32) #1

declare dso_local i32 @mxf_write_refs_count(%struct.TYPE_22__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
