; ModuleID = '/home/carl/AnghaBench/HandBrake/gtk/src/extr_hb-backend.c_ghb_picture_settings_deps.c'
source_filename = "/home/carl/AnghaBench/HandBrake/gtk/src/extr_hb-backend.c_ghb_picture_settings_deps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [11 x i8] c"PicturePAR\00", align 1
@HB_ANAMORPHIC_STRICT = common dso_local global i64 0, align 8
@HB_ANAMORPHIC_AUTO = common dso_local global i64 0, align 8
@HB_ANAMORPHIC_LOOSE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"PictureKeepRatio\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"autoscale\00", align 1
@HB_ANAMORPHIC_CUSTOM = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"PictureModulus\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"PictureLooseCrop\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"scale_width\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"scale_height\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"PictureDisplayWidth\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"PictureDisplayHeight\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"PicturePARWidth\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"PicturePARHeight\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ghb_picture_settings_deps(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @ghb_settings_combo_int(i32 %15, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  store i64 %16, i64* %11, align 8
  %17 = load i64, i64* %11, align 8
  %18 = load i64, i64* @HB_ANAMORPHIC_STRICT, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %28

20:                                               ; preds = %1
  %21 = load i64, i64* %11, align 8
  %22 = load i64, i64* @HB_ANAMORPHIC_AUTO, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %20
  %25 = load i64, i64* %11, align 8
  %26 = load i64, i64* @HB_ANAMORPHIC_LOOSE, align 8
  %27 = icmp ne i64 %25, %26
  br label %28

28:                                               ; preds = %24, %20, %1
  %29 = phi i1 [ false, %20 ], [ false, %1 ], [ %27, %24 ]
  %30 = zext i1 %29 to i32
  store i32 %30, i32* %5, align 4
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @ghb_dict_get_bool(i32 %33, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  store i32 %34, i32* %4, align 4
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @ghb_dict_get_bool(i32 %37, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  store i32 %38, i32* %3, align 4
  %39 = load i32, i32* %3, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %28
  %42 = load i64, i64* %11, align 8
  %43 = load i64, i64* @HB_ANAMORPHIC_STRICT, align 8
  %44 = icmp ne i64 %42, %43
  br label %45

45:                                               ; preds = %41, %28
  %46 = phi i1 [ false, %28 ], [ %44, %41 ]
  %47 = zext i1 %46 to i32
  store i32 %47, i32* %7, align 4
  store i32 %47, i32* %6, align 4
  %48 = load i64, i64* %11, align 8
  %49 = load i64, i64* @HB_ANAMORPHIC_CUSTOM, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %45
  %52 = load i32, i32* %4, align 4
  %53 = icmp ne i32 %52, 0
  %54 = xor i1 %53, true
  br label %55

55:                                               ; preds = %51, %45
  %56 = phi i1 [ false, %45 ], [ %54, %51 ]
  %57 = zext i1 %56 to i32
  store i32 %57, i32* %8, align 4
  %58 = load i64, i64* %11, align 8
  %59 = load i64, i64* @HB_ANAMORPHIC_CUSTOM, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %65

61:                                               ; preds = %55
  %62 = load i32, i32* %4, align 4
  %63 = icmp ne i32 %62, 0
  %64 = xor i1 %63, true
  br label %65

65:                                               ; preds = %61, %55
  %66 = phi i1 [ false, %55 ], [ %64, %61 ]
  %67 = zext i1 %66 to i32
  store i32 %67, i32* %10, align 4
  %68 = load i32, i32* @FALSE, align 4
  store i32 %68, i32* %9, align 4
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32* @GHB_WIDGET(i32 %71, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  store i32* %72, i32** %12, align 8
  %73 = load i32*, i32** %12, align 8
  %74 = load i64, i64* %11, align 8
  %75 = load i64, i64* @HB_ANAMORPHIC_STRICT, align 8
  %76 = icmp ne i64 %74, %75
  %77 = zext i1 %76 to i32
  %78 = call i32 @gtk_widget_set_sensitive(i32* %73, i32 %77)
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32* @GHB_WIDGET(i32 %81, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  store i32* %82, i32** %12, align 8
  %83 = load i32*, i32** %12, align 8
  %84 = load i64, i64* %11, align 8
  %85 = load i64, i64* @HB_ANAMORPHIC_STRICT, align 8
  %86 = icmp ne i64 %84, %85
  %87 = zext i1 %86 to i32
  %88 = call i32 @gtk_widget_set_sensitive(i32* %83, i32 %87)
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i32* @GHB_WIDGET(i32 %91, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  store i32* %92, i32** %12, align 8
  %93 = load i32*, i32** %12, align 8
  %94 = load i32, i32* %6, align 4
  %95 = call i32 @gtk_widget_set_sensitive(i32* %93, i32 %94)
  %96 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i32* @GHB_WIDGET(i32 %98, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0))
  store i32* %99, i32** %12, align 8
  %100 = load i32*, i32** %12, align 8
  %101 = load i32, i32* %7, align 4
  %102 = call i32 @gtk_widget_set_sensitive(i32* %100, i32 %101)
  %103 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call i32* @GHB_WIDGET(i32 %105, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0))
  store i32* %106, i32** %12, align 8
  %107 = load i32*, i32** %12, align 8
  %108 = load i32, i32* %8, align 4
  %109 = call i32 @gtk_widget_set_sensitive(i32* %107, i32 %108)
  %110 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = call i32* @GHB_WIDGET(i32 %112, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0))
  store i32* %113, i32** %12, align 8
  %114 = load i32*, i32** %12, align 8
  %115 = load i32, i32* %9, align 4
  %116 = call i32 @gtk_widget_set_sensitive(i32* %114, i32 %115)
  %117 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = call i32* @GHB_WIDGET(i32 %119, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0))
  store i32* %120, i32** %12, align 8
  %121 = load i32*, i32** %12, align 8
  %122 = load i32, i32* %10, align 4
  %123 = call i32 @gtk_widget_set_sensitive(i32* %121, i32 %122)
  %124 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = call i32* @GHB_WIDGET(i32 %126, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i64 0, i64 0))
  store i32* %127, i32** %12, align 8
  %128 = load i32*, i32** %12, align 8
  %129 = load i32, i32* %10, align 4
  %130 = call i32 @gtk_widget_set_sensitive(i32* %128, i32 %129)
  %131 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = call i32* @GHB_WIDGET(i32 %133, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  store i32* %134, i32** %12, align 8
  %135 = load i32*, i32** %12, align 8
  %136 = load i32, i32* %5, align 4
  %137 = call i32 @gtk_widget_set_sensitive(i32* %135, i32 %136)
  %138 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %139 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = call i32* @GHB_WIDGET(i32 %140, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  store i32* %141, i32** %12, align 8
  %142 = load i32*, i32** %12, align 8
  %143 = load i64, i64* %11, align 8
  %144 = load i64, i64* @HB_ANAMORPHIC_STRICT, align 8
  %145 = icmp ne i64 %143, %144
  %146 = zext i1 %145 to i32
  %147 = call i32 @gtk_widget_set_sensitive(i32* %142, i32 %146)
  ret void
}

declare dso_local i64 @ghb_settings_combo_int(i32, i8*) #1

declare dso_local i32 @ghb_dict_get_bool(i32, i8*) #1

declare dso_local i32* @GHB_WIDGET(i32, i8*) #1

declare dso_local i32 @gtk_widget_set_sensitive(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
