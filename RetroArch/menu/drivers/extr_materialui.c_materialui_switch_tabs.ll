; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/drivers/extr_materialui.c_materialui_switch_tabs.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/drivers/extr_materialui.c_materialui_switch_tabs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32, %struct.TYPE_11__*, i64 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32 (i32*, i32*, i8*, i8*, i32)* }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, %struct.TYPE_11__*, i32)* @materialui_switch_tabs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @materialui_switch_tabs(%struct.TYPE_12__* %0, %struct.TYPE_11__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_10__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %5, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %6, align 8
  store i32 %2, i32* %7, align 4
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  store %struct.TYPE_11__* %16, %struct.TYPE_11__** %8, align 8
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  store i32 0, i32* %19, align 8
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 0
  store i32 0, i32* %21, align 8
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %23 = icmp ne %struct.TYPE_11__* %22, null
  br i1 %23, label %72, label %24

24:                                               ; preds = %3
  store i32 0, i32* %9, align 4
  %25 = load i32, i32* %7, align 4
  switch i32 %25, label %63 [
    i32 129, label %26
    i32 128, label %45
  ]

26:                                               ; preds = %24
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 3
  %30 = load i64, i64* %29, align 8
  %31 = trunc i64 %30 to i32
  %32 = sub nsw i32 %31, 1
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %9, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %26
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = sub nsw i32 %39, 1
  store i32 %40, i32* %9, align 4
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 0
  store i32 1, i32* %43, align 8
  br label %44

44:                                               ; preds = %35, %26
  br label %64

45:                                               ; preds = %24
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 3
  %49 = load i64, i64* %48, align 8
  %50 = trunc i64 %49 to i32
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %9, align 4
  %52 = load i32, i32* %9, align 4
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = icmp sge i32 %52, %56
  br i1 %57, label %58, label %62

58:                                               ; preds = %45
  store i32 0, i32* %9, align 4
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 0
  store i32 1, i32* %61, align 8
  br label %62

62:                                               ; preds = %58, %45
  br label %64

63:                                               ; preds = %24
  store i32 -1, i32* %4, align 4
  br label %121

64:                                               ; preds = %62, %44
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 2
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %67, align 8
  %69 = load i32, i32* %9, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i64 %70
  store %struct.TYPE_11__* %71, %struct.TYPE_11__** %8, align 8
  br label %72

72:                                               ; preds = %64, %3
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %120, label %77

77:                                               ; preds = %72
  %78 = call i32* @menu_entries_get_selection_buf_ptr(i32 0)
  store i32* %78, i32** %10, align 8
  %79 = call i32* @menu_entries_get_menu_stack_ptr(i32 0)
  store i32* %79, i32** %11, align 8
  %80 = call i64 (...) @menu_navigation_get_selection()
  store i64 %80, i64* %12, align 8
  %81 = load i32*, i32** %10, align 8
  %82 = icmp ne i32* %81, null
  br i1 %82, label %83, label %88

83:                                               ; preds = %77
  %84 = load i32*, i32** %10, align 8
  %85 = load i64, i64* %12, align 8
  %86 = call i64 @file_list_get_actiondata_at_offset(i32* %84, i64 %85)
  %87 = inttoptr i64 %86 to %struct.TYPE_10__*
  br label %89

88:                                               ; preds = %77
  br label %89

89:                                               ; preds = %88, %83
  %90 = phi %struct.TYPE_10__* [ %87, %83 ], [ null, %88 ]
  store %struct.TYPE_10__* %90, %struct.TYPE_10__** %13, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %91 = load i32*, i32** %10, align 8
  %92 = icmp ne i32* %91, null
  br i1 %92, label %93, label %99

93:                                               ; preds = %89
  %94 = load i32*, i32** %11, align 8
  %95 = icmp ne i32* %94, null
  br i1 %95, label %96, label %99

96:                                               ; preds = %93
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %98 = icmp ne %struct.TYPE_10__* %97, null
  br i1 %98, label %100, label %99

99:                                               ; preds = %96, %93, %89
  store i32 -1, i32* %4, align 4
  br label %121

100:                                              ; preds = %96
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 0
  %103 = load i32 (i32*, i32*, i8*, i8*, i32)*, i32 (i32*, i32*, i8*, i8*, i32)** %102, align 8
  %104 = icmp ne i32 (i32*, i32*, i8*, i8*, i32)* %103, null
  br i1 %104, label %106, label %105

105:                                              ; preds = %100
  store i32 -1, i32* %4, align 4
  br label %121

106:                                              ; preds = %100
  %107 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %108 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %109 = call i32 @materialui_preswitch_tabs(%struct.TYPE_12__* %107, %struct.TYPE_11__* %108)
  store i32 %109, i32* %14, align 4
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 0
  %112 = load i32 (i32*, i32*, i8*, i8*, i32)*, i32 (i32*, i32*, i8*, i8*, i32)** %111, align 8
  %113 = load i32*, i32** %10, align 8
  %114 = load i32*, i32** %11, align 8
  %115 = call i32 %112(i32* %113, i32* %114, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 0)
  store i32 %115, i32* %15, align 4
  %116 = load i32, i32* %14, align 4
  %117 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %118 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %117, i32 0, i32 0
  store i32 %116, i32* %118, align 8
  %119 = load i32, i32* %15, align 4
  store i32 %119, i32* %4, align 4
  br label %121

120:                                              ; preds = %72
  store i32 0, i32* %4, align 4
  br label %121

121:                                              ; preds = %120, %106, %105, %99, %63
  %122 = load i32, i32* %4, align 4
  ret i32 %122
}

declare dso_local i32* @menu_entries_get_selection_buf_ptr(i32) #1

declare dso_local i32* @menu_entries_get_menu_stack_ptr(i32) #1

declare dso_local i64 @menu_navigation_get_selection(...) #1

declare dso_local i64 @file_list_get_actiondata_at_offset(i32*, i64) #1

declare dso_local i32 @materialui_preswitch_tabs(%struct.TYPE_12__*, %struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
