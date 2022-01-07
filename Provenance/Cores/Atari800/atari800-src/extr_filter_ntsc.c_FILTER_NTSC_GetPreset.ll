; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_filter_ntsc.c_FILTER_NTSC_GetPreset.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_filter_ntsc.c_FILTER_NTSC_GetPreset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32 }

@FILTER_NTSC_PRESET_SIZE = common dso_local global i32 0, align 4
@FILTER_NTSC_setup = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@presets = common dso_local global %struct.TYPE_4__** null, align 8
@COLOURS_NTSC_setup = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@FILTER_NTSC_PRESET_CUSTOM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @FILTER_NTSC_GetPreset() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  br label %3

3:                                                ; preds = %131, %0
  %4 = load i32, i32* %2, align 4
  %5 = load i32, i32* @FILTER_NTSC_PRESET_SIZE, align 4
  %6 = icmp slt i32 %4, %5
  br i1 %6, label %7, label %134

7:                                                ; preds = %3
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @FILTER_NTSC_setup, i32 0, i32 5), align 4
  %9 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @presets, align 8
  %10 = load i32, i32* %2, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %9, i64 %11
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 10
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @Util_almostequal(i32 %8, i32 %15, double 1.000000e-03)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %130

18:                                               ; preds = %7
  %19 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @FILTER_NTSC_setup, i32 0, i32 4), align 4
  %20 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @presets, align 8
  %21 = load i32, i32* %2, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %20, i64 %22
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 9
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @Util_almostequal(i32 %19, i32 %26, double 1.000000e-03)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %130

29:                                               ; preds = %18
  %30 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @FILTER_NTSC_setup, i32 0, i32 3), align 4
  %31 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @presets, align 8
  %32 = load i32, i32* %2, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %31, i64 %33
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 8
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @Util_almostequal(i32 %30, i32 %37, double 1.000000e-03)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %130

40:                                               ; preds = %29
  %41 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @FILTER_NTSC_setup, i32 0, i32 2), align 4
  %42 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @presets, align 8
  %43 = load i32, i32* %2, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %42, i64 %44
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 7
  %48 = load i32, i32* %47, align 4
  %49 = call i64 @Util_almostequal(i32 %41, i32 %48, double 1.000000e-03)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %130

51:                                               ; preds = %40
  %52 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @FILTER_NTSC_setup, i32 0, i32 1), align 4
  %53 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @presets, align 8
  %54 = load i32, i32* %2, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %53, i64 %55
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 6
  %59 = load i32, i32* %58, align 4
  %60 = call i64 @Util_almostequal(i32 %52, i32 %59, double 1.000000e-03)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %130

62:                                               ; preds = %51
  %63 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @FILTER_NTSC_setup, i32 0, i32 0), align 4
  %64 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @presets, align 8
  %65 = load i32, i32* %2, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %64, i64 %66
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 5
  %70 = load i32, i32* %69, align 4
  %71 = call i64 @Util_almostequal(i32 %63, i32 %70, double 1.000000e-03)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %130

73:                                               ; preds = %62
  %74 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @COLOURS_NTSC_setup, i32 0, i32 4), align 4
  %75 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @presets, align 8
  %76 = load i32, i32* %2, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %75, i64 %77
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 4
  %81 = load i32, i32* %80, align 4
  %82 = call i64 @Util_almostequal(i32 %74, i32 %81, double 1.000000e-03)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %130

84:                                               ; preds = %73
  %85 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @COLOURS_NTSC_setup, i32 0, i32 3), align 4
  %86 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @presets, align 8
  %87 = load i32, i32* %2, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %86, i64 %88
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 4
  %93 = call i64 @Util_almostequal(i32 %85, i32 %92, double 1.000000e-03)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %130

95:                                               ; preds = %84
  %96 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @COLOURS_NTSC_setup, i32 0, i32 2), align 4
  %97 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @presets, align 8
  %98 = load i32, i32* %2, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %97, i64 %99
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = call i64 @Util_almostequal(i32 %96, i32 %103, double 1.000000e-03)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %130

106:                                              ; preds = %95
  %107 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @COLOURS_NTSC_setup, i32 0, i32 1), align 4
  %108 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @presets, align 8
  %109 = load i32, i32* %2, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %108, i64 %110
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = call i64 @Util_almostequal(i32 %107, i32 %114, double 1.000000e-03)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %130

117:                                              ; preds = %106
  %118 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @COLOURS_NTSC_setup, i32 0, i32 0), align 4
  %119 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @presets, align 8
  %120 = load i32, i32* %2, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %119, i64 %121
  %123 = load %struct.TYPE_4__*, %struct.TYPE_4__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = call i64 @Util_almostequal(i32 %118, i32 %125, double 1.000000e-03)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %130

128:                                              ; preds = %117
  %129 = load i32, i32* %2, align 4
  store i32 %129, i32* %1, align 4
  br label %136

130:                                              ; preds = %117, %106, %95, %84, %73, %62, %51, %40, %29, %18, %7
  br label %131

131:                                              ; preds = %130
  %132 = load i32, i32* %2, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %2, align 4
  br label %3

134:                                              ; preds = %3
  %135 = load i32, i32* @FILTER_NTSC_PRESET_CUSTOM, align 4
  store i32 %135, i32* %1, align 4
  br label %136

136:                                              ; preds = %134, %128
  %137 = load i32, i32* %1, align 4
  ret i32 %137
}

declare dso_local i64 @Util_almostequal(i32, i32, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
