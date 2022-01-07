; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/libpicofe/gp2x/extr_soc_mmsp2.c_mmsp2_init.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/libpicofe/gp2x/extr_soc_mmsp2.c_mmsp2_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [9 x i8] c"/dev/mem\00", align 1
@O_RDWR = common dso_local global i32 0, align 4
@memdev = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"open(\22/dev/mem\22)\00", align 1
@PROT_READ = common dso_local global i32 0, align 4
@PROT_WRITE = common dso_local global i32 0, align 4
@MAP_SHARED = common dso_local global i32 0, align 4
@memregs = common dso_local global i32* null, align 8
@MAP_FAILED = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [14 x i8] c"mmap(memregs)\00", align 1
@memregl = common dso_local global i32* null, align 8
@lcd_rate_defaults = common dso_local global i32 0, align 4
@reg0910 = common dso_local global i32 0, align 4
@memtimex_old = common dso_local global i32* null, align 8
@.str.3 = private unnamed_addr constant [24 x i8] c"/dev/touchscreen/wm97xx\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@touchdev = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [16 x i8] c"/etc/pointercal\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"%d %d %d %d %d %d %d\00", align 1
@touchcal = common dso_local global i32* null, align 8
@.str.7 = private unnamed_addr constant [26 x i8] c"found touchscreen/wm97xx\0A\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"/proc/sys/vm/max-readahead\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"0\0A\00", align 1
@.str.10 = private unnamed_addr constant [27 x i8] c"/proc/sys/vm/min-readahead\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"/dev/mixer\00", align 1
@mixerdev = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [17 x i8] c"open(/dev/mixer)\00", align 1
@mmsp2_clock_get = common dso_local global i32 0, align 4
@plat_target = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@mmsp2_clock_set = common dso_local global i32 0, align 4
@mmsp2_lcdrate_set = common dso_local global i32 0, align 4
@mmsp2_gamma_set = common dso_local global i32 0, align 4
@step_volume = common dso_local global i32 0, align 4
@plat_get_ticks_ms_good = common dso_local global i32 0, align 4
@gp2x_get_ticks_ms = common dso_local global i32 0, align 4
@plat_get_ticks_us_good = common dso_local global i32 0, align 4
@gp2x_get_ticks_us = common dso_local global i32 0, align 4
@sndout_oss_can_restart = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mmsp2_init() #0 {
  %1 = alloca i32*, align 8
  %2 = load i32, i32* @O_RDWR, align 4
  %3 = call i8* @open(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %2)
  %4 = ptrtoint i8* %3 to i32
  store i32 %4, i32* @memdev, align 4
  %5 = load i32, i32* @memdev, align 4
  %6 = icmp eq i32 %5, -1
  br i1 %6, label %7, label %10

