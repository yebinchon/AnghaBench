; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/extr_menu_displaylist.c_menu_displaylist_push.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/extr_menu_displaylist.c_menu_displaylist_push.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_13__ = type { i32, i32, i32, i8*, i8*, i32 }
%struct.TYPE_12__ = type { i64 (%struct.TYPE_13__*)* }

@MSG_UNKNOWN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @menu_displaylist_push(%struct.TYPE_14__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca %struct.TYPE_13__, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %3, align 8
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %5, align 8
  store i8* null, i8** %6, align 8
  store i8* null, i8** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %11 = load i32, i32* @MSG_UNKNOWN, align 4
  store i32 %11, i32* %10, align 4
  %12 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %13 = icmp ne %struct.TYPE_14__* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %80

15:                                               ; preds = %1
  %16 = call i32 @menu_displaylist_info_init(%struct.TYPE_13__* %4)
  %17 = call i32 @menu_entries_get_last_stack(i8** %6, i8** %7, i32* %8, i32* %10, i32* null)
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %4, i32 0, i32 2
  store i32 %20, i32* %21, align 8
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %4, i32 0, i32 5
  store i32 %24, i32* %25, align 8
  %26 = load i32, i32* %8, align 4
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %4, i32 0, i32 0
  store i32 %26, i32* %27, align 8
  %28 = load i32, i32* %10, align 4
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %4, i32 0, i32 1
  store i32 %28, i32* %29, align 4
  %30 = load i8*, i8** %6, align 8
  %31 = call i32 @string_is_empty(i8* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %15
  %34 = load i8*, i8** %6, align 8
  %35 = call i8* @strdup(i8* %34)
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %4, i32 0, i32 4
  store i8* %35, i8** %36, align 8
  br label %37

37:                                               ; preds = %33, %15
  %38 = load i8*, i8** %7, align 8
  %39 = call i32 @string_is_empty(i8* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %37
  %42 = load i8*, i8** %7, align 8
  %43 = call i8* @strdup(i8* %42)
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %4, i32 0, i32 3
  store i8* %43, i8** %44, align 8
  br label %45

45:                                               ; preds = %41, %37
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %4, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %45
  br label %78

50:                                               ; preds = %45
  %51 = load i8*, i8** %7, align 8
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %53 = call i64 @menu_displaylist_push_internal(i8* %51, %struct.TYPE_14__* %52, %struct.TYPE_13__* %4)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %50
  %56 = call i32 @menu_displaylist_process(%struct.TYPE_13__* %4)
  store i32 %56, i32* %9, align 4
  br label %75

57:                                               ; preds = %50
  %58 = call %struct.TYPE_12__* (...) @menu_entries_get_last_stack_actiondata()
  store %struct.TYPE_12__* %58, %struct.TYPE_12__** %5, align 8
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %60 = icmp ne %struct.TYPE_12__* %59, null
  br i1 %60, label %61, label %74

61:                                               ; preds = %57
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 0
  %64 = load i64 (%struct.TYPE_13__*)*, i64 (%struct.TYPE_13__*)** %63, align 8
  %65 = icmp ne i64 (%struct.TYPE_13__*)* %64, null
  br i1 %65, label %66, label %74

66:                                               ; preds = %61
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 0
  %69 = load i64 (%struct.TYPE_13__*)*, i64 (%struct.TYPE_13__*)** %68, align 8
  %70 = call i64 %69(%struct.TYPE_13__* %4)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %66
  br label %78

73:                                               ; preds = %66
  br label %74

74:                                               ; preds = %73, %61, %57
  store i32 1, i32* %9, align 4
  br label %75

75:                                               ; preds = %74, %55
  %76 = call i32 @menu_displaylist_info_free(%struct.TYPE_13__* %4)
  %77 = load i32, i32* %9, align 4
  store i32 %77, i32* %2, align 4
  br label %80

78:                                               ; preds = %72, %49
  %79 = call i32 @menu_displaylist_info_free(%struct.TYPE_13__* %4)
  store i32 0, i32* %2, align 4
  br label %80

80:                                               ; preds = %78, %75, %14
  %81 = load i32, i32* %2, align 4
  ret i32 %81
}

declare dso_local i32 @menu_displaylist_info_init(%struct.TYPE_13__*) #1

declare dso_local i32 @menu_entries_get_last_stack(i8**, i8**, i32*, i32*, i32*) #1

declare dso_local i32 @string_is_empty(i8*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i64 @menu_displaylist_push_internal(i8*, %struct.TYPE_14__*, %struct.TYPE_13__*) #1

declare dso_local i32 @menu_displaylist_process(%struct.TYPE_13__*) #1

declare dso_local %struct.TYPE_12__* @menu_entries_get_last_stack_actiondata(...) #1

declare dso_local i32 @menu_displaylist_info_free(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
