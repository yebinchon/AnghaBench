; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_hevc_mvs.c_temporal_luma_motion_vector.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_hevc_mvs.c_temporal_luma_motion_vector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, %struct.TYPE_9__, %struct.TYPE_7__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i32, i32* }

@FF_THREAD_FRAME = common dso_local global i64 0, align 8
@DERIVE_TEMPORAL_COLOCATED_MVS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, i32, i32, i32, i32, i32, i32*, i32)* @temporal_luma_motion_vector to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @temporal_luma_motion_vector(%struct.TYPE_11__* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32* %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32* %6, i32** %16, align 8
  store i32 %7, i32* %17, align 4
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %24, align 4
  store i32 0, i32* %25, align 4
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 2
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %37, align 8
  store %struct.TYPE_10__* %38, %struct.TYPE_10__** %27, align 8
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %27, align 8
  %40 = icmp ne %struct.TYPE_10__* %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %8
  %42 = load i32*, i32** %16, align 8
  %43 = call i32 @memset(i32* %42, i32 0, i32 4)
  store i32 0, i32* %9, align 4
  br label %183

44:                                               ; preds = %8
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %27, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 2
  %47 = load i32*, i32** %46, align 8
  store i32* %47, i32** %18, align 8
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %27, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  store i32 %50, i32* %26, align 4
  %51 = load i32, i32* %11, align 4
  %52 = load i32, i32* %13, align 4
  %53 = add nsw i32 %51, %52
  store i32 %53, i32* %20, align 4
  %54 = load i32, i32* %12, align 4
  %55 = load i32, i32* %14, align 4
  %56 = add nsw i32 %54, %55
  store i32 %56, i32* %21, align 4
  %57 = load i32*, i32** %18, align 8
  %58 = icmp ne i32* %57, null
  br i1 %58, label %59, label %131

59:                                               ; preds = %44
  %60 = load i32, i32* %12, align 4
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = ashr i32 %60, %66
  %68 = load i32, i32* %21, align 4
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = ashr i32 %68, %74
  %76 = icmp eq i32 %67, %75
  br i1 %76, label %77, label %131

77:                                               ; preds = %59
  %78 = load i32, i32* %21, align 4
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 0
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = icmp slt i32 %78, %84
  br i1 %85, label %86, label %131

86:                                               ; preds = %77
  %87 = load i32, i32* %20, align 4
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 0
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 4
  %94 = icmp slt i32 %87, %93
  br i1 %94, label %95, label %131

95:                                               ; preds = %86
  %96 = load i32, i32* %20, align 4
  %97 = and i32 %96, -16
  store i32 %97, i32* %20, align 4
  %98 = load i32, i32* %21, align 4
  %99 = and i32 %98, -16
  store i32 %99, i32* %21, align 4
  %100 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @FF_THREAD_FRAME, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %105, label %110

105:                                              ; preds = %95
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %27, align 8
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 1
  %108 = load i32, i32* %21, align 4
  %109 = call i32 @ff_thread_await_progress(i32* %107, i32 %108, i32 0)
  br label %110

110:                                              ; preds = %105, %95
  %111 = load i32, i32* %20, align 4
  %112 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %113 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 0
  %115 = load %struct.TYPE_8__*, %struct.TYPE_8__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 4
  %117 = load i32, i32* %116, align 4
  %118 = ashr i32 %111, %117
  store i32 %118, i32* %22, align 4
  %119 = load i32, i32* %21, align 4
  %120 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %121 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i32 0, i32 0
  %123 = load %struct.TYPE_8__*, %struct.TYPE_8__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 4
  %125 = load i32, i32* %124, align 4
  %126 = ashr i32 %119, %125
  store i32 %126, i32* %23, align 4
  %127 = load i32, i32* %22, align 4
  %128 = load i32, i32* %23, align 4
  %129 = call i32 @TAB_MVF(i32 %127, i32 %128)
  store i32 %129, i32* %19, align 4
  %130 = load i32, i32* @DERIVE_TEMPORAL_COLOCATED_MVS, align 4
  store i32 %130, i32* %25, align 4
  br label %131

131:                                              ; preds = %110, %86, %77, %59, %44
  %132 = load i32*, i32** %18, align 8
  %133 = icmp ne i32* %132, null
  br i1 %133, label %134, label %181

134:                                              ; preds = %131
  %135 = load i32, i32* %25, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %181, label %137

137:                                              ; preds = %134
  %138 = load i32, i32* %11, align 4
  %139 = load i32, i32* %13, align 4
  %140 = ashr i32 %139, 1
  %141 = add nsw i32 %138, %140
  store i32 %141, i32* %20, align 4
  %142 = load i32, i32* %12, align 4
  %143 = load i32, i32* %14, align 4
  %144 = ashr i32 %143, 1
  %145 = add nsw i32 %142, %144
  store i32 %145, i32* %21, align 4
  %146 = load i32, i32* %20, align 4
  %147 = and i32 %146, -16
  store i32 %147, i32* %20, align 4
  %148 = load i32, i32* %21, align 4
  %149 = and i32 %148, -16
  store i32 %149, i32* %21, align 4
  %150 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %151 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = load i64, i64* @FF_THREAD_FRAME, align 8
  %154 = icmp eq i64 %152, %153
  br i1 %154, label %155, label %160

155:                                              ; preds = %137
  %156 = load %struct.TYPE_10__*, %struct.TYPE_10__** %27, align 8
  %157 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %156, i32 0, i32 1
  %158 = load i32, i32* %21, align 4
  %159 = call i32 @ff_thread_await_progress(i32* %157, i32 %158, i32 0)
  br label %160

160:                                              ; preds = %155, %137
  %161 = load i32, i32* %20, align 4
  %162 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %163 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %162, i32 0, i32 1
  %164 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %163, i32 0, i32 0
  %165 = load %struct.TYPE_8__*, %struct.TYPE_8__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %165, i32 0, i32 4
  %167 = load i32, i32* %166, align 4
  %168 = ashr i32 %161, %167
  store i32 %168, i32* %22, align 4
  %169 = load i32, i32* %21, align 4
  %170 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %171 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %170, i32 0, i32 1
  %172 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %171, i32 0, i32 0
  %173 = load %struct.TYPE_8__*, %struct.TYPE_8__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %173, i32 0, i32 4
  %175 = load i32, i32* %174, align 4
  %176 = ashr i32 %169, %175
  store i32 %176, i32* %23, align 4
  %177 = load i32, i32* %22, align 4
  %178 = load i32, i32* %23, align 4
  %179 = call i32 @TAB_MVF(i32 %177, i32 %178)
  store i32 %179, i32* %19, align 4
  %180 = load i32, i32* @DERIVE_TEMPORAL_COLOCATED_MVS, align 4
  store i32 %180, i32* %25, align 4
  br label %181

181:                                              ; preds = %160, %134, %131
  %182 = load i32, i32* %25, align 4
  store i32 %182, i32* %9, align 4
  br label %183

183:                                              ; preds = %181, %41
  %184 = load i32, i32* %9, align 4
  ret i32 %184
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @ff_thread_await_progress(i32*, i32, i32) #1

declare dso_local i32 @TAB_MVF(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
