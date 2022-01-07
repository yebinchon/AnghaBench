; ModuleID = '/home/carl/AnghaBench/HandBrake/gtk/src/extr_preview.c_init_preview_image.c'
source_filename = "/home/carl/AnghaBench/HandBrake/gtk/src/extr_preview.c_init_preview_image.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__*, i32, i32 }
%struct.TYPE_7__ = type { i64, i32*, i32*, i64* }

@.str = private unnamed_addr constant [6 x i8] c"title\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"preview_frame\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"live_progress_box\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"live_preview_progress\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"live_encode_progress\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @init_preview_image(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %12 = call i32 @live_preview_stop(%struct.TYPE_8__* %11)
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @ghb_dict_get_int(i32 %15, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = call i32* @ghb_lookup_title(i32 %17, i32* %7)
  store i32* %18, i32** %8, align 8
  %19 = load i32*, i32** %8, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %39

21:                                               ; preds = %1
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %39

28:                                               ; preds = %21
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = call i32 @g_object_unref(i32* %33)
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 1
  store i32* null, i32** %38, align 8
  br label %39

39:                                               ; preds = %28, %21, %1
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = call i32* @GHB_WIDGET(i32 %42, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  store i32* %43, i32** %3, align 8
  %44 = load i32*, i32** %3, align 8
  %45 = call i64 @ghb_widget_int(i32* %44)
  %46 = sub i64 %45, 1
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  store i64 %46, i64* %50, align 8
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 3
  %55 = load i64*, i64** %54, align 8
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = getelementptr inbounds i64, i64* %55, i64 %60
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %77

64:                                               ; preds = %39
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = call i32* @GHB_WIDGET(i32 %67, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  store i32* %68, i32** %3, align 8
  %69 = load i32*, i32** %3, align 8
  %70 = call i32 @gtk_widget_hide(i32* %69)
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = call i32* @GHB_WIDGET(i32 %73, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  store i32* %74, i32** %3, align 8
  %75 = load i32*, i32** %3, align 8
  %76 = call i32 @gtk_widget_show(i32* %75)
  br label %100

77:                                               ; preds = %39
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = call i32* @GHB_WIDGET(i32 %80, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  store i32* %81, i32** %3, align 8
  %82 = load i32*, i32** %3, align 8
  %83 = call i32 @gtk_widget_hide(i32* %82)
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = call i32* @GHB_WIDGET(i32 %86, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  store i32* %87, i32** %3, align 8
  %88 = load i32*, i32** %3, align 8
  %89 = call i32 @gtk_widget_show(i32* %88)
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = call i32* @GHB_WIDGET(i32 %92, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  store i32* %93, i32** %3, align 8
  %94 = load i32*, i32** %3, align 8
  %95 = call i32 @GTK_PROGRESS_BAR(i32* %94)
  %96 = call i32 @gtk_progress_bar_set_text(i32 %95, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0))
  %97 = load i32*, i32** %3, align 8
  %98 = call i32 @GTK_PROGRESS_BAR(i32* %97)
  %99 = call i32 @gtk_progress_bar_set_fraction(i32 %98, i32 0)
  br label %100

100:                                              ; preds = %77, %64
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 0
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 1
  %105 = load i32*, i32** %104, align 8
  %106 = icmp ne i32* %105, null
  br i1 %106, label %107, label %114

107:                                              ; preds = %100
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 0
  %110 = load %struct.TYPE_7__*, %struct.TYPE_7__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 1
  %112 = load i32*, i32** %111, align 8
  %113 = call i32 @g_object_unref(i32* %112)
  br label %114

114:                                              ; preds = %107, %100
  %115 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 0
  %117 = load %struct.TYPE_7__*, %struct.TYPE_7__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 2
  %119 = load i32*, i32** %118, align 8
  %120 = icmp ne i32* %119, null
  br i1 %120, label %121, label %128

121:                                              ; preds = %114
  %122 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 0
  %124 = load %struct.TYPE_7__*, %struct.TYPE_7__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i32 0, i32 2
  %126 = load i32*, i32** %125, align 8
  %127 = call i32 @g_object_unref(i32* %126)
  br label %128

128:                                              ; preds = %121, %114
  %129 = load i32*, i32** %8, align 8
  %130 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 0
  %132 = load %struct.TYPE_7__*, %struct.TYPE_7__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %136 = call i32* @ghb_get_preview_image(i32* %129, i64 %134, %struct.TYPE_8__* %135, i32* %4, i32* %5)
  %137 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 0
  %139 = load %struct.TYPE_7__*, %struct.TYPE_7__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %139, i32 0, i32 1
  store i32* %136, i32** %140, align 8
  %141 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %141, i32 0, i32 0
  %143 = load %struct.TYPE_7__*, %struct.TYPE_7__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %143, i32 0, i32 1
  %145 = load i32*, i32** %144, align 8
  %146 = icmp eq i32* %145, null
  br i1 %146, label %147, label %148

147:                                              ; preds = %128
  br label %165

148:                                              ; preds = %128
  %149 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %150 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %149, i32 0, i32 0
  %151 = load %struct.TYPE_7__*, %struct.TYPE_7__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %151, i32 0, i32 1
  %153 = load i32*, i32** %152, align 8
  %154 = call i32 @gdk_pixbuf_get_width(i32* %153)
  store i32 %154, i32* %9, align 4
  %155 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %155, i32 0, i32 0
  %157 = load %struct.TYPE_7__*, %struct.TYPE_7__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %157, i32 0, i32 1
  %159 = load i32*, i32** %158, align 8
  %160 = call i32 @gdk_pixbuf_get_height(i32* %159)
  store i32 %160, i32* %10, align 4
  %161 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %162 = load i32, i32* %9, align 4
  %163 = load i32, i32* %10, align 4
  %164 = call i32 @preview_set_size(%struct.TYPE_8__* %161, i32 %162, i32 %163)
  br label %165

165:                                              ; preds = %148, %147
  ret void
}

declare dso_local i32 @live_preview_stop(%struct.TYPE_8__*) #1

declare dso_local i32 @ghb_dict_get_int(i32, i8*) #1

declare dso_local i32* @ghb_lookup_title(i32, i32*) #1

declare dso_local i32 @g_object_unref(i32*) #1

declare dso_local i32* @GHB_WIDGET(i32, i8*) #1

declare dso_local i64 @ghb_widget_int(i32*) #1

declare dso_local i32 @gtk_widget_hide(i32*) #1

declare dso_local i32 @gtk_widget_show(i32*) #1

declare dso_local i32 @gtk_progress_bar_set_text(i32, i8*) #1

declare dso_local i32 @GTK_PROGRESS_BAR(i32*) #1

declare dso_local i32 @gtk_progress_bar_set_fraction(i32, i32) #1

declare dso_local i32* @ghb_get_preview_image(i32*, i64, %struct.TYPE_8__*, i32*, i32*) #1

declare dso_local i32 @gdk_pixbuf_get_width(i32*) #1

declare dso_local i32 @gdk_pixbuf_get_height(i32*) #1

declare dso_local i32 @preview_set_size(%struct.TYPE_8__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
