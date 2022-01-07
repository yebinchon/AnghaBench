; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/q3_ui/extr_ui_video.c_GraphicsOptions_Event.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/q3_ui/extr_ui_video.c_GraphicsOptions_Event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_15__, %struct.TYPE_27__, %struct.TYPE_26__, %struct.TYPE_25__, %struct.TYPE_24__, %struct.TYPE_23__, %struct.TYPE_22__, %struct.TYPE_21__, %struct.TYPE_20__, %struct.TYPE_19__ }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_27__ = type { i32 }
%struct.TYPE_26__ = type { i32 }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_20__ = type { i64 }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_17__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_16__ = type { i32 }

@QM_ACTIVATED = common dso_local global i32 0, align 4
@s_graphicsoptions = common dso_local global %struct.TYPE_18__ zeroinitializer, align 8
@s_ivo_templates = common dso_local global %struct.TYPE_17__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @GraphicsOptions_Event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @GraphicsOptions_Event(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_17__*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @QM_ACTIVATED, align 4
  %8 = icmp ne i32 %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  br label %71

10:                                               ; preds = %2
  %11 = load i8*, i8** %3, align 8
  %12 = bitcast i8* %11 to %struct.TYPE_16__*
  %13 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  switch i32 %14, label %71 [
    i32 130, label %15
    i32 131, label %29
    i32 133, label %57
    i32 135, label %59
    i32 132, label %61
    i32 134, label %62
    i32 128, label %65
    i32 129, label %68
  ]

15:                                               ; preds = %10
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @s_graphicsoptions, i32 0, i32 9, i32 0), align 8
  %17 = icmp eq i32 %16, 1
  br i1 %17, label %18, label %28

18:                                               ; preds = %15
  %19 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @s_graphicsoptions, i32 0, i32 7, i32 0), align 4
  %20 = icmp slt i32 %19, 2
  br i1 %20, label %21, label %22

21:                                               ; preds = %18
  store i32 2, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @s_graphicsoptions, i32 0, i32 7, i32 0), align 4
  br label %27

22:                                               ; preds = %18
  %23 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @s_graphicsoptions, i32 0, i32 7, i32 0), align 4
  %24 = icmp sgt i32 %23, 6
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  store i32 6, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @s_graphicsoptions, i32 0, i32 7, i32 0), align 4
  br label %26

26:                                               ; preds = %25, %22
  br label %27

27:                                               ; preds = %26, %21
  br label %28

28:                                               ; preds = %27, %15
  br label %71

29:                                               ; preds = %10
  %30 = load %struct.TYPE_17__*, %struct.TYPE_17__** @s_ivo_templates, align 8
  %31 = load i64, i64* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @s_graphicsoptions, i32 0, i32 8, i32 0), align 8
  %32 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %30, i64 %31
  store %struct.TYPE_17__* %32, %struct.TYPE_17__** %5, align 8
  %33 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @s_graphicsoptions, i32 0, i32 7, i32 0), align 4
  %36 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %36, i32 0, i32 7
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @s_graphicsoptions, i32 0, i32 6, i32 0), align 8
  %39 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %39, i32 0, i32 6
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @s_graphicsoptions, i32 0, i32 5, i32 0), align 4
  %42 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %42, i32 0, i32 5
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @s_graphicsoptions, i32 0, i32 4, i32 0), align 8
  %45 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @s_graphicsoptions, i32 0, i32 3, i32 0), align 4
  %48 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @s_graphicsoptions, i32 0, i32 2, i32 0), align 8
  %51 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @s_graphicsoptions, i32 0, i32 1, i32 0), align 4
  %54 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @s_graphicsoptions, i32 0, i32 0, i32 0), align 8
  br label %71

57:                                               ; preds = %10
  %58 = call i32 (...) @UI_DriverInfo_Menu()
  br label %71

59:                                               ; preds = %10
  %60 = call i32 (...) @UI_PopMenu()
  br label %71

61:                                               ; preds = %10
  br label %71

62:                                               ; preds = %10
  %63 = call i32 (...) @UI_PopMenu()
  %64 = call i32 (...) @UI_DisplayOptionsMenu()
  br label %71

65:                                               ; preds = %10
  %66 = call i32 (...) @UI_PopMenu()
  %67 = call i32 (...) @UI_SoundOptionsMenu()
  br label %71

68:                                               ; preds = %10
  %69 = call i32 (...) @UI_PopMenu()
  %70 = call i32 (...) @UI_NetworkOptionsMenu()
  br label %71

71:                                               ; preds = %9, %10, %68, %65, %62, %61, %59, %57, %29, %28
  ret void
}

declare dso_local i32 @UI_DriverInfo_Menu(...) #1

declare dso_local i32 @UI_PopMenu(...) #1

declare dso_local i32 @UI_DisplayOptionsMenu(...) #1

declare dso_local i32 @UI_SoundOptionsMenu(...) #1

declare dso_local i32 @UI_NetworkOptionsMenu(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
