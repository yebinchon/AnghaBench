; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/gp2x/extr_warm.c_warm_finish.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/gp2x/extr_warm.c_warm_finish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.utsname = type { i8* }

@warm_fd = common dso_local global i32 0, align 4
@kernel_version = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"warm_%s\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"warm\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"/sbin/rmmod %s\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"system/rmmod failed: %d %d\0A\00", align 1
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @warm_finish() #0 {
  %1 = alloca [32 x i8], align 16
  %2 = alloca [64 x i8], align 16
  %3 = alloca i32, align 4
  %4 = alloca %struct.utsname, align 8
  %5 = load i32, i32* @warm_fd, align 4
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %0
  br label %38

8:                                                ; preds = %0
  %9 = load i32, i32* @warm_fd, align 4
  %10 = call i32 @close(i32 %9)
  store i32 -1, i32* @warm_fd, align 4
  %11 = load i32, i32* @kernel_version, align 4
  %12 = icmp slt i32 %11, 38
  br i1 %12, label %13, label %20

13:                                               ; preds = %8
  %14 = call i32 @memset(%struct.utsname* %4, i32 0, i32 8)
  %15 = call i32 @uname(%struct.utsname* %4)
  %16 = getelementptr inbounds [32 x i8], [32 x i8]* %1, i64 0, i64 0
  %17 = getelementptr inbounds %struct.utsname, %struct.utsname* %4, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = call i32 @snprintf(i8* %16, i32 32, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %18)
  br label %23

20:                                               ; preds = %8
  %21 = getelementptr inbounds [32 x i8], [32 x i8]* %1, i64 0, i64 0
  %22 = call i32 @strcpy(i8* %21, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  br label %23

23:                                               ; preds = %20, %13
  %24 = getelementptr inbounds [64 x i8], [64 x i8]* %2, i64 0, i64 0
  %25 = getelementptr inbounds [32 x i8], [32 x i8]* %1, i64 0, i64 0
  %26 = call i32 @snprintf(i8* %24, i32 64, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* %25)
  %27 = getelementptr inbounds [64 x i8], [64 x i8]* %2, i64 0, i64 0
  %28 = call i32 @system(i8* %27)
  store i32 %28, i32* %3, align 4
  %29 = load i32, i32* %3, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %23
  %32 = load i32, i32* @stderr, align 4
  %33 = load i32, i32* %3, align 4
  %34 = load i32, i32* @errno, align 4
  %35 = call i32 @fprintf(i32 %32, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %33, i32 %34)
  %36 = getelementptr inbounds [32 x i8], [32 x i8]* %1, i64 0, i64 0
  %37 = call i32 @manual_rmmod(i8* %36)
  br label %38

38:                                               ; preds = %7, %31, %23
  ret void
}

declare dso_local i32 @close(i32) #1

declare dso_local i32 @memset(%struct.utsname*, i32, i32) #1

declare dso_local i32 @uname(%struct.utsname*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @system(i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i32, i32) #1

declare dso_local i32 @manual_rmmod(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
