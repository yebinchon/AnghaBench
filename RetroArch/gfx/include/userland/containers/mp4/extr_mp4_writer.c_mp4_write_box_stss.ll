; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/mp4/extr_mp4_writer.c_mp4_write_box_stss.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/mp4/extr_mp4_writer.c_mp4_write_box_stss.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_28__ = type { %struct.TYPE_23__**, %struct.TYPE_21__* }
%struct.TYPE_23__ = type { %struct.TYPE_22__* }
%struct.TYPE_22__ = type { %struct.TYPE_27__* }
%struct.TYPE_27__ = type { %struct.TYPE_26__* }
%struct.TYPE_26__ = type { i32 }
%struct.TYPE_21__ = type { %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i64, %struct.TYPE_25__, %struct.TYPE_24__ }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_24__ = type { i64 }
%struct.TYPE_29__ = type { i64, i32 }

@VC_CONTAINER_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"flags\00", align 1
@MP4_SAMPLE_TABLE_STSS = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [12 x i8] c"entry_count\00", align 1
@VC_CONTAINER_PACKET_FLAG_KEYFRAME = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"sample_number\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_28__*)* @mp4_write_box_stss to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @mp4_write_box_stss(%struct.TYPE_28__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_28__*, align 8
  %4 = alloca %struct.TYPE_20__*, align 8
  %5 = alloca %struct.TYPE_27__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_29__, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_28__* %0, %struct.TYPE_28__** %3, align 8
  %10 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %10, i32 0, i32 1
  %12 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  store %struct.TYPE_20__* %14, %struct.TYPE_20__** %4, align 8
  %15 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %16, align 8
  %18 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %17, i64 %20
  %22 = load %struct.TYPE_23__*, %struct.TYPE_23__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_22__*, %struct.TYPE_22__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_27__*, %struct.TYPE_27__** %25, align 8
  store %struct.TYPE_27__* %26, %struct.TYPE_27__** %5, align 8
  %27 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  store i64 %27, i64* %6, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %28 = call i32 @memset(%struct.TYPE_29__* %7, i32 0, i32 16)
  %29 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %30 = call i32 @WRITE_U8(%struct.TYPE_28__* %29, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %31 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %32 = call i32 @WRITE_U24(%struct.TYPE_28__* %31, i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %33 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %34 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_26__*, %struct.TYPE_26__** %35, align 8
  %37 = load i64, i64* @MP4_SAMPLE_TABLE_STSS, align 8
  %38 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %36, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @WRITE_U32(%struct.TYPE_28__* %33, i32 %40, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %42 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %60

47:                                               ; preds = %1
  %48 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %49 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_26__*, %struct.TYPE_26__** %50, align 8
  %52 = load i64, i64* @MP4_SAMPLE_TABLE_STSS, align 8
  %53 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %51, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = mul i32 %55, 4
  %57 = call i32 @WRITE_BYTES(%struct.TYPE_28__* %48, i32 0, i32 %56)
  %58 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %59 = call i64 @STREAM_STATUS(%struct.TYPE_28__* %58)
  store i64 %59, i64* %2, align 8
  br label %113

60:                                               ; preds = %1
  %61 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @INT64_C(i32 0)
  %66 = call i32 @vc_container_io_seek(i32 %64, i32 %65)
  %67 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %68 = call i64 @mp4_writer_read_sample_from_temp(%struct.TYPE_28__* %67, %struct.TYPE_29__* %7)
  store i64 %68, i64* %6, align 8
  br label %69

69:                                               ; preds = %96, %60
  %70 = load i64, i64* %6, align 8
  %71 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %99

73:                                               ; preds = %69
  %74 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %7, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %75, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %73
  br label %96

81:                                               ; preds = %73
  %82 = load i32, i32* %9, align 4
  %83 = add i32 %82, 1
  store i32 %83, i32* %9, align 4
  %84 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %7, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @VC_CONTAINER_PACKET_FLAG_KEYFRAME, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %95

89:                                               ; preds = %81
  %90 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %91 = load i32, i32* %9, align 4
  %92 = call i32 @WRITE_U32(%struct.TYPE_28__* %90, i32 %91, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  %93 = load i32, i32* %8, align 4
  %94 = add i32 %93, 1
  store i32 %94, i32* %8, align 4
  br label %95

95:                                               ; preds = %89, %81
  br label %96

96:                                               ; preds = %95, %80
  %97 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %98 = call i64 @mp4_writer_read_sample_from_temp(%struct.TYPE_28__* %97, %struct.TYPE_29__* %7)
  store i64 %98, i64* %6, align 8
  br label %69

99:                                               ; preds = %69
  %100 = load i32, i32* %8, align 4
  %101 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %101, i32 0, i32 0
  %103 = load %struct.TYPE_26__*, %struct.TYPE_26__** %102, align 8
  %104 = load i64, i64* @MP4_SAMPLE_TABLE_STSS, align 8
  %105 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %103, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = icmp eq i32 %100, %107
  %109 = zext i1 %108 to i32
  %110 = call i32 @vc_container_assert(i32 %109)
  %111 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %112 = call i64 @STREAM_STATUS(%struct.TYPE_28__* %111)
  store i64 %112, i64* %2, align 8
  br label %113

113:                                              ; preds = %99, %47
  %114 = load i64, i64* %2, align 8
  ret i64 %114
}

declare dso_local i32 @memset(%struct.TYPE_29__*, i32, i32) #1

declare dso_local i32 @WRITE_U8(%struct.TYPE_28__*, i32, i8*) #1

declare dso_local i32 @WRITE_U24(%struct.TYPE_28__*, i32, i8*) #1

declare dso_local i32 @WRITE_U32(%struct.TYPE_28__*, i32, i8*) #1

declare dso_local i32 @WRITE_BYTES(%struct.TYPE_28__*, i32, i32) #1

declare dso_local i64 @STREAM_STATUS(%struct.TYPE_28__*) #1

declare dso_local i32 @vc_container_io_seek(i32, i32) #1

declare dso_local i32 @INT64_C(i32) #1

declare dso_local i64 @mp4_writer_read_sample_from_temp(%struct.TYPE_28__*, %struct.TYPE_29__*) #1

declare dso_local i32 @vc_container_assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
