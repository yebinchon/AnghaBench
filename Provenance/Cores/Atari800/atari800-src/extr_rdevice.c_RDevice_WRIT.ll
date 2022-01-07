; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_rdevice.c_RDevice_WRIT.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_rdevice.c_RDevice_WRIT.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CPU_regY = common dso_local global i32 0, align 4
@CPU_ClrN = common dso_local global i32 0, align 4
@translation = common dso_local global i64 0, align 8
@CPU_regA = common dso_local global i32 0, align 4
@linefeeds = common dso_local global i64 0, align 8
@RDevice_serial_enabled = common dso_local global i64 0, align 8
@connected = common dso_local global i64 0, align 8
@bufend = common dso_local global i32 0, align 4
@bufout = common dso_local global i8* null, align 8
@command_end = common dso_local global i64 0, align 8
@command_buf = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [5 x i8] c"OK\0D\0A\00", align 1
@rdev_fd = common dso_local global i32 0, align 4
@trans_cr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"write\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"R*: ERROR on write.\00", align 1
@CPU_SetN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @RDevice_WRIT() #0 {
  %1 = alloca i8, align 1
  store i32 1, i32* @CPU_regY, align 4
  %2 = load i32, i32* @CPU_ClrN, align 4
  %3 = load i64, i64* @translation, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %43

5:                                                ; preds = %0
  %6 = load i32, i32* @CPU_regA, align 4
  %7 = icmp eq i32 %6, 155
  br i1 %7, label %8, label %42

8:                                                ; preds = %5
  store i8 13, i8* %1, align 1
  %9 = load i64, i64* @linefeeds, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %41

11:                                               ; preds = %8
  %12 = load i64, i64* @RDevice_serial_enabled, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %37

14:                                               ; preds = %11
  %15 = load i64, i64* @connected, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %37

17:                                               ; preds = %14
  %18 = load i32, i32* @bufend, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* @bufend, align 4
  %20 = load i8, i8* %1, align 1
  %21 = load i8*, i8** @bufout, align 8
  %22 = load i32, i32* @bufend, align 4
  %23 = sub nsw i32 %22, 1
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8, i8* %21, i64 %24
  store i8 %20, i8* %25, align 1
  %26 = load i8*, i8** @bufout, align 8
  %27 = load i32, i32* @bufend, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8, i8* %26, i64 %28
  store i8 0, i8* %29, align 1
  store i64 0, i64* @command_end, align 8
  %30 = load i8*, i8** @command_buf, align 8
  %31 = load i64, i64* @command_end, align 8
  %32 = getelementptr inbounds i8, i8* %30, i64 %31
  store i8 0, i8* %32, align 1
  %33 = load i8*, i8** @bufout, align 8
  %34 = call i32 @strcat(i8* %33, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %35 = load i32, i32* @bufend, align 4
  %36 = add nsw i32 %35, 4
  store i32 %36, i32* @bufend, align 4
  br label %40

37:                                               ; preds = %14, %11
  %38 = load i32, i32* @rdev_fd, align 4
  %39 = call i32 @write(i32 %38, i8* %1, i32 1)
  br label %40

40:                                               ; preds = %37, %17
  store i8 10, i8* %1, align 1
  br label %41

41:                                               ; preds = %40, %8
  br label %42

42:                                               ; preds = %41, %5
  br label %46

43:                                               ; preds = %0
  %44 = load i32, i32* @CPU_regA, align 4
  %45 = trunc i32 %44 to i8
  store i8 %45, i8* %1, align 1
  br label %46

46:                                               ; preds = %43, %42
  %47 = load i64, i64* @connected, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %57

49:                                               ; preds = %46
  %50 = load i32, i32* @trans_cr, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %49
  %53 = load i8, i8* %1, align 1
  %54 = zext i8 %53 to i32
  %55 = icmp eq i32 %54, 13
  br i1 %55, label %56, label %57

56:                                               ; preds = %52
  store i8 10, i8* %1, align 1
  br label %57

57:                                               ; preds = %56, %52, %49, %46
  %58 = load i64, i64* @connected, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %68

60:                                               ; preds = %57
  %61 = load i32, i32* @rdev_fd, align 4
  %62 = call i32 @write(i32 %61, i8* %1, i32 1)
  %63 = icmp slt i32 %62, 1
  br i1 %63, label %64, label %68

64:                                               ; preds = %60
  %65 = call i32 @perror(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %66 = call i32 @DBG_APRINT(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %67 = load i32, i32* @CPU_SetN, align 4
  store i32 135, i32* @CPU_regY, align 4
  br label %68

68:                                               ; preds = %64, %60, %57
  store i32 1, i32* @CPU_regA, align 4
  ret void
}

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local i32 @write(i32, i8*, i32) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @DBG_APRINT(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
