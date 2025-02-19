; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/vc/extr_mmal_vc_diag.c_do_stats.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/vc/extr_mmal_vc_diag.c_do_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i32 }

@.str = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@MMAL_SUCCESS = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"error getting status (%i,%s)\0A\00", align 1
@stats_fields = common dso_local global %struct.TYPE_3__* null, align 8
@.str.2 = private unnamed_addr constant [11 x i8] c"%-32s: %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @do_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_stats(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %11 = load i8**, i8*** %4, align 8
  %12 = getelementptr inbounds i8*, i8** %11, i64 1
  %13 = load i8*, i8** %12, align 8
  %14 = call i64 @strcasecmp(i8* %13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %15 = icmp eq i64 %14, 0
  %16 = zext i1 %15 to i32
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = call i64 @mmal_vc_get_stats(i32* %5, i32 %17)
  store i64 %18, i64* %7, align 8
  %19 = load i32, i32* %3, align 4
  %20 = load i8**, i8*** %4, align 8
  %21 = load i64, i64* %7, align 8
  %22 = load i64, i64* @MMAL_SUCCESS, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %30

24:                                               ; preds = %2
  %25 = load i32, i32* @stderr, align 4
  %26 = load i64, i64* %7, align 8
  %27 = load i64, i64* %7, align 8
  %28 = call i8* @mmal_status_to_string(i64 %27)
  %29 = call i32 @fprintf(i32 %25, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i64 %26, i8* %28)
  store i32 -1, i32* %8, align 4
  br label %59

30:                                               ; preds = %2
  store i32* %5, i32** %10, align 8
  store i32 0, i32* %9, align 4
  br label %31

31:                                               ; preds = %55, %30
  %32 = load i32, i32* %9, align 4
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** @stats_fields, align 8
  %34 = call i32 @vcos_countof(%struct.TYPE_3__* %33)
  %35 = icmp ult i32 %32, %34
  br i1 %35, label %36, label %58

36:                                               ; preds = %31
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** @stats_fields, align 8
  %38 = load i32, i32* %9, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  %43 = load i32*, i32** %10, align 8
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** @stats_fields, align 8
  %45 = load i32, i32* %9, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = sext i32 %49 to i64
  %51 = udiv i64 %50, 4
  %52 = getelementptr inbounds i32, i32* %43, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* %42, i32 %53)
  br label %55

55:                                               ; preds = %36
  %56 = load i32, i32* %9, align 4
  %57 = add i32 %56, 1
  store i32 %57, i32* %9, align 4
  br label %31

58:                                               ; preds = %31
  store i32 0, i32* %8, align 4
  br label %59

59:                                               ; preds = %58, %24
  %60 = load i32, i32* %8, align 4
  ret i32 %60
}

declare dso_local i64 @strcasecmp(i8*, i8*) #1

declare dso_local i64 @mmal_vc_get_stats(i32*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i64, i8*) #1

declare dso_local i8* @mmal_status_to_string(i64) #1

declare dso_local i32 @vcos_countof(%struct.TYPE_3__*) #1

declare dso_local i32 @printf(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
