; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/asf/extr_asf_reader.c_asf_read_next_payload_header.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/asf/extr_asf_reader.c_asf_read_next_payload_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32, i64* }
%struct.TYPE_18__ = type { i64, i64, i64, i64, i64, i64, i64, i32, i64, i64, i32, i64, i64 }

@VC_CONTAINER_ERROR_CORRUPTED = common dso_local global i64 0, align 8
@VC_CONTAINER_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"Sub-Payload Data Length\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"subpayload is too big\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_16__*, %struct.TYPE_18__*, i64*, i64*)* @asf_read_next_payload_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @asf_read_next_payload_header(%struct.TYPE_16__* %0, %struct.TYPE_18__* %1, i64* %2, i64* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca %struct.TYPE_18__*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.TYPE_17__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %6, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %7, align 8
  store i64* %2, i64** %8, align 8
  store i64* %3, i64** %9, align 8
  %13 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  store %struct.TYPE_17__* %17, %struct.TYPE_17__** %10, align 8
  %18 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %4
  br label %136

23:                                               ; preds = %4
  %24 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = icmp sge i64 %26, %29
  br i1 %30, label %31, label %69

31:                                               ; preds = %23
  %32 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %32, i32 0, i32 3
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %55

36:                                               ; preds = %31
  %37 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %37, i32 0, i32 3
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %41 = call i64 @STREAM_POSITION(%struct.TYPE_16__* %40)
  %42 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %42, i32 0, i32 4
  %44 = load i64, i64* %43, align 8
  %45 = sub nsw i64 %41, %44
  %46 = sub nsw i64 %39, %45
  store i64 %46, i64* %12, align 8
  %47 = load i64, i64* %12, align 8
  %48 = icmp slt i64 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %36
  %50 = load i64, i64* @VC_CONTAINER_ERROR_CORRUPTED, align 8
  store i64 %50, i64* %5, align 8
  br label %169

51:                                               ; preds = %36
  %52 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %53 = load i64, i64* %12, align 8
  %54 = call i32 @SKIP_BYTES(%struct.TYPE_16__* %52, i64 %53)
  br label %55

55:                                               ; preds = %51, %31
  %56 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %57 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %56, i32 0, i32 0
  store i32 0, i32* %57, align 8
  %58 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %59 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %60 = call i64 @asf_read_packet_header(%struct.TYPE_16__* %58, %struct.TYPE_18__* %59, i32 0)
  store i64 %60, i64* %11, align 8
  %61 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %62 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %61, i32 0, i32 0
  store i32 1, i32* %62, align 8
  %63 = load i64, i64* %11, align 8
  %64 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  %65 = icmp ne i64 %63, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %55
  %67 = load i64, i64* %11, align 8
  store i64 %67, i64* %5, align 8
  br label %169

68:                                               ; preds = %55
  br label %69

69:                                               ; preds = %68, %23
  %70 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %70, i32 0, i32 5
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %84, label %74

74:                                               ; preds = %69
  %75 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %76 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %77 = call i64 @asf_read_payload_header(%struct.TYPE_16__* %75, %struct.TYPE_18__* %76)
  store i64 %77, i64* %11, align 8
  %78 = load i64, i64* %11, align 8
  %79 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  %80 = icmp ne i64 %78, %79
  br i1 %80, label %81, label %83

81:                                               ; preds = %74
  %82 = load i64, i64* %11, align 8
  store i64 %82, i64* %5, align 8
  br label %169

83:                                               ; preds = %74
  br label %84

84:                                               ; preds = %83, %69
  %85 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %86 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %85, i32 0, i32 12
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %135

89:                                               ; preds = %84
  %90 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %91 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %90, i32 0, i32 5
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %135

94:                                               ; preds = %89
  %95 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %96 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %95, i32 0, i32 5
  %97 = load i64, i64* %96, align 8
  %98 = add nsw i64 %97, -1
  store i64 %98, i64* %96, align 8
  %99 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %100 = call i64 @READ_U8(%struct.TYPE_16__* %99, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %101 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %102 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %101, i32 0, i32 0
  store i64 %100, i64* %102, align 8
  %103 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %104 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %107 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %106, i32 0, i32 5
  %108 = load i64, i64* %107, align 8
  %109 = icmp sgt i64 %105, %108
  br i1 %109, label %110, label %118

110:                                              ; preds = %94
  %111 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %112 = call i32 @LOG_DEBUG(%struct.TYPE_16__* %111, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %113 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %114 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %113, i32 0, i32 5
  %115 = load i64, i64* %114, align 8
  %116 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %117 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %116, i32 0, i32 0
  store i64 %115, i64* %117, align 8
  br label %118

118:                                              ; preds = %110, %94
  %119 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %120 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %119, i32 0, i32 11
  store i64 0, i64* %120, align 8
  %121 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %122 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %125 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %124, i32 0, i32 6
  store i64 %123, i64* %125, align 8
  %126 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %127 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %126, i32 0, i32 9
  %128 = load i64, i64* %127, align 8
  %129 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %130 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %129, i32 0, i32 10
  %131 = load i32, i32* %130, align 8
  %132 = sext i32 %131 to i64
  %133 = add nsw i64 %132, %128
  %134 = trunc i64 %133 to i32
  store i32 %134, i32* %130, align 8
  br label %135

135:                                              ; preds = %118, %89, %84
  br label %136

136:                                              ; preds = %135, %22
  %137 = load i64*, i64** %8, align 8
  %138 = icmp ne i64* %137, null
  br i1 %138, label %139, label %151

139:                                              ; preds = %136
  %140 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %141 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %140, i32 0, i32 1
  %142 = load i64*, i64** %141, align 8
  %143 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %144 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %143, i32 0, i32 7
  %145 = load i32, i32* %144, align 8
  %146 = and i32 %145, 127
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i64, i64* %142, i64 %147
  %149 = load i64, i64* %148, align 8
  %150 = load i64*, i64** %8, align 8
  store i64 %149, i64* %150, align 8
  br label %151

151:                                              ; preds = %139, %136
  %152 = load i64*, i64** %9, align 8
  %153 = icmp ne i64* %152, null
  br i1 %153, label %154, label %159

154:                                              ; preds = %151
  %155 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %156 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = load i64*, i64** %9, align 8
  store i64 %157, i64* %158, align 8
  br label %159

159:                                              ; preds = %154, %151
  %160 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %161 = call i64 @STREAM_POSITION(%struct.TYPE_16__* %160)
  %162 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %163 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %162, i32 0, i32 4
  %164 = load i64, i64* %163, align 8
  %165 = sub nsw i64 %161, %164
  %166 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %167 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %166, i32 0, i32 8
  store i64 %165, i64* %167, align 8
  %168 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  store i64 %168, i64* %5, align 8
  br label %169

169:                                              ; preds = %159, %81, %66, %49
  %170 = load i64, i64* %5, align 8
  ret i64 %170
}

declare dso_local i64 @STREAM_POSITION(%struct.TYPE_16__*) #1

declare dso_local i32 @SKIP_BYTES(%struct.TYPE_16__*, i64) #1

declare dso_local i64 @asf_read_packet_header(%struct.TYPE_16__*, %struct.TYPE_18__*, i32) #1

declare dso_local i64 @asf_read_payload_header(%struct.TYPE_16__*, %struct.TYPE_18__*) #1

declare dso_local i64 @READ_U8(%struct.TYPE_16__*, i8*) #1

declare dso_local i32 @LOG_DEBUG(%struct.TYPE_16__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
