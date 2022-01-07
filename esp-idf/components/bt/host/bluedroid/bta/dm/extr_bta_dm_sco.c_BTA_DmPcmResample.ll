; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/bta/dm/extr_bta_dm_sco.c_BTA_DmPcmResample.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/bta/dm/extr_bta_dm_sco.c_BTA_DmPcmResample.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 (i8*, i8*, i32, i32, i32*, i32)*, i32 (i8*, i8*, i32, i32)*, i32, i32, i32, i64 }

@p_bta_dm_pcm_cb = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BTA_DmPcmResample(i8* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** @p_bta_dm_pcm_cb, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 6
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %32

12:                                               ; preds = %3
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** @p_bta_dm_pcm_cb, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %15 = load i32 (i8*, i8*, i32, i32, i32*, i32)*, i32 (i8*, i8*, i32, i32, i32*, i32)** %14, align 8
  %16 = load i8*, i8** %4, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = load i32, i32* %5, align 4
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** @p_bta_dm_pcm_cb, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = sdiv i32 %18, %21
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** @p_bta_dm_pcm_cb, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** @p_bta_dm_pcm_cb, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 5
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** @p_bta_dm_pcm_cb, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 4
  %31 = call i32 %15(i8* %16, i8* %17, i32 %22, i32 %25, i32* %27, i32 %30)
  store i32 %31, i32* %7, align 4
  br label %47

32:                                               ; preds = %3
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** @p_bta_dm_pcm_cb, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 2
  %35 = load i32 (i8*, i8*, i32, i32)*, i32 (i8*, i8*, i32, i32)** %34, align 8
  %36 = load i8*, i8** %4, align 8
  %37 = load i8*, i8** %6, align 8
  %38 = load i32, i32* %5, align 4
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** @p_bta_dm_pcm_cb, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = sdiv i32 %38, %41
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** @p_bta_dm_pcm_cb, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 8
  %46 = call i32 %35(i8* %36, i8* %37, i32 %42, i32 %45)
  store i32 %46, i32* %7, align 4
  br label %47

47:                                               ; preds = %32, %12
  %48 = load i32, i32* %7, align 4
  ret i32 %48
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
