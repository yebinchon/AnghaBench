; ModuleID = '/home/carl/AnghaBench/Atlas/src/extr_chassis-log.c_chassis_log_write.c'
source_filename = "/home/carl/AnghaBench/Atlas/src/extr_chassis-log.c_chassis_log_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i64, i64, i64 }
%struct.TYPE_8__ = type { i8* }

@STDERR_FILENO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@G_LOG_ERROR_POSITION = common dso_local global i32 0, align 4
@G_LOG_LEVEL_MASK = common dso_local global i32 0, align 4
@log_lvl_map = common dso_local global %struct.TYPE_9__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i32, %struct.TYPE_8__*)* @chassis_log_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chassis_log_write(%struct.TYPE_7__* %0, i32 %1, %struct.TYPE_8__* %2) #0 {
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.TYPE_8__* %2, %struct.TYPE_8__** %6, align 8
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp ne i32 -1, %9
  br i1 %10, label %11, label %36

11:                                               ; preds = %3
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %16 = call i32 @S(%struct.TYPE_8__* %15)
  %17 = sext i32 %16 to i64
  %18 = inttoptr i64 %17 to i8*
  %19 = call i32 (i32, i8*, ...) @write(i32 %14, i8* %18)
  %20 = icmp eq i32 -1, %19
  br i1 %20, label %21, label %30

21:                                               ; preds = %11
  %22 = load i32, i32* @STDERR_FILENO, align 4
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %24 = call i32 @S(%struct.TYPE_8__* %23)
  %25 = sext i32 %24 to i64
  %26 = inttoptr i64 %25 to i8*
  %27 = call i32 (i32, i8*, ...) @write(i32 %22, i8* %26)
  %28 = load i32, i32* @STDERR_FILENO, align 4
  %29 = call i32 (i32, i8*, ...) @write(i32 %28, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 1)
  br label %35

30:                                               ; preds = %11
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 (i32, i8*, ...) @write(i32 %33, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 1)
  br label %35

35:                                               ; preds = %30, %21
  br label %45

36:                                               ; preds = %3
  %37 = load i32, i32* @STDERR_FILENO, align 4
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %39 = call i32 @S(%struct.TYPE_8__* %38)
  %40 = sext i32 %39 to i64
  %41 = inttoptr i64 %40 to i8*
  %42 = call i32 (i32, i8*, ...) @write(i32 %37, i8* %41)
  %43 = load i32, i32* @STDERR_FILENO, align 4
  %44 = call i32 (i32, i8*, ...) @write(i32 %43, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 1)
  br label %45

45:                                               ; preds = %36, %35
  ret i32 0
}

declare dso_local i32 @write(i32, i8*, ...) #1

declare dso_local i32 @S(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
