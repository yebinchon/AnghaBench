; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_opus_celt.c_ff_celt_free.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_opus_celt.c_ff_celt_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_4__*, i32, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_celt_free(%struct.TYPE_4__** %0) #0 {
  %2 = alloca %struct.TYPE_4__**, align 8
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_4__** %0, %struct.TYPE_4__*** %2, align 8
  %5 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %2, align 8
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  store %struct.TYPE_4__* %6, %struct.TYPE_4__** %3, align 8
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %8 = icmp ne %struct.TYPE_4__* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %38

10:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %11

11:                                               ; preds = %26, %10
  %12 = load i32, i32* %4, align 4
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 2
  %15 = load i32*, i32** %14, align 8
  %16 = call i32 @FF_ARRAY_ELEMS(i32* %15)
  %17 = icmp slt i32 %12, %16
  br i1 %17, label %18, label %29

18:                                               ; preds = %11
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 2
  %21 = load i32*, i32** %20, align 8
  %22 = load i32, i32* %4, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = call i32 @ff_mdct15_uninit(i32* %24)
  br label %26

26:                                               ; preds = %18
  %27 = load i32, i32* %4, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %4, align 4
  br label %11

29:                                               ; preds = %11
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  %32 = call i32 @ff_celt_pvq_uninit(i32* %31)
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = call i32 @av_freep(%struct.TYPE_4__** %34)
  %36 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %2, align 8
  %37 = call i32 @av_freep(%struct.TYPE_4__** %36)
  br label %38

38:                                               ; preds = %29, %9
  ret void
}

declare dso_local i32 @FF_ARRAY_ELEMS(i32*) #1

declare dso_local i32 @ff_mdct15_uninit(i32*) #1

declare dso_local i32 @ff_celt_pvq_uninit(i32*) #1

declare dso_local i32 @av_freep(%struct.TYPE_4__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
