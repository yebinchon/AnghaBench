; ModuleID = '/home/carl/AnghaBench/RetroArch/griffin/extr_..managerscheat_manager.c_cheat_manager_load.c'
source_filename = "/home/carl/AnghaBench/RetroArch/griffin/extr_..managerscheat_manager.c_cheat_manager_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32*, i32* }
%struct.TYPE_6__ = type { i32 }

@cheat_manager_load_cb_first_pass = common dso_local global i32 0, align 4
@cheat_manager_state = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@CHEAT_HANDLER_TYPE_EMU = common dso_local global i32 0, align 4
@CHEAT_TYPE_SET_TO_VALUE = common dso_local global i32 0, align 4
@cheat_manager_load_cb_second_pass = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cheat_manager_load(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32* null, i32** %10, align 8
  %11 = load i32, i32* @cheat_manager_load_cb_first_pass, align 4
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  store i32 %11, i32* %12, align 4
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @cheat_manager_state, i32 0, i32 0), align 8
  %13 = load i8*, i8** %4, align 8
  %14 = call i32* @config_file_new_with_callback(i8* %13, %struct.TYPE_6__* %6)
  store i32* %14, i32** %10, align 8
  %15 = load i32*, i32** %10, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %117

18:                                               ; preds = %2
  %19 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @cheat_manager_state, i32 0, i32 0), align 8
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  br label %114

23:                                               ; preds = %18
  %24 = load i32*, i32** %10, align 8
  %25 = call i32 @config_file_free(i32* %24)
  store i32* null, i32** %10, align 8
  %26 = call i32 (...) @cheat_manager_alloc_if_empty()
  %27 = load i32, i32* %5, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %47

29:                                               ; preds = %23
  %30 = call i32 (...) @cheat_manager_get_size()
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %29
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @cheat_manager_new(i32 %34)
  br label %46

36:                                               ; preds = %29
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* %7, align 4
  %39 = add i32 %37, %38
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* @CHEAT_HANDLER_TYPE_EMU, align 4
  %42 = call i64 @cheat_manager_realloc(i32 %40, i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %36
  br label %45

45:                                               ; preds = %44, %36
  br label %46

46:                                               ; preds = %45, %33
  br label %50

47:                                               ; preds = %23
  store i32 0, i32* %7, align 4
  %48 = load i32, i32* %8, align 4
  %49 = call i32 @cheat_manager_new(i32 %48)
  br label %50

50:                                               ; preds = %47, %46
  %51 = load i32, i32* %7, align 4
  store i32 %51, i32* %9, align 4
  br label %52

52:                                               ; preds = %99, %50
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @cheat_manager_state, i32 0, i32 2), align 8
  %54 = icmp ne %struct.TYPE_5__* %53, null
  br i1 %54, label %55, label %59

55:                                               ; preds = %52
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* %8, align 4
  %58 = icmp ult i32 %56, %57
  br label %59

59:                                               ; preds = %55, %52
  %60 = phi i1 [ false, %52 ], [ %58, %55 ]
  br i1 %60, label %61, label %102

61:                                               ; preds = %59
  %62 = load i32, i32* %9, align 4
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @cheat_manager_state, i32 0, i32 2), align 8
  %64 = load i32, i32* %9, align 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  store i32 %62, i32* %67, align 8
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @cheat_manager_state, i32 0, i32 2), align 8
  %69 = load i32, i32* %9, align 4
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 6
  store i32* null, i32** %72, align 8
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @cheat_manager_state, i32 0, i32 2), align 8
  %74 = load i32, i32* %9, align 4
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 5
  store i32* null, i32** %77, align 8
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @cheat_manager_state, i32 0, i32 2), align 8
  %79 = load i32, i32* %9, align 4
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 1
  store i32 0, i32* %82, align 4
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @cheat_manager_state, i32 0, i32 2), align 8
  %84 = load i32, i32* %9, align 4
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 2
  store i32 0, i32* %87, align 8
  %88 = load i32, i32* @CHEAT_TYPE_SET_TO_VALUE, align 4
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @cheat_manager_state, i32 0, i32 2), align 8
  %90 = load i32, i32* %9, align 4
  %91 = zext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 4
  store i32 %88, i32* %93, align 8
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @cheat_manager_state, i32 0, i32 2), align 8
  %95 = load i32, i32* %9, align 4
  %96 = zext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 3
  store i32 3, i32* %98, align 4
  br label %99

99:                                               ; preds = %61
  %100 = load i32, i32* %9, align 4
  %101 = add i32 %100, 1
  store i32 %101, i32* %9, align 4
  br label %52

102:                                              ; preds = %59
  %103 = load i32, i32* %7, align 4
  store i32 %103, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @cheat_manager_state, i32 0, i32 1), align 4
  %104 = load i32, i32* @cheat_manager_load_cb_second_pass, align 4
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  store i32 %104, i32* %105, align 4
  %106 = load i8*, i8** %4, align 8
  %107 = call i32* @config_file_new_with_callback(i8* %106, %struct.TYPE_6__* %6)
  store i32* %107, i32** %10, align 8
  %108 = load i32*, i32** %10, align 8
  %109 = icmp ne i32* %108, null
  br i1 %109, label %111, label %110

110:                                              ; preds = %102
  store i32 0, i32* %3, align 4
  br label %117

111:                                              ; preds = %102
  %112 = load i32*, i32** %10, align 8
  %113 = call i32 @config_file_free(i32* %112)
  store i32 1, i32* %3, align 4
  br label %117

114:                                              ; preds = %22
  %115 = load i32*, i32** %10, align 8
  %116 = call i32 @config_file_free(i32* %115)
  store i32 0, i32* %3, align 4
  br label %117

117:                                              ; preds = %114, %111, %110, %17
  %118 = load i32, i32* %3, align 4
  ret i32 %118
}

declare dso_local i32* @config_file_new_with_callback(i8*, %struct.TYPE_6__*) #1

declare dso_local i32 @config_file_free(i32*) #1

declare dso_local i32 @cheat_manager_alloc_if_empty(...) #1

declare dso_local i32 @cheat_manager_get_size(...) #1

declare dso_local i32 @cheat_manager_new(i32) #1

declare dso_local i64 @cheat_manager_realloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
