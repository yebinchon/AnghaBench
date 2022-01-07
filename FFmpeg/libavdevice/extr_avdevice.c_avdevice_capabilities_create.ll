; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavdevice/extr_avdevice.c_avdevice_capabilities_create.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavdevice/extr_avdevice.c_avdevice_capabilities_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { %struct.TYPE_15__*, %struct.TYPE_14__*, i32 }
%struct.TYPE_15__ = type { i32 (%struct.TYPE_16__*, %struct.TYPE_17__*)* }
%struct.TYPE_14__ = type { i32 (%struct.TYPE_16__*, %struct.TYPE_17__*)* }

@ENOSYS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @avdevice_capabilities_create(%struct.TYPE_17__** %0, %struct.TYPE_16__* %1, i32** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_17__**, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_17__** %0, %struct.TYPE_17__*** %5, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %6, align 8
  store i32** %2, i32*** %7, align 8
  %9 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %10 = icmp ne %struct.TYPE_16__* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %3
  %12 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %5, align 8
  %13 = icmp ne %struct.TYPE_17__** %12, null
  br label %14

14:                                               ; preds = %11, %3
  %15 = phi i1 [ false, %3 ], [ %13, %11 ]
  %16 = zext i1 %15 to i32
  %17 = call i32 @av_assert0(i32 %16)
  %18 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  %21 = icmp ne %struct.TYPE_14__* %20, null
  br i1 %21, label %27, label %22

22:                                               ; preds = %14
  %23 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %24, align 8
  %26 = icmp ne %struct.TYPE_15__* %25, null
  br label %27

27:                                               ; preds = %22, %14
  %28 = phi i1 [ true, %14 ], [ %26, %22 ]
  %29 = zext i1 %28 to i32
  %30 = call i32 @av_assert0(i32 %29)
  %31 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %32, align 8
  %34 = icmp ne %struct.TYPE_15__* %33, null
  br i1 %34, label %35, label %42

35:                                               ; preds = %27
  %36 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_15__*, %struct.TYPE_15__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %38, i32 0, i32 0
  %40 = load i32 (%struct.TYPE_16__*, %struct.TYPE_17__*)*, i32 (%struct.TYPE_16__*, %struct.TYPE_17__*)** %39, align 8
  %41 = icmp ne i32 (%struct.TYPE_16__*, %struct.TYPE_17__*)* %40, null
  br i1 %41, label %42, label %54

42:                                               ; preds = %35, %27
  %43 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %43, i32 0, i32 1
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %44, align 8
  %46 = icmp ne %struct.TYPE_14__* %45, null
  br i1 %46, label %47, label %57

47:                                               ; preds = %42
  %48 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %48, i32 0, i32 1
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %50, i32 0, i32 0
  %52 = load i32 (%struct.TYPE_16__*, %struct.TYPE_17__*)*, i32 (%struct.TYPE_16__*, %struct.TYPE_17__*)** %51, align 8
  %53 = icmp ne i32 (%struct.TYPE_16__*, %struct.TYPE_17__*)* %52, null
  br i1 %53, label %57, label %54

54:                                               ; preds = %47, %35
  %55 = load i32, i32* @ENOSYS, align 4
  %56 = call i32 @AVERROR(i32 %55)
  store i32 %56, i32* %4, align 4
  br label %117

57:                                               ; preds = %47, %42
  %58 = call %struct.TYPE_17__* @av_mallocz(i32 8)
  %59 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %5, align 8
  store %struct.TYPE_17__* %58, %struct.TYPE_17__** %59, align 8
  %60 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %5, align 8
  %61 = load %struct.TYPE_17__*, %struct.TYPE_17__** %60, align 8
  %62 = icmp ne %struct.TYPE_17__* %61, null
  br i1 %62, label %66, label %63

63:                                               ; preds = %57
  %64 = load i32, i32* @ENOMEM, align 4
  %65 = call i32 @AVERROR(i32 %64)
  store i32 %65, i32* %4, align 4
  br label %117

66:                                               ; preds = %57
  %67 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %68 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %5, align 8
  %69 = load %struct.TYPE_17__*, %struct.TYPE_17__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %69, i32 0, i32 0
  store %struct.TYPE_16__* %67, %struct.TYPE_16__** %70, align 8
  %71 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = load i32**, i32*** %7, align 8
  %75 = call i32 @av_opt_set_dict(i32 %73, i32** %74)
  store i32 %75, i32* %8, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %66
  br label %113

78:                                               ; preds = %66
  %79 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %79, i32 0, i32 1
  %81 = load %struct.TYPE_14__*, %struct.TYPE_14__** %80, align 8
  %82 = icmp ne %struct.TYPE_14__* %81, null
  br i1 %82, label %83, label %96

83:                                               ; preds = %78
  %84 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %84, i32 0, i32 1
  %86 = load %struct.TYPE_14__*, %struct.TYPE_14__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %86, i32 0, i32 0
  %88 = load i32 (%struct.TYPE_16__*, %struct.TYPE_17__*)*, i32 (%struct.TYPE_16__*, %struct.TYPE_17__*)** %87, align 8
  %89 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %90 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %5, align 8
  %91 = load %struct.TYPE_17__*, %struct.TYPE_17__** %90, align 8
  %92 = call i32 %88(%struct.TYPE_16__* %89, %struct.TYPE_17__* %91)
  store i32 %92, i32* %8, align 4
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %83
  br label %113

95:                                               ; preds = %83
  br label %109

96:                                               ; preds = %78
  %97 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %97, i32 0, i32 0
  %99 = load %struct.TYPE_15__*, %struct.TYPE_15__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %99, i32 0, i32 0
  %101 = load i32 (%struct.TYPE_16__*, %struct.TYPE_17__*)*, i32 (%struct.TYPE_16__*, %struct.TYPE_17__*)** %100, align 8
  %102 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %103 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %5, align 8
  %104 = load %struct.TYPE_17__*, %struct.TYPE_17__** %103, align 8
  %105 = call i32 %101(%struct.TYPE_16__* %102, %struct.TYPE_17__* %104)
  store i32 %105, i32* %8, align 4
  %106 = icmp slt i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %96
  br label %113

108:                                              ; preds = %96
  br label %109

109:                                              ; preds = %108, %95
  %110 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %5, align 8
  %111 = load %struct.TYPE_17__*, %struct.TYPE_17__** %110, align 8
  %112 = call i32 @av_opt_set_defaults(%struct.TYPE_17__* %111)
  store i32 0, i32* %4, align 4
  br label %117

113:                                              ; preds = %107, %94, %77
  %114 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %5, align 8
  %115 = call i32 @av_freep(%struct.TYPE_17__** %114)
  %116 = load i32, i32* %8, align 4
  store i32 %116, i32* %4, align 4
  br label %117

117:                                              ; preds = %113, %109, %63, %54
  %118 = load i32, i32* %4, align 4
  ret i32 %118
}

declare dso_local i32 @av_assert0(i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local %struct.TYPE_17__* @av_mallocz(i32) #1

declare dso_local i32 @av_opt_set_dict(i32, i32**) #1

declare dso_local i32 @av_opt_set_defaults(%struct.TYPE_17__*) #1

declare dso_local i32 @av_freep(%struct.TYPE_17__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
