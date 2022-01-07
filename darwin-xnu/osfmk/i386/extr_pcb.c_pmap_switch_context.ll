; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_pcb.c_pmap_switch_context.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_pcb.c_pmap_switch_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64 }

@FALSE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_12__*, %struct.TYPE_12__*, i32)* @pmap_switch_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pmap_switch_context(%struct.TYPE_12__* %0, %struct.TYPE_12__* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = call i64 (...) @ml_get_interrupts_enabled()
  %10 = load i64, i64* @FALSE, align 8
  %11 = icmp eq i64 %9, %10
  %12 = zext i1 %11 to i32
  %13 = call i32 @pmap_assert(i32 %12)
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  store %struct.TYPE_11__* %16, %struct.TYPE_11__** %7, align 8
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  store %struct.TYPE_11__* %19, %struct.TYPE_11__** %8, align 8
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %22 = icmp ne %struct.TYPE_11__* %20, %21
  br i1 %22, label %30, label %23

23:                                               ; preds = %3
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %39

30:                                               ; preds = %23, %3
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @PMAP_DEACTIVATE_MAP(%struct.TYPE_11__* %31, %struct.TYPE_12__* %32, i32 %33)
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @PMAP_ACTIVATE_MAP(%struct.TYPE_11__* %35, %struct.TYPE_12__* %36, i32 %37)
  br label %39

39:                                               ; preds = %30, %23
  ret void
}

declare dso_local i32 @pmap_assert(i32) #1

declare dso_local i64 @ml_get_interrupts_enabled(...) #1

declare dso_local i32 @PMAP_DEACTIVATE_MAP(%struct.TYPE_11__*, %struct.TYPE_12__*, i32) #1

declare dso_local i32 @PMAP_ACTIVATE_MAP(%struct.TYPE_11__*, %struct.TYPE_12__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
