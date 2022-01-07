; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_mxfenc.c_mxf_write_header_metadata_sets.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_mxfenc.c_mxf_write_header_metadata_sets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, i32, %struct.TYPE_17__**, %struct.TYPE_16__* }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_15__ = type { i32, %struct.TYPE_15__*, i8*, i32, i32 }

@MaterialPackage = common dso_local global i8* null, align 8
@SourcePackage = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [22 x i8] c"material_package_name\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"file_package_name\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"reel_name\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_18__*)* @mxf_write_header_metadata_sets to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxf_write_header_metadata_sets(%struct.TYPE_18__* %0) #0 {
  %2 = alloca %struct.TYPE_18__*, align 8
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [3 x %struct.TYPE_15__], align 16
  %8 = alloca i32, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %2, align 8
  %9 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 3
  %11 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  store %struct.TYPE_16__* %11, %struct.TYPE_16__** %3, align 8
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %4, align 8
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %5, align 8
  %12 = bitcast [3 x %struct.TYPE_15__]* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %12, i8 0, i64 96, i1 false)
  store i32 2, i32* %8, align 4
  %13 = load i8*, i8** @MaterialPackage, align 8
  %14 = getelementptr inbounds [3 x %struct.TYPE_15__], [3 x %struct.TYPE_15__]* %7, i64 0, i64 0
  %15 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i32 0, i32 2
  store i8* %13, i8** %15, align 16
  %16 = load i8*, i8** @SourcePackage, align 8
  %17 = getelementptr inbounds [3 x %struct.TYPE_15__], [3 x %struct.TYPE_15__]* %7, i64 0, i64 1
  %18 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 2
  store i8* %16, i8** %18, align 16
  %19 = getelementptr inbounds [3 x %struct.TYPE_15__], [3 x %struct.TYPE_15__]* %7, i64 0, i64 1
  %20 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 0
  store i32 1, i32* %20, align 16
  %21 = getelementptr inbounds [3 x %struct.TYPE_15__], [3 x %struct.TYPE_15__]* %7, i64 0, i64 1
  %22 = getelementptr inbounds [3 x %struct.TYPE_15__], [3 x %struct.TYPE_15__]* %7, i64 0, i64 0
  %23 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %22, i32 0, i32 1
  store %struct.TYPE_15__* %21, %struct.TYPE_15__** %23, align 8
  %24 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call %struct.TYPE_19__* @av_dict_get(i32 %26, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32* null, i32 0)
  store %struct.TYPE_19__* %27, %struct.TYPE_19__** %4, align 8
  %28 = icmp ne %struct.TYPE_19__* %27, null
  br i1 %28, label %29, label %35

29:                                               ; preds = %1
  %30 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = getelementptr inbounds [3 x %struct.TYPE_15__], [3 x %struct.TYPE_15__]* %7, i64 0, i64 0
  %34 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %33, i32 0, i32 3
  store i32 %32, i32* %34, align 8
  br label %35

35:                                               ; preds = %29, %1
  %36 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call %struct.TYPE_19__* @av_dict_get(i32 %38, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32* null, i32 0)
  store %struct.TYPE_19__* %39, %struct.TYPE_19__** %4, align 8
  %40 = icmp ne %struct.TYPE_19__* %39, null
  br i1 %40, label %41, label %47

41:                                               ; preds = %35
  %42 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = getelementptr inbounds [3 x %struct.TYPE_15__], [3 x %struct.TYPE_15__]* %7, i64 0, i64 1
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %45, i32 0, i32 3
  store i32 %44, i32* %46, align 8
  br label %78

47:                                               ; preds = %35
  store i32 0, i32* %6, align 4
  br label %48

48:                                               ; preds = %74, %47
  %49 = load i32, i32* %6, align 4
  %50 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %51 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp slt i32 %49, %52
  br i1 %53, label %54, label %77

54:                                               ; preds = %48
  %55 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %56 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %55, i32 0, i32 2
  %57 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %56, align 8
  %58 = load i32, i32* %6, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %57, i64 %59
  %61 = load %struct.TYPE_17__*, %struct.TYPE_17__** %60, align 8
  store %struct.TYPE_17__* %61, %struct.TYPE_17__** %5, align 8
  %62 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call %struct.TYPE_19__* @av_dict_get(i32 %64, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32* null, i32 0)
  store %struct.TYPE_19__* %65, %struct.TYPE_19__** %4, align 8
  %66 = icmp ne %struct.TYPE_19__* %65, null
  br i1 %66, label %67, label %73

