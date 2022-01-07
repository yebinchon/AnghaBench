; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_graphparser.c_append_inout.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_graphparser.c_append_inout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_4__* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__**, %struct.TYPE_4__**)* @append_inout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @append_inout(%struct.TYPE_4__** %0, %struct.TYPE_4__** %1) #0 {
  %3 = alloca %struct.TYPE_4__**, align 8
  %4 = alloca %struct.TYPE_4__**, align 8
  store %struct.TYPE_4__** %0, %struct.TYPE_4__*** %3, align 8
  store %struct.TYPE_4__** %1, %struct.TYPE_4__*** %4, align 8
  br label %5

5:                                                ; preds = %17, %2
  %6 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %3, align 8
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %8 = icmp ne %struct.TYPE_4__* %7, null
  br i1 %8, label %9, label %15

9:                                                ; preds = %5
  %10 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %3, align 8
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = icmp ne %struct.TYPE_4__* %13, null
  br label %15

15:                                               ; preds = %9, %5
  %16 = phi i1 [ false, %5 ], [ %14, %9 ]
  br i1 %16, label %17, label %21

17:                                               ; preds = %15
  %18 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %3, align 8
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  store %struct.TYPE_4__** %20, %struct.TYPE_4__*** %3, align 8
  br label %5

21:                                               ; preds = %15
  %22 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %3, align 8
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = icmp ne %struct.TYPE_4__* %23, null
  br i1 %24, label %29, label %25

25:                                               ; preds = %21
  %26 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %4, align 8
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %3, align 8
  store %struct.TYPE_4__* %27, %struct.TYPE_4__** %28, align 8
  br label %35

29:                                               ; preds = %21
  %30 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %4, align 8
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %3, align 8
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  store %struct.TYPE_4__* %31, %struct.TYPE_4__** %34, align 8
  br label %35

35:                                               ; preds = %29, %25
  %36 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %4, align 8
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %36, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
