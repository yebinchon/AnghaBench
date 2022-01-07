; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_dvdnav.c_hb_dvdnav_reset.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_dvdnav.c_hb_dvdnav_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32 }

@DVDNAV_STATUS_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [49 x i8] c"dvd: not a dvd - trying as a stream/file instead\00", align 1
@DVD_READ_CACHE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"Error: dvdnav_set_readahead_flag: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"Error: dvdnav_set_PGC_positioning_flag: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*)* @hb_dvdnav_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hb_dvdnav_reset(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i8*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 8
  %8 = call i8* @hb_utf8_to_cp(i32 %7)
  store i8* %8, i8** %4, align 8
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %1
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = call i32 @dvdnav_close(i64 %16)
  br label %18

18:                                               ; preds = %13, %1
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i8*, i8** %4, align 8
  %22 = call i64 @dvdnav_open(i64* %20, i8* %21)
  %23 = load i64, i64* @DVDNAV_STATUS_OK, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %18
  %26 = call i32 @hb_log(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  br label %57

27:                                               ; preds = %18
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i32, i32* @DVD_READ_CACHE, align 4
  %32 = call i64 @dvdnav_set_readahead_flag(i64 %30, i32 %31)
  %33 = load i64, i64* @DVDNAV_STATUS_OK, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %41

35:                                               ; preds = %27
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @dvdnav_err_to_string(i64 %38)
  %40 = call i32 @hb_error(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %39)
  br label %57

41:                                               ; preds = %27
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = call i64 @dvdnav_set_PGC_positioning_flag(i64 %44, i32 1)
  %46 = load i64, i64* @DVDNAV_STATUS_OK, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %54

48:                                               ; preds = %41
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = call i32 @dvdnav_err_to_string(i64 %51)
  %53 = call i32 @hb_error(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %52)
  br label %57

54:                                               ; preds = %41
  %55 = load i8*, i8** %4, align 8
  %56 = call i32 @free(i8* %55)
  store i32 1, i32* %2, align 4
  br label %70

57:                                               ; preds = %48, %35, %25
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %57
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = call i32 @dvdnav_close(i64 %65)
  br label %67

67:                                               ; preds = %62, %57
  %68 = load i8*, i8** %4, align 8
  %69 = call i32 @free(i8* %68)
  store i32 0, i32* %2, align 4
  br label %70

70:                                               ; preds = %67, %54
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

declare dso_local i8* @hb_utf8_to_cp(i32) #1

declare dso_local i32 @dvdnav_close(i64) #1

declare dso_local i64 @dvdnav_open(i64*, i8*) #1

declare dso_local i32 @hb_log(i8*) #1

declare dso_local i64 @dvdnav_set_readahead_flag(i64, i32) #1

declare dso_local i32 @hb_error(i8*, i32) #1

declare dso_local i32 @dvdnav_err_to_string(i64) #1

declare dso_local i64 @dvdnav_set_PGC_positioning_flag(i64, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
