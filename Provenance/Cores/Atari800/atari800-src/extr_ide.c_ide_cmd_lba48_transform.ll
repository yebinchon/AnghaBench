; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_ide.c_ide_cmd_lba48_transform.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_ide.c_ide_cmd_lba48_transform.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ide_device = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ide_device*, i32)* @ide_cmd_lba48_transform to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ide_cmd_lba48_transform(%struct.ide_device* %0, i32 %1) #0 {
  %3 = alloca %struct.ide_device*, align 8
  %4 = alloca i32, align 4
  store %struct.ide_device* %0, %struct.ide_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.ide_device*, %struct.ide_device** %3, align 8
  %7 = getelementptr inbounds %struct.ide_device, %struct.ide_device* %6, i32 0, i32 0
  store i32 %5, i32* %7, align 4
  %8 = load %struct.ide_device*, %struct.ide_device** %3, align 8
  %9 = getelementptr inbounds %struct.ide_device, %struct.ide_device* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %21, label %12

12:                                               ; preds = %2
  %13 = load %struct.ide_device*, %struct.ide_device** %3, align 8
  %14 = getelementptr inbounds %struct.ide_device, %struct.ide_device* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %12
  %18 = load %struct.ide_device*, %struct.ide_device** %3, align 8
  %19 = getelementptr inbounds %struct.ide_device, %struct.ide_device* %18, i32 0, i32 1
  store i32 256, i32* %19, align 4
  br label %20

20:                                               ; preds = %17, %12
  br label %46

21:                                               ; preds = %2
  %22 = load %struct.ide_device*, %struct.ide_device** %3, align 8
  %23 = getelementptr inbounds %struct.ide_device, %struct.ide_device* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %34, label %26

26:                                               ; preds = %21
  %27 = load %struct.ide_device*, %struct.ide_device** %3, align 8
  %28 = getelementptr inbounds %struct.ide_device, %struct.ide_device* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %26
  %32 = load %struct.ide_device*, %struct.ide_device** %3, align 8
  %33 = getelementptr inbounds %struct.ide_device, %struct.ide_device* %32, i32 0, i32 1
  store i32 65536, i32* %33, align 4
  br label %45

34:                                               ; preds = %26, %21
  %35 = load %struct.ide_device*, %struct.ide_device** %3, align 8
  %36 = getelementptr inbounds %struct.ide_device, %struct.ide_device* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = shl i32 %37, 8
  %39 = load %struct.ide_device*, %struct.ide_device** %3, align 8
  %40 = getelementptr inbounds %struct.ide_device, %struct.ide_device* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = or i32 %38, %41
  %43 = load %struct.ide_device*, %struct.ide_device** %3, align 8
  %44 = getelementptr inbounds %struct.ide_device, %struct.ide_device* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  br label %45

45:                                               ; preds = %34, %31
  br label %46

46:                                               ; preds = %45, %20
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
