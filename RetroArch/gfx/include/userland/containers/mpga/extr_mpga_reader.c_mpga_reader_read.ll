; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/mpga/extr_mpga_reader.c_mpga_reader_read.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/mpga/extr_mpga_reader.c_mpga_reader_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i8*, %struct.TYPE_14__**, %struct.TYPE_13__* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i64, i32, i32, i64, i64, i64, i64, i8*, i8* }
%struct.TYPE_16__ = type { i64, i64, i32, i32, i32, i32, i32 }

@VC_CONTAINER_SUCCESS = common dso_local global i64 0, align 8
@VC_CONTAINER_READ_FLAG_SKIP = common dso_local global i32 0, align 4
@VC_CONTAINER_READ_FLAG_INFO = common dso_local global i32 0, align 4
@VC_CONTAINER_ERROR_CONTINUE = common dso_local global i64 0, align 8
@VC_CONTAINER_PACKET_FLAG_FRAME = common dso_local global i32 0, align 4
@VC_CONTAINER_PACKET_FLAG_FRAME_END = common dso_local global i32 0, align 4
@VC_CONTAINER_TIME_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_15__*, %struct.TYPE_16__*, i32)* @mpga_reader_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @mpga_reader_read(%struct.TYPE_15__* %0, %struct.TYPE_16__* %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_17__*, align 8
  %9 = alloca %struct.TYPE_14__*, align 8
  %10 = alloca i64, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %5, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 2
  %13 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  store %struct.TYPE_17__* %15, %struct.TYPE_17__** %8, align 8
  %16 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %18, i64 0
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  store %struct.TYPE_14__* %20, %struct.TYPE_14__** %9, align 8
  %21 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  store i64 %21, i64* %10, align 8
  %22 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %3
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %28 = call i64 @mpga_sync(%struct.TYPE_15__* %27)
  store i64 %28, i64* %10, align 8
  %29 = load i64, i64* %10, align 8
  %30 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  br label %203

33:                                               ; preds = %26
  br label %34

34:                                               ; preds = %33, %3
  %35 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %51

39:                                               ; preds = %34
  %40 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = mul nsw i32 %42, 31
  %44 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = add nsw i32 %43, %46
  %48 = ashr i32 %47, 5
  %49 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 8
  br label %57

51:                                               ; preds = %34
  %52 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 8
  br label %57

57:                                               ; preds = %51, %39
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %72

62:                                               ; preds = %57
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* @VC_CONTAINER_READ_FLAG_SKIP, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %87

67:                                               ; preds = %62
  %68 = load i32, i32* %7, align 4
  %69 = load i32, i32* @VC_CONTAINER_READ_FLAG_INFO, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %87, label %72

72:                                               ; preds = %67, %57
  %73 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %74 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %74, i32 0, i32 3
  %76 = load i64, i64* %75, align 8
  %77 = call i32 @SKIP_BYTES(%struct.TYPE_15__* %73, i64 %76)
  %78 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %78, i32 0, i32 0
  store i64 0, i64* %79, align 8
  %80 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %81 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %86, label %84

84:                                               ; preds = %72
  %85 = load i64, i64* @VC_CONTAINER_ERROR_CONTINUE, align 8
  store i64 %85, i64* %10, align 8
  br label %86

86:                                               ; preds = %84, %72
  br label %171

87:                                               ; preds = %67, %62
  %88 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %88, i32 0, i32 6
  store i32 0, i32* %89, align 8
  %90 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %90, i32 0, i32 5
  store i32 0, i32* %91, align 4
  %92 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %93 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %96 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %95, i32 0, i32 3
  %97 = load i64, i64* %96, align 8
  %98 = icmp eq i64 %94, %97
  br i1 %98, label %99, label %105

99:                                               ; preds = %87
  %100 = load i32, i32* @VC_CONTAINER_PACKET_FLAG_FRAME, align 4
  %101 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %101, i32 0, i32 5
  %103 = load i32, i32* %102, align 4
  %104 = or i32 %103, %100
  store i32 %104, i32* %102, align 4
  br label %111

105:                                              ; preds = %87
  %106 = load i32, i32* @VC_CONTAINER_PACKET_FLAG_FRAME_END, align 4
  %107 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %107, i32 0, i32 5
  %109 = load i32, i32* %108, align 4
  %110 = or i32 %109, %106
  store i32 %110, i32* %108, align 4
  br label %111

111:                                              ; preds = %105, %99
  %112 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %113 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %116 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %115, i32 0, i32 0
  store i64 %114, i64* %116, align 8
  %117 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %118 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %117, i32 0, i32 4
  %119 = load i64, i64* %118, align 8
  %120 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %121 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %120, i32 0, i32 1
  store i64 %119, i64* %121, align 8
  %122 = load i32, i32* @VC_CONTAINER_TIME_UNKNOWN, align 4
  %123 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %124 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %123, i32 0, i32 4
  store i32 %122, i32* %124, align 8
  %125 = load i32, i32* %7, align 4
  %126 = load i32, i32* @VC_CONTAINER_READ_FLAG_SKIP, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %137

129:                                              ; preds = %111
  %130 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %131 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %132 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %131, i32 0, i32 3
  %133 = load i64, i64* %132, align 8
  %134 = call i32 @SKIP_BYTES(%struct.TYPE_15__* %130, i64 %133)
  %135 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %136 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %135, i32 0, i32 0
  store i64 0, i64* %136, align 8
  br label %171

137:                                              ; preds = %111
  %138 = load i32, i32* %7, align 4
  %139 = load i32, i32* @VC_CONTAINER_READ_FLAG_INFO, align 4
  %140 = and i32 %138, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %144

142:                                              ; preds = %137
  %143 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  store i64 %143, i64* %4, align 8
  br label %205

144:                                              ; preds = %137
  %145 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %146 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %145, i32 0, i32 3
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %149 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = call i64 @MIN(i32 %147, i64 %150)
  %152 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %153 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %152, i32 0, i32 0
  store i64 %151, i64* %153, align 8
  %154 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %155 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %156 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %155, i32 0, i32 2
  %157 = load i32, i32* %156, align 8
  %158 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %159 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = call i64 @READ_BYTES(%struct.TYPE_15__* %154, i32 %157, i64 %160)
  %162 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %163 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %162, i32 0, i32 0
  store i64 %161, i64* %163, align 8
  %164 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %165 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %168 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = sub nsw i64 %169, %166
  store i64 %170, i64* %168, align 8
  br label %171

171:                                              ; preds = %144, %129, %86
  %172 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %173 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = icmp eq i64 %174, 0
  br i1 %175, label %176, label %192

176:                                              ; preds = %171
  %177 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %178 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %177, i32 0, i32 5
  %179 = load i64, i64* %178, align 8
  %180 = add nsw i64 %179, 1
  store i64 %180, i64* %178, align 8
  %181 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %182 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %181, i32 0, i32 3
  %183 = load i64, i64* %182, align 8
  %184 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %185 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %184, i32 0, i32 6
  %186 = load i64, i64* %185, align 8
  %187 = add nsw i64 %186, %183
  store i64 %187, i64* %185, align 8
  %188 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %189 = call i64 @mpga_calculate_frame_time(%struct.TYPE_15__* %188)
  %190 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %191 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %190, i32 0, i32 4
  store i64 %189, i64* %191, align 8
  br label %192

192:                                              ; preds = %176, %171
  %193 = load i64, i64* %10, align 8
  %194 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  %195 = icmp eq i64 %193, %194
  br i1 %195, label %196, label %199

196:                                              ; preds = %192
  %197 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %198 = call i64 @STREAM_STATUS(%struct.TYPE_15__* %197)
  br label %201

199:                                              ; preds = %192
  %200 = load i64, i64* %10, align 8
  br label %201

201:                                              ; preds = %199, %196
  %202 = phi i64 [ %198, %196 ], [ %200, %199 ]
  store i64 %202, i64* %4, align 8
  br label %205

203:                                              ; preds = %32
  %204 = load i64, i64* %10, align 8
  store i64 %204, i64* %4, align 8
  br label %205

205:                                              ; preds = %203, %201, %142
  %206 = load i64, i64* %4, align 8
  ret i64 %206
}

declare dso_local i64 @mpga_sync(%struct.TYPE_15__*) #1

declare dso_local i32 @SKIP_BYTES(%struct.TYPE_15__*, i64) #1

declare dso_local i64 @MIN(i32, i64) #1

declare dso_local i64 @READ_BYTES(%struct.TYPE_15__*, i32, i64) #1

declare dso_local i64 @mpga_calculate_frame_time(%struct.TYPE_15__*) #1

declare dso_local i64 @STREAM_STATUS(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
