; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/console/extr_video_console.c_vc_progress_initialize.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/console/extr_video_console.c_vc_progress_initialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32, i32 }

@vc_clut = common dso_local global i8* null, align 8
@vc_clut8 = common dso_local global i8* null, align 8
@vc_progress = common dso_local global %struct.TYPE_4__* null, align 8
@vc_progress_data = common dso_local global i8** null, align 8
@vc_progress_alpha = common dso_local global i8* null, align 8
@vc_progress_call = common dso_local global i32 0, align 4
@vc_progress_task = common dso_local global i32 0, align 4
@vc_progress_interval = common dso_local global i8* null, align 8
@vc_progressmeter_call = common dso_local global i32 0, align 4
@vc_progressmeter_task = common dso_local global i32 0, align 4
@vc_progressmeter_interval = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vc_progress_initialize(%struct.TYPE_4__* %0, i8* %1, i8* %2, i8* %3, i8* %4) #0 {
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i8* %4, i8** %10, align 8
  %12 = load i8*, i8** %10, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %20

14:                                               ; preds = %5
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %16 = icmp ne %struct.TYPE_4__* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %14
  %18 = load i8*, i8** %7, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %17, %14, %5
  br label %69

21:                                               ; preds = %17
  %22 = load i8*, i8** %10, align 8
  store i8* %22, i8** @vc_clut, align 8
  %23 = load i8*, i8** %10, align 8
  store i8* %23, i8** @vc_clut8, align 8
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  store %struct.TYPE_4__* %24, %struct.TYPE_4__** @vc_progress, align 8
  %25 = load i8*, i8** %7, align 8
  %26 = load i8**, i8*** @vc_progress_data, align 8
  %27 = getelementptr inbounds i8*, i8** %26, i64 0
  store i8* %25, i8** %27, align 8
  %28 = load i8*, i8** %8, align 8
  %29 = load i8**, i8*** @vc_progress_data, align 8
  %30 = getelementptr inbounds i8*, i8** %29, i64 1
  store i8* %28, i8** %30, align 8
  %31 = load i8*, i8** %9, align 8
  %32 = load i8**, i8*** @vc_progress_data, align 8
  %33 = getelementptr inbounds i8*, i8** %32, i64 2
  store i8* %31, i8** %33, align 8
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** @vc_progress, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = and i32 2, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %54

39:                                               ; preds = %21
  %40 = load i8*, i8** %7, align 8
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** @vc_progress, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** @vc_progress, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = mul nsw i32 %43, %46
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** @vc_progress, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = mul nsw i32 %47, %50
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8, i8* %40, i64 %52
  store i8* %53, i8** @vc_progress_alpha, align 8
  br label %55

54:                                               ; preds = %21
  store i8* null, i8** @vc_progress_alpha, align 8
  br label %55

55:                                               ; preds = %54, %39
  %56 = load i32, i32* @vc_progress_task, align 4
  %57 = call i32 @thread_call_setup(i32* @vc_progress_call, i32 %56, i32* null)
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** @vc_progress, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @clock_interval_to_absolutetime_interval(i32 %60, i32 1000000, i64* %11)
  %62 = load i64, i64* %11, align 8
  %63 = inttoptr i64 %62 to i8*
  store i8* %63, i8** @vc_progress_interval, align 8
  %64 = load i32, i32* @vc_progressmeter_task, align 4
  %65 = call i32 @thread_call_setup(i32* @vc_progressmeter_call, i32 %64, i32* null)
  %66 = call i32 @clock_interval_to_absolutetime_interval(i32 125, i32 1000000, i64* %11)
  %67 = load i64, i64* %11, align 8
  %68 = inttoptr i64 %67 to i8*
  store i8* %68, i8** @vc_progressmeter_interval, align 8
  br label %69

69:                                               ; preds = %55, %20
  ret void
}

declare dso_local i32 @thread_call_setup(i32*, i32, i32*) #1

declare dso_local i32 @clock_interval_to_absolutetime_interval(i32, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
