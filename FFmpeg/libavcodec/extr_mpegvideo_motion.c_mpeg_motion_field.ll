; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mpegvideo_motion.c_mpeg_motion_field.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mpegvideo_motion.c_mpeg_motion_field.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }

@FMT_MPEG1 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, i32*, i32*, i32*, i32, i32, i32**, [4 x i32]*, i32, i32, i32, i32)* @mpeg_motion_field to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mpeg_motion_field(%struct.TYPE_4__* %0, i32* %1, i32* %2, i32* %3, i32 %4, i32 %5, i32** %6, [4 x i32]* %7, i32 %8, i32 %9, i32 %10, i32 %11) #0 {
  %13 = alloca %struct.TYPE_4__*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32**, align 8
  %20 = alloca [4 x i32]*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %13, align 8
  store i32* %1, i32** %14, align 8
  store i32* %2, i32** %15, align 8
  store i32* %3, i32** %16, align 8
  store i32 %4, i32* %17, align 4
  store i32 %5, i32* %18, align 4
  store i32** %6, i32*** %19, align 8
  store [4 x i32]* %7, [4 x i32]** %20, align 8
  store i32 %8, i32* %21, align 4
  store i32 %9, i32* %22, align 4
  store i32 %10, i32* %23, align 4
  store i32 %11, i32* %24, align 4
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @FMT_MPEG1, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %45

30:                                               ; preds = %12
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %32 = load i32*, i32** %14, align 8
  %33 = load i32*, i32** %15, align 8
  %34 = load i32*, i32** %16, align 8
  %35 = load i32, i32* %17, align 4
  %36 = load i32, i32* %18, align 4
  %37 = load i32**, i32*** %19, align 8
  %38 = load [4 x i32]*, [4 x i32]** %20, align 8
  %39 = bitcast [4 x i32]* %38 to i32**
  %40 = load i32, i32* %21, align 4
  %41 = load i32, i32* %22, align 4
  %42 = load i32, i32* %23, align 4
  %43 = load i32, i32* %24, align 4
  %44 = call i32 @mpeg_motion_internal(%struct.TYPE_4__* %31, i32* %32, i32* %33, i32* %34, i32 1, i32 %35, i32 %36, i32** %37, i32** %39, i32 %40, i32 %41, i32 %42, i32 1, i32 0, i32 %43)
  br label %60

45:                                               ; preds = %12
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %47 = load i32*, i32** %14, align 8
  %48 = load i32*, i32** %15, align 8
  %49 = load i32*, i32** %16, align 8
  %50 = load i32, i32* %17, align 4
  %51 = load i32, i32* %18, align 4
  %52 = load i32**, i32*** %19, align 8
  %53 = load [4 x i32]*, [4 x i32]** %20, align 8
  %54 = bitcast [4 x i32]* %53 to i32**
  %55 = load i32, i32* %21, align 4
  %56 = load i32, i32* %22, align 4
  %57 = load i32, i32* %23, align 4
  %58 = load i32, i32* %24, align 4
  %59 = call i32 @mpeg_motion_internal(%struct.TYPE_4__* %46, i32* %47, i32* %48, i32* %49, i32 1, i32 %50, i32 %51, i32** %52, i32** %54, i32 %55, i32 %56, i32 %57, i32 0, i32 0, i32 %58)
  br label %60

60:                                               ; preds = %45, %30
  ret void
}

declare dso_local i32 @mpeg_motion_internal(%struct.TYPE_4__*, i32*, i32*, i32*, i32, i32, i32, i32**, i32**, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
