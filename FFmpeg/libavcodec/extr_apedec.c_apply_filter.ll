; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_apedec.c_apply_filter.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_apedec.c_apply_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, i32*, i32*, i32*, i32, i32, i32)* @apply_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @apply_filter(%struct.TYPE_4__* %0, i32* %1, i32* %2, i32* %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32*, i32** %9, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  %21 = load i32*, i32** %10, align 8
  %22 = load i32, i32* %12, align 4
  %23 = load i32, i32* %13, align 4
  %24 = load i32, i32* %14, align 4
  %25 = call i32 @do_apply_filter(%struct.TYPE_4__* %15, i32 %18, i32* %20, i32* %21, i32 %22, i32 %23, i32 %24)
  %26 = load i32*, i32** %11, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %40

28:                                               ; preds = %7
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32*, i32** %9, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 1
  %35 = load i32*, i32** %11, align 8
  %36 = load i32, i32* %12, align 4
  %37 = load i32, i32* %13, align 4
  %38 = load i32, i32* %14, align 4
  %39 = call i32 @do_apply_filter(%struct.TYPE_4__* %29, i32 %32, i32* %34, i32* %35, i32 %36, i32 %37, i32 %38)
  br label %40

40:                                               ; preds = %28, %7
  ret void
}

declare dso_local i32 @do_apply_filter(%struct.TYPE_4__*, i32, i32*, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
