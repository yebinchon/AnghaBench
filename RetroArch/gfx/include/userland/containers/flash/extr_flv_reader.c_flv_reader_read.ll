; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/flash/extr_flv_reader.c_flv_reader_read.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/flash/extr_flv_reader.c_flv_reader_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64, %struct.TYPE_15__**, %struct.TYPE_14__* }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i32, i32, i32, i32, i64, i64, i64 }
%struct.TYPE_17__ = type { i32, i32, i64, i32, i32, i32, i32, i32 }

@VC_CONTAINER_SUCCESS = common dso_local global i64 0, align 8
@VC_CONTAINER_ERROR_CONTINUE = common dso_local global i64 0, align 8
@VC_CONTAINER_READ_FLAG_SKIP = common dso_local global i32 0, align 4
@VC_CONTAINER_READ_FLAG_INFO = common dso_local global i32 0, align 4
@VC_CONTAINER_PACKET_FLAG_FRAME_END = common dso_local global i32 0, align 4
@FLV_FLAG_KEYFRAME = common dso_local global i32 0, align 4
@VC_CONTAINER_PACKET_FLAG_KEYFRAME = common dso_local global i32 0, align 4
@VC_CONTAINER_PACKET_FLAG_FRAME_START = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_16__*, %struct.TYPE_17__*, i32)* @flv_reader_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @flv_reader_read(%struct.TYPE_16__* %0, %struct.TYPE_17__* %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_18__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_19__*, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %5, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 2
  %14 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  store %struct.TYPE_18__* %16, %struct.TYPE_18__** %8, align 8
  %17 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  store i64 %17, i64* %9, align 8
  %18 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %18, i32 0, i32 0
  store %struct.TYPE_19__* %19, %struct.TYPE_19__** %10, align 8
  %20 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %21 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %22 = call i64 @flv_read_sample_header(%struct.TYPE_16__* %20, %struct.TYPE_19__* %21)
  store i64 %22, i64* %9, align 8
  %23 = load i64, i64* %9, align 8
  %24 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %3
  %27 = load i64, i64* %9, align 8
  store i64 %27, i64* %4, align 8
  br label %179

28:                                               ; preds = %3
  %29 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %30 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %29, i32 0, i32 4
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp uge i64 %31, %34
  br i1 %35, label %48, label %36

36:                                               ; preds = %28
  %37 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %38, align 8
  %40 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %41 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %40, i32 0, i32 4
  %42 = load i64, i64* %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %39, i64 %42
  %44 = load %struct.TYPE_15__*, %struct.TYPE_15__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %59, label %48

48:                                               ; preds = %36, %28
  %49 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %50 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %51 = call i64 @flv_read_sample_data(%struct.TYPE_16__* %49, %struct.TYPE_19__* %50, i32 0, i32* null)
  store i64 %51, i64* %9, align 8
  %52 = load i64, i64* %9, align 8
  %53 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %48
  %56 = load i64, i64* %9, align 8
  store i64 %56, i64* %4, align 8
  br label %179

57:                                               ; preds = %48
  %58 = load i64, i64* @VC_CONTAINER_ERROR_CONTINUE, align 8
  store i64 %58, i64* %4, align 8
  br label %179

59:                                               ; preds = %36
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* @VC_CONTAINER_READ_FLAG_SKIP, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %73

64:                                               ; preds = %59
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* @VC_CONTAINER_READ_FLAG_INFO, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %73, label %69

69:                                               ; preds = %64
  %70 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %71 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %72 = call i64 @flv_read_sample_data(%struct.TYPE_16__* %70, %struct.TYPE_19__* %71, i32 0, i32* null)
  store i64 %72, i64* %4, align 8
  br label %179

73:                                               ; preds = %64, %59
  %74 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %75 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = mul nsw i32 %76, 1000
  %78 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %78, i32 0, i32 1
  store i32 %77, i32* %79, align 4
  %80 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %80, i32 0, i32 0
  store i32 %77, i32* %81, align 8
  %82 = load i32, i32* @VC_CONTAINER_PACKET_FLAG_FRAME_END, align 4
  %83 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %83, i32 0, i32 6
  store i32 %82, i32* %84, align 4
  %85 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %86 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @FLV_FLAG_KEYFRAME, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %97

91:                                               ; preds = %73
  %92 = load i32, i32* @VC_CONTAINER_PACKET_FLAG_KEYFRAME, align 4
  %93 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %93, i32 0, i32 6
  %95 = load i32, i32* %94, align 4
  %96 = or i32 %95, %92
  store i32 %96, i32* %94, align 4
  br label %97

97:                                               ; preds = %91, %73
  %98 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %99 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %108, label %102

102:                                              ; preds = %97
  %103 = load i32, i32* @VC_CONTAINER_PACKET_FLAG_FRAME_START, align 4
  %104 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %104, i32 0, i32 6
  %106 = load i32, i32* %105, align 4
  %107 = or i32 %106, %103
  store i32 %107, i32* %105, align 4
  br label %108

108:                                              ; preds = %102, %97
  %109 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %110 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %109, i32 0, i32 4
  %111 = load i64, i64* %110, align 8
  %112 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %112, i32 0, i32 2
  store i64 %111, i64* %113, align 8
  %114 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %115 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %118 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %117, i32 0, i32 3
  store i32 %116, i32* %118, align 8
  %119 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %120 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %119, i32 0, i32 3
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %123 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 8
  %125 = sub i32 %121, %124
  %126 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %127 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %126, i32 0, i32 4
  store i32 %125, i32* %127, align 4
  %128 = load i32, i32* %7, align 4
  %129 = load i32, i32* @VC_CONTAINER_READ_FLAG_SKIP, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %136

132:                                              ; preds = %108
  %133 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %134 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %135 = call i64 @flv_read_sample_data(%struct.TYPE_16__* %133, %struct.TYPE_19__* %134, i32 0, i32* null)
  store i64 %135, i64* %4, align 8
  br label %179

136:                                              ; preds = %108
  %137 = load i32, i32* %7, align 4
  %138 = load i32, i32* @VC_CONTAINER_READ_FLAG_INFO, align 4
  %139 = and i32 %137, %138
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %143

141:                                              ; preds = %136
  %142 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  store i64 %142, i64* %4, align 8
  br label %179

143:                                              ; preds = %136
  br label %144

144:                                              ; preds = %143
  %145 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %146 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %145, i32 0, i32 5
  %147 = load i32, i32* %146, align 8
  store i32 %147, i32* %11, align 4
  %148 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %149 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %150 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %151 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %150, i32 0, i32 7
  %152 = load i32, i32* %151, align 8
  %153 = call i64 @flv_read_sample_data(%struct.TYPE_16__* %148, %struct.TYPE_19__* %149, i32 %152, i32* %11)
  store i64 %153, i64* %9, align 8
  %154 = load i64, i64* %9, align 8
  %155 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  %156 = icmp ne i64 %154, %155
  br i1 %156, label %157, label %159

157:                                              ; preds = %144
  %158 = load i64, i64* %9, align 8
  store i64 %158, i64* %4, align 8
  br label %179

159:                                              ; preds = %144
  %160 = load i32, i32* %11, align 4
  %161 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %162 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %161, i32 0, i32 4
  store i32 %160, i32* %162, align 4
  %163 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %164 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %163, i32 0, i32 2
  %165 = load i32, i32* %164, align 8
  %166 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %167 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %166, i32 0, i32 3
  %168 = load i32, i32* %167, align 4
  %169 = icmp ne i32 %165, %168
  br i1 %169, label %170, label %177

170:                                              ; preds = %159
  %171 = load i32, i32* @VC_CONTAINER_PACKET_FLAG_FRAME_END, align 4
  %172 = xor i32 %171, -1
  %173 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %174 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %173, i32 0, i32 6
  %175 = load i32, i32* %174, align 4
  %176 = and i32 %175, %172
  store i32 %176, i32* %174, align 4
  br label %177

177:                                              ; preds = %170, %159
  %178 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  store i64 %178, i64* %4, align 8
  br label %179

179:                                              ; preds = %177, %157, %141, %132, %69, %57, %55, %26
  %180 = load i64, i64* %4, align 8
  ret i64 %180
}

declare dso_local i64 @flv_read_sample_header(%struct.TYPE_16__*, %struct.TYPE_19__*) #1

declare dso_local i64 @flv_read_sample_data(%struct.TYPE_16__*, %struct.TYPE_19__*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
