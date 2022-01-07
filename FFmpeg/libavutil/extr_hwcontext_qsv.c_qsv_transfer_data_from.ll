; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavutil/extr_hwcontext_qsv.c_qsv_transfer_data_from.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavutil/extr_hwcontext_qsv.c_qsv_transfer_data_from.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i32, i64, i64, i32, i32 }
%struct.TYPE_24__ = type { i64* }
%struct.TYPE_21__ = type { i32, %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i32 }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Surface download not possible\0A\00", align 1
@ENOSYS = common dso_local global i32 0, align 4
@MFX_WRN_DEVICE_BUSY = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [31 x i8] c"Error downloading the surface\0A\00", align 1
@AVERROR_UNKNOWN = common dso_local global i32 0, align 4
@MFX_WRN_IN_EXECUTION = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [39 x i8] c"Error synchronizing the operation: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_23__*, %struct.TYPE_24__*, %struct.TYPE_24__*)* @qsv_transfer_data_from to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qsv_transfer_data_from(%struct.TYPE_23__* %0, %struct.TYPE_24__* %1, %struct.TYPE_24__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_23__*, align 8
  %6 = alloca %struct.TYPE_24__*, align 8
  %7 = alloca %struct.TYPE_24__*, align 8
  %8 = alloca %struct.TYPE_22__*, align 8
  %9 = alloca %struct.TYPE_21__, align 4
  %10 = alloca %struct.TYPE_21__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %5, align 8
  store %struct.TYPE_24__* %1, %struct.TYPE_24__** %6, align 8
  store %struct.TYPE_24__* %2, %struct.TYPE_24__** %7, align 8
  %14 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_22__*, %struct.TYPE_22__** %17, align 8
  store %struct.TYPE_22__* %18, %struct.TYPE_22__** %8, align 8
  %19 = bitcast %struct.TYPE_21__* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %19, i8 0, i64 8, i1 false)
  %20 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %20, i32 0, i32 0
  %22 = load i64*, i64** %21, align 8
  %23 = getelementptr inbounds i64, i64* %22, i64 3
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to %struct.TYPE_21__*
  store %struct.TYPE_21__* %25, %struct.TYPE_21__** %10, align 8
  store i32* null, i32** %11, align 8
  store i32 0, i32* %13, align 4
  br label %26

26:                                               ; preds = %60, %3
  %27 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %40, label %31

31:                                               ; preds = %26
  %32 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %31
  %37 = load i32, i32* %13, align 4
  %38 = icmp ne i32 %37, 0
  %39 = xor i1 %38, true
  br label %40

40:                                               ; preds = %36, %31, %26
  %41 = phi i1 [ false, %31 ], [ false, %26 ], [ %39, %36 ]
  br i1 %41, label %42, label %61

42:                                               ; preds = %40
  %43 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %60, label %47

47:                                               ; preds = %42
  %48 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %49 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %49, i32 0, i32 1
  %51 = call i32 @qsv_init_internal_session(%struct.TYPE_23__* %48, i64* %50, i32 0)
  store i32 %51, i32* %13, align 4
  %52 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %47
  %57 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %57, i32 0, i32 0
  store i32 1, i32* %58, align 8
  br label %59

59:                                               ; preds = %56, %47
  br label %60

60:                                               ; preds = %59, %42
  br label %26

61:                                               ; preds = %40
  %62 = load i32, i32* %13, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %61
  %65 = load i32, i32* %13, align 4
  store i32 %65, i32* %4, align 4
  br label %142

66:                                               ; preds = %61
  %67 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %87, label %71

71:                                               ; preds = %66
  %72 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %71
  %77 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %78 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %79 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %80 = call i32 @qsv_transfer_data_child(%struct.TYPE_23__* %77, %struct.TYPE_24__* %78, %struct.TYPE_24__* %79)
  store i32 %80, i32* %4, align 4
  br label %142

