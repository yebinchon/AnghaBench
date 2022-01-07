; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/vcos/generic/extr_vcos_cmd.c_vcos_cmd_execute.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/vcos/generic/extr_vcos_cmd.c_vcos_cmd_execute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32*, i32, i32 }
%struct.TYPE_6__ = type { i32, i8**, i8**, i64, i8*, i8*, i64 }

@VCOS_EINVAL = common dso_local global i32 0, align 4
@cmd_globals = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@vcos_cmd_init = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"results logged\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vcos_cmd_execute(i32 %0, i8** %1, i64 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_6__, align 8
  store i32 %0, i32* %5, align 4
  store i8** %1, i8*** %6, align 8
  store i64 %2, i64* %7, align 8
  store i8* %3, i8** %8, align 8
  %11 = load i32, i32* @VCOS_EINVAL, align 4
  store i32 %11, i32* %9, align 4
  %12 = load i32, i32* @vcos_cmd_init, align 4
  %13 = call i32 @vcos_once(i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @cmd_globals, i32 0, i32 3), i32 %12)
  %14 = load i32, i32* %5, align 4
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  store i32 %14, i32* %15, align 8
  %16 = load i8**, i8*** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 2
  store i8** %16, i8*** %17, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 1
  store i8** %16, i8*** %18, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 6
  store i64 0, i64* %19, align 8
  %20 = load i64, i64* %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 3
  store i64 %20, i64* %21, align 8
  %22 = load i8*, i8** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 4
  store i8* %22, i8** %23, align 8
  %24 = load i8*, i8** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 5
  store i8* %24, i8** %25, align 8
  %26 = load i8*, i8** %8, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 0
  store i8 0, i8* %27, align 1
  %28 = call i32 @vcos_mutex_lock(i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @cmd_globals, i32 0, i32 0))
  %29 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @cmd_globals, i32 0, i32 2), align 8
  %30 = call i32 @execute_cmd(%struct.TYPE_6__* %10, i32 %29)
  store i32 %30, i32* %9, align 4
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 6
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %4
  %35 = call i32 @cmd_log_results(%struct.TYPE_6__* %10)
  %36 = load i8*, i8** %8, align 8
  %37 = load i64, i64* %7, align 8
  %38 = call i32 @vcos_snprintf(i8* %36, i64 %37, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %52

39:                                               ; preds = %4
  %40 = load i32*, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @cmd_globals, i32 0, i32 1), align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %42, label %51

42:                                               ; preds = %39
  %43 = load i8*, i8** %8, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 0
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %42
  %49 = call i32 @vcos_cmd_printf(%struct.TYPE_6__* %10, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %50

50:                                               ; preds = %48, %42
  br label %51

51:                                               ; preds = %50, %39
  br label %52

52:                                               ; preds = %51, %34
  %53 = call i32 @vcos_mutex_unlock(i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @cmd_globals, i32 0, i32 0))
  %54 = load i32, i32* %9, align 4
  ret i32 %54
}

declare dso_local i32 @vcos_once(i32*, i32) #1

declare dso_local i32 @vcos_mutex_lock(i32*) #1

declare dso_local i32 @execute_cmd(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @cmd_log_results(%struct.TYPE_6__*) #1

declare dso_local i32 @vcos_snprintf(i8*, i64, i8*) #1

declare dso_local i32 @vcos_cmd_printf(%struct.TYPE_6__*, i8*) #1

declare dso_local i32 @vcos_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
