; ModuleID = '/home/carl/AnghaBench/RetroArch/griffin/extr_..libretro-commonaudioresampleraudio_resampler.c_retro_resampler_realloc.c'
source_filename = "/home/carl/AnghaBench/RetroArch/griffin/extr_..libretro-commonaudioresampleraudio_resampler.c_retro_resampler_realloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 (i8*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @retro_resampler_realloc(i8** %0, %struct.TYPE_5__** %1, i8* %2, i32 %3, double %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca %struct.TYPE_5__**, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca double, align 8
  store i8** %0, i8*** %7, align 8
  store %struct.TYPE_5__** %1, %struct.TYPE_5__*** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store double %4, double* %11, align 8
  %12 = load i8**, i8*** %7, align 8
  %13 = load i8*, i8** %12, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %27

15:                                               ; preds = %5
  %16 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %8, align 8
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = icmp ne %struct.TYPE_5__* %17, null
  br i1 %18, label %19, label %27

19:                                               ; preds = %15
  %20 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %8, align 8
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i32 (i8*)*, i32 (i8*)** %22, align 8
  %24 = load i8**, i8*** %7, align 8
  %25 = load i8*, i8** %24, align 8
  %26 = call i32 %23(i8* %25)
  br label %27

27:                                               ; preds = %19, %15, %5
  %28 = load i8**, i8*** %7, align 8
  store i8* null, i8** %28, align 8
  %29 = load i8*, i8** %9, align 8
  %30 = call %struct.TYPE_5__* @find_resampler_driver(i8* %29)
  %31 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %8, align 8
  store %struct.TYPE_5__* %30, %struct.TYPE_5__** %31, align 8
  %32 = load i8**, i8*** %7, align 8
  %33 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %8, align 8
  %34 = load i32, i32* %10, align 4
  %35 = load double, double* %11, align 8
  %36 = call i32 @resampler_append_plugs(i8** %32, %struct.TYPE_5__** %33, i32 %34, double %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %45, label %38

38:                                               ; preds = %27
  %39 = load i8**, i8*** %7, align 8
  %40 = load i8*, i8** %39, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %44, label %42

42:                                               ; preds = %38
  %43 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %8, align 8
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %43, align 8
  br label %44

44:                                               ; preds = %42, %38
  store i32 0, i32* %6, align 4
  br label %46

45:                                               ; preds = %27
  store i32 1, i32* %6, align 4
  br label %46

46:                                               ; preds = %45, %44
  %47 = load i32, i32* %6, align 4
  ret i32 %47
}

declare dso_local %struct.TYPE_5__* @find_resampler_driver(i8*) #1

declare dso_local i32 @resampler_append_plugs(i8**, %struct.TYPE_5__**, i32, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
