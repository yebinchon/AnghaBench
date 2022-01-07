; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_comb_detect.c_decomb_filter_thread.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_comb_detect.c_decomb_filter_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32*, i32*, %struct.TYPE_5__* }

@.str = private unnamed_addr constant [44 x i8] c"decomb filter thread started for segment %d\00", align 1
@MODE_GAMMA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @decomb_filter_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @decomb_filter_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %9 = load i8*, i8** %2, align 8
  %10 = bitcast i8* %9 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %10, %struct.TYPE_6__** %7, align 8
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 3
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  store %struct.TYPE_5__* %13, %struct.TYPE_5__** %3, align 8
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @hb_deep_log(i32 3, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %17)
  br label %19

19:                                               ; preds = %1, %71
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 1
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @taskset_thread_wait4start(i32* %21, i32 %22)
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 1
  %26 = load i32, i32* %4, align 4
  %27 = call i64 @taskset_thread_stop(i32* %25, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %19
  br label %76

30:                                               ; preds = %19
  store i32 0, i32* %8, align 4
  br label %31

31:                                               ; preds = %68, %30
  %32 = load i32, i32* %8, align 4
  %33 = icmp slt i32 %32, 1
  br i1 %33, label %34, label %71

34:                                               ; preds = %31
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %8, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* %5, align 4
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 2
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %8, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = add nsw i32 %42, %49
  store i32 %50, i32* %6, align 4
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @MODE_GAMMA, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %34
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %59 = load i32, i32* %5, align 4
  %60 = load i32, i32* %6, align 4
  %61 = call i32 @detect_gamma_combed_segment(%struct.TYPE_5__* %58, i32 %59, i32 %60)
  br label %67

62:                                               ; preds = %34
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %64 = load i32, i32* %5, align 4
  %65 = load i32, i32* %6, align 4
  %66 = call i32 @detect_combed_segment(%struct.TYPE_5__* %63, i32 %64, i32 %65)
  br label %67

67:                                               ; preds = %62, %57
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %8, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %8, align 4
  br label %31

71:                                               ; preds = %31
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 1
  %74 = load i32, i32* %4, align 4
  %75 = call i32 @taskset_thread_complete(i32* %73, i32 %74)
  br label %19

76:                                               ; preds = %29
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 1
  %79 = load i32, i32* %4, align 4
  %80 = call i32 @taskset_thread_complete(i32* %78, i32 %79)
  ret void
}

declare dso_local i32 @hb_deep_log(i32, i8*, i32) #1

declare dso_local i32 @taskset_thread_wait4start(i32*, i32) #1

declare dso_local i64 @taskset_thread_stop(i32*, i32) #1

declare dso_local i32 @detect_gamma_combed_segment(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @detect_combed_segment(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @taskset_thread_complete(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
