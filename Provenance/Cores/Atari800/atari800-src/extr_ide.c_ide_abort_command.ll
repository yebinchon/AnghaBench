; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_ide.c_ide_abort_command.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_ide.c_ide_abort_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ide_device = type { i32, i32 }

@READY_STAT = common dso_local global i32 0, align 4
@ERR_STAT = common dso_local global i32 0, align 4
@ABRT_ERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ide_device*)* @ide_abort_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ide_abort_command(%struct.ide_device* %0) #0 {
  %2 = alloca %struct.ide_device*, align 8
  store %struct.ide_device* %0, %struct.ide_device** %2, align 8
  %3 = load i32, i32* @READY_STAT, align 4
  %4 = load i32, i32* @ERR_STAT, align 4
  %5 = or i32 %3, %4
  %6 = load %struct.ide_device*, %struct.ide_device** %2, align 8
  %7 = getelementptr inbounds %struct.ide_device, %struct.ide_device* %6, i32 0, i32 0
  store i32 %5, i32* %7, align 4
  %8 = load i32, i32* @ABRT_ERR, align 4
  %9 = load %struct.ide_device*, %struct.ide_device** %2, align 8
  %10 = getelementptr inbounds %struct.ide_device, %struct.ide_device* %9, i32 0, i32 1
  store i32 %8, i32* %10, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
