; ModuleID = '/home/carl/AnghaBench/RetroArch/input/drivers/extr_dinput.c_dinput_free.c'
source_filename = "/home/carl/AnghaBench/RetroArch/input/drivers/extr_dinput.c_dinput_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dinput_input = type { %struct.dinput_input*, i64, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (...)* }

@g_dinput_ctx = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @dinput_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dinput_free(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.dinput_input*, align 8
  %4 = alloca i32*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.dinput_input*
  store %struct.dinput_input* %6, %struct.dinput_input** %3, align 8
  %7 = load i32*, i32** @g_dinput_ctx, align 8
  store i32* %7, i32** %4, align 8
  %8 = load %struct.dinput_input*, %struct.dinput_input** %3, align 8
  %9 = icmp ne %struct.dinput_input* %8, null
  br i1 %9, label %10, label %58

10:                                               ; preds = %1
  store i32* null, i32** @g_dinput_ctx, align 8
  %11 = load %struct.dinput_input*, %struct.dinput_input** %3, align 8
  %12 = getelementptr inbounds %struct.dinput_input, %struct.dinput_input* %11, i32 0, i32 3
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = icmp ne %struct.TYPE_2__* %13, null
  br i1 %14, label %15, label %22

15:                                               ; preds = %10
  %16 = load %struct.dinput_input*, %struct.dinput_input** %3, align 8
  %17 = getelementptr inbounds %struct.dinput_input, %struct.dinput_input* %16, i32 0, i32 3
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32 (...)*, i32 (...)** %19, align 8
  %21 = call i32 (...) %20()
  br label %22

22:                                               ; preds = %15, %10
  %23 = load i32*, i32** %4, align 8
  store i32* %23, i32** @g_dinput_ctx, align 8
  %24 = load %struct.dinput_input*, %struct.dinput_input** %3, align 8
  %25 = call i32 @dinput_clear_pointers(%struct.dinput_input* %24)
  %26 = load %struct.dinput_input*, %struct.dinput_input** %3, align 8
  %27 = getelementptr inbounds %struct.dinput_input, %struct.dinput_input* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %22
  %31 = load %struct.dinput_input*, %struct.dinput_input** %3, align 8
  %32 = getelementptr inbounds %struct.dinput_input, %struct.dinput_input* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @IDirectInputDevice8_Release(i64 %33)
  br label %35

35:                                               ; preds = %30, %22
  %36 = load %struct.dinput_input*, %struct.dinput_input** %3, align 8
  %37 = getelementptr inbounds %struct.dinput_input, %struct.dinput_input* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %35
  %41 = load %struct.dinput_input*, %struct.dinput_input** %3, align 8
  %42 = getelementptr inbounds %struct.dinput_input, %struct.dinput_input* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = call i32 @IDirectInputDevice8_Release(i64 %43)
  br label %45

45:                                               ; preds = %40, %35
  %46 = load %struct.dinput_input*, %struct.dinput_input** %3, align 8
  %47 = getelementptr inbounds %struct.dinput_input, %struct.dinput_input* %46, i32 0, i32 0
  %48 = load %struct.dinput_input*, %struct.dinput_input** %47, align 8
  %49 = icmp ne %struct.dinput_input* %48, null
  br i1 %49, label %50, label %55

50:                                               ; preds = %45
  %51 = load %struct.dinput_input*, %struct.dinput_input** %3, align 8
  %52 = getelementptr inbounds %struct.dinput_input, %struct.dinput_input* %51, i32 0, i32 0
  %53 = load %struct.dinput_input*, %struct.dinput_input** %52, align 8
  %54 = call i32 @free(%struct.dinput_input* %53)
  br label %55

55:                                               ; preds = %50, %45
  %56 = load %struct.dinput_input*, %struct.dinput_input** %3, align 8
  %57 = call i32 @free(%struct.dinput_input* %56)
  br label %58

58:                                               ; preds = %55, %1
  %59 = call i32 (...) @dinput_destroy_context()
  ret void
}

declare dso_local i32 @dinput_clear_pointers(%struct.dinput_input*) #1

declare dso_local i32 @IDirectInputDevice8_Release(i64) #1

declare dso_local i32 @free(%struct.dinput_input*) #1

declare dso_local i32 @dinput_destroy_context(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
