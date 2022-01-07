; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/lwip/core/extr_mem.c_mem_init.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/lwip/core/extr_mem.c_mem_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem = type { i64, i64, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@ram = common dso_local global i32* null, align 8
@MEM_SIZE = common dso_local global i64 0, align 8
@ram_end = common dso_local global %struct.mem* null, align 8
@mem_sem = common dso_local global i32 0, align 4
@lfree = common dso_local global %struct.mem* null, align 8
@lwip_stats = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mem_init() #0 {
  %1 = alloca %struct.mem*, align 8
  %2 = load i32*, i32** @ram, align 8
  %3 = load i64, i64* @MEM_SIZE, align 8
  %4 = call i32 @memset(i32* %2, i32 0, i64 %3)
  %5 = load i32*, i32** @ram, align 8
  %6 = bitcast i32* %5 to %struct.mem*
  store %struct.mem* %6, %struct.mem** %1, align 8
  %7 = load i64, i64* @MEM_SIZE, align 8
  %8 = load %struct.mem*, %struct.mem** %1, align 8
  %9 = getelementptr inbounds %struct.mem, %struct.mem* %8, i32 0, i32 0
  store i64 %7, i64* %9, align 8
  %10 = load %struct.mem*, %struct.mem** %1, align 8
  %11 = getelementptr inbounds %struct.mem, %struct.mem* %10, i32 0, i32 1
  store i64 0, i64* %11, align 8
  %12 = load %struct.mem*, %struct.mem** %1, align 8
  %13 = getelementptr inbounds %struct.mem, %struct.mem* %12, i32 0, i32 2
  store i32 0, i32* %13, align 8
  %14 = load i32*, i32** @ram, align 8
  %15 = load i64, i64* @MEM_SIZE, align 8
  %16 = getelementptr inbounds i32, i32* %14, i64 %15
  %17 = bitcast i32* %16 to %struct.mem*
  store %struct.mem* %17, %struct.mem** @ram_end, align 8
  %18 = load %struct.mem*, %struct.mem** @ram_end, align 8
  %19 = getelementptr inbounds %struct.mem, %struct.mem* %18, i32 0, i32 2
  store i32 1, i32* %19, align 8
  %20 = load i64, i64* @MEM_SIZE, align 8
  %21 = load %struct.mem*, %struct.mem** @ram_end, align 8
  %22 = getelementptr inbounds %struct.mem, %struct.mem* %21, i32 0, i32 0
  store i64 %20, i64* %22, align 8
  %23 = load i64, i64* @MEM_SIZE, align 8
  %24 = load %struct.mem*, %struct.mem** @ram_end, align 8
  %25 = getelementptr inbounds %struct.mem, %struct.mem* %24, i32 0, i32 1
  store i64 %23, i64* %25, align 8
  %26 = call i32 @LWP_SemInit(i32* @mem_sem, i32 1, i32 1)
  %27 = load i32*, i32** @ram, align 8
  %28 = bitcast i32* %27 to %struct.mem*
  store %struct.mem* %28, %struct.mem** @lfree, align 8
  ret void
}

declare dso_local i32 @memset(i32*, i32, i64) #1

declare dso_local i32 @LWP_SemInit(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
