; ModuleID = '/home/carl/AnghaBench/HandBrake/gtk/src/extr_hb-backend.c_ghb_subtitle_track_source.c'
source_filename = "/home/carl/AnghaBench/HandBrake/gtk/src/extr_hb-backend.c_ghb_subtitle_track_source.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@IMPORTSRT = common dso_local global i32 0, align 4
@VOBSUB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"title\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ghb_subtitle_track_source(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca %struct.TYPE_6__*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp eq i32 %10, -2
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* @IMPORTSRT, align 4
  store i32 %13, i32* %3, align 4
  br label %42

14:                                               ; preds = %2
  %15 = load i32, i32* %5, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %14
  %18 = load i32, i32* @VOBSUB, align 4
  store i32 %18, i32* %3, align 4
  br label %42

19:                                               ; preds = %14
  %20 = load i32*, i32** %4, align 8
  %21 = call i32 @ghb_dict_get_int(i32* %20, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = call %struct.TYPE_5__* @ghb_lookup_title(i32 %22, i32* %7)
  store %struct.TYPE_5__* %23, %struct.TYPE_5__** %8, align 8
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %25 = icmp eq %struct.TYPE_5__* %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %19
  %27 = load i32, i32* @VOBSUB, align 4
  store i32 %27, i32* %3, align 4
  br label %42

28:                                               ; preds = %19
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %5, align 4
  %33 = call %struct.TYPE_6__* @hb_list_item(i32 %31, i32 %32)
  store %struct.TYPE_6__* %33, %struct.TYPE_6__** %9, align 8
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %35 = icmp ne %struct.TYPE_6__* %34, null
  br i1 %35, label %36, label %40

36:                                               ; preds = %28
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %3, align 4
  br label %42

40:                                               ; preds = %28
  %41 = load i32, i32* @VOBSUB, align 4
  store i32 %41, i32* %3, align 4
  br label %42

42:                                               ; preds = %40, %36, %26, %17, %12
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i32 @ghb_dict_get_int(i32*, i8*) #1

declare dso_local %struct.TYPE_5__* @ghb_lookup_title(i32, i32*) #1

declare dso_local %struct.TYPE_6__* @hb_list_item(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
