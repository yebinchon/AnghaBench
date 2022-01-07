; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_ide.c_ide_transfer_stop.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_ide.c_ide_transfer_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ide_device = type { {}*, i32, i32, i32, i32 }

@IDE_debug = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"transfer stop\0A\00", align 1
@DRQ_STAT = common dso_local global i32 0, align 4
@count = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ide_device*)* @ide_transfer_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ide_transfer_stop(%struct.ide_device* %0) #0 {
  %2 = alloca %struct.ide_device*, align 8
  store %struct.ide_device* %0, %struct.ide_device** %2, align 8
  %3 = load i64, i64* @IDE_debug, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %8

5:                                                ; preds = %1
  %6 = load i32, i32* @stderr, align 4
  %7 = call i32 @fprintf(i32 %6, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %8

8:                                                ; preds = %5, %1
  %9 = load %struct.ide_device*, %struct.ide_device** %2, align 8
  %10 = getelementptr inbounds %struct.ide_device, %struct.ide_device* %9, i32 0, i32 0
  %11 = bitcast {}** %10 to void (%struct.ide_device*)**
  store void (%struct.ide_device*)* @ide_transfer_stop, void (%struct.ide_device*)** %11, align 8
  %12 = load %struct.ide_device*, %struct.ide_device** %2, align 8
  %13 = getelementptr inbounds %struct.ide_device, %struct.ide_device* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.ide_device*, %struct.ide_device** %2, align 8
  %16 = getelementptr inbounds %struct.ide_device, %struct.ide_device* %15, i32 0, i32 4
  store i32 %14, i32* %16, align 4
  %17 = load %struct.ide_device*, %struct.ide_device** %2, align 8
  %18 = getelementptr inbounds %struct.ide_device, %struct.ide_device* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.ide_device*, %struct.ide_device** %2, align 8
  %21 = getelementptr inbounds %struct.ide_device, %struct.ide_device* %20, i32 0, i32 3
  store i32 %19, i32* %21, align 8
  %22 = load i32, i32* @DRQ_STAT, align 4
  %23 = xor i32 %22, -1
  %24 = load %struct.ide_device*, %struct.ide_device** %2, align 8
  %25 = getelementptr inbounds %struct.ide_device, %struct.ide_device* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = and i32 %26, %23
  store i32 %27, i32* %25, align 8
  store i64 0, i64* @count, align 8
  ret void
}

declare dso_local i32 @fprintf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
