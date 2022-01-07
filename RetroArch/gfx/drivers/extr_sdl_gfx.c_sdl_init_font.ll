; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_sdl_gfx.c_sdl_init_font.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_sdl_gfx.c_sdl_init_font.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_10__ = type { i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i64* }
%struct.TYPE_8__ = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"[SDL]: Could not initialize fonts.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_12__*, i8*, i32)* @sdl_init_font to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sdl_init_font(%struct.TYPE_12__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = call %struct.TYPE_11__* (...) @config_get_ptr()
  store %struct.TYPE_11__* %11, %struct.TYPE_11__** %10, align 8
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %13 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %3
  br label %109

18:                                               ; preds = %3
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 4
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 3
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  %26 = load i64*, i64** %25, align 8
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %18
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  %33 = load i64*, i64** %32, align 8
  br label %35

34:                                               ; preds = %18
  br label %35

35:                                               ; preds = %34, %29
  %36 = phi i64* [ %33, %29 ], [ null, %34 ]
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @font_renderer_create_default(i32* %20, i32* %22, i64* %36, i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %35
  %44 = call i32 @RARCH_LOG(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %109

45:                                               ; preds = %35
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = mul nsw i32 %49, 255
  store i32 %50, i32* %7, align 4
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = mul nsw i32 %54, 255
  store i32 %55, i32* %8, align 4
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = mul nsw i32 %59, 255
  store i32 %60, i32* %9, align 4
  %61 = load i32, i32* %7, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %45
  br label %72

64:                                               ; preds = %45
  %65 = load i32, i32* %7, align 4
  %66 = icmp sgt i32 %65, 255
  br i1 %66, label %67, label %68

67:                                               ; preds = %64
  br label %70

68:                                               ; preds = %64
  %69 = load i32, i32* %7, align 4
  br label %70

70:                                               ; preds = %68, %67
  %71 = phi i32 [ 255, %67 ], [ %69, %68 ]
  br label %72

72:                                               ; preds = %70, %63
  %73 = phi i32 [ 0, %63 ], [ %71, %70 ]
  store i32 %73, i32* %7, align 4
  %74 = load i32, i32* %8, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %72
  br label %85

77:                                               ; preds = %72
  %78 = load i32, i32* %8, align 4
  %79 = icmp sgt i32 %78, 255
  br i1 %79, label %80, label %81

80:                                               ; preds = %77
  br label %83

81:                                               ; preds = %77
  %82 = load i32, i32* %8, align 4
  br label %83

83:                                               ; preds = %81, %80
  %84 = phi i32 [ 255, %80 ], [ %82, %81 ]
  br label %85

85:                                               ; preds = %83, %76
  %86 = phi i32 [ 0, %76 ], [ %84, %83 ]
  store i32 %86, i32* %8, align 4
  %87 = load i32, i32* %9, align 4
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %85
  br label %98

90:                                               ; preds = %85
  %91 = load i32, i32* %9, align 4
  %92 = icmp sgt i32 %91, 255
  br i1 %92, label %93, label %94

93:                                               ; preds = %90
  br label %96

94:                                               ; preds = %90
  %95 = load i32, i32* %9, align 4
  br label %96

96:                                               ; preds = %94, %93
  %97 = phi i32 [ 255, %93 ], [ %95, %94 ]
  br label %98

98:                                               ; preds = %96, %89
  %99 = phi i32 [ 0, %89 ], [ %97, %96 ]
  store i32 %99, i32* %9, align 4
  %100 = load i32, i32* %7, align 4
  %101 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %101, i32 0, i32 0
  store i32 %100, i32* %102, align 4
  %103 = load i32, i32* %8, align 4
  %104 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %104, i32 0, i32 1
  store i32 %103, i32* %105, align 4
  %106 = load i32, i32* %9, align 4
  %107 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %107, i32 0, i32 2
  store i32 %106, i32* %108, align 4
  br label %109

109:                                              ; preds = %98, %43, %17
  ret void
}

declare dso_local %struct.TYPE_11__* @config_get_ptr(...) #1

declare dso_local i32 @font_renderer_create_default(i32*, i32*, i64*, i32) #1

declare dso_local i32 @RARCH_LOG(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
