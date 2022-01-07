; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_colours.c_Colours_GetPreset.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_colours.c_Colours_GetPreset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64, i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i64, i64, i32, i32, i32, i32, i32 }

@Atari800_tv_mode = common dso_local global i64 0, align 8
@Atari800_TV_NTSC = common dso_local global i64 0, align 8
@COLOURS_PRESET_STANDARD = common dso_local global i64 0, align 8
@Atari800_TV_PAL = common dso_local global i64 0, align 8
@COLOURS_PRESET_CUSTOM = common dso_local global i32 0, align 4
@COLOURS_PRESET_SIZE = common dso_local global i32 0, align 4
@Colours_setup = common dso_local global %struct.TYPE_4__* null, align 8
@presets = common dso_local global %struct.TYPE_3__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Colours_GetPreset() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i64, i64* @Atari800_tv_mode, align 8
  %4 = load i64, i64* @Atari800_TV_NTSC, align 8
  %5 = icmp eq i64 %3, %4
  br i1 %5, label %6, label %10

6:                                                ; preds = %0
  %7 = call i64 (...) @COLOURS_NTSC_GetPreset()
  %8 = load i64, i64* @COLOURS_PRESET_STANDARD, align 8
  %9 = icmp ne i64 %7, %8
  br i1 %9, label %18, label %10

10:                                               ; preds = %6, %0
  %11 = load i64, i64* @Atari800_tv_mode, align 8
  %12 = load i64, i64* @Atari800_TV_PAL, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %20

14:                                               ; preds = %10
  %15 = call i64 (...) @COLOURS_PAL_GetPreset()
  %16 = load i64, i64* @COLOURS_PRESET_STANDARD, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %14, %6
  %19 = load i32, i32* @COLOURS_PRESET_CUSTOM, align 4
  store i32 %19, i32* %1, align 4
  br label %115

20:                                               ; preds = %14, %10
  store i32 0, i32* %2, align 4
  br label %21

21:                                               ; preds = %110, %20
  %22 = load i32, i32* %2, align 4
  %23 = load i32, i32* @COLOURS_PRESET_SIZE, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %113

25:                                               ; preds = %21
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Colours_setup, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 6
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** @presets, align 8
  %30 = load i32, i32* %2, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 6
  %34 = load i32, i32* %33, align 8
  %35 = call i64 @Util_almostequal(i32 %28, i32 %34, double 1.000000e-03)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %109

37:                                               ; preds = %25
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Colours_setup, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 5
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** @presets, align 8
  %42 = load i32, i32* %2, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 5
  %46 = load i32, i32* %45, align 4
  %47 = call i64 @Util_almostequal(i32 %40, i32 %46, double 1.000000e-03)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %109

49:                                               ; preds = %37
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Colours_setup, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** @presets, align 8
  %54 = load i32, i32* %2, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 8
  %59 = call i64 @Util_almostequal(i32 %52, i32 %58, double 1.000000e-03)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %109

61:                                               ; preds = %49
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Colours_setup, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** @presets, align 8
  %66 = load i32, i32* %2, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = call i64 @Util_almostequal(i32 %64, i32 %70, double 1.000000e-03)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %109

73:                                               ; preds = %61
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Colours_setup, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** @presets, align 8
  %78 = load i32, i32* %2, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = call i64 @Util_almostequal(i32 %76, i32 %82, double 1.000000e-03)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %109

85:                                               ; preds = %73
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Colours_setup, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** @presets, align 8
  %90 = load i32, i32* %2, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = icmp eq i64 %88, %94
  br i1 %95, label %96, label %109

96:                                               ; preds = %85
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Colours_setup, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** @presets, align 8
  %101 = load i32, i32* %2, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = icmp eq i64 %99, %105
  br i1 %106, label %107, label %109

107:                                              ; preds = %96
  %108 = load i32, i32* %2, align 4
  store i32 %108, i32* %1, align 4
  br label %115

109:                                              ; preds = %96, %85, %73, %61, %49, %37, %25
  br label %110

110:                                              ; preds = %109
  %111 = load i32, i32* %2, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %2, align 4
  br label %21

113:                                              ; preds = %21
  %114 = load i32, i32* @COLOURS_PRESET_CUSTOM, align 4
  store i32 %114, i32* %1, align 4
  br label %115

115:                                              ; preds = %113, %107, %18
  %116 = load i32, i32* %1, align 4
  ret i32 %116
}

declare dso_local i64 @COLOURS_NTSC_GetPreset(...) #1

declare dso_local i64 @COLOURS_PAL_GetPreset(...) #1

declare dso_local i64 @Util_almostequal(i32, i32, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
