; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_console.c___console_vipostcb.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_console.c___console_vipostcb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i64, i64* }

@TRUE = common dso_local global i32 0, align 4
@do_xfb_copy = common dso_local global i32 0, align 4
@curr_con = common dso_local global %struct.TYPE_2__* null, align 8
@VI_DISPLAY_PIX_SZ = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__console_vipostcb(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  store i64 %0, i64* %2, align 8
  %8 = load i32, i32* @TRUE, align 4
  store i32 %8, i32* @do_xfb_copy, align 4
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** @curr_con, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 5
  %11 = load i64*, i64** %10, align 8
  store i64* %11, i64** %7, align 8
  %12 = call i64* (...) @VIDEO_GetCurrentFramebuffer()
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** @curr_con, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** @curr_con, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = mul nsw i32 %15, %18
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i64, i64* %12, i64 %20
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** @curr_con, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @VI_DISPLAY_PIX_SZ, align 4
  %26 = mul nsw i32 %24, %25
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i64, i64* %21, i64 %27
  store i64* %28, i64** %6, align 8
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** @curr_con, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = sdiv i32 %31, 4
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** @curr_con, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @VI_DISPLAY_PIX_SZ, align 4
  %37 = sdiv i32 %35, %36
  %38 = sub nsw i32 %32, %37
  %39 = sext i32 %38 to i64
  store i64 %39, i64* %5, align 8
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** @curr_con, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 4
  %42 = load i64, i64* %41, align 8
  store i64 %42, i64* %3, align 8
  br label %43

43:                                               ; preds = %69, %1
  %44 = load i64, i64* %3, align 8
  %45 = icmp sgt i64 %44, 0
  br i1 %45, label %46, label %72

46:                                               ; preds = %43
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** @curr_con, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = sext i32 %49 to i64
  store i64 %50, i64* %4, align 8
  br label %51

51:                                               ; preds = %60, %46
  %52 = load i64, i64* %4, align 8
  %53 = icmp sgt i64 %52, 0
  br i1 %53, label %54, label %65

54:                                               ; preds = %51
  %55 = load i64*, i64** %7, align 8
  %56 = getelementptr inbounds i64, i64* %55, i32 1
  store i64* %56, i64** %7, align 8
  %57 = load i64, i64* %55, align 8
  %58 = load i64*, i64** %6, align 8
  %59 = getelementptr inbounds i64, i64* %58, i32 1
  store i64* %59, i64** %6, align 8
  store i64 %57, i64* %58, align 8
  br label %60

60:                                               ; preds = %54
  %61 = load i32, i32* @VI_DISPLAY_PIX_SZ, align 4
  %62 = sext i32 %61 to i64
  %63 = load i64, i64* %4, align 8
  %64 = sub nsw i64 %63, %62
  store i64 %64, i64* %4, align 8
  br label %51

65:                                               ; preds = %51
  %66 = load i64, i64* %5, align 8
  %67 = load i64*, i64** %6, align 8
  %68 = getelementptr inbounds i64, i64* %67, i64 %66
  store i64* %68, i64** %6, align 8
  br label %69

69:                                               ; preds = %65
  %70 = load i64, i64* %3, align 8
  %71 = add nsw i64 %70, -1
  store i64 %71, i64* %3, align 8
  br label %43

72:                                               ; preds = %43
  %73 = load i32, i32* @FALSE, align 4
  store i32 %73, i32* @do_xfb_copy, align 4
  ret void
}

declare dso_local i64* @VIDEO_GetCurrentFramebuffer(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
