; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_dvdnav.c_hb_dvdnav_start.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_dvdnav.c_hb_dvdnav_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64, i32, i64, i32, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_13__ = type { i32, i32 }

@DVDNAV_STATUS_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"dvd: dvdnav_*_play failed - %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, %struct.TYPE_10__*, i32)* @hb_dvdnav_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hb_dvdnav_start(%struct.TYPE_12__* %0, %struct.TYPE_10__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_13__*, align 8
  %11 = alloca i64, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %5, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 0
  store %struct.TYPE_11__* %13, %struct.TYPE_11__** %8, align 8
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %9, align 4
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %3
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %23 = call i32 @hb_dvdnav_reset(%struct.TYPE_11__* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %21
  store i32 0, i32* %4, align 4
  br label %80

26:                                               ; preds = %21, %3
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %28 = load i32, i32* %9, align 4
  %29 = call i32 @TitleOpenIfo(%struct.TYPE_11__* %27, i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %26
  store i32 0, i32* %4, align 4
  br label %80

32:                                               ; preds = %26
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @dvdnav_reset(i32 %35)
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %7, align 4
  %41 = sub nsw i32 %40, 1
  %42 = call %struct.TYPE_13__* @hb_list_item(i32 %39, i32 %41)
  store %struct.TYPE_13__* %42, %struct.TYPE_13__** %10, align 8
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %44 = icmp ne %struct.TYPE_13__* %43, null
  br i1 %44, label %45, label %57

45:                                               ; preds = %32
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* %9, align 4
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i64 @dvdnav_program_play(i32 %48, i32 %49, i32 %52, i32 %55)
  store i64 %56, i64* %11, align 8
  br label %63

57:                                               ; preds = %32
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* %9, align 4
  %62 = call i64 @dvdnav_part_play(i32 %60, i32 %61, i32 1)
  store i64 %62, i64* %11, align 8
  br label %63

63:                                               ; preds = %57, %45
  %64 = load i64, i64* %11, align 8
  %65 = load i64, i64* @DVDNAV_STATUS_OK, align 8
  %66 = icmp ne i64 %64, %65
  br i1 %66, label %67, label %73

67:                                               ; preds = %63
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @dvdnav_err_to_string(i32 %70)
  %72 = call i32 @hb_error(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %71)
  store i32 0, i32* %4, align 4
  br label %80

73:                                               ; preds = %63
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 2
  store i64 0, i64* %75, align 8
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 1
  store i32 0, i32* %77, align 8
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 0
  store i64 0, i64* %79, align 8
  store i32 1, i32* %4, align 4
  br label %80

80:                                               ; preds = %73, %67, %31, %25
  %81 = load i32, i32* %4, align 4
  ret i32 %81
}

declare dso_local i32 @hb_dvdnav_reset(%struct.TYPE_11__*) #1

declare dso_local i32 @TitleOpenIfo(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @dvdnav_reset(i32) #1

declare dso_local %struct.TYPE_13__* @hb_list_item(i32, i32) #1

declare dso_local i64 @dvdnav_program_play(i32, i32, i32, i32) #1

declare dso_local i64 @dvdnav_part_play(i32, i32, i32) #1

declare dso_local i32 @hb_error(i8*, i32) #1

declare dso_local i32 @dvdnav_err_to_string(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
