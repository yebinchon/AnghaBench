; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_devices.c_Devices_H_ToAbsolutePath.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_devices.c_Devices_H_ToAbsolutePath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@devbug = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"To Absolute Path Command\00", align 1
@FALSE = common dso_local global i32 0, align 4
@host_path = common dso_local global i32 0, align 4
@CPU_regY = common dso_local global i32 0, align 4
@CPU_SetN = common dso_local global i32 0, align 4
@Devices_ICBLLZ = common dso_local global i32 0, align 4
@atari_path = common dso_local global i8* null, align 8
@Util_DIR_SEP_CHAR = common dso_local global i8 0, align 1
@CPU_ClrN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @Devices_H_ToAbsolutePath to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Devices_H_ToAbsolutePath() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = load i64, i64* @devbug, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %0
  %6 = call i32 @Log_print(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %7

7:                                                ; preds = %5, %0
  %8 = load i32, i32* @FALSE, align 4
  %9 = call i64 @Devices_GetHostPath(i32 %8)
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %7
  br label %71

12:                                               ; preds = %7
  %13 = load i32, i32* @host_path, align 4
  %14 = call i32 @Util_direxists(i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %12
  store i32 150, i32* @CPU_regY, align 4
  %17 = load i32, i32* @CPU_SetN, align 4
  br label %71

18:                                               ; preds = %12
  %19 = load i32, i32* @Devices_ICBLLZ, align 4
  %20 = call i32 @MEMORY_dGetWordAligned(i32 %19)
  store i32 %20, i32* %1, align 4
  %21 = load i8*, i8** @atari_path, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 0
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %67

26:                                               ; preds = %18
  %27 = load i32, i32* %1, align 4
  %28 = call i32 @MEMORY_PutByte(i32 %27, i32 62)
  %29 = load i32, i32* %1, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %1, align 4
  %31 = load i8*, i8** @atari_path, align 8
  store i8* %31, i8** %2, align 8
  br label %32

32:                                               ; preds = %63, %26
  %33 = load i8*, i8** %2, align 8
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %66

37:                                               ; preds = %32
  %38 = load i8*, i8** %2, align 8
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = load i8, i8* @Util_DIR_SEP_CHAR, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp eq i32 %40, %42
  br i1 %43, label %44, label %54

44:                                               ; preds = %37
  %45 = load i8*, i8** %2, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 1
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %44
  br label %66

51:                                               ; preds = %44
  %52 = load i32, i32* %1, align 4
  %53 = call i32 @MEMORY_PutByte(i32 %52, i32 62)
  br label %60

54:                                               ; preds = %37
  %55 = load i32, i32* %1, align 4
  %56 = load i8*, i8** %2, align 8
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = call i32 @MEMORY_PutByte(i32 %55, i32 %58)
  br label %60

60:                                               ; preds = %54, %51
  %61 = load i32, i32* %1, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %1, align 4
  br label %63

63:                                               ; preds = %60
  %64 = load i8*, i8** %2, align 8
  %65 = getelementptr inbounds i8, i8* %64, i32 1
  store i8* %65, i8** %2, align 8
  br label %32

66:                                               ; preds = %50, %32
  br label %67

67:                                               ; preds = %66, %18
  %68 = load i32, i32* %1, align 4
  %69 = call i32 @MEMORY_PutByte(i32 %68, i32 0)
  store i32 1, i32* @CPU_regY, align 4
  %70 = load i32, i32* @CPU_ClrN, align 4
  br label %71

71:                                               ; preds = %67, %16, %11
  ret void
}

declare dso_local i32 @Log_print(i8*) #1

declare dso_local i64 @Devices_GetHostPath(i32) #1

declare dso_local i32 @Util_direxists(i32) #1

declare dso_local i32 @MEMORY_dGetWordAligned(i32) #1

declare dso_local i32 @MEMORY_PutByte(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
