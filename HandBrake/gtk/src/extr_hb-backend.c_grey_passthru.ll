; ModuleID = '/home/carl/AnghaBench/HandBrake/gtk/src/extr_hb-backend.c_grey_passthru.c'
source_filename = "/home/carl/AnghaBench/HandBrake/gtk/src/extr_hb-backend.c_grey_passthru.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_11__ = type { i32 }

@HB_ACODEC_PASS_FLAG = common dso_local global i32 0, align 4
@HB_ACODEC_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"AudioEncoder\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*, %struct.TYPE_12__*)* @grey_passthru to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @grey_passthru(%struct.TYPE_10__* %0, %struct.TYPE_12__* %1) #0 {
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %4, align 8
  %6 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %7 = icmp eq %struct.TYPE_12__* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  br label %48

9:                                                ; preds = %2
  %10 = call %struct.TYPE_11__* @hb_audio_encoder_get_next(%struct.TYPE_11__* null)
  store %struct.TYPE_11__* %10, %struct.TYPE_11__** %5, align 8
  br label %11

11:                                               ; preds = %45, %9
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %13 = icmp ne %struct.TYPE_11__* %12, null
  br i1 %13, label %14, label %48

14:                                               ; preds = %11
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @HB_ACODEC_PASS_FLAG, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %14
  br label %45

22:                                               ; preds = %14
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @HB_ACODEC_MASK, align 4
  %27 = and i32 %25, %26
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @HB_ACODEC_MASK, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %27, %33
  br i1 %34, label %35, label %44

35:                                               ; preds = %22
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @TRUE, align 4
  %43 = call i32 @grey_builder_combo_box_item(i32 %38, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %41, i32 %42)
  br label %44

44:                                               ; preds = %35, %22
  br label %45

45:                                               ; preds = %44, %21
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %47 = call %struct.TYPE_11__* @hb_audio_encoder_get_next(%struct.TYPE_11__* %46)
  store %struct.TYPE_11__* %47, %struct.TYPE_11__** %5, align 8
  br label %11

48:                                               ; preds = %8, %11
  ret void
}

declare dso_local %struct.TYPE_11__* @hb_audio_encoder_get_next(%struct.TYPE_11__*) #1

declare dso_local i32 @grey_builder_combo_box_item(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
