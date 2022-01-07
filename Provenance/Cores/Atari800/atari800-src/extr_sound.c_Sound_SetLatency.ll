; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_sound.c_Sound_SetLatency.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_sound.c_Sound_SetLatency.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@Sound_latency = common dso_local global i32 0, align 4
@Sound_enabled = common dso_local global i64 0, align 8
@Sound_out = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@sync_buffer_size = common dso_local global i32 0, align 4
@sync_min_fill = common dso_local global i32 0, align 4
@sync_max_fill = common dso_local global i32 0, align 4
@avg_fill = common dso_local global i32 0, align 4
@sync_read_pos = common dso_local global i64 0, align 8
@sync_write_pos = common dso_local global i32 0, align 4
@sync_buffer = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Sound_SetLatency(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  store i32 %5, i32* @Sound_latency, align 4
  %6 = load i64, i64* @Sound_enabled, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %41

8:                                                ; preds = %1
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Sound_out, i32 0, i32 0), align 4
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Sound_out, i32 0, i32 1), align 4
  %11 = mul i32 %9, %10
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Sound_out, i32 0, i32 2), align 4
  %13 = load i32, i32* @Sound_latency, align 4
  %14 = mul nsw i32 %12, %13
  %15 = sdiv i32 %14, 1000
  store i32 %15, i32* %4, align 4
  %16 = call i32 (...) @PLATFORM_SoundLock()
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Sound_out, i32 0, i32 3), align 4
  %19 = mul nsw i32 5, %18
  %20 = add i32 %17, %19
  %21 = load i32, i32* %3, align 4
  %22 = mul i32 %20, %21
  store i32 %22, i32* @sync_buffer_size, align 4
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* %3, align 4
  %25 = mul i32 %23, %24
  store i32 %25, i32* @sync_min_fill, align 4
  %26 = load i32, i32* @sync_min_fill, align 4
  %27 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Sound_out, i32 0, i32 3), align 4
  %28 = load i32, i32* %3, align 4
  %29 = mul i32 %27, %28
  %30 = add i32 %26, %29
  store i32 %30, i32* @sync_max_fill, align 4
  %31 = load i32, i32* @sync_min_fill, align 4
  store i32 %31, i32* @avg_fill, align 4
  store i64 0, i64* @sync_read_pos, align 8
  %32 = load i32, i32* @sync_min_fill, align 4
  store i32 %32, i32* @sync_write_pos, align 4
  %33 = load i32, i32* @sync_buffer, align 4
  %34 = call i32 @free(i32 %33)
  %35 = load i32, i32* @sync_buffer_size, align 4
  %36 = call i32 @Util_malloc(i32 %35)
  store i32 %36, i32* @sync_buffer, align 4
  %37 = load i32, i32* @sync_buffer, align 4
  %38 = load i32, i32* @sync_buffer_size, align 4
  %39 = call i32 @memset(i32 %37, i32 0, i32 %38)
  %40 = call i32 (...) @PLATFORM_SoundUnlock()
  br label %41

41:                                               ; preds = %8, %1
  ret void
}

declare dso_local i32 @PLATFORM_SoundLock(...) #1

declare dso_local i32 @free(i32) #1

declare dso_local i32 @Util_malloc(i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @PLATFORM_SoundUnlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
