; ModuleID = '/home/carl/AnghaBench/RetroArch/frontend/drivers/extr_platform_ps3.c_frontend_ps3_exec.c'
source_filename = "/home/carl/AnghaBench/RetroArch/frontend/drivers/extr_platform_ps3.c_frontend_ps3_exec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [35 x i8] c"Attempt to load executable: [%s].\0A\00", align 1
@RARCH_PATH_CONTENT = common dso_local global i32 0, align 4
@CELL_SYSMODULE_SYSUTIL_NP = common dso_local global i32 0, align 4
@CELL_SYSMODULE_NET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @frontend_ps3_exec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @frontend_ps3_exec(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [256 x i8], align 16
  %7 = alloca [2 x i8*], align 16
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = call i32 (...) @verbosity_is_enabled()
  store i32 %8, i32* %5, align 4
  %9 = call i32 (...) @verbosity_enable()
  %10 = load i32, i32* %4, align 4
  %11 = load i8*, i8** %3, align 8
  %12 = call i32 @RARCH_LOG(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i8* %11)
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %30

15:                                               ; preds = %2
  %16 = load i32, i32* @RARCH_PATH_CONTENT, align 4
  %17 = call i32 @path_is_empty(i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %30, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %21 = load i32, i32* @RARCH_PATH_CONTENT, align 4
  %22 = call i32 @path_get(i32 %21)
  %23 = call i32 @strlcpy(i8* %20, i32 %22, i32 256)
  %24 = getelementptr inbounds [2 x i8*], [2 x i8*]* %7, i64 0, i64 0
  %25 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  store i8* %25, i8** %24, align 8
  %26 = getelementptr inbounds i8*, i8** %24, i64 1
  store i8* null, i8** %26, align 8
  %27 = load i8*, i8** %3, align 8
  %28 = getelementptr inbounds [2 x i8*], [2 x i8*]* %7, i64 0, i64 0
  %29 = call i32 @frontend_ps3_exec_exitspawn(i8* %27, i8** %28, i32* null)
  br label %33

30:                                               ; preds = %15, %2
  %31 = load i8*, i8** %3, align 8
  %32 = call i32 @frontend_ps3_exec_exitspawn(i8* %31, i8** null, i32* null)
  br label %33

33:                                               ; preds = %30, %19
  %34 = call i32 (...) @sceNpTerm()
  %35 = call i32 (...) @sys_net_finalize_network()
  %36 = load i32, i32* @CELL_SYSMODULE_SYSUTIL_NP, align 4
  %37 = call i32 @cellSysmoduleUnloadModule(i32 %36)
  %38 = load i32, i32* @CELL_SYSMODULE_NET, align 4
  %39 = call i32 @cellSysmoduleUnloadModule(i32 %38)
  %40 = load i32, i32* %5, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %33
  %43 = call i32 (...) @verbosity_enable()
  br label %46

44:                                               ; preds = %33
  %45 = call i32 (...) @verbosity_disable()
  br label %46

46:                                               ; preds = %44, %42
  ret void
}

declare dso_local i32 @verbosity_is_enabled(...) #1

declare dso_local i32 @verbosity_enable(...) #1

declare dso_local i32 @RARCH_LOG(i8*, i8*) #1

declare dso_local i32 @path_is_empty(i32) #1

declare dso_local i32 @strlcpy(i8*, i32, i32) #1

declare dso_local i32 @path_get(i32) #1

declare dso_local i32 @frontend_ps3_exec_exitspawn(i8*, i8**, i32*) #1

declare dso_local i32 @sceNpTerm(...) #1

declare dso_local i32 @sys_net_finalize_network(...) #1

declare dso_local i32 @cellSysmoduleUnloadModule(i32) #1

declare dso_local i32 @verbosity_disable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
