; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/q3_ui/extr_ui_video.c_GraphicsOptions_CheckConfig.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/q3_ui/extr_ui_video.c_GraphicsOptions_CheckConfig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.TYPE_13__ = type { %struct.TYPE_22__, %struct.TYPE_21__, %struct.TYPE_20__, %struct.TYPE_19__, %struct.TYPE_18__, %struct.TYPE_17__, %struct.TYPE_16__, %struct.TYPE_15__, %struct.TYPE_14__ }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_21__ = type { i64 }
%struct.TYPE_20__ = type { i64 }
%struct.TYPE_19__ = type { i64 }
%struct.TYPE_18__ = type { i64 }
%struct.TYPE_17__ = type { i64 }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_14__ = type { i64 }

@NUM_IVO_TEMPLATES = common dso_local global i32 0, align 4
@s_ivo_templates = common dso_local global %struct.TYPE_12__* null, align 8
@s_graphicsoptions = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @GraphicsOptions_CheckConfig to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @GraphicsOptions_CheckConfig() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  br label %2

2:                                                ; preds = %88, %0
  %3 = load i32, i32* %1, align 4
  %4 = load i32, i32* @NUM_IVO_TEMPLATES, align 4
  %5 = icmp slt i32 %3, %4
  br i1 %5, label %6, label %91

6:                                                ; preds = %2
  %7 = load %struct.TYPE_12__*, %struct.TYPE_12__** @s_ivo_templates, align 8
  %8 = load i32, i32* %1, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i64 %9
  %11 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @s_graphicsoptions, i32 0, i32 8, i32 0), align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %6
  br label %88

16:                                               ; preds = %6
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** @s_ivo_templates, align 8
  %18 = load i32, i32* %1, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @s_graphicsoptions, i32 0, i32 7, i32 0), align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %16
  br label %88

26:                                               ; preds = %16
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** @s_ivo_templates, align 8
  %28 = load i32, i32* %1, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @s_graphicsoptions, i32 0, i32 6, i32 0), align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %26
  br label %88

36:                                               ; preds = %26
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** @s_ivo_templates, align 8
  %38 = load i32, i32* %1, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 3
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @s_graphicsoptions, i32 0, i32 5, i32 0), align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %36
  br label %88

46:                                               ; preds = %36
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** @s_ivo_templates, align 8
  %48 = load i32, i32* %1, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 4
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @s_graphicsoptions, i32 0, i32 4, i32 0), align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %46
  br label %88

56:                                               ; preds = %46
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** @s_ivo_templates, align 8
  %58 = load i32, i32* %1, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 5
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @s_graphicsoptions, i32 0, i32 3, i32 0), align 8
  %64 = icmp ne i64 %62, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %56
  br label %88

66:                                               ; preds = %56
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** @s_ivo_templates, align 8
  %68 = load i32, i32* %1, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 6
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @s_graphicsoptions, i32 0, i32 2, i32 0), align 8
  %74 = icmp ne i64 %72, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %66
  br label %88

76:                                               ; preds = %66
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** @s_ivo_templates, align 8
  %78 = load i32, i32* %1, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 7
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @s_graphicsoptions, i32 0, i32 1, i32 0), align 8
  %84 = icmp ne i64 %82, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %76
  br label %88

86:                                               ; preds = %76
  %87 = load i32, i32* %1, align 4
  store i32 %87, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @s_graphicsoptions, i32 0, i32 0, i32 0), align 8
  br label %92

88:                                               ; preds = %85, %75, %65, %55, %45, %35, %25, %15
  %89 = load i32, i32* %1, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %1, align 4
  br label %2

91:                                               ; preds = %2
  store i32 4, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @s_graphicsoptions, i32 0, i32 0, i32 0), align 8
  br label %92

92:                                               ; preds = %91, %86
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
