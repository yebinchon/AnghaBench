; ModuleID = '/home/carl/AnghaBench/HandBrake/gtk/src/extr_hb-backend.c_ghb_audio_samplerate_opts_set.c'
source_filename = "/home/carl/AnghaBench/HandBrake/gtk/src/extr_hb-backend.c_ghb_audio_samplerate_opts_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i64 }

@.str = private unnamed_addr constant [18 x i8] c"<small>%s</small>\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"Same as source\00", align 1
@TRUE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"auto\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ghb_audio_samplerate_opts_set(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  store i32* %0, i32** %2, align 8
  %7 = load i32*, i32** %2, align 8
  %8 = call i32 @gtk_combo_box_get_model(i32* %7)
  %9 = call i32* @GTK_LIST_STORE(i32 %8)
  store i32* %9, i32** %4, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = call i32 @gtk_list_store_clear(i32* %10)
  %12 = load i32*, i32** %4, align 8
  %13 = call i32 @gtk_list_store_append(i32* %12, i32* %3)
  %14 = call i8* @_(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %15 = call i32* @g_strdup_printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* %14)
  store i32* %15, i32** %5, align 8
  %16 = load i32*, i32** %4, align 8
  %17 = load i32*, i32** %5, align 8
  %18 = load i32, i32* @TRUE, align 4
  %19 = call i32 @gtk_list_store_set(i32* %16, i32* %3, i32 0, i32* %17, i32 1, i32 %18, i32 2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 3, double 0.000000e+00, i32 -1)
  %20 = load i32*, i32** %5, align 8
  %21 = call i32 @g_free(i32* %20)
  %22 = call %struct.TYPE_4__* @hb_audio_samplerate_get_next(%struct.TYPE_4__* null)
  store %struct.TYPE_4__* %22, %struct.TYPE_4__** %6, align 8
  br label %23

23:                                               ; preds = %46, %1
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %25 = icmp ne %struct.TYPE_4__* %24, null
  br i1 %25, label %26, label %49

26:                                               ; preds = %23
  %27 = load i32*, i32** %4, align 8
  %28 = call i32 @gtk_list_store_append(i32* %27, i32* %3)
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = call i32* @g_strdup_printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* %31)
  store i32* %32, i32** %5, align 8
  %33 = load i32*, i32** %4, align 8
  %34 = load i32*, i32** %5, align 8
  %35 = load i32, i32* @TRUE, align 4
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = sitofp i64 %41 to double
  %43 = call i32 @gtk_list_store_set(i32* %33, i32* %3, i32 0, i32* %34, i32 1, i32 %35, i32 2, i8* %38, i32 3, double %42, i32 -1)
  %44 = load i32*, i32** %5, align 8
  %45 = call i32 @g_free(i32* %44)
  br label %46

46:                                               ; preds = %26
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %48 = call %struct.TYPE_4__* @hb_audio_samplerate_get_next(%struct.TYPE_4__* %47)
  store %struct.TYPE_4__* %48, %struct.TYPE_4__** %6, align 8
  br label %23

49:                                               ; preds = %23
  ret void
}

declare dso_local i32* @GTK_LIST_STORE(i32) #1

declare dso_local i32 @gtk_combo_box_get_model(i32*) #1

declare dso_local i32 @gtk_list_store_clear(i32*) #1

declare dso_local i32 @gtk_list_store_append(i32*, i32*) #1

declare dso_local i32* @g_strdup_printf(i8*, i8*) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i32 @gtk_list_store_set(i32*, i32*, i32, i32*, i32, i32, i32, i8*, i32, double, i32) #1

declare dso_local i32 @g_free(i32*) #1

declare dso_local %struct.TYPE_4__* @hb_audio_samplerate_get_next(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
