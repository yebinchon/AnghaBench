; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_mxfenc.c_mxf_write_track.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_mxfenc.c_mxf_write_track.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_29__ = type { i32*, %struct.TYPE_28__*, %struct.TYPE_26__* }
%struct.TYPE_28__ = type { i64 }
%struct.TYPE_26__ = type { i32, %struct.TYPE_23__, %struct.TYPE_22__, %struct.TYPE_27__* }
%struct.TYPE_23__ = type { i64, i64 }
%struct.TYPE_22__ = type { %struct.TYPE_21__ }
%struct.TYPE_21__ = type { i64, i64 }
%struct.TYPE_27__ = type { i64, %struct.TYPE_24__* }
%struct.TYPE_24__ = type { i64 }
%struct.TYPE_25__ = type { i64 }

@.str = private unnamed_addr constant [10 x i8] c"track key\00", align 1
@Track = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"track uid\00", align 1
@MaterialPackage = common dso_local global i64 0, align 8
@ff_mxf_opatom_muxer = common dso_local global i32 0, align 4
@Sequence = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_29__*, %struct.TYPE_27__*, %struct.TYPE_25__*)* @mxf_write_track to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mxf_write_track(%struct.TYPE_29__* %0, %struct.TYPE_27__* %1, %struct.TYPE_25__* %2) #0 {
  %4 = alloca %struct.TYPE_29__*, align 8
  %5 = alloca %struct.TYPE_27__*, align 8
  %6 = alloca %struct.TYPE_25__*, align 8
  %7 = alloca %struct.TYPE_26__*, align 8
  %8 = alloca %struct.TYPE_28__*, align 8
  %9 = alloca %struct.TYPE_24__*, align 8
  store %struct.TYPE_29__* %0, %struct.TYPE_29__** %4, align 8
  store %struct.TYPE_27__* %1, %struct.TYPE_27__** %5, align 8
  store %struct.TYPE_25__* %2, %struct.TYPE_25__** %6, align 8
  %10 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %10, i32 0, i32 2
  %12 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  store %struct.TYPE_26__* %12, %struct.TYPE_26__** %7, align 8
  %13 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_28__*, %struct.TYPE_28__** %14, align 8
  store %struct.TYPE_28__* %15, %struct.TYPE_28__** %8, align 8
  %16 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  store %struct.TYPE_24__* %18, %struct.TYPE_24__** %9, align 8
  %19 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %20 = call i32 @mxf_write_metadata_key(%struct.TYPE_28__* %19, i32 80640)
  %21 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %22 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = sub nsw i64 %24, 16
  %26 = call i32 @PRINT_KEY(%struct.TYPE_29__* %21, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i64 %25)
  %27 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %28 = call i32 @klv_encode_ber_length(%struct.TYPE_28__* %27, i32 80)
  %29 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %30 = call i32 @mxf_write_local_tag(%struct.TYPE_28__* %29, i32 16, i32 15370)
  %31 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %32 = load i32, i32* @Track, align 4
  %33 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @mxf_write_uuid(%struct.TYPE_28__* %31, i32 %32, i32 %35)
  %37 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %38 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = sub nsw i64 %40, 16
  %42 = call i32 @PRINT_KEY(%struct.TYPE_29__* %37, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i64 %41)
  %43 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %44 = call i32 @mxf_write_local_tag(%struct.TYPE_28__* %43, i32 4, i32 18433)
  %45 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %46 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = add nsw i64 %48, 2
  %50 = call i32 @avio_wb32(%struct.TYPE_28__* %45, i64 %49)
  %51 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %52 = call i32 @mxf_write_local_tag(%struct.TYPE_28__* %51, i32 4, i32 18436)
  %53 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @MaterialPackage, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %3
  %59 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %60 = call i32 @avio_wb32(%struct.TYPE_28__* %59, i64 0)
  br label %68

61:                                               ; preds = %3
  %62 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %63 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %64 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = add nsw i64 %65, 12
  %67 = call i32 @avio_write(%struct.TYPE_28__* %62, i64 %66, i32 4)
  br label %68

68:                                               ; preds = %61, %58
  %69 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %70 = call i32 @mxf_write_local_tag(%struct.TYPE_28__* %69, i32 8, i32 19201)
  %71 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %72 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %72, i32 0, i32 3
  %74 = load %struct.TYPE_27__*, %struct.TYPE_27__** %73, align 8
  %75 = icmp eq %struct.TYPE_27__* %71, %74
  br i1 %75, label %76, label %96

76:                                               ; preds = %68
  %77 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = icmp eq i32* %79, @ff_mxf_opatom_muxer
  br i1 %80, label %81, label %96

81:                                               ; preds = %76
  %82 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %83 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = call i32 @avio_wb32(%struct.TYPE_28__* %82, i64 %87)
  %89 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %90 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %91 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %90, i32 0, i32 2
  %92 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = call i32 @avio_wb32(%struct.TYPE_28__* %89, i64 %94)
  br label %109

96:                                               ; preds = %76, %68
  %97 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %98 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = call i32 @avio_wb32(%struct.TYPE_28__* %97, i64 %101)
  %103 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %104 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %105 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = call i32 @avio_wb32(%struct.TYPE_28__* %103, i64 %107)
  br label %109

109:                                              ; preds = %96, %81
  %110 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %111 = call i32 @mxf_write_local_tag(%struct.TYPE_28__* %110, i32 8, i32 19202)
  %112 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %113 = call i32 @avio_wb64(%struct.TYPE_28__* %112, i32 0)
  %114 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %115 = call i32 @mxf_write_local_tag(%struct.TYPE_28__* %114, i32 16, i32 18435)
  %116 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %117 = load i32, i32* @Sequence, align 4
  %118 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %119 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = call i32 @mxf_write_uuid(%struct.TYPE_28__* %116, i32 %117, i32 %120)
  ret void
}

declare dso_local i32 @mxf_write_metadata_key(%struct.TYPE_28__*, i32) #1

declare dso_local i32 @PRINT_KEY(%struct.TYPE_29__*, i8*, i64) #1

declare dso_local i32 @klv_encode_ber_length(%struct.TYPE_28__*, i32) #1

declare dso_local i32 @mxf_write_local_tag(%struct.TYPE_28__*, i32, i32) #1

declare dso_local i32 @mxf_write_uuid(%struct.TYPE_28__*, i32, i32) #1

declare dso_local i32 @avio_wb32(%struct.TYPE_28__*, i64) #1

declare dso_local i32 @avio_write(%struct.TYPE_28__*, i64, i32) #1

declare dso_local i32 @avio_wb64(%struct.TYPE_28__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
