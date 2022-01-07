; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_ide.c_ide_ioport_write.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_ide.c_ide_ioport_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ide_device = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@IDE_debug = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"ide: put: addr: %04x, byte: %02x\0A\00", align 1
@BUSY_STAT = common dso_local global i32 0, align 4
@DRQ_STAT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"\09IDE: CMD=%02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ide_device*, i32, i32)* @ide_ioport_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ide_ioport_write(%struct.ide_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ide_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ide_device* %0, %struct.ide_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i64, i64* @IDE_debug, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %3
  %10 = load i32, i32* @stderr, align 4
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* %6, align 4
  %13 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %10, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %11, i32 %12)
  br label %14

14:                                               ; preds = %9, %3
  %15 = load i32, i32* %5, align 4
  %16 = and i32 %15, 7
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp ne i32 %17, 7
  br i1 %18, label %19, label %29

19:                                               ; preds = %14
  %20 = load %struct.ide_device*, %struct.ide_device** %4, align 8
  %21 = getelementptr inbounds %struct.ide_device, %struct.ide_device* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @BUSY_STAT, align 4
  %24 = load i32, i32* @DRQ_STAT, align 4
  %25 = or i32 %23, %24
  %26 = and i32 %22, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %19
  br label %112

29:                                               ; preds = %19, %14
  %30 = load i32, i32* %5, align 4
  switch i32 %30, label %98 [
    i32 0, label %31
    i32 1, label %32
    i32 2, label %43
    i32 3, label %54
    i32 4, label %65
    i32 5, label %76
    i32 6, label %87
    i32 7, label %99
  ]

31:                                               ; preds = %29
  br label %112

32:                                               ; preds = %29
  %33 = load %struct.ide_device*, %struct.ide_device** %4, align 8
  %34 = call i32 @ide_clear_hob(%struct.ide_device* %33)
  %35 = load %struct.ide_device*, %struct.ide_device** %4, align 8
  %36 = getelementptr inbounds %struct.ide_device, %struct.ide_device* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.ide_device*, %struct.ide_device** %4, align 8
  %39 = getelementptr inbounds %struct.ide_device, %struct.ide_device* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  %40 = load i32, i32* %6, align 4
  %41 = load %struct.ide_device*, %struct.ide_device** %4, align 8
  %42 = getelementptr inbounds %struct.ide_device, %struct.ide_device* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 4
  br label %112

43:                                               ; preds = %29
  %44 = load %struct.ide_device*, %struct.ide_device** %4, align 8
  %45 = call i32 @ide_clear_hob(%struct.ide_device* %44)
  %46 = load %struct.ide_device*, %struct.ide_device** %4, align 8
  %47 = getelementptr inbounds %struct.ide_device, %struct.ide_device* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.ide_device*, %struct.ide_device** %4, align 8
  %50 = getelementptr inbounds %struct.ide_device, %struct.ide_device* %49, i32 0, i32 3
  store i32 %48, i32* %50, align 4
  %51 = load i32, i32* %6, align 4
  %52 = load %struct.ide_device*, %struct.ide_device** %4, align 8
  %53 = getelementptr inbounds %struct.ide_device, %struct.ide_device* %52, i32 0, i32 4
  store i32 %51, i32* %53, align 4
  br label %112

54:                                               ; preds = %29
  %55 = load %struct.ide_device*, %struct.ide_device** %4, align 8
  %56 = call i32 @ide_clear_hob(%struct.ide_device* %55)
  %57 = load %struct.ide_device*, %struct.ide_device** %4, align 8
  %58 = getelementptr inbounds %struct.ide_device, %struct.ide_device* %57, i32 0, i32 6
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.ide_device*, %struct.ide_device** %4, align 8
  %61 = getelementptr inbounds %struct.ide_device, %struct.ide_device* %60, i32 0, i32 5
  store i32 %59, i32* %61, align 4
  %62 = load i32, i32* %6, align 4
  %63 = load %struct.ide_device*, %struct.ide_device** %4, align 8
  %64 = getelementptr inbounds %struct.ide_device, %struct.ide_device* %63, i32 0, i32 6
  store i32 %62, i32* %64, align 4
  br label %112

