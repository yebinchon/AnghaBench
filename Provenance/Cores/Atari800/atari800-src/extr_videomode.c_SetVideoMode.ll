; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_videomode.c_SetVideoMode.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_videomode.c_SetVideoMode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 (i32)*, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }

@VIDEOMODE_actual_width = common dso_local global i32 0, align 4
@display_modes = common dso_local global %struct.TYPE_7__* null, align 8
@VIDEOMODE_src_width = common dso_local global i32 0, align 4
@VIDEOMODE_src_height = common dso_local global i32 0, align 4
@VIDEOMODE_src_offset_left = common dso_local global i32 0, align 4
@VIDEOMODE_src_offset_top = common dso_local global i32 0, align 4
@VIDEOMODE_horizontal_offset = common dso_local global i32 0, align 4
@VIDEOMODE_MAX_HORIZONTAL_AREA = common dso_local global i32 0, align 4
@VIDEOMODE_vertical_offset = common dso_local global i32 0, align 4
@VIDEOMODE_MAX_VERTICAL_AREA = common dso_local global i32 0, align 4
@VIDEOMODE_dest_width = common dso_local global i32 0, align 4
@VIDEOMODE_dest_height = common dso_local global i32 0, align 4
@VIDEOMODE_dest_offset_left = common dso_local global i32 0, align 4
@VIDEOMODE_dest_offset_top = common dso_local global i32 0, align 4
@VIDEOMODE_MODE_LASTWITHHUD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, i64, i32, i32, i32, i32)* @SetVideoMode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SetVideoMode(%struct.TYPE_6__* %0, i64 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %16 = load i32, i32* %9, align 4
  store i32 %16, i32* @VIDEOMODE_actual_width, align 4
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** @display_modes, align 8
  %18 = load i64, i64* %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load i32 (i32)*, i32 (i32)** %20, align 8
  %22 = load i32, i32* %9, align 4
  %23 = call i32 %21(i32 %22)
  store i32 %23, i32* @VIDEOMODE_src_width, align 4
  %24 = load i32, i32* %10, align 4
  store i32 %24, i32* @VIDEOMODE_src_height, align 4
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** @display_modes, align 8
  %26 = load i64, i64* %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @VIDEOMODE_src_width, align 4
  %31 = sub nsw i32 %29, %30
  %32 = sdiv i32 %31, 2
  store i32 %32, i32* @VIDEOMODE_src_offset_left, align 4
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** @display_modes, align 8
  %34 = load i64, i64* %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @VIDEOMODE_src_height, align 4
  %39 = sub nsw i32 %37, %38
  %40 = sdiv i32 %39, 2
  store i32 %40, i32* @VIDEOMODE_src_offset_top, align 4
  %41 = load i32, i32* @VIDEOMODE_horizontal_offset, align 4
  %42 = load i32, i32* @VIDEOMODE_MAX_HORIZONTAL_AREA, align 4
  %43 = sub nsw i32 0, %42
  %44 = icmp slt i32 %41, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %6
  %46 = load i32, i32* @VIDEOMODE_MAX_HORIZONTAL_AREA, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* @VIDEOMODE_horizontal_offset, align 4
  br label %55

48:                                               ; preds = %6
  %49 = load i32, i32* @VIDEOMODE_horizontal_offset, align 4
  %50 = load i32, i32* @VIDEOMODE_MAX_HORIZONTAL_AREA, align 4
  %51 = icmp sgt i32 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %48
  %53 = load i32, i32* @VIDEOMODE_MAX_HORIZONTAL_AREA, align 4
  store i32 %53, i32* @VIDEOMODE_horizontal_offset, align 4
  br label %54

54:                                               ; preds = %52, %48
  br label %55

55:                                               ; preds = %54, %45
  %56 = load i32, i32* @VIDEOMODE_vertical_offset, align 4
  %57 = load i32, i32* @VIDEOMODE_MAX_VERTICAL_AREA, align 4
  %58 = sub nsw i32 0, %57
  %59 = icmp slt i32 %56, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %55
  %61 = load i32, i32* @VIDEOMODE_MAX_VERTICAL_AREA, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* @VIDEOMODE_vertical_offset, align 4
  br label %70

63:                                               ; preds = %55
  %64 = load i32, i32* @VIDEOMODE_vertical_offset, align 4
  %65 = load i32, i32* @VIDEOMODE_MAX_VERTICAL_AREA, align 4
  %66 = icmp sgt i32 %64, %65
  br i1 %66, label %67, label %69

67:                                               ; preds = %63
  %68 = load i32, i32* @VIDEOMODE_MAX_VERTICAL_AREA, align 4
  store i32 %68, i32* @VIDEOMODE_vertical_offset, align 4
  br label %69

69:                                               ; preds = %67, %63
  br label %70

70:                                               ; preds = %69, %60
  %71 = load i32, i32* @VIDEOMODE_horizontal_offset, align 4
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** @display_modes, align 8
  %73 = load i64, i64* %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 8
  %77 = mul nsw i32 %71, %76
  store i32 %77, i32* %13, align 4
  %78 = load i32, i32* @VIDEOMODE_vertical_offset, align 4
  store i32 %78, i32* %14, align 4
  %79 = load i32, i32* %13, align 4
  %80 = load i32, i32* @VIDEOMODE_src_offset_left, align 4
  %81 = sub nsw i32 0, %80
  %82 = icmp slt i32 %79, %81
  br i1 %82, label %83, label %86

83:                                               ; preds = %70
  %84 = load i32, i32* @VIDEOMODE_src_offset_left, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %13, align 4
  br label %109

86:                                               ; preds = %70
  %87 = load i32, i32* %13, align 4
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** @display_modes, align 8
  %89 = load i64, i64* %8, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* @VIDEOMODE_src_offset_left, align 4
  %94 = sub nsw i32 %92, %93
  %95 = load i32, i32* @VIDEOMODE_src_width, align 4
  %96 = sub nsw i32 %94, %95
  %97 = icmp sgt i32 %87, %96
  br i1 %97, label %98, label %108

98:                                               ; preds = %86
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** @display_modes, align 8
  %100 = load i64, i64* %8, align 8
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* @VIDEOMODE_src_offset_left, align 4
  %105 = sub nsw i32 %103, %104
  %106 = load i32, i32* @VIDEOMODE_src_width, align 4
  %107 = sub nsw i32 %105, %106
  store i32 %107, i32* %13, align 4
  br label %108

108:                                              ; preds = %98, %86
  br label %109

109:                                              ; preds = %108, %83
  %110 = load i32, i32* %14, align 4
  %111 = load i32, i32* @VIDEOMODE_src_offset_top, align 4
  %112 = sub nsw i32 0, %111
  %113 = icmp slt i32 %110, %112
  br i1 %113, label %114, label %117

114:                                              ; preds = %109
  %115 = load i32, i32* @VIDEOMODE_src_offset_top, align 4
  %116 = sub nsw i32 0, %115
  store i32 %116, i32* %14, align 4
  br label %140

117:                                              ; preds = %109
  %118 = load i32, i32* %14, align 4
  %119 = load %struct.TYPE_7__*, %struct.TYPE_7__** @display_modes, align 8
  %120 = load i64, i64* %8, align 8
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* @VIDEOMODE_src_offset_top, align 4
  %125 = sub nsw i32 %123, %124
  %126 = load i32, i32* @VIDEOMODE_src_height, align 4
  %127 = sub nsw i32 %125, %126
  %128 = icmp sgt i32 %118, %127
  br i1 %128, label %129, label %139

129:                                              ; preds = %117
  %130 = load %struct.TYPE_7__*, %struct.TYPE_7__** @display_modes, align 8
  %131 = load i64, i64* %8, align 8
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i64 %131
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* @VIDEOMODE_src_offset_top, align 4
  %136 = sub nsw i32 %134, %135
  %137 = load i32, i32* @VIDEOMODE_src_height, align 4
  %138 = sub nsw i32 %136, %137
  store i32 %138, i32* %14, align 4
  br label %139

139:                                              ; preds = %129, %117
  br label %140

140:                                              ; preds = %139, %114
  %141 = load i32, i32* %13, align 4
  %142 = load i32, i32* @VIDEOMODE_src_offset_left, align 4
  %143 = add nsw i32 %142, %141
  store i32 %143, i32* @VIDEOMODE_src_offset_left, align 4
  %144 = load i32, i32* %14, align 4
  %145 = load i32, i32* @VIDEOMODE_src_offset_top, align 4
  %146 = add nsw i32 %145, %144
  store i32 %146, i32* @VIDEOMODE_src_offset_top, align 4
  %147 = load i32, i32* %12, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %155

149:                                              ; preds = %140
  %150 = load i32, i32* @VIDEOMODE_dest_width, align 4
  store i32 %150, i32* %15, align 4
  %151 = load i32, i32* @VIDEOMODE_dest_height, align 4
  store i32 %151, i32* @VIDEOMODE_dest_width, align 4
  %152 = load i32, i32* %15, align 4
  store i32 %152, i32* @VIDEOMODE_dest_height, align 4
  %153 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %154 = call i32 @RotateResolution(%struct.TYPE_6__* %153)
  br label %155

155:                                              ; preds = %149, %140
  %156 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* @VIDEOMODE_dest_width, align 4
  %160 = sub nsw i32 %158, %159
  %161 = sdiv i32 %160, 2
  store i32 %161, i32* @VIDEOMODE_dest_offset_left, align 4
  %162 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %163 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = load i32, i32* @VIDEOMODE_dest_height, align 4
  %166 = sub nsw i32 %164, %165
  %167 = sdiv i32 %166, 2
  store i32 %167, i32* @VIDEOMODE_dest_offset_top, align 4
  %168 = load i64, i64* %8, align 8
  %169 = load i64, i64* @VIDEOMODE_MODE_LASTWITHHUD, align 8
  %170 = icmp ule i64 %168, %169
  br i1 %170, label %171, label %173

171:                                              ; preds = %155
  %172 = call i32 (...) @SetScreenVisible()
  br label %173

173:                                              ; preds = %171, %155
  %174 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %175 = load i32, i32* %11, align 4
  %176 = load i64, i64* %8, align 8
  %177 = load i32, i32* %12, align 4
  %178 = call i32 @PLATFORM_SetVideoMode(%struct.TYPE_6__* %174, i32 %175, i64 %176, i32 %177)
  ret void
}

declare dso_local i32 @RotateResolution(%struct.TYPE_6__*) #1

declare dso_local i32 @SetScreenVisible(...) #1

declare dso_local i32 @PLATFORM_SetVideoMode(%struct.TYPE_6__*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
