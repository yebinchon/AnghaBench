; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_d3d8.c_d3d8_init_internal.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_d3d8.c_d3d8_init_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_30__ = type { %struct.TYPE_27__, i32, %struct.TYPE_33__, %struct.TYPE_29__* }
%struct.TYPE_27__ = type { i32, i32, i32 }
%struct.TYPE_33__ = type { i32 }
%struct.TYPE_29__ = type { i32*, i32* }
%struct.TYPE_28__ = type { %struct.TYPE_26__, %struct.TYPE_25__ }
%struct.TYPE_26__ = type { i32, i32 }
%struct.TYPE_25__ = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"[D3D8]: Init complete.\0A\00", align 1
@WndProcD3D = common dso_local global i32 0, align 4
@g_win32_resize_height = common dso_local global i32 0, align 4
@g_win32_resize_width = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_30__*, %struct.TYPE_27__*, i32**, i8**)* @d3d8_init_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @d3d8_init_internal(%struct.TYPE_30__* %0, %struct.TYPE_27__* %1, i32** %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_30__*, align 8
  %7 = alloca %struct.TYPE_27__*, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_28__*, align 8
  %13 = alloca %struct.TYPE_29__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_30__* %0, %struct.TYPE_30__** %6, align 8
  store %struct.TYPE_27__* %1, %struct.TYPE_27__** %7, align 8
  store i32** %2, i32*** %8, align 8
  store i8** %3, i8*** %9, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %16 = call %struct.TYPE_28__* (...) @config_get_ptr()
  store %struct.TYPE_28__* %16, %struct.TYPE_28__** %12, align 8
  %17 = call i64 @calloc(i32 1, i32 16)
  %18 = inttoptr i64 %17 to %struct.TYPE_29__*
  store %struct.TYPE_29__* %18, %struct.TYPE_29__** %13, align 8
  %19 = load %struct.TYPE_29__*, %struct.TYPE_29__** %13, align 8
  %20 = icmp ne %struct.TYPE_29__* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %132

22:                                               ; preds = %4
  %23 = load %struct.TYPE_29__*, %struct.TYPE_29__** %13, align 8
  %24 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %24, i32 0, i32 3
  store %struct.TYPE_29__* %23, %struct.TYPE_29__** %25, align 8
  %26 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %26, i32 0, i32 1
  store i32 0, i32* %27, align 4
  %28 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %28, i32 0, i32 3
  %30 = load %struct.TYPE_29__*, %struct.TYPE_29__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  store i32 0, i32* %33, align 4
  %34 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %34, i32 0, i32 3
  %36 = load %struct.TYPE_29__*, %struct.TYPE_29__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 1
  store i32 0, i32* %39, align 4
  %40 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %40, i32 0, i32 3
  %42 = load %struct.TYPE_29__*, %struct.TYPE_29__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 2
  store i32 1, i32* %45, align 4
  %46 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %46, i32 0, i32 3
  %48 = load %struct.TYPE_29__*, %struct.TYPE_29__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 3
  store i32 1, i32* %51, align 4
  %52 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %52, i32 0, i32 3
  %54 = load %struct.TYPE_29__*, %struct.TYPE_29__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 0
  store i32 0, i32* %57, align 4
  %58 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %58, i32 0, i32 3
  %60 = load %struct.TYPE_29__*, %struct.TYPE_29__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %60, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 1
  store i32 1, i32* %63, align 4
  %64 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %64, i32 0, i32 3
  %66 = load %struct.TYPE_29__*, %struct.TYPE_29__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %66, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 2
  store i32 1, i32* %69, align 4
  %70 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %70, i32 0, i32 3
  %72 = load %struct.TYPE_29__*, %struct.TYPE_29__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %72, i32 0, i32 1
  %74 = load i32*, i32** %73, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 3
  store i32 -1, i32* %75, align 4
  %76 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %77 = call i32 @d3d8_get_video_size(%struct.TYPE_30__* %76, i32* %10, i32* %11)
  %78 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %22
  %83 = load i32, i32* %10, align 4
  br label %88

84:                                               ; preds = %22
  %85 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %86 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  br label %88

88:                                               ; preds = %84, %82
  %89 = phi i32 [ %83, %82 ], [ %87, %84 ]
  store i32 %89, i32* %14, align 4
  %90 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %91 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %88
  %95 = load i32, i32* %11, align 4
  br label %100

96:                                               ; preds = %88
  %97 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %98 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  br label %100

100:                                              ; preds = %96, %94
  %101 = phi i32 [ %95, %94 ], [ %99, %96 ]
  store i32 %101, i32* %15, align 4
  %102 = call i32 @video_driver_set_size(i32* %14, i32* %15)
  %103 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %104 = call i32 @d3d8_init_singlepass(%struct.TYPE_30__* %103)
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %107, label %106

106:                                              ; preds = %100
  store i32 0, i32* %5, align 4
  br label %132

107:                                              ; preds = %100
  %108 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %109 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %108, i32 0, i32 0
  %110 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %111 = bitcast %struct.TYPE_27__* %109 to i8*
  %112 = bitcast %struct.TYPE_27__* %110 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %111, i8* align 4 %112, i64 12, i1 false)
  %113 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %114 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %115 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %114, i32 0, i32 0
  %116 = call i32 @d3d8_initialize(%struct.TYPE_30__* %113, %struct.TYPE_27__* %115)
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %119, label %118

118:                                              ; preds = %107
  store i32 0, i32* %5, align 4
  br label %132

119:                                              ; preds = %107
  %120 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %121 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %125 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load i32**, i32*** %8, align 8
  %129 = load i8**, i8*** %9, align 8
  %130 = call i32 @d3d_input_driver(i32 %123, i32 %127, i32** %128, i8** %129)
  %131 = call i32 (i8*, ...) @RARCH_LOG(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %5, align 4
  br label %132

132:                                              ; preds = %119, %118, %106, %21
  %133 = load i32, i32* %5, align 4
  ret i32 %133
}

declare dso_local %struct.TYPE_28__* @config_get_ptr(...) #1

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @d3d8_get_video_size(%struct.TYPE_30__*, i32*, i32*) #1

declare dso_local i32 @video_driver_set_size(i32*, i32*) #1

declare dso_local i32 @d3d8_init_singlepass(%struct.TYPE_30__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @d3d8_initialize(%struct.TYPE_30__*, %struct.TYPE_27__*) #1

declare dso_local i32 @d3d_input_driver(i32, i32, i32**, i8**) #1

declare dso_local i32 @RARCH_LOG(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
