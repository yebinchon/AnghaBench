; ModuleID = '/home/carl/AnghaBench/RetroArch/extr_retroarch.c_libretro_free_system_info.c'
source_filename = "/home/carl/AnghaBench/RetroArch/extr_retroarch.c_libretro_free_system_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.retro_system_info = type { i64, i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @libretro_free_system_info(%struct.retro_system_info* %0) #0 {
  %2 = alloca %struct.retro_system_info*, align 8
  store %struct.retro_system_info* %0, %struct.retro_system_info** %2, align 8
  %3 = load %struct.retro_system_info*, %struct.retro_system_info** %2, align 8
  %4 = icmp ne %struct.retro_system_info* %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %24

6:                                                ; preds = %1
  %7 = load %struct.retro_system_info*, %struct.retro_system_info** %2, align 8
  %8 = getelementptr inbounds %struct.retro_system_info, %struct.retro_system_info* %7, i32 0, i32 2
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to i8*
  %11 = call i32 @free(i8* %10)
  %12 = load %struct.retro_system_info*, %struct.retro_system_info** %2, align 8
  %13 = getelementptr inbounds %struct.retro_system_info, %struct.retro_system_info* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to i8*
  %16 = call i32 @free(i8* %15)
  %17 = load %struct.retro_system_info*, %struct.retro_system_info** %2, align 8
  %18 = getelementptr inbounds %struct.retro_system_info, %struct.retro_system_info* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to i8*
  %21 = call i32 @free(i8* %20)
  %22 = load %struct.retro_system_info*, %struct.retro_system_info** %2, align 8
  %23 = call i32 @memset(%struct.retro_system_info* %22, i32 0, i32 24)
  br label %24

24:                                               ; preds = %6, %5
  ret void
}

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @memset(%struct.retro_system_info*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
