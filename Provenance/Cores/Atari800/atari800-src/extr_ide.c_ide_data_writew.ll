; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_ide.c_ide_data_writew.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_ide.c_ide_data_writew.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ide_device = type { i32, i32*, i32*, i32 (%struct.ide_device*)* }

@IDE_debug = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"data_writew: %d, %04x\0A\00", align 1
@DRQ_STAT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ide_device*, i32, i32)* @ide_data_writew to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ide_data_writew(%struct.ide_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ide_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store %struct.ide_device* %0, %struct.ide_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i64, i64* @IDE_debug, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %3
  %11 = load i32, i32* @stderr, align 4
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @fprintf(i32 %11, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %12, i32 %13)
  br label %15

15:                                               ; preds = %10, %3
  %16 = load %struct.ide_device*, %struct.ide_device** %4, align 8
  %17 = getelementptr inbounds %struct.ide_device, %struct.ide_device* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @DRQ_STAT, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %15
  br label %51

23:                                               ; preds = %15
  %24 = load %struct.ide_device*, %struct.ide_device** %4, align 8
  %25 = getelementptr inbounds %struct.ide_device, %struct.ide_device* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  store i32* %26, i32** %7, align 8
  %27 = load i32, i32* %6, align 4
  %28 = and i32 %27, 255
  %29 = load i32*, i32** %7, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* %6, align 4
  %32 = ashr i32 %31, 8
  %33 = load i32*, i32** %7, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 1
  store i32 %32, i32* %34, align 4
  %35 = load i32*, i32** %7, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 2
  store i32* %36, i32** %7, align 8
  %37 = load i32*, i32** %7, align 8
  %38 = load %struct.ide_device*, %struct.ide_device** %4, align 8
  %39 = getelementptr inbounds %struct.ide_device, %struct.ide_device* %38, i32 0, i32 1
  store i32* %37, i32** %39, align 8
  %40 = load i32*, i32** %7, align 8
  %41 = load %struct.ide_device*, %struct.ide_device** %4, align 8
  %42 = getelementptr inbounds %struct.ide_device, %struct.ide_device* %41, i32 0, i32 2
  %43 = load i32*, i32** %42, align 8
  %44 = icmp uge i32* %40, %43
  br i1 %44, label %45, label %51

45:                                               ; preds = %23
  %46 = load %struct.ide_device*, %struct.ide_device** %4, align 8
  %47 = getelementptr inbounds %struct.ide_device, %struct.ide_device* %46, i32 0, i32 3
  %48 = load i32 (%struct.ide_device*)*, i32 (%struct.ide_device*)** %47, align 8
  %49 = load %struct.ide_device*, %struct.ide_device** %4, align 8
  %50 = call i32 %48(%struct.ide_device* %49)
  br label %51

51:                                               ; preds = %22, %45, %23
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
