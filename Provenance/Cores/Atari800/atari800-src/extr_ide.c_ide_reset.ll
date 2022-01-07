; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_ide.c_ide_reset.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_ide.c_ide_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ide_device = type { i32, i32, i32, i32, i32, i32, i32, i32, i64, i32 (%struct.ide_device*)*, i64, i64, i64, i64, i64, i64, i64, i64, i64 }

@IDE_debug = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"ide: reset\0A\00", align 1
@MAX_MULT_SECTORS = common dso_local global i64 0, align 8
@READY_STAT = common dso_local global i32 0, align 4
@SEEK_STAT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ide_device*)* @ide_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ide_reset(%struct.ide_device* %0) #0 {
  %2 = alloca %struct.ide_device*, align 8
  store %struct.ide_device* %0, %struct.ide_device** %2, align 8
  %3 = load i64, i64* @IDE_debug, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %8

5:                                                ; preds = %1
  %6 = load i32, i32* @stderr, align 4
  %7 = call i32 @fprintf(i32 %6, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  br label %8

8:                                                ; preds = %5, %1
  %9 = load %struct.ide_device*, %struct.ide_device** %2, align 8
  %10 = getelementptr inbounds %struct.ide_device, %struct.ide_device* %9, i32 0, i32 18
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %8
  %14 = load %struct.ide_device*, %struct.ide_device** %2, align 8
  %15 = getelementptr inbounds %struct.ide_device, %struct.ide_device* %14, i32 0, i32 17
  store i64 0, i64* %15, align 8
  br label %20

16:                                               ; preds = %8
  %17 = load i64, i64* @MAX_MULT_SECTORS, align 8
  %18 = load %struct.ide_device*, %struct.ide_device** %2, align 8
  %19 = getelementptr inbounds %struct.ide_device, %struct.ide_device* %18, i32 0, i32 17
  store i64 %17, i64* %19, align 8
  br label %20

20:                                               ; preds = %16, %13
  %21 = load %struct.ide_device*, %struct.ide_device** %2, align 8
  %22 = getelementptr inbounds %struct.ide_device, %struct.ide_device* %21, i32 0, i32 5
  store i32 0, i32* %22, align 4
  %23 = load %struct.ide_device*, %struct.ide_device** %2, align 8
  %24 = getelementptr inbounds %struct.ide_device, %struct.ide_device* %23, i32 0, i32 4
  store i32 0, i32* %24, align 8
  %25 = load %struct.ide_device*, %struct.ide_device** %2, align 8
  %26 = getelementptr inbounds %struct.ide_device, %struct.ide_device* %25, i32 0, i32 3
  store i32 0, i32* %26, align 4
  %27 = load %struct.ide_device*, %struct.ide_device** %2, align 8
  %28 = getelementptr inbounds %struct.ide_device, %struct.ide_device* %27, i32 0, i32 2
  store i32 0, i32* %28, align 8
  %29 = load %struct.ide_device*, %struct.ide_device** %2, align 8
  %30 = getelementptr inbounds %struct.ide_device, %struct.ide_device* %29, i32 0, i32 1
  store i32 0, i32* %30, align 4
  %31 = load %struct.ide_device*, %struct.ide_device** %2, align 8
  %32 = getelementptr inbounds %struct.ide_device, %struct.ide_device* %31, i32 0, i32 0
  store i32 0, i32* %32, align 8
  %33 = load %struct.ide_device*, %struct.ide_device** %2, align 8
  %34 = getelementptr inbounds %struct.ide_device, %struct.ide_device* %33, i32 0, i32 11
  store i64 0, i64* %34, align 8
  %35 = load %struct.ide_device*, %struct.ide_device** %2, align 8
  %36 = getelementptr inbounds %struct.ide_device, %struct.ide_device* %35, i32 0, i32 12
  store i64 0, i64* %36, align 8
  %37 = load %struct.ide_device*, %struct.ide_device** %2, align 8
  %38 = getelementptr inbounds %struct.ide_device, %struct.ide_device* %37, i32 0, i32 13
  store i64 0, i64* %38, align 8
  %39 = load %struct.ide_device*, %struct.ide_device** %2, align 8
  %40 = getelementptr inbounds %struct.ide_device, %struct.ide_device* %39, i32 0, i32 14
  store i64 0, i64* %40, align 8
  %41 = load %struct.ide_device*, %struct.ide_device** %2, align 8
  %42 = getelementptr inbounds %struct.ide_device, %struct.ide_device* %41, i32 0, i32 15
  store i64 0, i64* %42, align 8
  %43 = load %struct.ide_device*, %struct.ide_device** %2, align 8
  %44 = getelementptr inbounds %struct.ide_device, %struct.ide_device* %43, i32 0, i32 16
  store i64 0, i64* %44, align 8
  %45 = load %struct.ide_device*, %struct.ide_device** %2, align 8
  %46 = getelementptr inbounds %struct.ide_device, %struct.ide_device* %45, i32 0, i32 6
  store i32 160, i32* %46, align 8
  %47 = load i32, i32* @READY_STAT, align 4
  %48 = load i32, i32* @SEEK_STAT, align 4
  %49 = or i32 %47, %48
  %50 = load %struct.ide_device*, %struct.ide_device** %2, align 8
  %51 = getelementptr inbounds %struct.ide_device, %struct.ide_device* %50, i32 0, i32 7
  store i32 %49, i32* %51, align 4
  %52 = load %struct.ide_device*, %struct.ide_device** %2, align 8
  %53 = getelementptr inbounds %struct.ide_device, %struct.ide_device* %52, i32 0, i32 6
  %54 = load i32, i32* %53, align 8
  %55 = and i32 %54, 240
  store i32 %55, i32* %53, align 8
  %56 = load %struct.ide_device*, %struct.ide_device** %2, align 8
  %57 = getelementptr inbounds %struct.ide_device, %struct.ide_device* %56, i32 0, i32 3
  store i32 1, i32* %57, align 4
  %58 = load %struct.ide_device*, %struct.ide_device** %2, align 8
  %59 = getelementptr inbounds %struct.ide_device, %struct.ide_device* %58, i32 0, i32 2
  store i32 1, i32* %59, align 8
  %60 = load %struct.ide_device*, %struct.ide_device** %2, align 8
  %61 = getelementptr inbounds %struct.ide_device, %struct.ide_device* %60, i32 0, i32 10
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %20
  %65 = load %struct.ide_device*, %struct.ide_device** %2, align 8
  %66 = getelementptr inbounds %struct.ide_device, %struct.ide_device* %65, i32 0, i32 4
  store i32 20, i32* %66, align 8
  %67 = load %struct.ide_device*, %struct.ide_device** %2, align 8
  %68 = getelementptr inbounds %struct.ide_device, %struct.ide_device* %67, i32 0, i32 5
  store i32 235, i32* %68, align 4
  br label %74

69:                                               ; preds = %20
  %70 = load %struct.ide_device*, %struct.ide_device** %2, align 8
  %71 = getelementptr inbounds %struct.ide_device, %struct.ide_device* %70, i32 0, i32 5
  store i32 0, i32* %71, align 4
  %72 = load %struct.ide_device*, %struct.ide_device** %2, align 8
  %73 = getelementptr inbounds %struct.ide_device, %struct.ide_device* %72, i32 0, i32 4
  store i32 0, i32* %73, align 8
  br label %74

74:                                               ; preds = %69, %64
  %75 = load %struct.ide_device*, %struct.ide_device** %2, align 8
  %76 = getelementptr inbounds %struct.ide_device, %struct.ide_device* %75, i32 0, i32 9
  store i32 (%struct.ide_device*)* @ide_dummy_transfer_stop, i32 (%struct.ide_device*)** %76, align 8
  %77 = load %struct.ide_device*, %struct.ide_device** %2, align 8
  %78 = call i32 @ide_dummy_transfer_stop(%struct.ide_device* %77)
  %79 = load %struct.ide_device*, %struct.ide_device** %2, align 8
  %80 = getelementptr inbounds %struct.ide_device, %struct.ide_device* %79, i32 0, i32 8
  store i64 0, i64* %80, align 8
  ret void
}

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @ide_dummy_transfer_stop(%struct.ide_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
