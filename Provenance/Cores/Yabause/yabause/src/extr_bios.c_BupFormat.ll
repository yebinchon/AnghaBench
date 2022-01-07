; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_bios.c_BupFormat.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_bios.c_BupFormat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@BupRam = common dso_local global i32 0, align 4
@CartridgeArea = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [30 x i8] c"Formatting FDD not supported\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @BupFormat(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  switch i32 %3, label %43 [
    i32 0, label %4
    i32 1, label %7
    i32 2, label %41
  ]

4:                                                ; preds = %1
  %5 = load i32, i32* @BupRam, align 4
  %6 = call i32 @FormatBackupRam(i32 %5, i32 65536)
  br label %44

7:                                                ; preds = %1
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** @CartridgeArea, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = and i32 %10, 240
  %12 = icmp eq i32 %11, 32
  br i1 %12, label %13, label %40

13:                                               ; preds = %7
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** @CartridgeArea, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = and i32 %16, 15
  switch i32 %17, label %38 [
    i32 1, label %18
    i32 2, label %23
    i32 3, label %28
    i32 4, label %33
  ]

18:                                               ; preds = %13
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** @CartridgeArea, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @FormatBackupRam(i32 %21, i32 1048576)
  br label %39

23:                                               ; preds = %13
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** @CartridgeArea, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @FormatBackupRam(i32 %26, i32 2097152)
  br label %39

28:                                               ; preds = %13
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** @CartridgeArea, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @FormatBackupRam(i32 %31, i32 4194304)
  br label %39

33:                                               ; preds = %13
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** @CartridgeArea, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @FormatBackupRam(i32 %36, i32 8388608)
  br label %39

38:                                               ; preds = %13
  br label %39

39:                                               ; preds = %38, %33, %28, %23, %18
  br label %40

40:                                               ; preds = %39, %7
  br label %44

41:                                               ; preds = %1
  %42 = call i32 @LOG(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %43

43:                                               ; preds = %1, %41
  br label %44

44:                                               ; preds = %43, %40, %4
  ret void
}

declare dso_local i32 @FormatBackupRam(i32, i32) #1

declare dso_local i32 @LOG(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
