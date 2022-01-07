; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_stream.c_hb_bd_stream_open.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_stream.c_hb_bd_stream_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32, %struct.TYPE_18__, i32, i32*, %struct.TYPE_19__*, i32*, i32* }
%struct.TYPE_18__ = type { i32, %struct.TYPE_17__*, i32* }
%struct.TYPE_17__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_19__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_22__ = type { i32, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_20__ = type { i32, i32 }

@.str = private unnamed_addr constant [57 x i8] c"hb_bd_stream_open: can't allocate space for stream state\00", align 1
@V = common dso_local global i32 0, align 4
@A = common dso_local global i32 0, align 4
@HB_SUBTITLE_EMBEDDED_CC_TAG = common dso_local global i32 0, align 4
@S = common dso_local global i32 0, align 4
@HBTF_SCAN_COMPLETE = common dso_local global i32 0, align 4
@P = common dso_local global i32 0, align 4
@transport = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_21__* @hb_bd_stream_open(i32* %0, %struct.TYPE_19__* %1) #0 {
  %3 = alloca %struct.TYPE_21__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_21__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_22__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_20__*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %5, align 8
  %13 = call %struct.TYPE_21__* @calloc(i32 72, i32 1)
  store %struct.TYPE_21__* %13, %struct.TYPE_21__** %7, align 8
  %14 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %15 = icmp eq %struct.TYPE_21__* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = call i32 @hb_error(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %3, align 8
  br label %159

18:                                               ; preds = %2
  %19 = load i32*, i32** %4, align 8
  %20 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %20, i32 0, i32 6
  store i32* %19, i32** %21, align 8
  %22 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %22, i32 0, i32 5
  store i32* null, i32** %23, align 8
  %24 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %25 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %25, i32 0, i32 4
  store %struct.TYPE_19__* %24, %struct.TYPE_19__** %26, align 8
  %27 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %27, i32 0, i32 3
  store i32* null, i32** %28, align 8
  %29 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %30, i32 0, i32 2
  store i32* null, i32** %31, align 8
  %32 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %8, align 4
  %35 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %9, align 4
  %38 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* @V, align 4
  %42 = call i32 @update_ts_streams(%struct.TYPE_21__* %38, i32 %39, i32 0, i32 %40, i32 %41, i32* null)
  store i32 0, i32* %6, align 4
  br label %43

43:                                               ; preds = %72, %18
  %44 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %6, align 4
  %48 = call i8* @hb_list_item(i32 %46, i32 %47)
  %49 = bitcast i8* %48 to %struct.TYPE_22__*
  store %struct.TYPE_22__* %49, %struct.TYPE_22__** %10, align 8
  %50 = icmp ne %struct.TYPE_22__* %49, null
  br i1 %50, label %51, label %75

51:                                               ; preds = %43
  %52 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %53 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %11, align 4
  %57 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %58 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = and i32 %59, 65535
  store i32 %60, i32* %8, align 4
  %61 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %62 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  store i32 %65, i32* %9, align 4
  %66 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %67 = load i32, i32* %8, align 4
  %68 = load i32, i32* %11, align 4
  %69 = load i32, i32* %9, align 4
  %70 = load i32, i32* @A, align 4
  %71 = call i32 @update_ts_streams(%struct.TYPE_21__* %66, i32 %67, i32 %68, i32 %69, i32 %70, i32* null)
  br label %72

72:                                               ; preds = %51
  %73 = load i32, i32* %6, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %6, align 4
  br label %43

75:                                               ; preds = %43
  store i32 0, i32* %6, align 4
  br label %76

76:                                               ; preds = %104, %75
  %77 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* %6, align 4
  %81 = call i8* @hb_list_item(i32 %79, i32 %80)
  %82 = bitcast i8* %81 to %struct.TYPE_20__*
  store %struct.TYPE_20__* %82, %struct.TYPE_20__** %12, align 8
  %83 = icmp ne %struct.TYPE_20__* %82, null
  br i1 %83, label %84, label %107

84:                                               ; preds = %76
  %85 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %86 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @HB_SUBTITLE_EMBEDDED_CC_TAG, align 4
  %89 = icmp ne i32 %87, %88
  br i1 %89, label %90, label %103

90:                                               ; preds = %84
  %91 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %92 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = and i32 %93, 65535
  store i32 %94, i32* %8, align 4
  %95 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %96 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  store i32 %97, i32* %9, align 4
  %98 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %99 = load i32, i32* %8, align 4
  %100 = load i32, i32* %9, align 4
  %101 = load i32, i32* @S, align 4
  %102 = call i32 @update_ts_streams(%struct.TYPE_21__* %98, i32 %99, i32 0, i32 %100, i32 %101, i32* null)
  br label %103

103:                                              ; preds = %90, %84
  br label %104

104:                                              ; preds = %103
  %105 = load i32, i32* %6, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %6, align 4
  br label %76

107:                                              ; preds = %76
  %108 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @HBTF_SCAN_COMPLETE, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %107
  %115 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %116 = load i32, i32* @P, align 4
  %117 = call i32 @update_ts_streams(%struct.TYPE_21__* %115, i32 4097, i32 0, i32 -1, i32 %116, i32* null)
  br label %118

118:                                              ; preds = %114, %107
  %119 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %120 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %119, i32 0, i32 0
  store i32 192, i32* %120, align 8
  %121 = load i32, i32* @transport, align 4
  %122 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %123 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %122, i32 0, i32 2
  store i32 %121, i32* %123, align 8
  store i32 0, i32* %6, align 4
  br label %124

124:                                              ; preds = %154, %118
  %125 = load i32, i32* %6, align 4
  %126 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %127 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = icmp slt i32 %125, %129
  br i1 %130, label %131, label %157

131:                                              ; preds = %124
  %132 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %133 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = call %struct.TYPE_14__* @hb_buffer_init(i32 %134)
  %136 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %137 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %137, i32 0, i32 1
  %139 = load %struct.TYPE_17__*, %struct.TYPE_17__** %138, align 8
  %140 = load i32, i32* %6, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %139, i64 %141
  %143 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %142, i32 0, i32 0
  store %struct.TYPE_14__* %135, %struct.TYPE_14__** %143, align 8
  %144 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %145 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %144, i32 0, i32 1
  %146 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %145, i32 0, i32 1
  %147 = load %struct.TYPE_17__*, %struct.TYPE_17__** %146, align 8
  %148 = load i32, i32* %6, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %147, i64 %149
  %151 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %150, i32 0, i32 0
  %152 = load %struct.TYPE_14__*, %struct.TYPE_14__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %152, i32 0, i32 0
  store i64 0, i64* %153, align 8
  br label %154

154:                                              ; preds = %131
  %155 = load i32, i32* %6, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %6, align 4
  br label %124

157:                                              ; preds = %124
  %158 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  store %struct.TYPE_21__* %158, %struct.TYPE_21__** %3, align 8
  br label %159

159:                                              ; preds = %157, %16
  %160 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  ret %struct.TYPE_21__* %160
}

declare dso_local %struct.TYPE_21__* @calloc(i32, i32) #1

declare dso_local i32 @hb_error(i8*) #1

declare dso_local i32 @update_ts_streams(%struct.TYPE_21__*, i32, i32, i32, i32, i32*) #1

declare dso_local i8* @hb_list_item(i32, i32) #1

declare dso_local %struct.TYPE_14__* @hb_buffer_init(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
