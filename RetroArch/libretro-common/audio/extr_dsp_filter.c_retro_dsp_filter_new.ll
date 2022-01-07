; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-common/audio/extr_dsp_filter.c_retro_dsp_filter_new.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-common/audio/extr_dsp_filter.c_retro_dsp_filter_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32* }
%struct.string_list = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_6__* @retro_dsp_filter_new(i8* %0, i8* %1, float %2) #0 {
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca float, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.string_list*, align 8
  %10 = alloca %struct.TYPE_6__*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store float %2, float* %7, align 4
  store i32* null, i32** %8, align 8
  store %struct.string_list* null, %struct.string_list** %9, align 8
  %11 = call i64 @calloc(i32 1, i32 8)
  %12 = inttoptr i64 %11 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %12, %struct.TYPE_6__** %10, align 8
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %14 = icmp ne %struct.TYPE_6__* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %3
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %4, align 8
  br label %53

16:                                               ; preds = %3
  %17 = load i8*, i8** %5, align 8
  %18 = call i32* @config_file_new_from_path_to_string(i8* %17)
  store i32* %18, i32** %8, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %16
  br label %44

21:                                               ; preds = %16
  %22 = load i32*, i32** %8, align 8
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  store i32* %22, i32** %24, align 8
  %25 = load i8*, i8** %6, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %21
  %28 = load i8*, i8** %6, align 8
  %29 = bitcast i8* %28 to %struct.string_list*
  store %struct.string_list* %29, %struct.string_list** %9, align 8
  br label %30

30:                                               ; preds = %27, %21
  %31 = load %struct.string_list*, %struct.string_list** %9, align 8
  %32 = icmp ne %struct.string_list* %31, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %30
  %34 = load %struct.string_list*, %struct.string_list** %9, align 8
  %35 = call i32 @string_list_free(%struct.string_list* %34)
  br label %36

36:                                               ; preds = %33, %30
  store %struct.string_list* null, %struct.string_list** %9, align 8
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %38 = load float, float* %7, align 4
  %39 = call i32 @create_filter_graph(%struct.TYPE_6__* %37, float %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %36
  br label %44

42:                                               ; preds = %36
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  store %struct.TYPE_6__* %43, %struct.TYPE_6__** %4, align 8
  br label %53

44:                                               ; preds = %41, %20
  %45 = load %struct.string_list*, %struct.string_list** %9, align 8
  %46 = icmp ne %struct.string_list* %45, null
  br i1 %46, label %47, label %50

47:                                               ; preds = %44
  %48 = load %struct.string_list*, %struct.string_list** %9, align 8
  %49 = call i32 @string_list_free(%struct.string_list* %48)
  br label %50

50:                                               ; preds = %47, %44
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %52 = call i32 @retro_dsp_filter_free(%struct.TYPE_6__* %51)
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %4, align 8
  br label %53

53:                                               ; preds = %50, %42, %15
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  ret %struct.TYPE_6__* %54
}

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32* @config_file_new_from_path_to_string(i8*) #1

declare dso_local i32 @string_list_free(%struct.string_list*) #1

declare dso_local i32 @create_filter_graph(%struct.TYPE_6__*, float) #1

declare dso_local i32 @retro_dsp_filter_free(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
