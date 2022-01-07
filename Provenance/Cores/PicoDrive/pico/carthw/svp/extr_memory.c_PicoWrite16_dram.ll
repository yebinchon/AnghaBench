; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/carthw/svp/extr_memory.c_PicoWrite16_dram.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/carthw/svp/extr_memory.c_PicoWrite16_dram.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@SSP_WAIT_30FE06 = common dso_local global i32 0, align 4
@svp = common dso_local global %struct.TYPE_4__* null, align 8
@SSP_WAIT_30FE08 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @PicoWrite16_dram to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @PicoWrite16_dram(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = and i32 %5, -16646145
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %33

9:                                                ; preds = %2
  %10 = load i32, i32* %3, align 4
  %11 = icmp eq i32 %10, 65030
  br i1 %11, label %12, label %20

12:                                               ; preds = %9
  %13 = load i32, i32* @SSP_WAIT_30FE06, align 4
  %14 = xor i32 %13, -1
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** @svp, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = and i32 %18, %14
  store i32 %19, i32* %17, align 8
  br label %32

20:                                               ; preds = %9
  %21 = load i32, i32* %3, align 4
  %22 = icmp eq i32 %21, 65032
  br i1 %22, label %23, label %31

23:                                               ; preds = %20
  %24 = load i32, i32* @SSP_WAIT_30FE08, align 4
  %25 = xor i32 %24, -1
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** @svp, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = and i32 %29, %25
  store i32 %30, i32* %28, align 8
  br label %31

31:                                               ; preds = %23, %20
  br label %32

32:                                               ; preds = %31, %12
  br label %33

33:                                               ; preds = %32, %2
  %34 = load i32, i32* %4, align 4
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** @svp, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = inttoptr i64 %37 to i32*
  %39 = load i32, i32* %3, align 4
  %40 = sdiv i32 %39, 2
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %38, i64 %41
  store i32 %34, i32* %42, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
