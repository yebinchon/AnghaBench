; ModuleID = '/home/carl/AnghaBench/RetroArch/input/drivers_joypad/wiiu/extr_wpad_driver.c_apply_clamping.c'
source_filename = "/home/carl/AnghaBench/RetroArch/input/drivers_joypad/wiiu/extr_wpad_driver.c_apply_clamping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64 }
%struct.video_viewport = type { i64, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, %struct.video_viewport*, i32*)* @apply_clamping to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @apply_clamping(%struct.TYPE_3__* %0, %struct.video_viewport* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca %struct.video_viewport*, align 8
  %6 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store %struct.video_viewport* %1, %struct.video_viewport** %5, align 8
  store i32* %2, i32** %6, align 8
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.video_viewport*, %struct.video_viewport** %5, align 8
  %11 = getelementptr inbounds %struct.video_viewport, %struct.video_viewport* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp slt i64 %9, %12
  br i1 %13, label %14, label %21

14:                                               ; preds = %3
  %15 = load %struct.video_viewport*, %struct.video_viewport** %5, align 8
  %16 = getelementptr inbounds %struct.video_viewport, %struct.video_viewport* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  store i64 %17, i64* %19, align 8
  %20 = load i32*, i32** %6, align 8
  store i32 1, i32* %20, align 4
  br label %45

21:                                               ; preds = %3
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.video_viewport*, %struct.video_viewport** %5, align 8
  %26 = getelementptr inbounds %struct.video_viewport, %struct.video_viewport* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.video_viewport*, %struct.video_viewport** %5, align 8
  %29 = getelementptr inbounds %struct.video_viewport, %struct.video_viewport* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = add nsw i64 %27, %30
  %32 = icmp sgt i64 %24, %31
  br i1 %32, label %33, label %44

33:                                               ; preds = %21
  %34 = load %struct.video_viewport*, %struct.video_viewport** %5, align 8
  %35 = getelementptr inbounds %struct.video_viewport, %struct.video_viewport* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.video_viewport*, %struct.video_viewport** %5, align 8
  %38 = getelementptr inbounds %struct.video_viewport, %struct.video_viewport* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = add nsw i64 %36, %39
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  store i64 %40, i64* %42, align 8
  %43 = load i32*, i32** %6, align 8
  store i32 1, i32* %43, align 4
  br label %44

44:                                               ; preds = %33, %21
  br label %45

45:                                               ; preds = %44, %14
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.video_viewport*, %struct.video_viewport** %5, align 8
  %50 = getelementptr inbounds %struct.video_viewport, %struct.video_viewport* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = icmp slt i64 %48, %51
  br i1 %52, label %53, label %60

53:                                               ; preds = %45
  %54 = load %struct.video_viewport*, %struct.video_viewport** %5, align 8
  %55 = getelementptr inbounds %struct.video_viewport, %struct.video_viewport* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 1
  store i64 %56, i64* %58, align 8
  %59 = load i32*, i32** %6, align 8
  store i32 1, i32* %59, align 4
  br label %84

60:                                               ; preds = %45
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.video_viewport*, %struct.video_viewport** %5, align 8
  %65 = getelementptr inbounds %struct.video_viewport, %struct.video_viewport* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.video_viewport*, %struct.video_viewport** %5, align 8
  %68 = getelementptr inbounds %struct.video_viewport, %struct.video_viewport* %67, i32 0, i32 3
  %69 = load i64, i64* %68, align 8
  %70 = add nsw i64 %66, %69
  %71 = icmp sgt i64 %63, %70
  br i1 %71, label %72, label %83

72:                                               ; preds = %60
  %73 = load %struct.video_viewport*, %struct.video_viewport** %5, align 8
  %74 = getelementptr inbounds %struct.video_viewport, %struct.video_viewport* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.video_viewport*, %struct.video_viewport** %5, align 8
  %77 = getelementptr inbounds %struct.video_viewport, %struct.video_viewport* %76, i32 0, i32 3
  %78 = load i64, i64* %77, align 8
  %79 = add nsw i64 %75, %78
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 1
  store i64 %79, i64* %81, align 8
  %82 = load i32*, i32** %6, align 8
  store i32 1, i32* %82, align 4
  br label %83

83:                                               ; preds = %72, %60
  br label %84

84:                                               ; preds = %83, %53
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
