; ModuleID = '/home/carl/AnghaBench/RetroArch/input/drivers_hid/extr_wiiu_hid.c_wiiu_hid_read_loop_callback.c'
source_filename = "/home/carl/AnghaBench/RetroArch/input/drivers_hid/extr_wiiu_hid.c_wiiu_hid_read_loop_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (i32, i32*, i32)* }

@.str = private unnamed_addr constant [34 x i8] c"read_loop_callback: bad userdata\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"async read failed\00", align 1
@ADAPTER_STATE_READING = common dso_local global i64 0, align 8
@ADAPTER_STATE_READY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32*, i32, i8*)* @wiiu_hid_read_loop_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wiiu_hid_read_loop_callback(i32 %0, i32 %1, i32* %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_5__*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i8* %4, i8** %10, align 8
  %12 = load i8*, i8** %10, align 8
  %13 = bitcast i8* %12 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %13, %struct.TYPE_5__** %11, align 8
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %15 = icmp ne %struct.TYPE_5__* %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %5
  %17 = call i32 @RARCH_ERR(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %50

18:                                               ; preds = %5
  %19 = load i32, i32* %7, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %18
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @report_hid_error(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_5__* %22, i32 %23)
  br label %25

25:                                               ; preds = %21, %18
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @ADAPTER_STATE_READING, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %50

31:                                               ; preds = %25
  %32 = load i64, i64* @ADAPTER_STATE_READY, align 8
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  store i64 %32, i64* %34, align 8
  %35 = load i32, i32* %7, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %49

37:                                               ; preds = %31
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 2
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32 (i32, i32*, i32)*, i32 (i32, i32*, i32)** %41, align 8
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load i32*, i32** %8, align 8
  %47 = load i32, i32* %9, align 4
  %48 = call i32 %42(i32 %45, i32* %46, i32 %47)
  br label %49

49:                                               ; preds = %37, %31
  br label %50

50:                                               ; preds = %16, %49, %25
  ret void
}

declare dso_local i32 @RARCH_ERR(i8*) #1

declare dso_local i32 @report_hid_error(i8*, %struct.TYPE_5__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
