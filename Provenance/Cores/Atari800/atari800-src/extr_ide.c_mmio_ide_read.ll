; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_ide.c_mmio_ide_read.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_ide.c_mmio_ide_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ide_device = type { i32*, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ide_device*, i32)* @mmio_ide_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmio_ide_read(%struct.ide_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ide_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ide_device* %0, %struct.ide_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = and i32 %7, 15
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %57

11:                                               ; preds = %2
  %12 = load %struct.ide_device*, %struct.ide_device** %4, align 8
  %13 = getelementptr inbounds %struct.ide_device, %struct.ide_device* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %27, label %16

16:                                               ; preds = %11
  %17 = load %struct.ide_device*, %struct.ide_device** %4, align 8
  %18 = call i8* @ide_data_readw(%struct.ide_device* %17, i32 0)
  %19 = ptrtoint i8* %18 to i32
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = and i32 %20, 65280
  %22 = load %struct.ide_device*, %struct.ide_device** %4, align 8
  %23 = getelementptr inbounds %struct.ide_device, %struct.ide_device* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  store i32 %21, i32* %25, align 4
  %26 = load i32, i32* %6, align 4
  store i32 %26, i32* %3, align 4
  br label %83

27:                                               ; preds = %11
  %28 = load %struct.ide_device*, %struct.ide_device** %4, align 8
  %29 = getelementptr inbounds %struct.ide_device, %struct.ide_device* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %42, label %32

32:                                               ; preds = %27
  %33 = load %struct.ide_device*, %struct.ide_device** %4, align 8
  %34 = call i8* @ide_data_readw(%struct.ide_device* %33, i32 0)
  %35 = ptrtoint i8* %34 to i32
  %36 = load %struct.ide_device*, %struct.ide_device** %4, align 8
  %37 = getelementptr inbounds %struct.ide_device, %struct.ide_device* %36, i32 0, i32 2
  store i32 %35, i32* %37, align 4
  %38 = load %struct.ide_device*, %struct.ide_device** %4, align 8
  %39 = getelementptr inbounds %struct.ide_device, %struct.ide_device* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = and i32 %40, 255
  store i32 %41, i32* %6, align 4
  br label %47

42:                                               ; preds = %27
  %43 = load %struct.ide_device*, %struct.ide_device** %4, align 8
  %44 = getelementptr inbounds %struct.ide_device, %struct.ide_device* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = ashr i32 %45, 8
  store i32 %46, i32* %6, align 4
  br label %47

47:                                               ; preds = %42, %32
  %48 = load %struct.ide_device*, %struct.ide_device** %4, align 8
  %49 = getelementptr inbounds %struct.ide_device, %struct.ide_device* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = icmp ne i32 %50, 0
  %52 = xor i1 %51, true
  %53 = zext i1 %52 to i32
  %54 = load %struct.ide_device*, %struct.ide_device** %4, align 8
  %55 = getelementptr inbounds %struct.ide_device, %struct.ide_device* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 8
  %56 = load i32, i32* %6, align 4
  store i32 %56, i32* %3, align 4
  br label %83

57:                                               ; preds = %2
  %58 = load i32, i32* %5, align 4
  %59 = icmp sge i32 %58, 8
  br i1 %59, label %60, label %70

60:                                               ; preds = %57
  %61 = load %struct.ide_device*, %struct.ide_device** %4, align 8
  %62 = getelementptr inbounds %struct.ide_device, %struct.ide_device* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* %5, align 4
  %65 = sub nsw i32 %64, 8
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %63, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = ashr i32 %68, 8
  store i32 %69, i32* %3, align 4
  br label %83

70:                                               ; preds = %57
  %71 = load %struct.ide_device*, %struct.ide_device** %4, align 8
  %72 = load i32, i32* %5, align 4
  %73 = call i32 @ide_ioport_read(%struct.ide_device* %71, i32 %72)
  store i32 %73, i32* %6, align 4
  %74 = load i32, i32* %6, align 4
  %75 = and i32 %74, 65280
  %76 = load %struct.ide_device*, %struct.ide_device** %4, align 8
  %77 = getelementptr inbounds %struct.ide_device, %struct.ide_device* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = load i32, i32* %5, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  store i32 %75, i32* %81, align 4
  %82 = load i32, i32* %6, align 4
  store i32 %82, i32* %3, align 4
  br label %83

83:                                               ; preds = %70, %60, %47, %16
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local i8* @ide_data_readw(%struct.ide_device*, i32) #1

declare dso_local i32 @ide_ioport_read(%struct.ide_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
