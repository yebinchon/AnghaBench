; ModuleID = '/home/carl/AnghaBench/TDengine/src/os/darwin/src/extr_tdarwin.c_taosGetSystemTimezone.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/os/darwin/src/extr_tdarwin.c_taosGetSystemTimezone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }

@.str = private unnamed_addr constant [9 x i8] c"timezone\00", align 1
@TSDB_CFG_CSTATUS_DEFAULT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"TZ\00", align 1
@tsTimezone = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"not configured\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"timezone not configured, use default\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @taosGetSystemTimezone() #0 {
  %1 = alloca %struct.TYPE_3__*, align 8
  %2 = alloca i8*, align 8
  %3 = call %struct.TYPE_3__* @tsGetConfigOption(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_3__* %3, %struct.TYPE_3__** %1, align 8
  %4 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %5 = icmp ne %struct.TYPE_3__* %4, null
  br i1 %5, label %6, label %32

6:                                                ; preds = %0
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @TSDB_CFG_CSTATUS_DEFAULT, align 8
  %11 = icmp slt i64 %9, %10
  br i1 %11, label %12, label %32

12:                                               ; preds = %6
  %13 = call i8* @getenv(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i8* %13, i8** %2, align 8
  %14 = load i8*, i8** %2, align 8
  %15 = icmp eq i8* %14, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %12
  %17 = load i8*, i8** %2, align 8
  %18 = call i64 @strlen(i8* %17)
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %16, %12
  %21 = load i32, i32* @tsTimezone, align 4
  %22 = call i32 @strcpy(i32 %21, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  br label %27

23:                                               ; preds = %16
  %24 = load i32, i32* @tsTimezone, align 4
  %25 = load i8*, i8** %2, align 8
  %26 = call i32 @strcpy(i32 %24, i8* %25)
  br label %27

27:                                               ; preds = %23, %20
  %28 = load i64, i64* @TSDB_CFG_CSTATUS_DEFAULT, align 8
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  store i64 %28, i64* %30, align 8
  %31 = call i32 @pPrint(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  br label %32

32:                                               ; preds = %27, %6, %0
  ret void
}

declare dso_local %struct.TYPE_3__* @tsGetConfigOption(i8*) #1

declare dso_local i8* @getenv(i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @pPrint(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
