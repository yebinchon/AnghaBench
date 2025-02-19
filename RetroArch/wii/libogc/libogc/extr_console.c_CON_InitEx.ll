; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_console.c_CON_InitEx.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_console.c_CON_InitEx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@_console_buffer = common dso_local global i64 0, align 8
@VI_DISPLAY_PIX_SZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CON_InitEx(%struct.TYPE_3__* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %12 = call i32 @VIDEO_SetPostRetraceCallback(i32* null)
  %13 = load i64, i64* @_console_buffer, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %5
  %16 = load i64, i64* @_console_buffer, align 8
  %17 = call i32 @free(i64 %16)
  br label %18

18:                                               ; preds = %15, %5
  %19 = load i32, i32* %10, align 4
  %20 = load i32, i32* %11, align 4
  %21 = mul nsw i32 %19, %20
  %22 = load i32, i32* @VI_DISPLAY_PIX_SZ, align 4
  %23 = mul nsw i32 %21, %22
  %24 = call i64 @malloc(i32 %23)
  store i64 %24, i64* @_console_buffer, align 8
  %25 = load i64, i64* @_console_buffer, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %18
  store i32 -1, i32* %6, align 4
  br label %43

28:                                               ; preds = %18
  %29 = load i64, i64* @_console_buffer, align 8
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* %9, align 4
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @VI_DISPLAY_PIX_SZ, align 4
  %36 = mul nsw i32 %34, %35
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* %11, align 4
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* @VI_DISPLAY_PIX_SZ, align 4
  %41 = mul nsw i32 %39, %40
  %42 = call i32 @__console_init_ex(i64 %29, i32 %30, i32 %31, i32 %36, i32 %37, i32 %38, i32 %41)
  store i32 0, i32* %6, align 4
  br label %43

43:                                               ; preds = %28, %27
  %44 = load i32, i32* %6, align 4
  ret i32 %44
}

declare dso_local i32 @VIDEO_SetPostRetraceCallback(i32*) #1

declare dso_local i32 @free(i64) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @__console_init_ex(i64, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
