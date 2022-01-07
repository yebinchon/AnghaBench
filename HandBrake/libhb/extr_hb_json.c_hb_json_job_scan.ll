; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_hb_json.c_hb_json_job_scan.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_hb_json.c_hb_json_job_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i64 }

@.str = private unnamed_addr constant [15 x i8] c"{s:{s:s, s:i}}\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"Source\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"Path\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"Title\00", align 1
@.str.4 = private unnamed_addr constant [46 x i8] c"json unpack failure, failed to find title: %s\00", align 1
@HB_STATE_SCANNING = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hb_json_job_scan(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_5__, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_6__, align 8
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = call i32* @hb_value_json(i8* %11)
  store i32* %12, i32** %5, align 8
  store i8* null, i8** %9, align 8
  %13 = load i32*, i32** %5, align 8
  %14 = call i32 @unpack_s(i8** %9)
  %15 = call i32 @unpack_i(i32* %8)
  %16 = call i32 @json_unpack_ex(i32* %13, %struct.TYPE_5__* %7, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %14, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %2
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @hb_error(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0), i32 %21)
  %23 = call i32 @hb_value_free(i32** %5)
  br label %42

24:                                               ; preds = %2
  %25 = load i32*, i32** %3, align 8
  %26 = load i8*, i8** %9, align 8
  %27 = load i32, i32* %8, align 4
  %28 = call i32 @hb_scan(i32* %25, i8* %26, i32 %27, i32 -1, i32 0, i32 0)
  %29 = load i32*, i32** %3, align 8
  %30 = call i32 @hb_get_state2(i32* %29, %struct.TYPE_6__* %10)
  br label %31

31:                                               ; preds = %36, %24
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @HB_STATE_SCANNING, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %31
  %37 = call i32 @hb_snooze(i32 50)
  %38 = load i32*, i32** %3, align 8
  %39 = call i32 @hb_get_state2(i32* %38, %struct.TYPE_6__* %10)
  br label %31

40:                                               ; preds = %31
  %41 = call i32 @hb_value_free(i32** %5)
  br label %42

42:                                               ; preds = %40, %19
  ret void
}

declare dso_local i32* @hb_value_json(i8*) #1

declare dso_local i32 @json_unpack_ex(i32*, %struct.TYPE_5__*, i32, i8*, i8*, i8*, i32, i8*, i32) #1

declare dso_local i32 @unpack_s(i8**) #1

declare dso_local i32 @unpack_i(i32*) #1

declare dso_local i32 @hb_error(i8*, i32) #1

declare dso_local i32 @hb_value_free(i32**) #1

declare dso_local i32 @hb_scan(i32*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @hb_get_state2(i32*, %struct.TYPE_6__*) #1

declare dso_local i32 @hb_snooze(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
