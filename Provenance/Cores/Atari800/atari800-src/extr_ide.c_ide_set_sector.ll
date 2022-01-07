; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_ide.c_ide_set_sector.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_ide.c_ide_set_sector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ide_device = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ide_device*, i32)* @ide_set_sector to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ide_set_sector(%struct.ide_device* %0, i32 %1) #0 {
  %3 = alloca %struct.ide_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ide_device* %0, %struct.ide_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.ide_device*, %struct.ide_device** %3, align 8
  %8 = getelementptr inbounds %struct.ide_device, %struct.ide_device* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = and i32 %9, 64
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %63

12:                                               ; preds = %2
  %13 = load %struct.ide_device*, %struct.ide_device** %3, align 8
  %14 = getelementptr inbounds %struct.ide_device, %struct.ide_device* %13, i32 0, i32 9
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %38, label %17

17:                                               ; preds = %12
  %18 = load %struct.ide_device*, %struct.ide_device** %3, align 8
  %19 = getelementptr inbounds %struct.ide_device, %struct.ide_device* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = and i32 %20, 240
  %22 = load i32, i32* %4, align 4
  %23 = ashr i32 %22, 24
  %24 = or i32 %21, %23
  %25 = load %struct.ide_device*, %struct.ide_device** %3, align 8
  %26 = getelementptr inbounds %struct.ide_device, %struct.ide_device* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* %4, align 4
  %28 = ashr i32 %27, 16
  %29 = load %struct.ide_device*, %struct.ide_device** %3, align 8
  %30 = getelementptr inbounds %struct.ide_device, %struct.ide_device* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* %4, align 4
  %32 = ashr i32 %31, 8
  %33 = load %struct.ide_device*, %struct.ide_device** %3, align 8
  %34 = getelementptr inbounds %struct.ide_device, %struct.ide_device* %33, i32 0, i32 2
  store i32 %32, i32* %34, align 4
  %35 = load i32, i32* %4, align 4
  %36 = load %struct.ide_device*, %struct.ide_device** %3, align 8
  %37 = getelementptr inbounds %struct.ide_device, %struct.ide_device* %36, i32 0, i32 3
  store i32 %35, i32* %37, align 4
  br label %62

38:                                               ; preds = %12
  %39 = load i32, i32* %4, align 4
  %40 = load %struct.ide_device*, %struct.ide_device** %3, align 8
  %41 = getelementptr inbounds %struct.ide_device, %struct.ide_device* %40, i32 0, i32 3
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* %4, align 4
  %43 = ashr i32 %42, 8
  %44 = load %struct.ide_device*, %struct.ide_device** %3, align 8
  %45 = getelementptr inbounds %struct.ide_device, %struct.ide_device* %44, i32 0, i32 2
  store i32 %43, i32* %45, align 4
  %46 = load i32, i32* %4, align 4
  %47 = ashr i32 %46, 16
  %48 = load %struct.ide_device*, %struct.ide_device** %3, align 8
  %49 = getelementptr inbounds %struct.ide_device, %struct.ide_device* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  %50 = load i32, i32* %4, align 4
  %51 = ashr i32 %50, 24
  %52 = load %struct.ide_device*, %struct.ide_device** %3, align 8
  %53 = getelementptr inbounds %struct.ide_device, %struct.ide_device* %52, i32 0, i32 4
  store i32 %51, i32* %53, align 4
  %54 = load i32, i32* %4, align 4
  %55 = ashr i32 %54, 32
  %56 = load %struct.ide_device*, %struct.ide_device** %3, align 8
  %57 = getelementptr inbounds %struct.ide_device, %struct.ide_device* %56, i32 0, i32 5
  store i32 %55, i32* %57, align 4
  %58 = load i32, i32* %4, align 4
  %59 = ashr i32 %58, 40
  %60 = load %struct.ide_device*, %struct.ide_device** %3, align 8
  %61 = getelementptr inbounds %struct.ide_device, %struct.ide_device* %60, i32 0, i32 6
  store i32 %59, i32* %61, align 4
  br label %62

62:                                               ; preds = %38, %17
  br label %110

63:                                               ; preds = %2
  %64 = load i32, i32* %4, align 4
  %65 = load %struct.ide_device*, %struct.ide_device** %3, align 8
  %66 = getelementptr inbounds %struct.ide_device, %struct.ide_device* %65, i32 0, i32 7
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.ide_device*, %struct.ide_device** %3, align 8
  %69 = getelementptr inbounds %struct.ide_device, %struct.ide_device* %68, i32 0, i32 8
  %70 = load i32, i32* %69, align 4
  %71 = mul nsw i32 %67, %70
  %72 = sdiv i32 %64, %71
  store i32 %72, i32* %5, align 4
  %73 = load i32, i32* %4, align 4
  %74 = load %struct.ide_device*, %struct.ide_device** %3, align 8
  %75 = getelementptr inbounds %struct.ide_device, %struct.ide_device* %74, i32 0, i32 7
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.ide_device*, %struct.ide_device** %3, align 8
  %78 = getelementptr inbounds %struct.ide_device, %struct.ide_device* %77, i32 0, i32 8
  %79 = load i32, i32* %78, align 4
  %80 = mul nsw i32 %76, %79
  %81 = srem i32 %73, %80
  store i32 %81, i32* %6, align 4
  %82 = load i32, i32* %5, align 4
  %83 = lshr i32 %82, 8
  %84 = load %struct.ide_device*, %struct.ide_device** %3, align 8
  %85 = getelementptr inbounds %struct.ide_device, %struct.ide_device* %84, i32 0, i32 1
  store i32 %83, i32* %85, align 4
  %86 = load i32, i32* %5, align 4
  %87 = load %struct.ide_device*, %struct.ide_device** %3, align 8
  %88 = getelementptr inbounds %struct.ide_device, %struct.ide_device* %87, i32 0, i32 2
  store i32 %86, i32* %88, align 4
  %89 = load %struct.ide_device*, %struct.ide_device** %3, align 8
  %90 = getelementptr inbounds %struct.ide_device, %struct.ide_device* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = and i32 %91, 240
  %93 = load i32, i32* %6, align 4
  %94 = load %struct.ide_device*, %struct.ide_device** %3, align 8
  %95 = getelementptr inbounds %struct.ide_device, %struct.ide_device* %94, i32 0, i32 8
  %96 = load i32, i32* %95, align 4
  %97 = udiv i32 %93, %96
  %98 = and i32 %97, 15
  %99 = or i32 %92, %98
  %100 = load %struct.ide_device*, %struct.ide_device** %3, align 8
  %101 = getelementptr inbounds %struct.ide_device, %struct.ide_device* %100, i32 0, i32 0
  store i32 %99, i32* %101, align 4
  %102 = load i32, i32* %6, align 4
  %103 = load %struct.ide_device*, %struct.ide_device** %3, align 8
  %104 = getelementptr inbounds %struct.ide_device, %struct.ide_device* %103, i32 0, i32 8
  %105 = load i32, i32* %104, align 4
  %106 = urem i32 %102, %105
  %107 = add i32 %106, 1
  %108 = load %struct.ide_device*, %struct.ide_device** %3, align 8
  %109 = getelementptr inbounds %struct.ide_device, %struct.ide_device* %108, i32 0, i32 3
  store i32 %107, i32* %109, align 4
  br label %110

110:                                              ; preds = %63, %62
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
