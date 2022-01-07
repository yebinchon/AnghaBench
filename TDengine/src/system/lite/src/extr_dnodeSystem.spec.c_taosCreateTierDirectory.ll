; ModuleID = '/home/carl/AnghaBench/TDengine/src/system/lite/src/extr_dnodeSystem.spec.c_taosCreateTierDirectory.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/system/lite/src/extr_dnodeSystem.spec.c_taosCreateTierDirectory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@tsDirectory = common dso_local global i8* null, align 8
@dataDir = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [8 x i8] c"%s/tsdb\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"%s/data\00", align 1
@mgmtDirectory = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"%s/mgmt\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @taosCreateTierDirectory() #0 {
  %1 = alloca %struct.stat, align 4
  %2 = alloca [128 x i8], align 16
  %3 = load i8*, i8** @tsDirectory, align 8
  %4 = load i8*, i8** @dataDir, align 8
  %5 = call i32 @strcpy(i8* %3, i8* %4)
  %6 = load i8*, i8** @dataDir, align 8
  %7 = call i64 @stat(i8* %6, %struct.stat* %1)
  %8 = icmp slt i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %0
  %10 = load i8*, i8** @dataDir, align 8
  %11 = call i32 @mkdir(i8* %10, i32 493)
  br label %12

12:                                               ; preds = %9, %0
  %13 = getelementptr inbounds [128 x i8], [128 x i8]* %2, i64 0, i64 0
  %14 = load i8*, i8** @tsDirectory, align 8
  %15 = call i32 @sprintf(i8* %13, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %14)
  %16 = getelementptr inbounds [128 x i8], [128 x i8]* %2, i64 0, i64 0
  %17 = call i32 @mkdir(i8* %16, i32 493)
  %18 = getelementptr inbounds [128 x i8], [128 x i8]* %2, i64 0, i64 0
  %19 = load i8*, i8** @tsDirectory, align 8
  %20 = call i32 @sprintf(i8* %18, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* %19)
  %21 = getelementptr inbounds [128 x i8], [128 x i8]* %2, i64 0, i64 0
  %22 = call i32 @mkdir(i8* %21, i32 493)
  %23 = load i8*, i8** @mgmtDirectory, align 8
  %24 = load i8*, i8** @tsDirectory, align 8
  %25 = call i32 @sprintf(i8* %23, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* %24)
  %26 = load i8*, i8** @tsDirectory, align 8
  %27 = load i8*, i8** @dataDir, align 8
  %28 = call i32 @sprintf(i8* %26, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %27)
  %29 = load i8*, i8** @dataDir, align 8
  %30 = call i32 @dnodeCheckDbRunning(i8* %29)
  ret i32 0
}

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i64 @stat(i8*, %struct.stat*) #1

declare dso_local i32 @mkdir(i8*, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*) #1

declare dso_local i32 @dnodeCheckDbRunning(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
