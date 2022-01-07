; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_devices.c_Devices_H_ChangeDirectory.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_devices.c_Devices_H_ChangeDirectory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@devbug = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [11 x i8] c"CD Command\00", align 1
@FALSE = common dso_local global i32 0, align 4
@host_path = common dso_local global i32 0, align 4
@CPU_regY = common dso_local global i32 0, align 4
@CPU_SetN = common dso_local global i32 0, align 4
@atari_path = common dso_local global i8* null, align 8
@Devices_h_current_dir = common dso_local global i8** null, align 8
@h_devnum = common dso_local global i64 0, align 8
@Util_DIR_SEP_CHAR = common dso_local global i8 0, align 1
@CPU_ClrN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @Devices_H_ChangeDirectory to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Devices_H_ChangeDirectory() #0 {
  %1 = alloca i8*, align 8
  %2 = load i64, i64* @devbug, align 8
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %4, label %6

4:                                                ; preds = %0
  %5 = call i32 @Log_print(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  br label %6

6:                                                ; preds = %4, %0
  %7 = load i32, i32* @FALSE, align 4
  %8 = call i64 @Devices_GetHostPath(i32 %7)
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %6
  br label %43

11:                                               ; preds = %6
  %12 = load i32, i32* @host_path, align 4
  %13 = call i32 @Util_direxists(i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %11
  store i32 150, i32* @CPU_regY, align 4
  %16 = load i32, i32* @CPU_SetN, align 4
  br label %43

17:                                               ; preds = %11
  %18 = load i8*, i8** @atari_path, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 0
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %17
  %24 = load i8**, i8*** @Devices_h_current_dir, align 8
  %25 = load i64, i64* @h_devnum, align 8
  %26 = getelementptr inbounds i8*, i8** %24, i64 %25
  %27 = load i8*, i8** %26, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 0
  store i8 0, i8* %28, align 1
  br label %41

29:                                               ; preds = %17
  %30 = load i8**, i8*** @Devices_h_current_dir, align 8
  %31 = load i64, i64* @h_devnum, align 8
  %32 = getelementptr inbounds i8*, i8** %30, i64 %31
  %33 = load i8*, i8** %32, align 8
  %34 = load i8*, i8** @atari_path, align 8
  %35 = call i8* @Util_stpcpy(i8* %33, i8* %34)
  store i8* %35, i8** %1, align 8
  %36 = load i8, i8* @Util_DIR_SEP_CHAR, align 1
  %37 = load i8*, i8** %1, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 0
  store i8 %36, i8* %38, align 1
  %39 = load i8*, i8** %1, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 1
  store i8 0, i8* %40, align 1
  br label %41

41:                                               ; preds = %29, %23
  store i32 1, i32* @CPU_regY, align 4
  %42 = load i32, i32* @CPU_ClrN, align 4
  br label %43

43:                                               ; preds = %41, %15, %10
  ret void
}

declare dso_local i32 @Log_print(i8*) #1

declare dso_local i64 @Devices_GetHostPath(i32) #1

declare dso_local i32 @Util_direxists(i32) #1

declare dso_local i8* @Util_stpcpy(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