67:                                               ; preds = %54
  %68 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = getelementptr inbounds [3 x %struct.TYPE_15__], [3 x %struct.TYPE_15__]* %7, i64 0, i64 1
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %71, i32 0, i32 3
  store i32 %70, i32* %72, align 8
  br label %77

73:                                               ; preds = %54
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %6, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %6, align 4
  br label %48

77:                                               ; preds = %67, %48
  br label %78

78:                                               ; preds = %77, %41
  %79 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %80 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = call %struct.TYPE_19__* @av_dict_get(i32 %81, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32* null, i32 0)
  store %struct.TYPE_19__* %82, %struct.TYPE_19__** %4, align 8
  %83 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %84 = icmp ne %struct.TYPE_19__* %83, null
  br i1 %84, label %85, label %99

85:                                               ; preds = %78
  %86 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = getelementptr inbounds [3 x %struct.TYPE_15__], [3 x %struct.TYPE_15__]* %7, i64 0, i64 2
  %90 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %89, i32 0, i32 3
  store i32 %88, i32* %90, align 8
  %91 = load i8*, i8** @SourcePackage, align 8
  %92 = getelementptr inbounds [3 x %struct.TYPE_15__], [3 x %struct.TYPE_15__]* %7, i64 0, i64 2
  %93 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %92, i32 0, i32 2
  store i8* %91, i8** %93, align 16
  %94 = getelementptr inbounds [3 x %struct.TYPE_15__], [3 x %struct.TYPE_15__]* %7, i64 0, i64 2
  %95 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %94, i32 0, i32 0
  store i32 2, i32* %95, align 16
  %96 = getelementptr inbounds [3 x %struct.TYPE_15__], [3 x %struct.TYPE_15__]* %7, i64 0, i64 2
  %97 = getelementptr inbounds [3 x %struct.TYPE_15__], [3 x %struct.TYPE_15__]* %7, i64 0, i64 1
  %98 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %97, i32 0, i32 1
  store %struct.TYPE_15__* %96, %struct.TYPE_15__** %98, align 8
  store i32 3, i32* %8, align 4
  br label %99

99:                                               ; preds = %85, %78
  %100 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %101 = call i32 @mxf_write_preface(%struct.TYPE_18__* %100)
  %102 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %103 = call i32 @mxf_write_identification(%struct.TYPE_18__* %102)
  %104 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %105 = getelementptr inbounds [3 x %struct.TYPE_15__], [3 x %struct.TYPE_15__]* %7, i64 0, i64 0
  %106 = load i32, i32* %8, align 4
  %107 = call i32 @mxf_write_content_storage(%struct.TYPE_18__* %104, %struct.TYPE_15__* %105, i32 %106)
  %108 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %108, i32 0, i32 0
  store i64 0, i64* %109, align 8
  store i32 0, i32* %6, align 4
  br label %110

110:                                              ; preds = %120, %99
  %111 = load i32, i32* %6, align 4
  %112 = load i32, i32* %8, align 4
  %113 = icmp slt i32 %111, %112
  br i1 %113, label %114, label %123

114:                                              ; preds = %110
  %115 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %116 = load i32, i32* %6, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds [3 x %struct.TYPE_15__], [3 x %struct.TYPE_15__]* %7, i64 0, i64 %117
  %119 = call i32 @mxf_write_package(%struct.TYPE_18__* %115, %struct.TYPE_15__* %118)
  br label %120

120:                                              ; preds = %114
  %121 = load i32, i32* %6, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %6, align 4
  br label %110

123:                                              ; preds = %110
  %124 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %125 = call i32 @mxf_write_essence_container_data(%struct.TYPE_18__* %124)
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.TYPE_19__* @av_dict_get(i32, i8*, i32*, i32) #2

declare dso_local i32 @mxf_write_preface(%struct.TYPE_18__*) #2

declare dso_local i32 @mxf_write_identification(%struct.TYPE_18__*) #2

declare dso_local i32 @mxf_write_content_storage(%struct.TYPE_18__*, %struct.TYPE_15__*, i32) #2

declare dso_local i32 @mxf_write_package(%struct.TYPE_18__*, %struct.TYPE_15__*) #2

declare dso_local i32 @mxf_write_essence_container_data(%struct.TYPE_18__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