7:                                                ; preds = %0
  %8 = call i32 @perror(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %9 = call i32 @exit(i32 1) #3
  unreachable

10:                                               ; preds = %0
  %11 = load i32, i32* @PROT_READ, align 4
  %12 = load i32, i32* @PROT_WRITE, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @MAP_SHARED, align 4
  %15 = load i32, i32* @memdev, align 4
  %16 = call i32* @mmap(i32 0, i32 65536, i32 %13, i32 %14, i32 %15, i32 -1073741824)
  store i32* %16, i32** @memregs, align 8
  %17 = load i32*, i32** @memregs, align 8
  %18 = load i32*, i32** @MAP_FAILED, align 8
  %19 = icmp eq i32* %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %10
  %21 = call i32 @perror(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %22 = call i32 @exit(i32 1) #3
  unreachable

23:                                               ; preds = %10
  %24 = load i32*, i32** @memregs, align 8
  store i32* %24, i32** @memregl, align 8
  %25 = load i32*, i32** @memregs, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 5184
  %27 = load i32, i32* %26, align 4
  %28 = and i32 %27, -900
  store i32 %28, i32* %26, align 4
  %29 = load i32, i32* @lcd_rate_defaults, align 4
  %30 = call i32 @get_reg_setting(i32 %29)
  %31 = load i32*, i32** @memregs, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 1160
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* @reg0910, align 4
  %34 = load i32*, i32** @memregs, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 7169
  %36 = load i32, i32* %35, align 4
  %37 = load i32*, i32** @memtimex_old, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  store i32 %36, i32* %38, align 4
  %39 = load i32*, i32** @memregs, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 7170
  %41 = load i32, i32* %40, align 4
  %42 = load i32*, i32** @memtimex_old, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 1
  store i32 %41, i32* %43, align 4
  %44 = load i32, i32* @O_RDONLY, align 4
  %45 = call i8* @open(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %44)
  %46 = ptrtoint i8* %45 to i64
  store i64 %46, i64* @touchdev, align 8
  %47 = load i64, i64* @touchdev, align 8
  %48 = icmp sge i64 %47, 0
  br i1 %48, label %49, label %74

49:                                               ; preds = %23
  %50 = call i32* @fopen(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  store i32* %50, i32** %1, align 8
  %51 = load i32*, i32** %1, align 8
  %52 = icmp ne i32* %51, null
  br i1 %52, label %53, label %72

53:                                               ; preds = %49
  %54 = load i32*, i32** %1, align 8
  %55 = load i32*, i32** @touchcal, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 0
  %57 = load i32*, i32** @touchcal, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 1
  %59 = load i32*, i32** @touchcal, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 2
  %61 = load i32*, i32** @touchcal, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 3
  %63 = load i32*, i32** @touchcal, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 4
  %65 = load i32*, i32** @touchcal, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 5
  %67 = load i32*, i32** @touchcal, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 6
  %69 = call i32 @fscanf(i32* %54, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i32* %56, i32* %58, i32* %60, i32* %62, i32* %64, i32* %66, i32* %68)
  %70 = load i32*, i32** %1, align 8
  %71 = call i32 @fclose(i32* %70)
  br label %72

72:                                               ; preds = %53, %49
  %73 = call i32 @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0))
  br label %74

74:                                               ; preds = %72, %23
  %75 = call i32 @proc_set(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0))
  %76 = call i32 @proc_set(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0))
  %77 = load i32, i32* @O_RDWR, align 4
  %78 = call i8* @open(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i64 0, i64 0), i32 %77)
  %79 = ptrtoint i8* %78 to i32
  store i32 %79, i32* @mixerdev, align 4
  %80 = load i32, i32* @mixerdev, align 4
  %81 = icmp eq i32 %80, -1
  br i1 %81, label %82, label %84

82:                                               ; preds = %74
  %83 = call i32 @perror(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i64 0, i64 0))
  br label %84

84:                                               ; preds = %82, %74
  %85 = call i32 (...) @set_ram_timings_()
  %86 = load i32, i32* @mmsp2_clock_get, align 4
  store i32 %86, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @plat_target, i32 0, i32 4), align 4
  %87 = load i32, i32* @mmsp2_clock_set, align 4
  store i32 %87, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @plat_target, i32 0, i32 3), align 4
  %88 = load i32, i32* @mmsp2_lcdrate_set, align 4
  store i32 %88, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @plat_target, i32 0, i32 2), align 4
  %89 = load i32, i32* @mmsp2_gamma_set, align 4
  store i32 %89, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @plat_target, i32 0, i32 1), align 4
  %90 = load i32, i32* @step_volume, align 4
  store i32 %90, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @plat_target, i32 0, i32 0), align 4
  %91 = load i32, i32* @plat_get_ticks_ms_good, align 4
  store i32 %91, i32* @gp2x_get_ticks_ms, align 4
  %92 = load i32, i32* @plat_get_ticks_us_good, align 4
  store i32 %92, i32* @gp2x_get_ticks_us, align 4
  store i64 0, i64* @sndout_oss_can_restart, align 8
  ret void
}

declare dso_local i8* @open(i8*, i32) #1

declare dso_local i32 @perror(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32* @mmap(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @get_reg_setting(i32) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @fscanf(i32*, i8*, i32*, i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @proc_set(i8*, i8*) #1

declare dso_local i32 @set_ram_timings_(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
