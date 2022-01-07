; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_devices.c_Devices_H_Special.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_devices.c_Devices_H_Special.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@devbug = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"HHSPEC\00", align 1
@Devices_ICCOMZ = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"FORMAT Command\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"UNKNOWN Command %02X\00", align 1
@CPU_regY = common dso_local global i32 0, align 4
@CPU_SetN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @Devices_H_Special to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Devices_H_Special() #0 {
  %1 = load i64, i64* @devbug, align 8
  %2 = icmp ne i64 %1, 0
  br i1 %2, label %3, label %5

3:                                                ; preds = %0
  %4 = call i32 (i8*, ...) @Log_print(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %5

5:                                                ; preds = %3, %0
  %6 = load i32, i32* @Devices_ICCOMZ, align 4
  %7 = call i32 @MEMORY_dGetByte(i32 %6)
  switch i32 %7, label %29 [
    i32 38, label %8
    i32 37, label %10
    i32 39, label %12
    i32 40, label %14
    i32 41, label %17
    i32 44, label %17
    i32 47, label %19
    i32 48, label %21
    i32 254, label %23
  ]

8:                                                ; preds = %5
  %9 = call i32 (...) @Devices_H_Note()
  br label %39

10:                                               ; preds = %5
  %11 = call i32 (...) @Devices_H_Point()
  br label %39

12:                                               ; preds = %5
  %13 = call i32 (...) @Devices_H_FileLength()
  br label %39

14:                                               ; preds = %5
  %15 = load i32, i32* @FALSE, align 4
  %16 = call i32 @Devices_H_Load(i32 %15)
  br label %39

17:                                               ; preds = %5, %5
  %18 = call i32 (...) @Devices_H_ChangeDirectory()
  br label %39

19:                                               ; preds = %5
  %20 = call i32 (...) @Devices_H_DiskInfo()
  br label %39

21:                                               ; preds = %5
  %22 = call i32 (...) @Devices_H_ToAbsolutePath()
  br label %39

23:                                               ; preds = %5
  %24 = load i64, i64* @devbug, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %23
  %27 = call i32 (i8*, ...) @Log_print(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  br label %28

28:                                               ; preds = %26, %23
  br label %37

29:                                               ; preds = %5
  %30 = load i64, i64* @devbug, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %29
  %33 = load i32, i32* @Devices_ICCOMZ, align 4
  %34 = call i32 @MEMORY_dGetByte(i32 %33)
  %35 = call i32 (i8*, ...) @Log_print(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %34)
  br label %36

36:                                               ; preds = %32, %29
  br label %37

37:                                               ; preds = %36, %28
  store i32 168, i32* @CPU_regY, align 4
  %38 = load i32, i32* @CPU_SetN, align 4
  br label %39

39:                                               ; preds = %37, %21, %19, %17, %14, %12, %10, %8
  ret void
}

declare dso_local i32 @Log_print(i8*, ...) #1

declare dso_local i32 @MEMORY_dGetByte(i32) #1

declare dso_local i32 @Devices_H_Note(...) #1

declare dso_local i32 @Devices_H_Point(...) #1

declare dso_local i32 @Devices_H_FileLength(...) #1

declare dso_local i32 @Devices_H_Load(i32) #1

declare dso_local i32 @Devices_H_ChangeDirectory(...) #1

declare dso_local i32 @Devices_H_DiskInfo(...) #1

declare dso_local i32 @Devices_H_ToAbsolutePath(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
