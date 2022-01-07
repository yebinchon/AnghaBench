; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_qsv.c_qsv_frame_lock.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_qsv.c_qsv_frame_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { %struct.TYPE_15__*, %struct.TYPE_15__*, i32, %struct.TYPE_19__, %struct.TYPE_16__* }
%struct.TYPE_15__ = type { i32**, i32*, i32, i32, i32, i32*, i32 }
%struct.TYPE_19__ = type { %struct.TYPE_18__, i32 }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_21__ = type { i32*, i32*, i32*, i32 }
%struct.TYPE_23__ = type { i32, i32, i32, %struct.TYPE_22__* }
%struct.TYPE_22__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32 }

@MFX_ERR_UNDEFINED_BEHAVIOR = common dso_local global i32 0, align 4
@MFX_ERR_MEMORY_ALLOC = common dso_local global i32 0, align 4
@AV_PIX_FMT_QSV = common dso_local global i32 0, align 4
@AV_HWFRAME_MAP_DIRECT = common dso_local global i32 0, align 4
@MFX_ERR_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_20__*, %struct.TYPE_21__*)* @qsv_frame_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qsv_frame_lock(i32 %0, %struct.TYPE_20__* %1, %struct.TYPE_21__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_20__*, align 8
  %7 = alloca %struct.TYPE_21__*, align 8
  %8 = alloca %struct.TYPE_20__*, align 8
  %9 = alloca %struct.TYPE_23__*, align 8
  %10 = alloca %struct.TYPE_22__*, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %6, align 8
  store %struct.TYPE_21__* %2, %struct.TYPE_21__** %7, align 8
  %12 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  store %struct.TYPE_20__* %12, %struct.TYPE_20__** %8, align 8
  %13 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %14 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %13, i32 0, i32 4
  %15 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.TYPE_23__*
  store %struct.TYPE_23__* %18, %struct.TYPE_23__** %9, align 8
  %19 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %20 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %19, i32 0, i32 3
  %21 = load %struct.TYPE_22__*, %struct.TYPE_22__** %20, align 8
  store %struct.TYPE_22__* %21, %struct.TYPE_22__** %10, align 8
  %22 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_15__*, %struct.TYPE_15__** %23, align 8
  %25 = icmp ne %struct.TYPE_15__* %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %3
  %27 = load i32, i32* @MFX_ERR_UNDEFINED_BEHAVIOR, align 4
  store i32 %27, i32* %4, align 4
  br label %192

28:                                               ; preds = %3
  %29 = call i8* (...) @av_frame_alloc()
  %30 = bitcast i8* %29 to %struct.TYPE_15__*
  %31 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %31, i32 0, i32 0
  store %struct.TYPE_15__* %30, %struct.TYPE_15__** %32, align 8
  %33 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_15__*, %struct.TYPE_15__** %34, align 8
  %36 = icmp ne %struct.TYPE_15__* %35, null
  br i1 %36, label %39, label %37

37:                                               ; preds = %28
  %38 = load i32, i32* @MFX_ERR_MEMORY_ALLOC, align 4
  store i32 %38, i32* %4, align 4
  br label %192

39:                                               ; preds = %28
  %40 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %41 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %45, i32 0, i32 6
  store i32 %42, i32* %46, align 8
  %47 = call i8* (...) @av_frame_alloc()
  %48 = bitcast i8* %47 to %struct.TYPE_15__*
  %49 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %49, i32 0, i32 1
  store %struct.TYPE_15__* %48, %struct.TYPE_15__** %50, align 8
  %51 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %51, i32 0, i32 1
  %53 = load %struct.TYPE_15__*, %struct.TYPE_15__** %52, align 8
  %54 = icmp ne %struct.TYPE_15__* %53, null
  br i1 %54, label %56, label %55

55:                                               ; preds = %39
  br label %184

56:                                               ; preds = %39
  %57 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %57, i32 0, i32 3
  %59 = bitcast %struct.TYPE_19__* %58 to i32*
  %60 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %60, i32 0, i32 1
  %62 = load %struct.TYPE_15__*, %struct.TYPE_15__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %62, i32 0, i32 0
  %64 = load i32**, i32*** %63, align 8
  %65 = getelementptr inbounds i32*, i32** %64, i64 3
  store i32* %59, i32** %65, align 8
  %66 = load i32, i32* @AV_PIX_FMT_QSV, align 4
  %67 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %67, i32 0, i32 1
  %69 = load %struct.TYPE_15__*, %struct.TYPE_15__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %69, i32 0, i32 6
  store i32 %66, i32* %70, align 8
  %71 = call i32 @av_buffer_alloc(i32 1)
  %72 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %72, i32 0, i32 1
  %74 = load %struct.TYPE_15__*, %struct.TYPE_15__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %74, i32 0, i32 5
  %76 = load i32*, i32** %75, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 0
  store i32 %71, i32* %77, align 4
  %78 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %78, i32 0, i32 1
  %80 = load %struct.TYPE_15__*, %struct.TYPE_15__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %80, i32 0, i32 5
  %82 = load i32*, i32** %81, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 0
  %84 = load i32, i32* %83, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %87, label %86

86:                                               ; preds = %56
  br label %184

87:                                               ; preds = %56
  %88 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %89 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %92 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %91, i32 0, i32 1
  %93 = load %struct.TYPE_15__*, %struct.TYPE_15__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %93, i32 0, i32 4
  store i32 %90, i32* %94, align 8
  %95 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %96 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %99 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %98, i32 0, i32 1
  %100 = load %struct.TYPE_15__*, %struct.TYPE_15__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %100, i32 0, i32 3
  store i32 %97, i32* %101, align 4
  %102 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %103 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %102, i32 0, i32 4
  %104 = load %struct.TYPE_16__*, %struct.TYPE_16__** %103, align 8
  %105 = call i32 @av_buffer_ref(%struct.TYPE_16__* %104)
  %106 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %107 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %106, i32 0, i32 1
  %108 = load %struct.TYPE_15__*, %struct.TYPE_15__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %108, i32 0, i32 2
  store i32 %105, i32* %109, align 8
  %110 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %111 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %110, i32 0, i32 1
  %112 = load %struct.TYPE_15__*, %struct.TYPE_15__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %117, label %116

116:                                              ; preds = %87
  br label %184

117:                                              ; preds = %87
  %118 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %119 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %118, i32 0, i32 0
  %120 = load %struct.TYPE_17__*, %struct.TYPE_17__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %120, i64 0
  %122 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %125 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %124, i32 0, i32 3
  %126 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %125, i32 0, i32 1
  store i32 %123, i32* %126, align 4
  %127 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %128 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 8
  %130 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %131 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %130, i32 0, i32 3
  %132 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %132, i32 0, i32 0
  store i32 %129, i32* %133, align 4
  %134 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %135 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %134, i32 0, i32 0
  %136 = load %struct.TYPE_15__*, %struct.TYPE_15__** %135, align 8
  %137 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %138 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %137, i32 0, i32 1
  %139 = load %struct.TYPE_15__*, %struct.TYPE_15__** %138, align 8
  %140 = load i32, i32* @AV_HWFRAME_MAP_DIRECT, align 4
  %141 = call i32 @av_hwframe_map(%struct.TYPE_15__* %136, %struct.TYPE_15__* %139, i32 %140)
  store i32 %141, i32* %11, align 4
  %142 = load i32, i32* %11, align 4
  %143 = icmp slt i32 %142, 0
  br i1 %143, label %144, label %145

144:                                              ; preds = %117
  br label %184

145:                                              ; preds = %117
  %146 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %147 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %146, i32 0, i32 0
  %148 = load %struct.TYPE_15__*, %struct.TYPE_15__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %148, i32 0, i32 1
  %150 = load i32*, i32** %149, align 8
  %151 = getelementptr inbounds i32, i32* %150, i64 0
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %154 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %153, i32 0, i32 3
  store i32 %152, i32* %154, align 8
  %155 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %156 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %155, i32 0, i32 0
  %157 = load %struct.TYPE_15__*, %struct.TYPE_15__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %157, i32 0, i32 0
  %159 = load i32**, i32*** %158, align 8
  %160 = getelementptr inbounds i32*, i32** %159, i64 0
  %161 = load i32*, i32** %160, align 8
  %162 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %163 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %162, i32 0, i32 2
  store i32* %161, i32** %163, align 8
  %164 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %165 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %164, i32 0, i32 0
  %166 = load %struct.TYPE_15__*, %struct.TYPE_15__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %166, i32 0, i32 0
  %168 = load i32**, i32*** %167, align 8
  %169 = getelementptr inbounds i32*, i32** %168, i64 1
  %170 = load i32*, i32** %169, align 8
  %171 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %172 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %171, i32 0, i32 1
  store i32* %170, i32** %172, align 8
  %173 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %174 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %173, i32 0, i32 0
  %175 = load %struct.TYPE_15__*, %struct.TYPE_15__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %175, i32 0, i32 0
  %177 = load i32**, i32*** %176, align 8
  %178 = getelementptr inbounds i32*, i32** %177, i64 1
  %179 = load i32*, i32** %178, align 8
  %180 = getelementptr inbounds i32, i32* %179, i64 1
  %181 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %182 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %181, i32 0, i32 0
  store i32* %180, i32** %182, align 8
  %183 = load i32, i32* @MFX_ERR_NONE, align 4
  store i32 %183, i32* %4, align 4
  br label %192

184:                                              ; preds = %144, %116, %86, %55
  %185 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %186 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %185, i32 0, i32 1
  %187 = call i32 @av_frame_free(%struct.TYPE_15__** %186)
  %188 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %189 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %188, i32 0, i32 0
  %190 = call i32 @av_frame_free(%struct.TYPE_15__** %189)
  %191 = load i32, i32* @MFX_ERR_MEMORY_ALLOC, align 4
  store i32 %191, i32* %4, align 4
  br label %192

192:                                              ; preds = %184, %145, %37, %26
  %193 = load i32, i32* %4, align 4
  ret i32 %193
}

declare dso_local i8* @av_frame_alloc(...) #1

declare dso_local i32 @av_buffer_alloc(i32) #1

declare dso_local i32 @av_buffer_ref(%struct.TYPE_16__*) #1

declare dso_local i32 @av_hwframe_map(%struct.TYPE_15__*, %struct.TYPE_15__*, i32) #1

declare dso_local i32 @av_frame_free(%struct.TYPE_15__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
