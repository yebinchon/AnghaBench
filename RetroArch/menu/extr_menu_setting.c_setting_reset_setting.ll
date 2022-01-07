; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/extr_menu_setting.c_setting_reset_setting.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/extr_menu_setting.c_setting_reset_setting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 (%struct.TYPE_12__*)*, i32, %struct.TYPE_11__, %struct.TYPE_10__ }
%struct.TYPE_11__ = type { i32, i32*, i32, i32, i32, i32, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32*, i32*, i32*, i32*, i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_12__*)* @setting_reset_setting to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setting_reset_setting(%struct.TYPE_12__* %0) #0 {
  %2 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %2, align 8
  %3 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %4 = icmp ne %struct.TYPE_12__* %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %115

6:                                                ; preds = %1
  %7 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %8 = call i32 @setting_get_type(%struct.TYPE_12__* %7)
  switch i32 %8, label %103 [
    i32 136, label %9
    i32 133, label %19
    i32 128, label %29
    i32 131, label %39
    i32 134, label %49
    i32 137, label %59
    i32 130, label %70
    i32 129, label %70
    i32 132, label %70
    i32 135, label %70
  ]

9:                                                ; preds = %6
  %10 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 6
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 3
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 6
  %18 = load i32*, i32** %17, align 8
  store i32 %13, i32* %18, align 4
  br label %104

19:                                               ; preds = %6
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 5
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 3
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 5
  %28 = load i32*, i32** %27, align 8
  store i32 %23, i32* %28, align 4
  br label %104

29:                                               ; preds = %6
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 3
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 4
  %38 = load i32*, i32** %37, align 8
  store i32 %33, i32* %38, align 4
  br label %104

39:                                               ; preds = %6
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 3
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 3
  %48 = load i32*, i32** %47, align 8
  store i32 %43, i32* %48, align 4
  br label %104

49:                                               ; preds = %6
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 3
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 2
  %58 = load i32*, i32** %57, align 8
  store i32 %53, i32* %58, align 4
  br label %104

59:                                               ; preds = %6
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 3
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 1
  %69 = load i32*, i32** %68, align 8
  store i32 %64, i32* %69, align 4
  br label %104

70:                                               ; preds = %6, %6, %6, %6
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %102

76:                                               ; preds = %70
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %78 = call i32 @setting_get_type(%struct.TYPE_12__* %77)
  %79 = icmp eq i32 %78, 130
  br i1 %79, label %80, label %87

80:                                               ; preds = %76
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @setting_set_with_string_representation(%struct.TYPE_12__* %81, i32 %85)
  br label %101

87:                                               ; preds = %76
  %88 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 3
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %94 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %93, i32 0, i32 2
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @fill_pathname_expand_special(i32 %92, i32 %96, i32 %99)
  br label %101

101:                                              ; preds = %87, %80
  br label %102

102:                                              ; preds = %101, %70
  br label %104

103:                                              ; preds = %6
  br label %104

104:                                              ; preds = %103, %102, %59, %49, %39, %29, %19, %9
  %105 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %106 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %105, i32 0, i32 0
  %107 = load i32 (%struct.TYPE_12__*)*, i32 (%struct.TYPE_12__*)** %106, align 8
  %108 = icmp ne i32 (%struct.TYPE_12__*)* %107, null
  br i1 %108, label %109, label %115

109:                                              ; preds = %104
  %110 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %111 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %110, i32 0, i32 0
  %112 = load i32 (%struct.TYPE_12__*)*, i32 (%struct.TYPE_12__*)** %111, align 8
  %113 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %114 = call i32 %112(%struct.TYPE_12__* %113)
  br label %115

115:                                              ; preds = %5, %109, %104
  ret void
}

declare dso_local i32 @setting_get_type(%struct.TYPE_12__*) #1

declare dso_local i32 @setting_set_with_string_representation(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @fill_pathname_expand_special(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
