; ModuleID = '/home/carl/AnghaBench/HandBrake/gtk/src/extr_presets.c_ghb_select_default_preset.c'
source_filename = "/home/carl/AnghaBench/HandBrake/gtk/src/extr_presets.c_ghb_select_default_preset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64 }

@.str = private unnamed_addr constant [13 x i8] c"Fast 1080p30\00", align 1
@HB_PRESET_TYPE_ALL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ghb_select_default_preset(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca [2 x i32], align 4
  store i32* %0, i32** %2, align 8
  %5 = call %struct.TYPE_7__* (...) @hb_presets_get_default_index()
  store %struct.TYPE_7__* %5, %struct.TYPE_7__** %3, align 8
  %6 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %7 = icmp eq %struct.TYPE_7__* %6, null
  br i1 %7, label %13, label %8

8:                                                ; preds = %1
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %8, %1
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %15 = call i32 @g_free(%struct.TYPE_7__* %14)
  %16 = load i32, i32* @HB_PRESET_TYPE_ALL, align 4
  %17 = call %struct.TYPE_7__* @hb_preset_search_index(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 1, i32 %16)
  store %struct.TYPE_7__* %17, %struct.TYPE_7__** %3, align 8
  br label %18

18:                                               ; preds = %13, %8
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %20 = icmp eq %struct.TYPE_7__* %19, null
  br i1 %20, label %26, label %21

21:                                               ; preds = %18
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %21, %18
  %27 = bitcast [2 x i32]* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %27, i8 0, i64 8, i1 false)
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %29 = call i32 @g_free(%struct.TYPE_7__* %28)
  %30 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %31 = call %struct.TYPE_7__* @hb_preset_index_init(i32* %30, i32 2)
  store %struct.TYPE_7__* %31, %struct.TYPE_7__** %3, align 8
  br label %32

32:                                               ; preds = %26, %21
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %34 = icmp ne %struct.TYPE_7__* %33, null
  br i1 %34, label %35, label %41

35:                                               ; preds = %32
  %36 = load i32*, i32** %2, align 8
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %38 = call i32 @select_preset2(i32* %36, %struct.TYPE_7__* %37)
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %40 = call i32 @g_free(%struct.TYPE_7__* %39)
  br label %41

41:                                               ; preds = %35, %32
  ret void
}

declare dso_local %struct.TYPE_7__* @hb_presets_get_default_index(...) #1

declare dso_local i32 @g_free(%struct.TYPE_7__*) #1

declare dso_local %struct.TYPE_7__* @hb_preset_search_index(i8*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local %struct.TYPE_7__* @hb_preset_index_init(i32*, i32) #1

declare dso_local i32 @select_preset2(i32*, %struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
