; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/video_layout/extr_view.c_view_sort_layers.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/video_layout/extr_view.c_view_sort_layers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i8* }

@.str = private unnamed_addr constant [7 x i8] c"screen\00", align 1
@VIDEO_LAYOUT_BLEND_MOD = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"overlay\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"backdrop\00", align 1
@VIDEO_LAYOUT_BLEND_ADD = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [6 x i8] c"bezel\00", align 1
@VIDEO_LAYOUT_BLEND_ALPHA = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [7 x i8] c"cpanel\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"marquee\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @view_sort_layers(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca [6 x %struct.TYPE_7__], align 16
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %7 = call %struct.TYPE_7__* @view_find_layer(%struct.TYPE_6__* %6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_7__* %7, %struct.TYPE_7__** %4, align 8
  %8 = icmp ne %struct.TYPE_7__* %7, null
  br i1 %8, label %9, label %21

9:                                                ; preds = %1
  %10 = load i8*, i8** @VIDEO_LAYOUT_BLEND_MOD, align 8
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  store i8* %10, i8** %12, align 8
  %13 = load i32, i32* %5, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [6 x %struct.TYPE_7__], [6 x %struct.TYPE_7__]* %3, i64 0, i64 %14
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %17 = bitcast %struct.TYPE_7__* %15 to i8*
  %18 = bitcast %struct.TYPE_7__* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %17, i8* align 8 %18, i64 8, i1 false)
  %19 = load i32, i32* %5, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %5, align 4
  br label %21

21:                                               ; preds = %9, %1
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %23 = call %struct.TYPE_7__* @view_find_layer(%struct.TYPE_6__* %22, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  store %struct.TYPE_7__* %23, %struct.TYPE_7__** %4, align 8
  %24 = icmp ne %struct.TYPE_7__* %23, null
  br i1 %24, label %25, label %37

25:                                               ; preds = %21
  %26 = load i8*, i8** @VIDEO_LAYOUT_BLEND_MOD, align 8
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  store i8* %26, i8** %28, align 8
  %29 = load i32, i32* %5, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [6 x %struct.TYPE_7__], [6 x %struct.TYPE_7__]* %3, i64 0, i64 %30
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %33 = bitcast %struct.TYPE_7__* %31 to i8*
  %34 = bitcast %struct.TYPE_7__* %32 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %33, i8* align 8 %34, i64 8, i1 false)
  %35 = load i32, i32* %5, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %5, align 4
  br label %37

37:                                               ; preds = %25, %21
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %39 = call %struct.TYPE_7__* @view_find_layer(%struct.TYPE_6__* %38, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  store %struct.TYPE_7__* %39, %struct.TYPE_7__** %4, align 8
  %40 = icmp ne %struct.TYPE_7__* %39, null
  br i1 %40, label %41, label %53

41:                                               ; preds = %37
  %42 = load i8*, i8** @VIDEO_LAYOUT_BLEND_ADD, align 8
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  store i8* %42, i8** %44, align 8
  %45 = load i32, i32* %5, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [6 x %struct.TYPE_7__], [6 x %struct.TYPE_7__]* %3, i64 0, i64 %46
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %49 = bitcast %struct.TYPE_7__* %47 to i8*
  %50 = bitcast %struct.TYPE_7__* %48 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %49, i8* align 8 %50, i64 8, i1 false)
  %51 = load i32, i32* %5, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %5, align 4
  br label %53

53:                                               ; preds = %41, %37
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %55 = call %struct.TYPE_7__* @view_find_layer(%struct.TYPE_6__* %54, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  store %struct.TYPE_7__* %55, %struct.TYPE_7__** %4, align 8
  %56 = icmp ne %struct.TYPE_7__* %55, null
  br i1 %56, label %57, label %69

57:                                               ; preds = %53
  %58 = load i8*, i8** @VIDEO_LAYOUT_BLEND_ALPHA, align 8
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  store i8* %58, i8** %60, align 8
  %61 = load i32, i32* %5, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds [6 x %struct.TYPE_7__], [6 x %struct.TYPE_7__]* %3, i64 0, i64 %62
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %65 = bitcast %struct.TYPE_7__* %63 to i8*
  %66 = bitcast %struct.TYPE_7__* %64 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %65, i8* align 8 %66, i64 8, i1 false)
  %67 = load i32, i32* %5, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %5, align 4
  br label %69

69:                                               ; preds = %57, %53
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %71 = call %struct.TYPE_7__* @view_find_layer(%struct.TYPE_6__* %70, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  store %struct.TYPE_7__* %71, %struct.TYPE_7__** %4, align 8
  %72 = icmp ne %struct.TYPE_7__* %71, null
  br i1 %72, label %73, label %85

73:                                               ; preds = %69
  %74 = load i8*, i8** @VIDEO_LAYOUT_BLEND_ALPHA, align 8
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 0
  store i8* %74, i8** %76, align 8
  %77 = load i32, i32* %5, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds [6 x %struct.TYPE_7__], [6 x %struct.TYPE_7__]* %3, i64 0, i64 %78
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %81 = bitcast %struct.TYPE_7__* %79 to i8*
  %82 = bitcast %struct.TYPE_7__* %80 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %81, i8* align 8 %82, i64 8, i1 false)
  %83 = load i32, i32* %5, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %5, align 4
  br label %85

85:                                               ; preds = %73, %69
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %87 = call %struct.TYPE_7__* @view_find_layer(%struct.TYPE_6__* %86, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  store %struct.TYPE_7__* %87, %struct.TYPE_7__** %4, align 8
  %88 = icmp ne %struct.TYPE_7__* %87, null
  br i1 %88, label %89, label %101

89:                                               ; preds = %85
  %90 = load i8*, i8** @VIDEO_LAYOUT_BLEND_ALPHA, align 8
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 0
  store i8* %90, i8** %92, align 8
  %93 = load i32, i32* %5, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds [6 x %struct.TYPE_7__], [6 x %struct.TYPE_7__]* %3, i64 0, i64 %94
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %97 = bitcast %struct.TYPE_7__* %95 to i8*
  %98 = bitcast %struct.TYPE_7__* %96 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %97, i8* align 8 %98, i64 8, i1 false)
  %99 = load i32, i32* %5, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %5, align 4
  br label %101

101:                                              ; preds = %89, %85
  store i32 0, i32* %5, align 4
  br label %102

102:                                              ; preds = %120, %101
  %103 = load i32, i32* %5, align 4
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = icmp slt i32 %103, %106
  br i1 %107, label %108, label %123

108:                                              ; preds = %102
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 1
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** %110, align 8
  %112 = load i32, i32* %5, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i64 %113
  %115 = load i32, i32* %5, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds [6 x %struct.TYPE_7__], [6 x %struct.TYPE_7__]* %3, i64 0, i64 %116
  %118 = bitcast %struct.TYPE_7__* %114 to i8*
  %119 = bitcast %struct.TYPE_7__* %117 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %118, i8* align 8 %119, i64 8, i1 false)
  br label %120

120:                                              ; preds = %108
  %121 = load i32, i32* %5, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %5, align 4
  br label %102

123:                                              ; preds = %102
  ret void
}

declare dso_local %struct.TYPE_7__* @view_find_layer(%struct.TYPE_6__*, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
