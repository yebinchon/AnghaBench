; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/libtests/extr_pngvalid.c_transform_set_encoding.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/libtests/extr_pngvalid.c_transform_set_encoding.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i64, i32 }

@PNG_sRGB_INTENT_ABSOLUTE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*)* @transform_set_encoding to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @transform_set_encoding(%struct.TYPE_10__* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %2, align 8
  %4 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %4, i32 0, i32 3
  %6 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  store %struct.TYPE_11__* %6, %struct.TYPE_11__** %3, align 8
  %7 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %8 = call i32 @modifier_set_encoding(%struct.TYPE_11__* %7)
  %9 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %10 = call i64 @modifier_color_encoding_is_set(%struct.TYPE_11__* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %44

12:                                               ; preds = %1
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %14 = call i64 @modifier_color_encoding_is_sRGB(%struct.TYPE_11__* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %12
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 2
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %20 = load i32, i32* @PNG_sRGB_INTENT_ABSOLUTE, align 4
  %21 = call i32 @srgb_modification_init(i32* %18, %struct.TYPE_11__* %19, i32 %20)
  br label %43

22:                                               ; preds = %12
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 1
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @gama_modification_init(i32* %24, %struct.TYPE_11__* %25, i32 %28)
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %22
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @chrm_modification_init(i32* %36, %struct.TYPE_11__* %37, i64 %40)
  br label %42

42:                                               ; preds = %34, %22
  br label %43

43:                                               ; preds = %42, %16
  br label %44

44:                                               ; preds = %43, %1
  ret void
}

declare dso_local i32 @modifier_set_encoding(%struct.TYPE_11__*) #1

declare dso_local i64 @modifier_color_encoding_is_set(%struct.TYPE_11__*) #1

declare dso_local i64 @modifier_color_encoding_is_sRGB(%struct.TYPE_11__*) #1

declare dso_local i32 @srgb_modification_init(i32*, %struct.TYPE_11__*, i32) #1

declare dso_local i32 @gama_modification_init(i32*, %struct.TYPE_11__*, i32) #1

declare dso_local i32 @chrm_modification_init(i32*, %struct.TYPE_11__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
