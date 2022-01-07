; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/video_filters/extr_blargg_ntsc_snes.c_blargg_ntsc_snes_initialize.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/video_filters/extr_blargg_ntsc_snes.c_blargg_ntsc_snes_initialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.softfilter_config = type { i32 (i8*)*, i64 (i8*, i8*, i8**, i8*)* }
%struct.filter_data = type { i32, i64, i32* }

@.str = private unnamed_addr constant [7 x i8] c"tvtype\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"composite\00", align 1
@retroarch_snes_ntsc_composite = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"rf\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"rgb\00", align 1
@retroarch_snes_ntsc_rgb = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"svideo\00", align 1
@retroarch_snes_ntsc_svideo = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.softfilter_config*, i8*)* @blargg_ntsc_snes_initialize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @blargg_ntsc_snes_initialize(i8* %0, %struct.softfilter_config* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.softfilter_config*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_6__, align 4
  %9 = alloca %struct.filter_data*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.softfilter_config* %1, %struct.softfilter_config** %5, align 8
  store i8* %2, i8** %6, align 8
  store i8* null, i8** %7, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.filter_data*
  store %struct.filter_data* %11, %struct.filter_data** %9, align 8
  %12 = call i64 @calloc(i32 1, i32 4)
  %13 = inttoptr i64 %12 to i32*
  %14 = load %struct.filter_data*, %struct.filter_data** %9, align 8
  %15 = getelementptr inbounds %struct.filter_data, %struct.filter_data* %14, i32 0, i32 2
  store i32* %13, i32** %15, align 8
  %16 = load %struct.softfilter_config*, %struct.softfilter_config** %5, align 8
  %17 = getelementptr inbounds %struct.softfilter_config, %struct.softfilter_config* %16, i32 0, i32 1
  %18 = load i64 (i8*, i8*, i8**, i8*)*, i64 (i8*, i8*, i8**, i8*)** %17, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = call i64 %18(i8* %19, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %7, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %54

22:                                               ; preds = %3
  %23 = load i8*, i8** %7, align 8
  %24 = call i64 @memcmp(i8* %23, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 9)
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = bitcast %struct.TYPE_6__* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %27, i8* align 4 bitcast (%struct.TYPE_6__* @retroarch_snes_ntsc_composite to i8*), i64 4, i1 false)
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  store i32 1, i32* %28, align 4
  br label %53

29:                                               ; preds = %22
  %30 = load i8*, i8** %7, align 8
  %31 = call i64 @memcmp(i8* %30, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 2)
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %29
  %34 = bitcast %struct.TYPE_6__* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %34, i8* align 4 bitcast (%struct.TYPE_6__* @retroarch_snes_ntsc_composite to i8*), i64 4, i1 false)
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  store i32 0, i32* %35, align 4
  br label %52

36:                                               ; preds = %29
  %37 = load i8*, i8** %7, align 8
  %38 = call i64 @memcmp(i8* %37, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 3)
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %36
  %41 = bitcast %struct.TYPE_6__* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %41, i8* align 4 bitcast (%struct.TYPE_6__* @retroarch_snes_ntsc_rgb to i8*), i64 4, i1 false)
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  store i32 1, i32* %42, align 4
  br label %51

43:                                               ; preds = %36
  %44 = load i8*, i8** %7, align 8
  %45 = call i64 @memcmp(i8* %44, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 6)
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %43
  %48 = bitcast %struct.TYPE_6__* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %48, i8* align 4 bitcast (%struct.TYPE_6__* @retroarch_snes_ntsc_svideo to i8*), i64 4, i1 false)
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  store i32 1, i32* %49, align 4
  br label %50

50:                                               ; preds = %47, %43
  br label %51

51:                                               ; preds = %50, %40
  br label %52

52:                                               ; preds = %51, %33
  br label %53

53:                                               ; preds = %52, %26
  br label %57

54:                                               ; preds = %3
  %55 = bitcast %struct.TYPE_6__* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %55, i8* align 4 bitcast (%struct.TYPE_6__* @retroarch_snes_ntsc_composite to i8*), i64 4, i1 false)
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  store i32 1, i32* %56, align 4
  br label %57

57:                                               ; preds = %54, %53
  %58 = load %struct.softfilter_config*, %struct.softfilter_config** %5, align 8
  %59 = getelementptr inbounds %struct.softfilter_config, %struct.softfilter_config* %58, i32 0, i32 0
  %60 = load i32 (i8*)*, i32 (i8*)** %59, align 8
  %61 = load i8*, i8** %7, align 8
  %62 = call i32 %60(i8* %61)
  store i8* null, i8** %7, align 8
  %63 = load %struct.filter_data*, %struct.filter_data** %9, align 8
  %64 = getelementptr inbounds %struct.filter_data, %struct.filter_data* %63, i32 0, i32 2
  %65 = load i32*, i32** %64, align 8
  %66 = call i32 @retroarch_snes_ntsc_init(i32* %65, %struct.TYPE_6__* %8)
  %67 = load %struct.filter_data*, %struct.filter_data** %9, align 8
  %68 = getelementptr inbounds %struct.filter_data, %struct.filter_data* %67, i32 0, i32 1
  store i64 0, i64* %68, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = icmp ne i32 %70, 0
  %72 = zext i1 %71 to i64
  %73 = select i1 %71, i32 0, i32 1
  %74 = load %struct.filter_data*, %struct.filter_data** %9, align 8
  %75 = getelementptr inbounds %struct.filter_data, %struct.filter_data* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 8
  ret void
}

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @retroarch_snes_ntsc_init(i32*, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
