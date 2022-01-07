; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_ide.c_ide_transfer_start.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_ide.c_ide_transfer_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ide_device = type { i32, i64, i32*, i32*, i32* }

@IDE_debug = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"transfer start\0A\00", align 1
@ERR_STAT = common dso_local global i32 0, align 4
@DRQ_STAT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ide_device*, i32*, i32, i32*)* @ide_transfer_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ide_transfer_start(%struct.ide_device* %0, i32* %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.ide_device*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store %struct.ide_device* %0, %struct.ide_device** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %9 = load i64, i64* @IDE_debug, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %4
  %12 = load i32, i32* @stderr, align 4
  %13 = call i32 @fprintf(i32 %12, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %14

14:                                               ; preds = %11, %4
  %15 = load i32*, i32** %8, align 8
  %16 = load %struct.ide_device*, %struct.ide_device** %5, align 8
  %17 = getelementptr inbounds %struct.ide_device, %struct.ide_device* %16, i32 0, i32 4
  store i32* %15, i32** %17, align 8
  %18 = load i32*, i32** %6, align 8
  %19 = load %struct.ide_device*, %struct.ide_device** %5, align 8
  %20 = getelementptr inbounds %struct.ide_device, %struct.ide_device* %19, i32 0, i32 3
  store i32* %18, i32** %20, align 8
  %21 = load i32*, i32** %6, align 8
  %22 = load i32, i32* %7, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = load %struct.ide_device*, %struct.ide_device** %5, align 8
  %26 = getelementptr inbounds %struct.ide_device, %struct.ide_device* %25, i32 0, i32 2
  store i32* %24, i32** %26, align 8
  %27 = load %struct.ide_device*, %struct.ide_device** %5, align 8
  %28 = getelementptr inbounds %struct.ide_device, %struct.ide_device* %27, i32 0, i32 1
  store i64 0, i64* %28, align 8
  %29 = load %struct.ide_device*, %struct.ide_device** %5, align 8
  %30 = getelementptr inbounds %struct.ide_device, %struct.ide_device* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @ERR_STAT, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %41, label %35

35:                                               ; preds = %14
  %36 = load i32, i32* @DRQ_STAT, align 4
  %37 = load %struct.ide_device*, %struct.ide_device** %5, align 8
  %38 = getelementptr inbounds %struct.ide_device, %struct.ide_device* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = or i32 %39, %36
  store i32 %40, i32* %38, align 8
  br label %41

41:                                               ; preds = %35, %14
  ret void
}

declare dso_local i32 @fprintf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
