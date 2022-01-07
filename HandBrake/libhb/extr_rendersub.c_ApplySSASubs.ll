; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_rendersub.c_ApplySSASubs.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_rendersub.c_ApplySSASubs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_17__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_18__ = type { %struct.TYPE_18__* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_16__*, %struct.TYPE_17__*)* @ApplySSASubs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ApplySSASubs(%struct.TYPE_16__* %0, %struct.TYPE_17__* %1) #0 {
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca %struct.TYPE_18__*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %3, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %4, align 8
  %8 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = sdiv i32 %17, 90
  %19 = call %struct.TYPE_18__* @ass_render_frame(i32 %10, i32 %13, i32 %18, i32* null)
  store %struct.TYPE_18__* %19, %struct.TYPE_18__** %5, align 8
  %20 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %21 = icmp ne %struct.TYPE_18__* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %2
  br label %45

23:                                               ; preds = %2
  %24 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  store %struct.TYPE_18__* %24, %struct.TYPE_18__** %7, align 8
  br label %25

25:                                               ; preds = %41, %23
  %26 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %27 = icmp ne %struct.TYPE_18__* %26, null
  br i1 %27, label %28, label %45

28:                                               ; preds = %25
  %29 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %30 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %31 = call %struct.TYPE_17__* @RenderSSAFrame(%struct.TYPE_16__* %29, %struct.TYPE_18__* %30)
  store %struct.TYPE_17__* %31, %struct.TYPE_17__** %6, align 8
  %32 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %33 = icmp ne %struct.TYPE_17__* %32, null
  br i1 %33, label %34, label %40

34:                                               ; preds = %28
  %35 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %36 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %37 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %38 = call i32 @ApplySub(%struct.TYPE_16__* %35, %struct.TYPE_17__* %36, %struct.TYPE_17__* %37)
  %39 = call i32 @hb_buffer_close(%struct.TYPE_17__** %6)
  br label %40

40:                                               ; preds = %34, %28
  br label %41

41:                                               ; preds = %40
  %42 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_18__*, %struct.TYPE_18__** %43, align 8
  store %struct.TYPE_18__* %44, %struct.TYPE_18__** %7, align 8
  br label %25

45:                                               ; preds = %22, %25
  ret void
}

declare dso_local %struct.TYPE_18__* @ass_render_frame(i32, i32, i32, i32*) #1

declare dso_local %struct.TYPE_17__* @RenderSSAFrame(%struct.TYPE_16__*, %struct.TYPE_18__*) #1

declare dso_local i32 @ApplySub(%struct.TYPE_16__*, %struct.TYPE_17__*, %struct.TYPE_17__*) #1

declare dso_local i32 @hb_buffer_close(%struct.TYPE_17__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
