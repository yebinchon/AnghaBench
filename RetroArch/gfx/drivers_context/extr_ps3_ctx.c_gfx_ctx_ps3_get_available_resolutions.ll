; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers_context/extr_ps3_ctx.c_gfx_ctx_ps3_get_available_resolutions.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers_context/extr_ps3_ctx.c_gfx_ctx_ps3_get_available_resolutions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32, i32*, %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32 }

@CELL_VIDEO_OUT_RESOLUTION_480 = common dso_local global i32 0, align 4
@CELL_VIDEO_OUT_RESOLUTION_576 = common dso_local global i32 0, align 4
@CELL_VIDEO_OUT_RESOLUTION_960x1080 = common dso_local global i32 0, align 4
@CELL_VIDEO_OUT_RESOLUTION_720 = common dso_local global i32 0, align 4
@CELL_VIDEO_OUT_RESOLUTION_1280x1080 = common dso_local global i32 0, align 4
@CELL_VIDEO_OUT_RESOLUTION_1440x1080 = common dso_local global i32 0, align 4
@CELL_VIDEO_OUT_RESOLUTION_1600x1080 = common dso_local global i32 0, align 4
@CELL_VIDEO_OUT_RESOLUTION_1080 = common dso_local global i32 0, align 4
@CELL_VIDEO_OUT_PRIMARY = common dso_local global i32 0, align 4
@CELL_VIDEO_OUT_ASPECT_AUTO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @gfx_ctx_ps3_get_available_resolutions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gfx_ctx_ps3_get_available_resolutions() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [8 x i32], align 16
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = getelementptr inbounds [8 x i32], [8 x i32]* %2, i64 0, i64 0
  %8 = load i32, i32* @CELL_VIDEO_OUT_RESOLUTION_480, align 4
  store i32 %8, i32* %7, align 4
  %9 = getelementptr inbounds i32, i32* %7, i64 1
  %10 = load i32, i32* @CELL_VIDEO_OUT_RESOLUTION_576, align 4
  store i32 %10, i32* %9, align 4
  %11 = getelementptr inbounds i32, i32* %9, i64 1
  %12 = load i32, i32* @CELL_VIDEO_OUT_RESOLUTION_960x1080, align 4
  store i32 %12, i32* %11, align 4
  %13 = getelementptr inbounds i32, i32* %11, i64 1
  %14 = load i32, i32* @CELL_VIDEO_OUT_RESOLUTION_720, align 4
  store i32 %14, i32* %13, align 4
  %15 = getelementptr inbounds i32, i32* %13, i64 1
  %16 = load i32, i32* @CELL_VIDEO_OUT_RESOLUTION_1280x1080, align 4
  store i32 %16, i32* %15, align 4
  %17 = getelementptr inbounds i32, i32* %15, i64 1
  %18 = load i32, i32* @CELL_VIDEO_OUT_RESOLUTION_1440x1080, align 4
  store i32 %18, i32* %17, align 4
  %19 = getelementptr inbounds i32, i32* %17, i64 1
  %20 = load i32, i32* @CELL_VIDEO_OUT_RESOLUTION_1600x1080, align 4
  store i32 %20, i32* %19, align 4
  %21 = getelementptr inbounds i32, i32* %19, i64 1
  %22 = load i32, i32* @CELL_VIDEO_OUT_RESOLUTION_1080, align 4
  store i32 %22, i32* %21, align 4
  store i32 0, i32* %3, align 4
  store i32 1, i32* %4, align 4
  store i32 8, i32* %5, align 4
  %23 = call %struct.TYPE_13__* (...) @global_get_ptr()
  store %struct.TYPE_13__* %23, %struct.TYPE_13__** %6, align 8
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %0
  br label %193

32:                                               ; preds = %0
  store i32 0, i32* %1, align 4
  br label %33

33:                                               ; preds = %50, %32
  %34 = load i32, i32* %1, align 4
  %35 = load i32, i32* %5, align 4
  %36 = icmp ult i32 %34, %35
  br i1 %36, label %37, label %53

37:                                               ; preds = %33
  %38 = load i32, i32* @CELL_VIDEO_OUT_PRIMARY, align 4
  %39 = load i32, i32* %1, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds [8 x i32], [8 x i32]* %2, i64 0, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @CELL_VIDEO_OUT_ASPECT_AUTO, align 4
  %44 = call i64 @cellVideoOutGetResolutionAvailability(i32 %38, i32 %42, i32 %43, i32 0)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %37
  %47 = load i32, i32* %3, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %3, align 4
  br label %49

