; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/vc/extr_mmal_vc_diag.c_print_component_stats.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/vc/extr_mmal_vc_diag.c_print_component_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, %struct.MMAL_VC_COMP_STATS_T* }
%struct.MMAL_VC_COMP_STATS_T = type { i32, i8*, i32, i32, i32 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"component array looks corrupt (list size %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [62 x i8] c"%d created, %d destroyed (%d destroying), %d create failures\0A\00", align 1
@MMAL_STATS_COMP_IDLE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"created\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"destroying\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"destroyed\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"corrupt\00", align 1
@.str.6 = private unnamed_addr constant [53 x i8] c"%-32s: %s: pid %d address %p pool mem alloc size %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*)* @print_component_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @print_component_stats(%struct.TYPE_5__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.MMAL_VC_COMP_STATS_T*, align 8
  %6 = alloca i8*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp sgt i32 %10, 64
  br i1 %11, label %12, label %19

12:                                               ; preds = %1
  %13 = load i32, i32* @stderr, align 4
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @fprintf(i32 %13, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %17)
  br label %85

19:                                               ; preds = %1
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 8
  %36 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.1, i64 0, i64 0), i32 %23, i32 %27, i32 %31, i32 %35)
  store i64 0, i64* %4, align 8
  br label %37

37:                                               ; preds = %81, %19
  %38 = load i64, i64* %4, align 8
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = sext i32 %42 to i64
  %44 = icmp ult i64 %38, %43
  br i1 %44, label %45, label %84

45:                                               ; preds = %37
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 5
  %49 = load %struct.MMAL_VC_COMP_STATS_T*, %struct.MMAL_VC_COMP_STATS_T** %48, align 8
  %50 = load i64, i64* %4, align 8
  %51 = getelementptr inbounds %struct.MMAL_VC_COMP_STATS_T, %struct.MMAL_VC_COMP_STATS_T* %49, i64 %50
  store %struct.MMAL_VC_COMP_STATS_T* %51, %struct.MMAL_VC_COMP_STATS_T** %5, align 8
  %52 = load %struct.MMAL_VC_COMP_STATS_T*, %struct.MMAL_VC_COMP_STATS_T** %5, align 8
  %53 = getelementptr inbounds %struct.MMAL_VC_COMP_STATS_T, %struct.MMAL_VC_COMP_STATS_T* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @MMAL_STATS_COMP_IDLE, align 4
  %56 = icmp ne i32 %54, %55
  br i1 %56, label %57, label %80

57:                                               ; preds = %45
  %58 = load %struct.MMAL_VC_COMP_STATS_T*, %struct.MMAL_VC_COMP_STATS_T** %5, align 8
  %59 = getelementptr inbounds %struct.MMAL_VC_COMP_STATS_T, %struct.MMAL_VC_COMP_STATS_T* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  switch i32 %60, label %64 [
    i32 130, label %61
    i32 128, label %62
    i32 129, label %63
  ]

61:                                               ; preds = %57
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8** %6, align 8
  br label %65

62:                                               ; preds = %57
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8** %6, align 8
  br label %65

63:                                               ; preds = %57
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8** %6, align 8
  br label %65

64:                                               ; preds = %57
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8** %6, align 8
  br label %65

65:                                               ; preds = %64, %63, %62, %61
  %66 = load %struct.MMAL_VC_COMP_STATS_T*, %struct.MMAL_VC_COMP_STATS_T** %5, align 8
  %67 = getelementptr inbounds %struct.MMAL_VC_COMP_STATS_T, %struct.MMAL_VC_COMP_STATS_T* %66, i32 0, i32 1
  %68 = load i8*, i8** %67, align 8
  %69 = load i8*, i8** %6, align 8
  %70 = load %struct.MMAL_VC_COMP_STATS_T*, %struct.MMAL_VC_COMP_STATS_T** %5, align 8
  %71 = getelementptr inbounds %struct.MMAL_VC_COMP_STATS_T, %struct.MMAL_VC_COMP_STATS_T* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.MMAL_VC_COMP_STATS_T*, %struct.MMAL_VC_COMP_STATS_T** %5, align 8
  %74 = getelementptr inbounds %struct.MMAL_VC_COMP_STATS_T, %struct.MMAL_VC_COMP_STATS_T* %73, i32 0, i32 4
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.MMAL_VC_COMP_STATS_T*, %struct.MMAL_VC_COMP_STATS_T** %5, align 8
  %77 = getelementptr inbounds %struct.MMAL_VC_COMP_STATS_T, %struct.MMAL_VC_COMP_STATS_T* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.6, i64 0, i64 0), i8* %68, i8* %69, i32 %72, i32 %75, i32 %78)
  br label %80

80:                                               ; preds = %65, %45
  br label %81

81:                                               ; preds = %80
  %82 = load i64, i64* %4, align 8
  %83 = add i64 %82, 1
  store i64 %83, i64* %4, align 8
  br label %37

84:                                               ; preds = %37
  store i32 0, i32* %2, align 4
  br label %86

85:                                               ; preds = %12
  store i32 -1, i32* %2, align 4
  br label %86

86:                                               ; preds = %85, %84
  %87 = load i32, i32* %2, align 4
  ret i32 %87
}

declare dso_local i32 @fprintf(i32, i8*, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
