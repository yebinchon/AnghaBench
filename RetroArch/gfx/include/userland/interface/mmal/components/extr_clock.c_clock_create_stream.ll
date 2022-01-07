; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/components/extr_clock.c_clock_create_stream.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/components/extr_clock.c_clock_create_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [13 x i8] c"clock stream\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"failed to allocate stream\00", align 1
@MMAL_FALSE = common dso_local global i32 0, align 4
@MMAL_TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__**, i32, i32)* @clock_create_stream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clock_create_stream(%struct.TYPE_4__** %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_4__*, align 8
  store %struct.TYPE_4__** %0, %struct.TYPE_4__*** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = call %struct.TYPE_4__* @vcos_calloc(i32 1, i32 12, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_4__* %9, %struct.TYPE_4__** %8, align 8
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %11 = icmp ne %struct.TYPE_4__* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %3
  %13 = call i32 @LOG_ERROR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %14 = load i32, i32* @MMAL_FALSE, align 4
  store i32 %14, i32* %4, align 4
  br label %30

15:                                               ; preds = %3
  %16 = load i32, i32* %6, align 4
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 2
  store i32 %16, i32* %18, align 4
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @filter_init(i32* %20, i32 %21)
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @filter_init(i32* %24, i32 %25)
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %28 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %5, align 8
  store %struct.TYPE_4__* %27, %struct.TYPE_4__** %28, align 8
  %29 = load i32, i32* @MMAL_TRUE, align 4
  store i32 %29, i32* %4, align 4
  br label %30

30:                                               ; preds = %15, %12
  %31 = load i32, i32* %4, align 4
  ret i32 %31
}

declare dso_local %struct.TYPE_4__* @vcos_calloc(i32, i32, i8*) #1

declare dso_local i32 @LOG_ERROR(i8*) #1

declare dso_local i32 @filter_init(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
