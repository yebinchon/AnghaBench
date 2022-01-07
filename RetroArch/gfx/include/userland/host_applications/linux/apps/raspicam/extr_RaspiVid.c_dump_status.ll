; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/raspicam/extr_RaspiVid.c_dump_status.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/raspicam/extr_RaspiVid.c_dump_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i8* }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i64, i32, i64, i64, i32, i32, i32 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"bitrate %d, framerate %d, time delay %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"H264 Profile %s\0A\00", align 1
@profile_map = common dso_local global i32 0, align 4
@profile_map_size = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"H264 Level %s\0A\00", align 1
@level_map = common dso_local global i32 0, align 4
@level_map_size = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [47 x i8] c"H264 Quantisation level %d, Inline headers %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"Yes\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"No\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"H264 Fill SPS Timings %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [39 x i8] c"H264 Intra refresh type %s, period %d\0A\00", align 1
@intra_refresh_map = common dso_local global i32 0, align 4
@intra_refresh_map_size = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [16 x i8] c"H264 Slices %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [67 x i8] c"Segment size %d, segment wrap value %d, initial segment number %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [31 x i8] c"Raw output enabled, format %s\0A\00", align 1
@raw_output_fmt_map = common dso_local global i32 0, align 4
@raw_output_fmt_map_size = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [15 x i8] c"Wait method : \00", align 1
@wait_method_description_size = common dso_local global i32 0, align 4
@wait_method_description = common dso_local global %struct.TYPE_5__* null, align 8
@.str.12 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.13 = private unnamed_addr constant [21 x i8] c"\0AInitial state '%s'\0A\00", align 1
@initial_map = common dso_local global i32 0, align 4
@initial_map_size = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*)* @dump_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_status(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %4 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %5 = icmp ne %struct.TYPE_4__* %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = call i32 @vcos_assert(i32 0)
  br label %152

8:                                                ; preds = %1
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 20
  %11 = call i32 @raspicommonsettings_dump_parameters(i32* %10)
  %12 = load i32, i32* @stderr, align 4
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = call i32 (i32, i8*, ...) @fprintf(i32 %12, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %18, i32 %21)
  %23 = load i32, i32* @stderr, align 4
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 19
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @profile_map, align 4
  %28 = load i32, i32* @profile_map_size, align 4
  %29 = call i8* @raspicli_unmap_xref(i32 %26, i32 %27, i32 %28)
  %30 = call i32 (i32, i8*, ...) @fprintf(i32 %23, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8* %29)
  %31 = load i32, i32* @stderr, align 4
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 18
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @level_map, align 4
  %36 = load i32, i32* @level_map_size, align 4
  %37 = call i8* @raspicli_unmap_xref(i32 %34, i32 %35, i32 %36)
  %38 = call i32 (i32, i8*, ...) @fprintf(i32 %31, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* %37)
  %39 = load i32, i32* @stderr, align 4
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 17
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  %47 = zext i1 %46 to i64
  %48 = select i1 %46, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0)
  %49 = call i32 (i32, i8*, ...) @fprintf(i32 %39, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), i32 %42, i8* %48)
  %50 = load i32, i32* @stderr, align 4
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 16
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  %55 = zext i1 %54 to i64
  %56 = select i1 %54, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0)
  %57 = call i32 (i32, i8*, ...) @fprintf(i32 %50, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i8* %56)
  %58 = load i32, i32* @stderr, align 4
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 15
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @intra_refresh_map, align 4
  %63 = load i32, i32* @intra_refresh_map_size, align 4
  %64 = call i8* @raspicli_unmap_xref(i32 %61, i32 %62, i32 %63)
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 4
  %67 = load i32, i32* %66, align 8
  %68 = call i32 (i32, i8*, ...) @fprintf(i32 %58, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.7, i64 0, i64 0), i8* %64, i32 %67)
  %69 = load i32, i32* @stderr, align 4
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 5
  %72 = load i32, i32* %71, align 4
  %73 = call i32 (i32, i8*, ...) @fprintf(i32 %69, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0), i32 %72)
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 6
  %76 = load i32, i32* %75, align 8
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %90

78:                                               ; preds = %8
  %79 = load i32, i32* @stderr, align 4
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 6
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 7
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 8
  %88 = load i32, i32* %87, align 8
  %89 = call i32 (i32, i8*, ...) @fprintf(i32 %79, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.9, i64 0, i64 0), i32 %82, i32 %85, i32 %88)
  br label %90

90:                                               ; preds = %78, %8
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 14
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %104

95:                                               ; preds = %90
  %96 = load i32, i32* @stderr, align 4
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 13
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @raw_output_fmt_map, align 4
  %101 = load i32, i32* @raw_output_fmt_map_size, align 4
  %102 = call i8* @raspicli_unmap_xref(i32 %99, i32 %100, i32 %101)
  %103 = call i32 (i32, i8*, ...) @fprintf(i32 %96, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.10, i64 0, i64 0), i8* %102)
  br label %104

104:                                              ; preds = %95, %90
  %105 = load i32, i32* @stderr, align 4
  %106 = call i32 (i32, i8*, ...) @fprintf(i32 %105, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %107

107:                                              ; preds = %132, %104
  %108 = load i32, i32* %3, align 4
  %109 = load i32, i32* @wait_method_description_size, align 4
  %110 = icmp slt i32 %108, %109
  br i1 %110, label %111, label %135

111:                                              ; preds = %107
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 9
  %114 = load i64, i64* %113, align 8
  %115 = load %struct.TYPE_5__*, %struct.TYPE_5__** @wait_method_description, align 8
  %116 = load i32, i32* %3, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = icmp eq i64 %114, %120
  br i1 %121, label %122, label %131

122:                                              ; preds = %111
  %123 = load i32, i32* @stderr, align 4
  %124 = load %struct.TYPE_5__*, %struct.TYPE_5__** @wait_method_description, align 8
  %125 = load i32, i32* %3, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i32 0, i32 1
  %129 = load i8*, i8** %128, align 8
  %130 = call i32 (i32, i8*, ...) @fprintf(i32 %123, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0), i8* %129)
  br label %131

131:                                              ; preds = %122, %111
  br label %132

132:                                              ; preds = %131
  %133 = load i32, i32* %3, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %3, align 4
  br label %107

135:                                              ; preds = %107
  %136 = load i32, i32* @stderr, align 4
  %137 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 12
  %139 = load i32, i32* %138, align 8
  %140 = load i32, i32* @initial_map, align 4
  %141 = load i32, i32* @initial_map_size, align 4
  %142 = call i8* @raspicli_unmap_xref(i32 %139, i32 %140, i32 %141)
  %143 = call i32 (i32, i8*, ...) @fprintf(i32 %136, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.13, i64 0, i64 0), i8* %142)
  %144 = load i32, i32* @stderr, align 4
  %145 = call i32 (i32, i8*, ...) @fprintf(i32 %144, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0))
  %146 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i32 0, i32 11
  %148 = call i32 @raspipreview_dump_parameters(i32* %147)
  %149 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i32 0, i32 10
  %151 = call i32 @raspicamcontrol_dump_parameters(i32* %150)
  br label %152

152:                                              ; preds = %135, %6
  ret void
}

declare dso_local i32 @vcos_assert(i32) #1

declare dso_local i32 @raspicommonsettings_dump_parameters(i32*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i8* @raspicli_unmap_xref(i32, i32, i32) #1

declare dso_local i32 @raspipreview_dump_parameters(i32*) #1

declare dso_local i32 @raspicamcontrol_dump_parameters(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
