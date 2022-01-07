; ModuleID = '/home/carl/AnghaBench/RetroArch/frontend/drivers/extr_platform_ps3.c_frontend_ps3_exec_exitspawn.c'
source_filename = "/home/carl/AnghaBench/RetroArch/frontend/drivers/extr_platform_ps3.c_frontend_ps3_exec_exitspawn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SYS_PROCESS_PRIMARY_STACK_SIZE_1M = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [71 x i8] c"SELF file is not of NPDRM type, trying another approach to boot it...\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8**, i8**)* @frontend_ps3_exec_exitspawn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @frontend_ps3_exec_exitspawn(i8* %0, i8** %1, i8** %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [256 x i8], align 16
  %10 = alloca i32*, align 8
  store i8* %0, i8** %4, align 8
  store i8** %1, i8*** %5, align 8
  store i8** %2, i8*** %6, align 8
  store i32* null, i32** %10, align 8
  store i32 0, i32* %8, align 4
  br label %11

11:                                               ; preds = %22, %3
  %12 = load i32, i32* %8, align 4
  %13 = zext i32 %12 to i64
  %14 = icmp ult i64 %13, 256
  br i1 %14, label %15, label %25

15:                                               ; preds = %11
  %16 = load i32, i32* %8, align 4
  %17 = and i32 %16, 255
  %18 = trunc i32 %17 to i8
  %19 = load i32, i32* %8, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 %20
  store i8 %18, i8* %21, align 1
  br label %22

22:                                               ; preds = %15
  %23 = load i32, i32* %8, align 4
  %24 = add i32 %23, 1
  store i32 %24, i32* %8, align 4
  br label %11

25:                                               ; preds = %11
  %26 = load i32*, i32** %10, align 8
  %27 = load i8*, i8** %4, align 8
  %28 = load i8**, i8*** %5, align 8
  %29 = load i8**, i8*** %6, align 8
  %30 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %31 = ptrtoint i8* %30 to i32
  %32 = load i32, i32* @SYS_PROCESS_PRIMARY_STACK_SIZE_1M, align 4
  %33 = call i32 @sceNpDrmProcessExitSpawn(i32* %26, i8* %27, i8** %28, i8** %29, i32 %31, i32 256, i32 1000, i32 %32)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %25
  %37 = call i32 @RARCH_WARN(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str, i64 0, i64 0))
  %38 = load i8*, i8** %4, align 8
  %39 = load i8**, i8*** %5, align 8
  %40 = load i8**, i8*** %6, align 8
  %41 = load i32, i32* @SYS_PROCESS_PRIMARY_STACK_SIZE_1M, align 4
  %42 = call i32 @sys_game_process_exitspawn(i8* %38, i8** %39, i8** %40, i32* null, i32 0, i32 1000, i32 %41)
  br label %43

43:                                               ; preds = %36, %25
  %44 = load i32, i32* %7, align 4
  ret i32 %44
}

declare dso_local i32 @sceNpDrmProcessExitSpawn(i32*, i8*, i8**, i8**, i32, i32, i32, i32) #1

declare dso_local i32 @RARCH_WARN(i8*) #1

declare dso_local i32 @sys_game_process_exitspawn(i8*, i8**, i8**, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