65:                                               ; preds = %29
  %66 = load %struct.ide_device*, %struct.ide_device** %4, align 8
  %67 = call i32 @ide_clear_hob(%struct.ide_device* %66)
  %68 = load %struct.ide_device*, %struct.ide_device** %4, align 8
  %69 = getelementptr inbounds %struct.ide_device, %struct.ide_device* %68, i32 0, i32 8
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.ide_device*, %struct.ide_device** %4, align 8
  %72 = getelementptr inbounds %struct.ide_device, %struct.ide_device* %71, i32 0, i32 7
  store i32 %70, i32* %72, align 4
  %73 = load i32, i32* %6, align 4
  %74 = load %struct.ide_device*, %struct.ide_device** %4, align 8
  %75 = getelementptr inbounds %struct.ide_device, %struct.ide_device* %74, i32 0, i32 8
  store i32 %73, i32* %75, align 4
  br label %112

76:                                               ; preds = %29
  %77 = load %struct.ide_device*, %struct.ide_device** %4, align 8
  %78 = call i32 @ide_clear_hob(%struct.ide_device* %77)
  %79 = load %struct.ide_device*, %struct.ide_device** %4, align 8
  %80 = getelementptr inbounds %struct.ide_device, %struct.ide_device* %79, i32 0, i32 10
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.ide_device*, %struct.ide_device** %4, align 8
  %83 = getelementptr inbounds %struct.ide_device, %struct.ide_device* %82, i32 0, i32 9
  store i32 %81, i32* %83, align 4
  %84 = load i32, i32* %6, align 4
  %85 = load %struct.ide_device*, %struct.ide_device** %4, align 8
  %86 = getelementptr inbounds %struct.ide_device, %struct.ide_device* %85, i32 0, i32 10
  store i32 %84, i32* %86, align 4
  br label %112

87:                                               ; preds = %29
  %88 = load i32, i32* %6, align 4
  %89 = and i32 %88, -17
  %90 = or i32 %89, 160
  %91 = load %struct.ide_device*, %struct.ide_device** %4, align 8
  %92 = getelementptr inbounds %struct.ide_device, %struct.ide_device* %91, i32 0, i32 11
  store i32 %90, i32* %92, align 4
  %93 = load i32, i32* %6, align 4
  %94 = ashr i32 %93, 4
  %95 = and i32 %94, 1
  %96 = load %struct.ide_device*, %struct.ide_device** %4, align 8
  %97 = getelementptr inbounds %struct.ide_device, %struct.ide_device* %96, i32 0, i32 12
  store i32 %95, i32* %97, align 4
  br label %112

98:                                               ; preds = %29
  br label %99

99:                                               ; preds = %29, %98
  %100 = load i64, i64* @IDE_debug, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %99
  %103 = load i32, i32* @stderr, align 4
  %104 = load i32, i32* %6, align 4
  %105 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %103, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %104)
  br label %106

106:                                              ; preds = %102, %99
  %107 = load %struct.ide_device*, %struct.ide_device** %4, align 8
  %108 = call i32 @ide_transfer_stop(%struct.ide_device* %107)
  %109 = load %struct.ide_device*, %struct.ide_device** %4, align 8
  %110 = load i32, i32* %6, align 4
  %111 = call i32 @ide_command(%struct.ide_device* %109, i32 %110)
  br label %112

112:                                              ; preds = %28, %106, %87, %76, %65, %54, %43, %32, %31
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, i32, ...) #1

declare dso_local i32 @ide_clear_hob(%struct.ide_device*) #1

declare dso_local i32 @ide_transfer_stop(%struct.ide_device*) #1

declare dso_local i32 @ide_command(%struct.ide_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
