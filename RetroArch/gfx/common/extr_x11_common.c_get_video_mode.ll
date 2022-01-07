; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/common/extr_x11_common.c_get_video_mode.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/common/extr_x11_common.c_get_video_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i64 }
%struct.TYPE_9__ = type { i32, i32, float, float, float }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i32*, i32, i32, %struct.TYPE_9__*, %struct.TYPE_9__*)* @get_video_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_video_mode(%struct.TYPE_8__* %0, i32* %1, i32 %2, i32 %3, %struct.TYPE_9__* %4, %struct.TYPE_9__* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_9__*, align 8
  %13 = alloca %struct.TYPE_9__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca float, align 4
  %18 = alloca float, align 4
  %19 = alloca %struct.TYPE_9__**, align 8
  %20 = alloca float, align 4
  %21 = alloca float, align 4
  %22 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store %struct.TYPE_9__* %4, %struct.TYPE_9__** %12, align 8
  store %struct.TYPE_9__* %5, %struct.TYPE_9__** %13, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store float 0.000000e+00, float* %17, align 4
  store float 0.000000e+00, float* %18, align 4
  store %struct.TYPE_9__** null, %struct.TYPE_9__*** %19, align 8
  %23 = load i32*, i32** %9, align 8
  %24 = load i32*, i32** %9, align 8
  %25 = call i32 @DefaultScreen(i32* %24)
  %26 = call i32 @XF86VidModeGetAllModeLines(i32* %23, i32 %25, i32* %15, %struct.TYPE_9__*** %19)
  %27 = load i32, i32* %15, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %6
  %30 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %19, align 8
  %31 = call i32 @XFree(%struct.TYPE_9__** %30)
  store i32 0, i32* %7, align 4
  br label %115

32:                                               ; preds = %6
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %34 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %19, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %34, i64 0
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %35, align 8
  %37 = bitcast %struct.TYPE_9__* %33 to i8*
  %38 = bitcast %struct.TYPE_9__* %36 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %37, i8* align 4 %38, i64 20, i1 false)
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  %43 = zext i1 %42 to i64
  %44 = select i1 %42, float 5.000000e-01, float 1.000000e+00
  store float %44, float* %17, align 4
  store i32 0, i32* %14, align 4
  br label %45

45:                                               ; preds = %108, %32
  %46 = load i32, i32* %14, align 4
  %47 = load i32, i32* %15, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %111

49:                                               ; preds = %45
  %50 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %19, align 8
  %51 = load i32, i32* %14, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %50, i64 %52
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %53, align 8
  store %struct.TYPE_9__* %54, %struct.TYPE_9__** %22, align 8
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %22, align 8
  %56 = icmp ne %struct.TYPE_9__* %55, null
  br i1 %56, label %58, label %57

57:                                               ; preds = %49
  br label %108

58:                                               ; preds = %49
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %22, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %10, align 4
  %63 = icmp ne i32 %61, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %58
  br label %108

65:                                               ; preds = %58
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %22, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %11, align 4
  %70 = icmp ne i32 %68, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %65
  br label %108

72:                                               ; preds = %65
  %73 = load float, float* %17, align 4
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %22, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 2
  %76 = load float, float* %75, align 4
  %77 = fmul float %73, %76
  %78 = fmul float %77, 1.000000e+03
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %22, align 8
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 3
  %81 = load float, float* %80, align 4
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %22, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 4
  %84 = load float, float* %83, align 4
  %85 = fmul float %81, %84
  %86 = fdiv float %78, %85
  store float %86, float* %20, align 4
  %87 = load float, float* %20, align 4
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = sitofp i64 %90 to float
  %92 = fsub float %87, %91
  %93 = fptosi float %92 to i64
  %94 = call float @fabsf(i64 %93)
  store float %94, float* %21, align 4
  %95 = load i32, i32* %16, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %72
  %98 = load float, float* %21, align 4
  %99 = load float, float* %18, align 4
  %100 = fcmp olt float %98, %99
  br i1 %100, label %101, label %107

101:                                              ; preds = %97, %72
  %102 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %22, align 8
  %104 = bitcast %struct.TYPE_9__* %102 to i8*
  %105 = bitcast %struct.TYPE_9__* %103 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %104, i8* align 4 %105, i64 20, i1 false)
  %106 = load float, float* %21, align 4
  store float %106, float* %18, align 4
  br label %107

107:                                              ; preds = %101, %97
  store i32 1, i32* %16, align 4
  br label %108

108:                                              ; preds = %107, %71, %64, %57
  %109 = load i32, i32* %14, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %14, align 4
  br label %45

111:                                              ; preds = %45
  %112 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %19, align 8
  %113 = call i32 @XFree(%struct.TYPE_9__** %112)
  %114 = load i32, i32* %16, align 4
  store i32 %114, i32* %7, align 4
  br label %115

115:                                              ; preds = %111, %29
  %116 = load i32, i32* %7, align 4
  ret i32 %116
}

declare dso_local i32 @XF86VidModeGetAllModeLines(i32*, i32, i32*, %struct.TYPE_9__***) #1

declare dso_local i32 @DefaultScreen(i32*) #1

declare dso_local i32 @XFree(%struct.TYPE_9__**) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local float @fabsf(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
