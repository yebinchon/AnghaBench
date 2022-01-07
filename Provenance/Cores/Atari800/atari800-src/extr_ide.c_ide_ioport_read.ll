; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_ide.c_ide_ioport_read.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_ide.c_ide_ioport_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ide_device = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@IDE_debug = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"ide: get: addr: %04x, ret: %02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ide_device*, i32)* @ide_ioport_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ide_ioport_read(%struct.ide_device* %0, i32 %1) #0 {
  %3 = alloca %struct.ide_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ide_device* %0, %struct.ide_device** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 255, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %7 = load i32, i32* %4, align 4
  %8 = and i32 %7, 7
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  switch i32 %9, label %81 [
    i32 0, label %10
    i32 1, label %11
    i32 2, label %24
    i32 3, label %38
    i32 4, label %51
    i32 5, label %64
    i32 6, label %77
    i32 7, label %82
  ]

10:                                               ; preds = %2
  br label %86

11:                                               ; preds = %2
  %12 = load i32, i32* %6, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %11
  %15 = load %struct.ide_device*, %struct.ide_device** %3, align 8
  %16 = getelementptr inbounds %struct.ide_device, %struct.ide_device* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  br label %22

18:                                               ; preds = %11
  %19 = load %struct.ide_device*, %struct.ide_device** %3, align 8
  %20 = getelementptr inbounds %struct.ide_device, %struct.ide_device* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  br label %22

22:                                               ; preds = %18, %14
  %23 = phi i32 [ %17, %14 ], [ %21, %18 ]
  store i32 %23, i32* %5, align 4
  br label %86

24:                                               ; preds = %2
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %24
  %28 = load %struct.ide_device*, %struct.ide_device** %3, align 8
  %29 = getelementptr inbounds %struct.ide_device, %struct.ide_device* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  br label %36

31:                                               ; preds = %24
  %32 = load %struct.ide_device*, %struct.ide_device** %3, align 8
  %33 = getelementptr inbounds %struct.ide_device, %struct.ide_device* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = and i32 %34, 255
  br label %36

36:                                               ; preds = %31, %27
  %37 = phi i32 [ %30, %27 ], [ %35, %31 ]
  store i32 %37, i32* %5, align 4
  br label %86

38:                                               ; preds = %2
  %39 = load i32, i32* %6, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %38
  %42 = load %struct.ide_device*, %struct.ide_device** %3, align 8
  %43 = getelementptr inbounds %struct.ide_device, %struct.ide_device* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 4
  br label %49

45:                                               ; preds = %38
  %46 = load %struct.ide_device*, %struct.ide_device** %3, align 8
  %47 = getelementptr inbounds %struct.ide_device, %struct.ide_device* %46, i32 0, i32 5
  %48 = load i32, i32* %47, align 4
  br label %49

49:                                               ; preds = %45, %41
  %50 = phi i32 [ %44, %41 ], [ %48, %45 ]
  store i32 %50, i32* %5, align 4
  br label %86

51:                                               ; preds = %2
  %52 = load i32, i32* %6, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %51
  %55 = load %struct.ide_device*, %struct.ide_device** %3, align 8
  %56 = getelementptr inbounds %struct.ide_device, %struct.ide_device* %55, i32 0, i32 6
  %57 = load i32, i32* %56, align 4
  br label %62

58:                                               ; preds = %51
  %59 = load %struct.ide_device*, %struct.ide_device** %3, align 8
  %60 = getelementptr inbounds %struct.ide_device, %struct.ide_device* %59, i32 0, i32 7
  %61 = load i32, i32* %60, align 4
  br label %62

62:                                               ; preds = %58, %54
  %63 = phi i32 [ %57, %54 ], [ %61, %58 ]
  store i32 %63, i32* %5, align 4
  br label %86

64:                                               ; preds = %2
  %65 = load i32, i32* %6, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %64
  %68 = load %struct.ide_device*, %struct.ide_device** %3, align 8
  %69 = getelementptr inbounds %struct.ide_device, %struct.ide_device* %68, i32 0, i32 8
  %70 = load i32, i32* %69, align 4
  br label %75

71:                                               ; preds = %64
  %72 = load %struct.ide_device*, %struct.ide_device** %3, align 8
  %73 = getelementptr inbounds %struct.ide_device, %struct.ide_device* %72, i32 0, i32 9
  %74 = load i32, i32* %73, align 4
  br label %75

75:                                               ; preds = %71, %67
  %76 = phi i32 [ %70, %67 ], [ %74, %71 ]
  store i32 %76, i32* %5, align 4
  br label %86

77:                                               ; preds = %2
  %78 = load %struct.ide_device*, %struct.ide_device** %3, align 8
  %79 = getelementptr inbounds %struct.ide_device, %struct.ide_device* %78, i32 0, i32 10
  %80 = load i32, i32* %79, align 4
  store i32 %80, i32* %5, align 4
  br label %86

81:                                               ; preds = %2
  br label %82

82:                                               ; preds = %2, %81
  %83 = load %struct.ide_device*, %struct.ide_device** %3, align 8
  %84 = getelementptr inbounds %struct.ide_device, %struct.ide_device* %83, i32 0, i32 11
  %85 = load i32, i32* %84, align 4
  store i32 %85, i32* %5, align 4
  br label %86

86:                                               ; preds = %82, %77, %75, %62, %49, %36, %22, %10
  %87 = load i64, i64* @IDE_debug, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %86
  %90 = load i32, i32* @stderr, align 4
  %91 = load i32, i32* %4, align 4
  %92 = load i32, i32* %5, align 4
  %93 = call i32 @fprintf(i32 %90, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %91, i32 %92)
  br label %94

94:                                               ; preds = %89, %86
  %95 = load i32, i32* %5, align 4
  ret i32 %95
}

declare dso_local i32 @fprintf(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
