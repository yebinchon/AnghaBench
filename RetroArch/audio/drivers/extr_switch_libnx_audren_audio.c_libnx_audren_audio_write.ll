; ModuleID = '/home/carl/AnghaBench/RetroArch/audio/drivers/extr_switch_libnx_audren_audio.c_libnx_audren_audio_write.c'
source_filename = "/home/carl/AnghaBench/RetroArch/audio/drivers/extr_switch_libnx_audren_audio.c_libnx_audren_audio_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i64)* @libnx_audren_audio_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @libnx_audren_audio_write(i8* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %11, %struct.TYPE_3__** %8, align 8
  store i64 0, i64* %9, align 8
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %13 = icmp ne %struct.TYPE_3__* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %56

15:                                               ; preds = %3
  br label %16

16:                                               ; preds = %52, %15
  %17 = load i64, i64* %9, align 8
  %18 = load i64, i64* %7, align 8
  %19 = icmp ult i64 %17, %18
  br i1 %19, label %20, label %53

20:                                               ; preds = %16
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %22 = load i8*, i8** %6, align 8
  %23 = load i64, i64* %9, align 8
  %24 = getelementptr i8, i8* %22, i64 %23
  %25 = load i64, i64* %7, align 8
  %26 = load i64, i64* %9, align 8
  %27 = sub i64 %25, %26
  %28 = call i64 @libnx_audren_audio_append(%struct.TYPE_3__* %21, i8* %24, i64 %27)
  %29 = load i64, i64* %9, align 8
  %30 = add i64 %29, %28
  store i64 %30, i64* %9, align 8
  %31 = load i64, i64* %9, align 8
  %32 = load i64, i64* %7, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %52

34:                                               ; preds = %20
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  br label %53

40:                                               ; preds = %34
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = call i32 @mutexLock(i32* %42)
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 1
  %46 = call i32 @audrvUpdate(i32* %45)
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = call i32 @mutexUnlock(i32* %48)
  %50 = call i32 (...) @audrenWaitFrame()
  br label %51

51:                                               ; preds = %40
  br label %52

52:                                               ; preds = %51, %20
  br label %16

53:                                               ; preds = %39, %16
  %54 = load i64, i64* %9, align 8
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* %4, align 4
  br label %56

56:                                               ; preds = %53, %14
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local i64 @libnx_audren_audio_append(%struct.TYPE_3__*, i8*, i64) #1

declare dso_local i32 @mutexLock(i32*) #1

declare dso_local i32 @audrvUpdate(i32*) #1

declare dso_local i32 @mutexUnlock(i32*) #1

declare dso_local i32 @audrenWaitFrame(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
