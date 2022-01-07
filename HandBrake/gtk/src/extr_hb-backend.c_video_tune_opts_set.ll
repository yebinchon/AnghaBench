; ModuleID = '/home/carl/AnghaBench/HandBrake/gtk/src/extr_hb-backend.c_video_tune_opts_set.c'
source_filename = "/home/carl/AnghaBench/HandBrake/gtk/src/extr_hb-backend.c_video_tune_opts_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [13 x i8] c"VideoEncoder\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"VideoTune\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"VideoTuneLabel\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"None\00", align 1
@TRUE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@HB_VCODEC_X264_MASK = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [11 x i8] c"fastdecode\00", align 1
@HB_VCODEC_X265_MASK = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [12 x i8] c"zerolatency\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i8*, i8*, i8*)* @video_tune_opts_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @video_tune_opts_set(%struct.TYPE_3__* %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8**, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = load i8*, i8** %8, align 8
  store i64 0, i64* %12, align 8
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32* @ghb_dict_get(i32 %22, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  store i32* %23, i32** %13, align 8
  %24 = load i32*, i32** %13, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %4
  br label %138

27:                                               ; preds = %4
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @ghb_get_video_encoder(i32 %30)
  store i32 %31, i32* %14, align 4
  %32 = load i32, i32* %14, align 4
  %33 = call i8** @hb_video_encoder_get_tunes(i32 %32)
  store i8** %33, i8*** %15, align 8
  br label %34

34:                                               ; preds = %45, %27
  %35 = load i8**, i8*** %15, align 8
  %36 = icmp ne i8** %35, null
  br i1 %36, label %37, label %43

37:                                               ; preds = %34
  %38 = load i8**, i8*** %15, align 8
  %39 = load i64, i64* %12, align 8
  %40 = getelementptr inbounds i8*, i8** %38, i64 %39
  %41 = load i8*, i8** %40, align 8
  %42 = icmp ne i8* %41, null
  br label %43

43:                                               ; preds = %37, %34
  %44 = phi i1 [ false, %34 ], [ %42, %37 ]
  br i1 %44, label %45, label %48

45:                                               ; preds = %43
  %46 = load i64, i64* %12, align 8
  %47 = add i64 %46, 1
  store i64 %47, i64* %12, align 8
  br label %34

48:                                               ; preds = %43
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32* @GHB_WIDGET(i32 %51, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  store i32* %52, i32** %16, align 8
  %53 = load i32*, i32** %16, align 8
  %54 = load i64, i64* %12, align 8
  %55 = icmp ugt i64 %54, 0
  %56 = zext i1 %55 to i32
  %57 = call i32 @gtk_widget_set_visible(i32* %53, i32 %56)
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32* @GHB_WIDGET(i32 %60, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  store i32* %61, i32** %16, align 8
  %62 = load i32*, i32** %16, align 8
  %63 = load i64, i64* %12, align 8
  %64 = icmp ugt i64 %63, 0
  %65 = zext i1 %64 to i32
  %66 = call i32 @gtk_widget_set_visible(i32* %62, i32 %65)
  %67 = load i64, i64* %12, align 8
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %48
  br label %138

70:                                               ; preds = %48
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i8*, i8** %6, align 8
  %75 = call i32* @GHB_WIDGET(i32 %73, i8* %74)
  %76 = call i32* @GTK_COMBO_BOX(i32* %75)
  store i32* %76, i32** %17, align 8
  %77 = load i32*, i32** %17, align 8
  %78 = call i32 @gtk_combo_box_get_model(i32* %77)
  %79 = call i32* @GTK_LIST_STORE(i32 %78)
  store i32* %79, i32** %10, align 8
  %80 = load i32*, i32** %10, align 8
  %81 = call i32 @gtk_list_store_clear(i32* %80)
  %82 = load i32*, i32** %10, align 8
  %83 = call i32 @gtk_list_store_append(i32* %82, i32* %9)
  %84 = load i32*, i32** %10, align 8
  %85 = call i8* @_(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %86 = load i32, i32* @TRUE, align 4
  %87 = call i32 @gtk_list_store_set(i32* %84, i32* %9, i32 0, i8* %85, i32 1, i32 %86, i32 2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 3, i64 0, i32 -1)
  store i64 0, i64* %11, align 8
  br label %88

88:                                               ; preds = %135, %70
  %89 = load i64, i64* %11, align 8
  %90 = load i64, i64* %12, align 8
  %91 = icmp ult i64 %89, %90
  br i1 %91, label %92, label %138

92:                                               ; preds = %88
  %93 = load i32, i32* %14, align 4
  %94 = load i32, i32* @HB_VCODEC_X264_MASK, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %104

97:                                               ; preds = %92
  %98 = load i8**, i8*** %15, align 8
  %99 = load i64, i64* %11, align 8
  %100 = getelementptr inbounds i8*, i8** %98, i64 %99
  %101 = load i8*, i8** %100, align 8
  %102 = call i32 @strcmp(i8* %101, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0))
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %118

104:                                              ; preds = %97, %92
  %105 = load i32, i32* %14, align 4
  %106 = load i32, i32* @HB_VCODEC_X264_MASK, align 4
  %107 = load i32, i32* @HB_VCODEC_X265_MASK, align 4
  %108 = or i32 %106, %107
  %109 = and i32 %105, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %119

111:                                              ; preds = %104
  %112 = load i8**, i8*** %15, align 8
  %113 = load i64, i64* %11, align 8
  %114 = getelementptr inbounds i8*, i8** %112, i64 %113
  %115 = load i8*, i8** %114, align 8
  %116 = call i32 @strcmp(i8* %115, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0))
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %119, label %118

118:                                              ; preds = %111, %97
  br label %135

119:                                              ; preds = %111, %104
  %120 = load i32*, i32** %10, align 8
  %121 = call i32 @gtk_list_store_append(i32* %120, i32* %9)
  %122 = load i32*, i32** %10, align 8
  %123 = load i8**, i8*** %15, align 8
  %124 = load i64, i64* %11, align 8
  %125 = getelementptr inbounds i8*, i8** %123, i64 %124
  %126 = load i8*, i8** %125, align 8
  %127 = load i32, i32* @TRUE, align 4
  %128 = load i8**, i8*** %15, align 8
  %129 = load i64, i64* %11, align 8
  %130 = getelementptr inbounds i8*, i8** %128, i64 %129
  %131 = load i8*, i8** %130, align 8
  %132 = load i64, i64* %11, align 8
  %133 = add nsw i64 %132, 1
  %134 = call i32 @gtk_list_store_set(i32* %122, i32* %9, i32 0, i8* %126, i32 1, i32 %127, i32 2, i8* %131, i32 3, i64 %133, i32 -1)
  br label %135

135:                                              ; preds = %119, %118
  %136 = load i64, i64* %11, align 8
  %137 = add i64 %136, 1
  store i64 %137, i64* %11, align 8
  br label %88

138:                                              ; preds = %26, %69, %88
  ret void
}

declare dso_local i32* @ghb_dict_get(i32, i8*) #1

declare dso_local i32 @ghb_get_video_encoder(i32) #1

declare dso_local i8** @hb_video_encoder_get_tunes(i32) #1

declare dso_local i32* @GHB_WIDGET(i32, i8*) #1

declare dso_local i32 @gtk_widget_set_visible(i32*, i32) #1

declare dso_local i32* @GTK_COMBO_BOX(i32*) #1

declare dso_local i32* @GTK_LIST_STORE(i32) #1

declare dso_local i32 @gtk_combo_box_get_model(i32*) #1

declare dso_local i32 @gtk_list_store_clear(i32*) #1

declare dso_local i32 @gtk_list_store_append(i32*, i32*) #1

declare dso_local i32 @gtk_list_store_set(i32*, i32*, i32, i8*, i32, i32, i32, i8*, i32, i64, i32) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
