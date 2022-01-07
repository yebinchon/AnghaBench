; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_preset.c_find_audio_track.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_preset.c_find_audio_track.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32 }

@HB_AUDIO_ATTR_NONE = common dso_local global i32 0, align 4
@HB_AUDIO_ATTR_REGULAR_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, i8*, i32, i32)* @find_audio_track to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_audio_track(%struct.TYPE_10__* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = call %struct.TYPE_9__* (...) @lang_get_any()
  store %struct.TYPE_9__* %14, %struct.TYPE_9__** %13, align 8
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @hb_list_count(i32 %17)
  store i32 %18, i32* %12, align 4
  %19 = load i32, i32* %8, align 4
  store i32 %19, i32* %11, align 4
  br label %20

20:                                               ; preds = %65, %4
  %21 = load i32, i32* %11, align 4
  %22 = load i32, i32* %12, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %68

24:                                               ; preds = %20
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %11, align 4
  %29 = call %struct.TYPE_11__* @hb_list_audio_config_item(i32 %27, i32 %28)
  store %struct.TYPE_11__* %29, %struct.TYPE_11__** %10, align 8
  %30 = load i32, i32* %9, align 4
  %31 = icmp eq i32 %30, 2
  br i1 %31, label %47, label %32

32:                                               ; preds = %24
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @HB_AUDIO_ATTR_NONE, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %47, label %39

39:                                               ; preds = %32
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @HB_AUDIO_ATTR_REGULAR_MASK, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %64

47:                                               ; preds = %39, %32, %24
  %48 = load i8*, i8** %7, align 8
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @strcmp(i8* %48, i32 %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %47
  %56 = load i8*, i8** %7, align 8
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @strcmp(i8* %56, i32 %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %64, label %62

62:                                               ; preds = %55, %47
  %63 = load i32, i32* %11, align 4
  store i32 %63, i32* %5, align 4
  br label %69

64:                                               ; preds = %55, %39
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %11, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %11, align 4
  br label %20

68:                                               ; preds = %20
  store i32 -1, i32* %5, align 4
  br label %69

69:                                               ; preds = %68, %62
  %70 = load i32, i32* %5, align 4
  ret i32 %70
}

declare dso_local %struct.TYPE_9__* @lang_get_any(...) #1

declare dso_local i32 @hb_list_count(i32) #1

declare dso_local %struct.TYPE_11__* @hb_list_audio_config_item(i32, i32) #1

declare dso_local i32 @strcmp(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