49:                                               ; preds = %46, %37
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %1, align 4
  %52 = add i32 %51, 1
  store i32 %52, i32* %1, align 4
  br label %33

53:                                               ; preds = %33
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 1
  store i32 0, i32* %58, align 4
  %59 = load i32, i32* %3, align 4
  %60 = sext i32 %59 to i64
  %61 = mul i64 %60, 4
  %62 = trunc i64 %61 to i32
  %63 = call i32* @malloc(i32 %62)
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 2
  store i32* %63, i32** %68, align 8
  store i32 0, i32* %1, align 4
  br label %69

69:                                               ; preds = %140, %53
  %70 = load i32, i32* %1, align 4
  %71 = load i32, i32* %5, align 4
  %72 = icmp ult i32 %70, %71
  br i1 %72, label %73, label %143

73:                                               ; preds = %69
  %74 = load i32, i32* @CELL_VIDEO_OUT_PRIMARY, align 4
  %75 = load i32, i32* %1, align 4
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds [8 x i32], [8 x i32]* %2, i64 0, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @CELL_VIDEO_OUT_ASPECT_AUTO, align 4
  %80 = call i64 @cellVideoOutGetResolutionAvailability(i32 %74, i32 %78, i32 %79, i32 0)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %139

82:                                               ; preds = %73
  %83 = load i32, i32* %1, align 4
  %84 = zext i32 %83 to i64
  %85 = getelementptr inbounds [8 x i32], [8 x i32]* %2, i64 0, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 2
  %92 = load i32*, i32** %91, align 8
  %93 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %97, align 4
  %100 = sext i32 %98 to i64
  %101 = getelementptr inbounds i32, i32* %92, i64 %100
  store i32 %86, i32* %101, align 4
  %102 = load i32, i32* %1, align 4
  %103 = zext i32 %102 to i64
  %104 = getelementptr inbounds [8 x i32], [8 x i32]* %2, i64 0, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 4
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 0
  store i32 %105, i32* %111, align 8
  %112 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i32 0, i32 3
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* %1, align 4
  %120 = zext i32 %119 to i64
  %121 = getelementptr inbounds [8 x i32], [8 x i32]* %2, i64 0, i64 %120
  %122 = load i32, i32* %121, align 4
  %123 = icmp eq i32 %118, %122
  br i1 %123, label %124, label %138

124:                                              ; preds = %82
  store i32 0, i32* %4, align 4
  %125 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %126 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = sub nsw i32 %130, 1
  %132 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %133 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %135, i32 0, i32 3
  %137 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %136, i32 0, i32 1
  store i32 %131, i32* %137, align 4
  br label %138

138:                                              ; preds = %124, %82
  br label %139

139:                                              ; preds = %138, %73
  br label %140

140:                                              ; preds = %139
  %141 = load i32, i32* %1, align 4
  %142 = add i32 %141, 1
  store i32 %142, i32* %1, align 4
  br label %69

143:                                              ; preds = %69
  %144 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %145 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %147, i32 0, i32 3
  %149 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = load i32, i32* %5, align 4
  %152 = icmp ugt i32 %150, %151
  br i1 %152, label %156, label %153

153:                                              ; preds = %143
  %154 = load i32, i32* %4, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %187

156:                                              ; preds = %153, %143
  %157 = load i32, i32* %3, align 4
  %158 = sub nsw i32 %157, 1
  %159 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %160 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %162, i32 0, i32 3
  %164 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %163, i32 0, i32 1
  store i32 %158, i32* %164, align 4
  %165 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %166 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %168, i32 0, i32 2
  %170 = load i32*, i32** %169, align 8
  %171 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %172 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %174, i32 0, i32 3
  %176 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i32, i32* %170, i64 %178
  %180 = load i32, i32* %179, align 4
  %181 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %182 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %184, i32 0, i32 3
  %186 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %185, i32 0, i32 0
  store i32 %180, i32* %186, align 8
  br label %187

187:                                              ; preds = %156, %153
  %188 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %189 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %189, i32 0, i32 0
  %191 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %191, i32 0, i32 0
  store i32 1, i32* %192, align 8
  br label %193

193:                                              ; preds = %187, %31
  ret void
}

declare dso_local %struct.TYPE_13__* @global_get_ptr(...) #1

declare dso_local i64 @cellVideoOutGetResolutionAvailability(i32, i32, i32, i32) #1

declare dso_local i32* @malloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
