; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_ide.c_ide_data_readw.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_ide.c_ide_data_readw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ide_device = type { i32, i32*, i32*, i32 (%struct.ide_device*)* }

@DRQ_STAT = common dso_local global i32 0, align 4
@IDE_debug = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"data_readw: %d, %04x (count: %d)\0A\00", align 1
@count = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ide_device*, i32)* @ide_data_readw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ide_data_readw(%struct.ide_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ide_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.ide_device* %0, %struct.ide_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.ide_device*, %struct.ide_device** %4, align 8
  %9 = getelementptr inbounds %struct.ide_device, %struct.ide_device* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @DRQ_STAT, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %59

15:                                               ; preds = %2
  %16 = load %struct.ide_device*, %struct.ide_device** %4, align 8
  %17 = getelementptr inbounds %struct.ide_device, %struct.ide_device* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %6, align 8
  %19 = load i32*, i32** %6, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %7, align 4
  %22 = load i32*, i32** %6, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 1
  %24 = load i32, i32* %23, align 4
  %25 = shl i32 %24, 8
  %26 = load i32, i32* %7, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %7, align 4
  %28 = load i32*, i32** %6, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 2
  store i32* %29, i32** %6, align 8
  %30 = load i32*, i32** %6, align 8
  %31 = load %struct.ide_device*, %struct.ide_device** %4, align 8
  %32 = getelementptr inbounds %struct.ide_device, %struct.ide_device* %31, i32 0, i32 1
  store i32* %30, i32** %32, align 8
  %33 = load i64, i64* @IDE_debug, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %45

35:                                               ; preds = %15
  %36 = load i32, i32* @stderr, align 4
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @count, align 4
  %40 = call i32 @fprintf(i32 %36, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %37, i32 %38, i32 %39)
  %41 = load i32, i32* @count, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* @count, align 4
  %43 = load i32, i32* @count, align 4
  %44 = and i32 %43, 255
  store i32 %44, i32* @count, align 4
  br label %45

45:                                               ; preds = %35, %15
  %46 = load i32*, i32** %6, align 8
  %47 = load %struct.ide_device*, %struct.ide_device** %4, align 8
  %48 = getelementptr inbounds %struct.ide_device, %struct.ide_device* %47, i32 0, i32 2
  %49 = load i32*, i32** %48, align 8
  %50 = icmp uge i32* %46, %49
  br i1 %50, label %51, label %57

51:                                               ; preds = %45
  %52 = load %struct.ide_device*, %struct.ide_device** %4, align 8
  %53 = getelementptr inbounds %struct.ide_device, %struct.ide_device* %52, i32 0, i32 3
  %54 = load i32 (%struct.ide_device*)*, i32 (%struct.ide_device*)** %53, align 8
  %55 = load %struct.ide_device*, %struct.ide_device** %4, align 8
  %56 = call i32 %54(%struct.ide_device* %55)
  br label %57

57:                                               ; preds = %51, %45
  %58 = load i32, i32* %7, align 4
  store i32 %58, i32* %3, align 4
  br label %59

59:                                               ; preds = %57, %14
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local i32 @fprintf(i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