81:                                               ; preds = %71
  %82 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %83 = load i32, i32* @AV_LOG_ERROR, align 4
  %84 = call i32 (%struct.TYPE_23__*, i32, i8*, ...) @av_log(%struct.TYPE_23__* %82, i32 %83, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %85 = load i32, i32* @ENOSYS, align 4
  %86 = call i32 @AVERROR(i32 %85)
  store i32 %86, i32* %4, align 4
  br label %142

87:                                               ; preds = %66
  %88 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %89 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %9, i32 0, i32 0
  store i32 %90, i32* %91, align 4
  %92 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %93 = call i32 @map_frame_to_surface(%struct.TYPE_24__* %92, %struct.TYPE_21__* %9)
  br label %94

94:                                               ; preds = %106, %87
  %95 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %96 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %99 = call i64 @MFXVideoVPP_RunFrameVPPAsync(i64 %97, %struct.TYPE_21__* %98, %struct.TYPE_21__* %9, i32* null, i32** %11)
  store i64 %99, i64* %12, align 8
  %100 = load i64, i64* %12, align 8
  %101 = load i64, i64* @MFX_WRN_DEVICE_BUSY, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %103, label %105

103:                                              ; preds = %94
  %104 = call i32 @av_usleep(i32 1)
  br label %105

105:                                              ; preds = %103, %94
  br label %106

106:                                              ; preds = %105
  %107 = load i64, i64* %12, align 8
  %108 = load i64, i64* @MFX_WRN_DEVICE_BUSY, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %94, label %110

110:                                              ; preds = %106
  %111 = load i64, i64* %12, align 8
  %112 = icmp slt i64 %111, 0
  br i1 %112, label %116, label %113

113:                                              ; preds = %110
  %114 = load i32*, i32** %11, align 8
  %115 = icmp ne i32* %114, null
  br i1 %115, label %121, label %116

116:                                              ; preds = %113, %110
  %117 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %118 = load i32, i32* @AV_LOG_ERROR, align 4
  %119 = call i32 (%struct.TYPE_23__*, i32, i8*, ...) @av_log(%struct.TYPE_23__* %117, i32 %118, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %120 = load i32, i32* @AVERROR_UNKNOWN, align 4
  store i32 %120, i32* %4, align 4
  br label %142

121:                                              ; preds = %113
  br label %122

122:                                              ; preds = %128, %121
  %123 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %124 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %123, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = load i32*, i32** %11, align 8
  %127 = call i64 @MFXVideoCORE_SyncOperation(i64 %125, i32* %126, i32 1000)
  store i64 %127, i64* %12, align 8
  br label %128

128:                                              ; preds = %122
  %129 = load i64, i64* %12, align 8
  %130 = load i64, i64* @MFX_WRN_IN_EXECUTION, align 8
  %131 = icmp eq i64 %129, %130
  br i1 %131, label %122, label %132

132:                                              ; preds = %128
  %133 = load i64, i64* %12, align 8
  %134 = icmp slt i64 %133, 0
  br i1 %134, label %135, label %141

135:                                              ; preds = %132
  %136 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %137 = load i32, i32* @AV_LOG_ERROR, align 4
  %138 = load i64, i64* %12, align 8
  %139 = call i32 (%struct.TYPE_23__*, i32, i8*, ...) @av_log(%struct.TYPE_23__* %136, i32 %137, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i64 %138)
  %140 = load i32, i32* @AVERROR_UNKNOWN, align 4
  store i32 %140, i32* %4, align 4
  br label %142

141:                                              ; preds = %132
  store i32 0, i32* %4, align 4
  br label %142

142:                                              ; preds = %141, %135, %116, %81, %76, %64
  %143 = load i32, i32* %4, align 4
  ret i32 %143
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @qsv_init_internal_session(%struct.TYPE_23__*, i64*, i32) #2

declare dso_local i32 @qsv_transfer_data_child(%struct.TYPE_23__*, %struct.TYPE_24__*, %struct.TYPE_24__*) #2

declare dso_local i32 @av_log(%struct.TYPE_23__*, i32, i8*, ...) #2

declare dso_local i32 @AVERROR(i32) #2

declare dso_local i32 @map_frame_to_surface(%struct.TYPE_24__*, %struct.TYPE_21__*) #2

declare dso_local i64 @MFXVideoVPP_RunFrameVPPAsync(i64, %struct.TYPE_21__*, %struct.TYPE_21__*, i32*, i32**) #2

declare dso_local i32 @av_usleep(i32) #2

declare dso_local i64 @MFXVideoCORE_SyncOperation(i64, i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
