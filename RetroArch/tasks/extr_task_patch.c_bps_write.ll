; ModuleID = '/home/carl/AnghaBench/RetroArch/tasks/extr_task_patch.c_bps_write.c'
source_filename = "/home/carl/AnghaBench/RetroArch/tasks/extr_task_patch.c_bps_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bps_data = type { i32, i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bps_data*, i32)* @bps_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bps_write(%struct.bps_data* %0, i32 %1) #0 {
  %3 = alloca %struct.bps_data*, align 8
  %4 = alloca i32, align 4
  store %struct.bps_data* %0, %struct.bps_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.bps_data*, %struct.bps_data** %3, align 8
  %7 = getelementptr inbounds %struct.bps_data, %struct.bps_data* %6, i32 0, i32 2
  %8 = load i32*, i32** %7, align 8
  %9 = load %struct.bps_data*, %struct.bps_data** %3, align 8
  %10 = getelementptr inbounds %struct.bps_data, %struct.bps_data* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = add nsw i32 %11, 1
  store i32 %12, i32* %10, align 4
  %13 = sext i32 %11 to i64
  %14 = getelementptr inbounds i32, i32* %8, i64 %13
  store i32 %5, i32* %14, align 4
  %15 = load %struct.bps_data*, %struct.bps_data** %3, align 8
  %16 = getelementptr inbounds %struct.bps_data, %struct.bps_data* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = xor i32 %17, -1
  %19 = call i32 @encoding_crc32(i32 %18, i32* %4, i32 1)
  %20 = xor i32 %19, -1
  %21 = load %struct.bps_data*, %struct.bps_data** %3, align 8
  %22 = getelementptr inbounds %struct.bps_data, %struct.bps_data* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  ret void
}

declare dso_local i32 @encoding_crc32(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
