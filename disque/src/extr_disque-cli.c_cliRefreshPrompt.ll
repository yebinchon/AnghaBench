; ModuleID = '/home/carl/AnghaBench/disque/src/extr_disque-cli.c_cliRefreshPrompt.c'
source_filename = "/home/carl/AnghaBench/disque/src/extr_disque-cli.c_cliRefreshPrompt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i32, i64, i64, i32, i32 }

@config = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str = private unnamed_addr constant [10 x i8] c"disque %s\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"[%s]:%d\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%s:%d\00", align 1
@REDIS_REPLY_ERROR = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [5 x i8] c"[%d]\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"> \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @cliRefreshPrompt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cliRefreshPrompt() #0 {
  %1 = alloca i32, align 4
  %2 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 0), align 8
  %3 = icmp ne i8* %2, null
  br i1 %3, label %4, label %8

4:                                                ; preds = %0
  %5 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 3), align 8
  %6 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 0), align 8
  %7 = call i32 (i64, i32, i8*, ...) @snprintf(i64 %5, i32 8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %6)
  store i32 %7, i32* %1, align 4
  br label %18

8:                                                ; preds = %0
  %9 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 3), align 8
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 4), align 8
  %11 = call i64 @strchr(i32 %10, i8 signext 58)
  %12 = icmp ne i64 %11, 0
  %13 = zext i1 %12 to i64
  %14 = select i1 %12, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 4), align 8
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 5), align 4
  %17 = call i32 (i64, i32, i8*, ...) @snprintf(i64 %9, i32 8, i8* %14, i32 %15, i32 %16)
  store i32 %17, i32* %1, align 4
  br label %18

18:                                               ; preds = %8, %4
  %19 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 1), align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %38

21:                                               ; preds = %18
  %22 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 2), align 8
  %23 = load i64, i64* @REDIS_REPLY_ERROR, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %38

25:                                               ; preds = %21
  %26 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 3), align 8
  %27 = load i32, i32* %1, align 4
  %28 = sext i32 %27 to i64
  %29 = add nsw i64 %26, %28
  %30 = load i32, i32* %1, align 4
  %31 = sext i32 %30 to i64
  %32 = sub i64 8, %31
  %33 = trunc i64 %32 to i32
  %34 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 1), align 8
  %35 = call i32 (i64, i32, i8*, ...) @snprintf(i64 %29, i32 %33, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %34)
  %36 = load i32, i32* %1, align 4
  %37 = add nsw i32 %36, %35
  store i32 %37, i32* %1, align 4
  br label %38

38:                                               ; preds = %25, %21, %18
  %39 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 3), align 8
  %40 = load i32, i32* %1, align 4
  %41 = sext i32 %40 to i64
  %42 = add nsw i64 %39, %41
  %43 = load i32, i32* %1, align 4
  %44 = sext i32 %43 to i64
  %45 = sub i64 8, %44
  %46 = trunc i64 %45 to i32
  %47 = call i32 (i64, i32, i8*, ...) @snprintf(i64 %42, i32 %46, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  ret void
}

declare dso_local i32 @snprintf(i64, i32, i8*, ...) #1

declare dso_local i64 @strchr(i32, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
