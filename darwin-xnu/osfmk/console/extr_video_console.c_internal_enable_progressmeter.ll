; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/console/extr_video_console.c_internal_enable_progressmeter.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/console/extr_video_console.c_internal_enable_progressmeter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i8* null, align 8
@kProgressBarWidth = common dso_local global i32 0, align 4
@vc_uiscale = common dso_local global i32 0, align 4
@kProgressBarHeight = common dso_local global i32 0, align 4
@vc_progress_lock = common dso_local global i32 0, align 4
@kProgressMeterUser = common dso_local global i32 0, align 4
@gc_enabled = common dso_local global i64 0, align 8
@gc_acquired = common dso_local global i32 0, align 4
@gc_graphics_boot = common dso_local global i32 0, align 4
@kProgressMeterKernel = common dso_local global i32 0, align 4
@vc_progressmeter_enable = common dso_local global i32 0, align 4
@kProgressMeterOff = common dso_local global i32 0, align 4
@vc_progressmeter_backbuffer = common dso_local global i8* null, align 8
@kDataAlpha = common dso_local global i32 0, align 4
@kSave = common dso_local global i32 0, align 4
@vc_progressmeter_drawn = common dso_local global i64 0, align 8
@kDataBack = common dso_local global i32 0, align 4
@TRUE = common dso_local global i8* null, align 8
@vc_progress_white = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @internal_enable_progressmeter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @internal_enable_progressmeter(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  %6 = load i8*, i8** @FALSE, align 8
  store i8* %6, i8** %5, align 8
  store i8* null, i8** %4, align 8
  %7 = load i32, i32* %2, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %21

9:                                                ; preds = %1
  %10 = load i32, i32* @kProgressBarWidth, align 4
  %11 = load i32, i32* @vc_uiscale, align 4
  %12 = mul nsw i32 %10, %11
  %13 = load i32, i32* @kProgressBarHeight, align 4
  %14 = load i32, i32* @vc_uiscale, align 4
  %15 = mul nsw i32 %13, %14
  %16 = mul nsw i32 %12, %15
  %17 = sext i32 %16 to i64
  %18 = mul i64 %17, 4
  %19 = trunc i64 %18 to i32
  %20 = call i8* @kalloc(i32 %19)
  store i8* %20, i8** %4, align 8
  br label %21

21:                                               ; preds = %9, %1
  %22 = call i32 (...) @splhigh()
  store i32 %22, i32* %3, align 4
  %23 = call i32 @simple_lock(i32* @vc_progress_lock)
  %24 = load i32, i32* @kProgressMeterUser, align 4
  %25 = load i32, i32* %2, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %43

27:                                               ; preds = %21
  %28 = load i64, i64* @gc_enabled, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %40, label %30

30:                                               ; preds = %27
  %31 = load i32, i32* @gc_acquired, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %30
  %34 = load i32, i32* @gc_graphics_boot, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %33
  %37 = load i32, i32* @kProgressMeterKernel, align 4
  %38 = load i32, i32* @vc_progressmeter_enable, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %36, %33, %30, %27
  %41 = load i32, i32* @vc_progressmeter_enable, align 4
  store i32 %41, i32* %2, align 4
  br label %42

42:                                               ; preds = %40, %36
  br label %43

43:                                               ; preds = %42, %21
  %44 = load i32, i32* %2, align 4
  %45 = load i32, i32* @vc_progressmeter_enable, align 4
  %46 = icmp ne i32 %44, %45
  br i1 %46, label %47, label %87

47:                                               ; preds = %43
  %48 = load i32, i32* %2, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %65

50:                                               ; preds = %47
  %51 = load i32, i32* @kProgressMeterOff, align 4
  %52 = load i32, i32* @vc_progressmeter_enable, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %63

54:                                               ; preds = %50
  %55 = load i8*, i8** %4, align 8
  store i8* %55, i8** @vc_progressmeter_backbuffer, align 8
  %56 = load i32, i32* @kDataAlpha, align 4
  %57 = load i32, i32* @kSave, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* @kProgressBarWidth, align 4
  %60 = load i32, i32* @vc_uiscale, align 4
  %61 = mul nsw i32 %59, %60
  %62 = call i32 @vc_draw_progress_meter(i32 %58, i32 0, i32 %61, i64 0)
  store i8* null, i8** %4, align 8
  store i64 0, i64* @vc_progressmeter_drawn, align 8
  br label %63

63:                                               ; preds = %54, %50
  %64 = load i32, i32* %2, align 4
  store i32 %64, i32* @vc_progressmeter_enable, align 4
  br label %86

65:                                               ; preds = %47
  %66 = load i8*, i8** @vc_progressmeter_backbuffer, align 8
  %67 = icmp ne i8* %66, null
  br i1 %67, label %68, label %85

68:                                               ; preds = %65
  %69 = load i32, i32* @kProgressMeterUser, align 4
  %70 = load i32, i32* @vc_progressmeter_enable, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %79

72:                                               ; preds = %68
  %73 = load i32, i32* @kDataBack, align 4
  %74 = load i32, i32* @kProgressBarWidth, align 4
  %75 = load i32, i32* @vc_uiscale, align 4
  %76 = mul nsw i32 %74, %75
  %77 = load i64, i64* @vc_progressmeter_drawn, align 8
  %78 = call i32 @vc_draw_progress_meter(i32 %73, i32 0, i32 %76, i64 %77)
  br label %81

79:                                               ; preds = %68
  %80 = load i8*, i8** @TRUE, align 8
  store i8* %80, i8** %5, align 8
  br label %81

81:                                               ; preds = %79, %72
  %82 = load i8*, i8** @vc_progressmeter_backbuffer, align 8
  store i8* %82, i8** %4, align 8
  store i8* null, i8** @vc_progressmeter_backbuffer, align 8
  %83 = load i8*, i8** @FALSE, align 8
  %84 = ptrtoint i8* %83 to i32
  store i32 %84, i32* @vc_progressmeter_enable, align 4
  br label %85

85:                                               ; preds = %81, %65
  br label %86

86:                                               ; preds = %85, %63
  br label %87

87:                                               ; preds = %86, %43
  %88 = call i32 @simple_unlock(i32* @vc_progress_lock)
  %89 = load i32, i32* %3, align 4
  %90 = call i32 @splx(i32 %89)
  %91 = load i8*, i8** %4, align 8
  %92 = icmp ne i8* %91, null
  br i1 %92, label %93, label %123

93:                                               ; preds = %87
  %94 = load i8*, i8** %5, align 8
  %95 = icmp ne i8* %94, null
  br i1 %95, label %96, label %110

96:                                               ; preds = %93
  %97 = load i8*, i8** %4, align 8
  %98 = load i32, i32* @kProgressBarWidth, align 4
  %99 = load i32, i32* @vc_uiscale, align 4
  %100 = mul nsw i32 %98, %99
  %101 = load i32, i32* @kProgressBarHeight, align 4
  %102 = load i32, i32* @vc_uiscale, align 4
  %103 = mul nsw i32 %101, %102
  %104 = mul nsw i32 %100, %103
  %105 = sext i32 %104 to i64
  %106 = mul i64 %105, 4
  %107 = trunc i64 %106 to i32
  %108 = load i32, i32* @vc_progress_white, align 4
  %109 = call i32 @IORecordProgressBackbuffer(i8* %97, i32 %107, i32 %108)
  br label %110

110:                                              ; preds = %96, %93
  %111 = load i8*, i8** %4, align 8
  %112 = load i32, i32* @kProgressBarWidth, align 4
  %113 = load i32, i32* @vc_uiscale, align 4
  %114 = mul nsw i32 %112, %113
  %115 = load i32, i32* @kProgressBarHeight, align 4
  %116 = load i32, i32* @vc_uiscale, align 4
  %117 = mul nsw i32 %115, %116
  %118 = mul nsw i32 %114, %117
  %119 = sext i32 %118 to i64
  %120 = mul i64 %119, 4
  %121 = trunc i64 %120 to i32
  %122 = call i32 @kfree(i8* %111, i32 %121)
  br label %123

123:                                              ; preds = %110, %87
  ret void
}

declare dso_local i8* @kalloc(i32) #1

declare dso_local i32 @splhigh(...) #1

declare dso_local i32 @simple_lock(i32*) #1

declare dso_local i32 @vc_draw_progress_meter(i32, i32, i32, i64) #1

declare dso_local i32 @simple_unlock(i32*) #1

declare dso_local i32 @splx(i32) #1

declare dso_local i32 @IORecordProgressBackbuffer(i8*, i32, i32) #1

declare dso_local i32 @kfree(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
