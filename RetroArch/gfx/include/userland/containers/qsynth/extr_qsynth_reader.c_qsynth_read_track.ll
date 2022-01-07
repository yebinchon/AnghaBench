; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/qsynth/extr_qsynth_reader.c_qsynth_read_track.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/qsynth/extr_qsynth_reader.c_qsynth_read_track.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64 }

@VC_CONTAINER_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i64*, i64*, i64*, i64*)* @qsynth_read_track to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qsynth_read_track(%struct.TYPE_3__* %0, i64* %1, i64* %2, i64* %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %7, align 8
  store i64* %1, i64** %8, align 8
  store i64* %2, i64** %9, align 8
  store i64* %3, i64** %10, align 8
  store i64* %4, i64** %11, align 8
  store i64 0, i64* %12, align 8
  store i64 8, i64* %13, align 8
  store i32 0, i32* %14, align 4
  %20 = load i64*, i64** %9, align 8
  store i64 0, i64* %20, align 8
  %21 = load i64*, i64** %11, align 8
  store i64 0, i64* %21, align 8
  br label %22

22:                                               ; preds = %67, %5
  %23 = load i64, i64* %13, align 8
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp slt i64 %23, %26
  br i1 %27, label %28, label %68

28:                                               ; preds = %22
  store i64 0, i64* %17, align 8
  store i64 0, i64* %18, align 8
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* %13, align 8
  %33 = add nsw i64 %31, %32
  %34 = call i32 @qsynth_read_event(i64 %33, i64* %19, i32* %14, i64* %16, i64* %17, i64* %18)
  store i32 %34, i32* %15, align 4
  %35 = load i32, i32* @VC_CONTAINER_SUCCESS, align 4
  %36 = icmp ne i32 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %28
  %38 = load i32, i32* %15, align 4
  store i32 %38, i32* %6, align 4
  br label %72

39:                                               ; preds = %28
  %40 = load i64, i64* %19, align 8
  %41 = load i64, i64* %13, align 8
  %42 = add nsw i64 %41, %40
  store i64 %42, i64* %13, align 8
  %43 = load i64, i64* %16, align 8
  %44 = load i64, i64* %12, align 8
  %45 = add nsw i64 %44, %43
  store i64 %45, i64* %12, align 8
  %46 = load i64, i64* %17, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %63

48:                                               ; preds = %39
  %49 = load i64, i64* %12, align 8
  %50 = load i64*, i64** %11, align 8
  %51 = load i64, i64* %50, align 8
  %52 = sub nsw i64 %49, %51
  %53 = load i64*, i64** %10, align 8
  %54 = load i64, i64* %53, align 8
  %55 = mul nsw i64 %52, %54
  %56 = load i64*, i64** %9, align 8
  %57 = load i64, i64* %56, align 8
  %58 = add nsw i64 %57, %55
  store i64 %58, i64* %56, align 8
  %59 = load i64, i64* %17, align 8
  %60 = load i64*, i64** %10, align 8
  store i64 %59, i64* %60, align 8
  %61 = load i64, i64* %12, align 8
  %62 = load i64*, i64** %11, align 8
  store i64 %61, i64* %62, align 8
  br label %63

63:                                               ; preds = %48, %39
  %64 = load i64, i64* %18, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %63
  br label %68

67:                                               ; preds = %63
  br label %22

68:                                               ; preds = %66, %22
  %69 = load i64, i64* %12, align 8
  %70 = load i64*, i64** %8, align 8
  store i64 %69, i64* %70, align 8
  %71 = load i32, i32* @VC_CONTAINER_SUCCESS, align 4
  store i32 %71, i32* %6, align 4
  br label %72

72:                                               ; preds = %68, %37
  %73 = load i32, i32* %6, align 4
  ret i32 %73
}

declare dso_local i32 @qsynth_read_event(i64, i64*, i32*, i64*, i64*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
