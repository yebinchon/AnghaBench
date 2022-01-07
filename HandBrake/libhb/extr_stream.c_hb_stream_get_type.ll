; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_stream.c_hb_stream_get_type.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_stream.c_hb_stream_get_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [67 x i8] c"file is MPEG Transport Stream with %d byte packets offset %d bytes\00", align 1
@transport = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"file is MPEG Program Stream\00", align 1
@program = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*)* @hb_stream_get_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hb_stream_get_type(%struct.TYPE_6__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca [8192 x i32], align 16
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  %7 = getelementptr inbounds [8192 x i32], [8192 x i32]* %4, i64 0, i64 0
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @fread(i32* %7, i32 1, i32 32768, i32 %10)
  %12 = sext i32 %11 to i64
  %13 = icmp eq i64 %12, 32768
  br i1 %13, label %14, label %50

14:                                               ; preds = %1
  %15 = getelementptr inbounds [8192 x i32], [8192 x i32]* %4, i64 0, i64 0
  %16 = call i32 @hb_stream_check_for_ts(i32* %15)
  store i32 %16, i32* %5, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %37

18:                                               ; preds = %14
  %19 = load i32, i32* %5, align 4
  %20 = ashr i32 %19, 8
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %5, align 4
  %22 = and i32 %21, 255
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* %6, align 4
  %25 = call i32 (i8*, ...) @hb_log(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0), i32 %23, i32 %24)
  %26 = load i32, i32* %5, align 4
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  %29 = load i32, i32* @transport, align 4
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %33 = call i64 @hb_ts_stream_init(%struct.TYPE_6__* %32)
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %18
  store i32 1, i32* %2, align 4
  br label %51

36:                                               ; preds = %18
  br label %49

37:                                               ; preds = %14
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %39 = call i64 @hb_stream_check_for_ps(%struct.TYPE_6__* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %37
  %42 = call i32 (i8*, ...) @hb_log(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %43 = load i32, i32* @program, align 4
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 4
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %47 = call i32 @hb_ps_stream_init(%struct.TYPE_6__* %46)
  store i32 1, i32* %2, align 4
  br label %51

48:                                               ; preds = %37
  br label %49

49:                                               ; preds = %48, %36
  br label %50

50:                                               ; preds = %49, %1
  store i32 0, i32* %2, align 4
  br label %51

51:                                               ; preds = %50, %41, %35
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local i32 @fread(i32*, i32, i32, i32) #1

declare dso_local i32 @hb_stream_check_for_ts(i32*) #1

declare dso_local i32 @hb_log(i8*, ...) #1

declare dso_local i64 @hb_ts_stream_init(%struct.TYPE_6__*) #1

declare dso_local i64 @hb_stream_check_for_ps(%struct.TYPE_6__*) #1

declare dso_local i32 @hb_ps_stream_init(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
