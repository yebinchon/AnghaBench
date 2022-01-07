; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/mupen64plus-input-sdl/src/extr_autoconfig.c_auto_copy_inputconfig.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/mupen64plus-input-sdl/src/extr_autoconfig.c_auto_copy_inputconfig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@M64ERR_SUCCESS = common dso_local global i64 0, align 8
@M64MSG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [76 x i8] c"auto_copy_inputconfig: Couldn't open source config section '%s' for copying\00", align 1
@.str.1 = private unnamed_addr constant [81 x i8] c"auto_copy_inputconfig: Couldn't open destination config section '%s' for copying\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@M64TYPE_STRING = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [77 x i8] c"auto_copy_inputconfig: Couldn't set 'name' parameter to '%s' in section '%s'\00", align 1
@CopyParamCallback = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [50 x i8] c"auto_copy_inputconfig: parameter list copy failed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @auto_copy_inputconfig(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_2__, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %11 = call i64 @ConfigOpenSection(i8* %9, i32* %10)
  %12 = load i64, i64* @M64ERR_SUCCESS, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %18

14:                                               ; preds = %3
  %15 = load i32, i32* @M64MSG_ERROR, align 4
  %16 = load i8*, i8** %5, align 8
  %17 = call i32 (i32, i8*, ...) @DebugMessage(i32 %15, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str, i64 0, i64 0), i8* %16)
  store i32 0, i32* %4, align 4
  br label %57

18:                                               ; preds = %3
  %19 = load i8*, i8** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 1
  %21 = call i64 @ConfigOpenSection(i8* %19, i32* %20)
  %22 = load i64, i64* @M64ERR_SUCCESS, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %18
  %25 = load i32, i32* @M64MSG_ERROR, align 4
  %26 = load i8*, i8** %6, align 8
  %27 = call i32 (i32, i8*, ...) @DebugMessage(i32 %25, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.1, i64 0, i64 0), i8* %26)
  store i32 0, i32* %4, align 4
  br label %57

28:                                               ; preds = %18
  %29 = load i8*, i8** %7, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %45

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @M64TYPE_STRING, align 4
  %35 = load i8*, i8** %7, align 8
  %36 = call i64 @ConfigSetParameter(i32 %33, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %34, i8* %35)
  %37 = load i64, i64* @M64ERR_SUCCESS, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %44

39:                                               ; preds = %31
  %40 = load i32, i32* @M64MSG_ERROR, align 4
  %41 = load i8*, i8** %7, align 8
  %42 = load i8*, i8** %6, align 8
  %43 = call i32 (i32, i8*, ...) @DebugMessage(i32 %40, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.3, i64 0, i64 0), i8* %41, i8* %42)
  store i32 0, i32* %4, align 4
  br label %57

44:                                               ; preds = %31
  br label %45

45:                                               ; preds = %44, %28
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = bitcast %struct.TYPE_2__* %8 to i8*
  %49 = load i32, i32* @CopyParamCallback, align 4
  %50 = call i64 @ConfigListParameters(i32 %47, i8* %48, i32 %49)
  %51 = load i64, i64* @M64ERR_SUCCESS, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %45
  %54 = load i32, i32* @M64MSG_ERROR, align 4
  %55 = call i32 (i32, i8*, ...) @DebugMessage(i32 %54, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %57

56:                                               ; preds = %45
  store i32 1, i32* %4, align 4
  br label %57

57:                                               ; preds = %56, %53, %39, %24, %14
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

declare dso_local i64 @ConfigOpenSection(i8*, i32*) #1

declare dso_local i32 @DebugMessage(i32, i8*, ...) #1

declare dso_local i64 @ConfigSetParameter(i32, i8*, i32, i8*) #1

declare dso_local i64 @ConfigListParameters(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
