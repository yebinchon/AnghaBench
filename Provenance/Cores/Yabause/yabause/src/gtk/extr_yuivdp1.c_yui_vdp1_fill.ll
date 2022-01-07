; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/gtk/extr_yuivdp1.c_yui_vdp1_fill.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/gtk/extr_yuivdp1.c_yui_vdp1_fill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32, i32, i8*, i32, i32 }

@MAX_VDP1_COMMAND = common dso_local global i64 0, align 8
@GDK_COLORSPACE_RGB = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@yui_texture_free = common dso_local global i32 0, align 4
@GDK_INTERP_BILINEAR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @yui_vdp1_fill(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca [1024 x i32], align 16
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca float, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %15 = call i32 @yui_vdp1_clear(%struct.TYPE_5__* %14)
  store i64 0, i64* %3, align 8
  %16 = load i64, i64* %3, align 8
  %17 = call i32* @Vdp1DebugGetCommandNumberName(i64 %16)
  store i32* %17, i32** %4, align 8
  br label %18

18:                                               ; preds = %101, %1
  %19 = load i32*, i32** %4, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %18
  %22 = load i64, i64* %3, align 8
  %23 = load i64, i64* @MAX_VDP1_COMMAND, align 8
  %24 = icmp slt i64 %22, %23
  br label %25

25:                                               ; preds = %21, %18
  %26 = phi i1 [ false, %18 ], [ %24, %21 ]
  br i1 %26, label %27, label %106

27:                                               ; preds = %25
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 5
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @gtk_list_store_append(i32 %30, i32* %6)
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 5
  %34 = load i32, i32* %33, align 4
  %35 = load i32*, i32** %4, align 8
  %36 = call i32 @gtk_list_store_set(i32 %34, i32* %6, i32 0, i32* %35, i32 -1)
  %37 = load i64, i64* %3, align 8
  %38 = call i8* @Vdp1DebugTexture(i64 %37, i32* %8, i32* %9)
  %39 = bitcast i8* %38 to i32*
  store i32* %39, i32** %7, align 8
  %40 = load i32*, i32** %7, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %42, label %101

42:                                               ; preds = %27
  %43 = load i32, i32* %8, align 4
  %44 = icmp sgt i32 %43, 0
  br i1 %44, label %45, label %101

45:                                               ; preds = %42
  %46 = load i32, i32* %9, align 4
  %47 = icmp sgt i32 %46, 0
  br i1 %47, label %48, label %101

48:                                               ; preds = %45
  %49 = load i32, i32* %8, align 4
  %50 = mul nsw i32 %49, 4
  store i32 %50, i32* %10, align 4
  %51 = load i32, i32* %10, align 4
  %52 = srem i32 %51, 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %48
  %55 = load i32, i32* %10, align 4
  %56 = srem i32 %55, 4
  %57 = sub nsw i32 4, %56
  br label %59

58:                                               ; preds = %48
  br label %59

59:                                               ; preds = %58, %54
  %60 = phi i32 [ %57, %54 ], [ 0, %58 ]
  %61 = load i32, i32* %10, align 4
  %62 = add nsw i32 %61, %60
  store i32 %62, i32* %10, align 4
  %63 = load i32*, i32** %7, align 8
  %64 = load i32, i32* @GDK_COLORSPACE_RGB, align 4
  %65 = load i32, i32* @TRUE, align 4
  %66 = load i32, i32* %8, align 4
  %67 = load i32, i32* %9, align 4
  %68 = load i32, i32* %10, align 4
  %69 = load i32, i32* @yui_texture_free, align 4
  %70 = call i32* @gdk_pixbuf_new_from_data(i32* %63, i32 %64, i32 %65, i32 8, i32 %66, i32 %67, i32 %68, i32 %69, i32* null)
  store i32* %70, i32** %11, align 8
  %71 = load i32, i32* %9, align 4
  %72 = sitofp i32 %71 to float
  %73 = fdiv float 1.600000e+01, %72
  store float %73, float* %13, align 4
  %74 = load i32, i32* %9, align 4
  %75 = icmp sgt i32 %74, 16
  br i1 %75, label %76, label %85

76:                                               ; preds = %59
  %77 = load i32*, i32** %11, align 8
  %78 = load i32, i32* %8, align 4
  %79 = sitofp i32 %78 to float
  %80 = load float, float* %13, align 4
  %81 = fmul float %79, %80
  %82 = fptosi float %81 to i32
  %83 = load i32, i32* @GDK_INTERP_BILINEAR, align 4
  %84 = call i32* @gdk_pixbuf_scale_simple(i32* %77, i32 %82, i32 16, i32 %83)
  store i32* %84, i32** %12, align 8
  br label %91

85:                                               ; preds = %59
  %86 = load i32*, i32** %11, align 8
  %87 = load i32, i32* %8, align 4
  %88 = load i32, i32* %9, align 4
  %89 = load i32, i32* @GDK_INTERP_BILINEAR, align 4
  %90 = call i32* @gdk_pixbuf_scale_simple(i32* %86, i32 %87, i32 %88, i32 %89)
  store i32* %90, i32** %12, align 8
  br label %91

91:                                               ; preds = %85, %76
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 5
  %94 = load i32, i32* %93, align 4
  %95 = load i32*, i32** %12, align 8
  %96 = call i32 @gtk_list_store_set(i32 %94, i32* %6, i32 1, i32* %95, i32 -1)
  %97 = load i32*, i32** %11, align 8
  %98 = call i32 @g_object_unref(i32* %97)
  %99 = load i32*, i32** %12, align 8
  %100 = call i32 @g_object_unref(i32* %99)
  br label %101

101:                                              ; preds = %91, %45, %42, %27
  %102 = load i64, i64* %3, align 8
  %103 = add nsw i64 %102, 1
  store i64 %103, i64* %3, align 8
  %104 = load i64, i64* %3, align 8
  %105 = call i32* @Vdp1DebugGetCommandNumberName(i64 %104)
  store i32* %105, i32** %4, align 8
  br label %18

106:                                              ; preds = %25
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = getelementptr inbounds [1024 x i32], [1024 x i32]* %5, i64 0, i64 0
  %111 = call i32 @Vdp1DebugCommand(i64 %109, i32* %110)
  %112 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 4
  %114 = load i32, i32* %113, align 8
  %115 = getelementptr inbounds [1024 x i32], [1024 x i32]* %5, i64 0, i64 0
  %116 = call i32 @g_strstrip(i32* %115)
  %117 = call i32 @gtk_text_buffer_set_text(i32 %114, i32 %116, i32 -1)
  %118 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 1
  %123 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 2
  %125 = call i8* @Vdp1DebugTexture(i64 %120, i32* %122, i32* %124)
  %126 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 3
  store i8* %125, i8** %127, align 8
  %128 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %129 = call i32 @yui_vdp1_draw(%struct.TYPE_5__* %128)
  ret void
}

declare dso_local i32 @yui_vdp1_clear(%struct.TYPE_5__*) #1

declare dso_local i32* @Vdp1DebugGetCommandNumberName(i64) #1

declare dso_local i32 @gtk_list_store_append(i32, i32*) #1

declare dso_local i32 @gtk_list_store_set(i32, i32*, i32, i32*, i32) #1

declare dso_local i8* @Vdp1DebugTexture(i64, i32*, i32*) #1

declare dso_local i32* @gdk_pixbuf_new_from_data(i32*, i32, i32, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32* @gdk_pixbuf_scale_simple(i32*, i32, i32, i32) #1

declare dso_local i32 @g_object_unref(i32*) #1

declare dso_local i32 @Vdp1DebugCommand(i64, i32*) #1

declare dso_local i32 @gtk_text_buffer_set_text(i32, i32, i32) #1

declare dso_local i32 @g_strstrip(i32*) #1

declare dso_local i32 @yui_vdp1_draw(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
