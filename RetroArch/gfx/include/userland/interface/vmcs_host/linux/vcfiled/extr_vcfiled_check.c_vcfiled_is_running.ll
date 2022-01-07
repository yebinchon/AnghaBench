; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/vmcs_host/linux/vcfiled/extr_vcfiled_check.c_vcfiled_is_running.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/vmcs_host/linux/vcfiled/extr_vcfiled_check.c_vcfiled_is_running.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.flock = type { i32, i64, i64, i32, i32 }

@O_RDONLY = common dso_local global i32 0, align 4
@F_WRLCK = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@F_GETLK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"%s: Could not access lockfile %s: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"vmcs_main\00", align 1
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vcfiled_is_running(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.flock, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = load i32, i32* @O_RDONLY, align 4
  %9 = call i32 @open(i8* %7, i32 %8)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  br label %39

13:                                               ; preds = %1
  %14 = call i32 @memset(%struct.flock* %5, i32 0, i32 32)
  %15 = load i32, i32* @F_WRLCK, align 4
  %16 = getelementptr inbounds %struct.flock, %struct.flock* %5, i32 0, i32 4
  store i32 %15, i32* %16, align 4
  %17 = load i32, i32* @SEEK_SET, align 4
  %18 = getelementptr inbounds %struct.flock, %struct.flock* %5, i32 0, i32 3
  store i32 %17, i32* %18, align 8
  %19 = getelementptr inbounds %struct.flock, %struct.flock* %5, i32 0, i32 2
  store i64 0, i64* %19, align 8
  %20 = getelementptr inbounds %struct.flock, %struct.flock* %5, i32 0, i32 0
  store i32 1, i32* %20, align 8
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @F_GETLK, align 4
  %23 = call i32 @fcntl(i32 %21, i32 %22, %struct.flock* %5)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %13
  %27 = load i8*, i8** %2, align 8
  %28 = load i32, i32* @errno, align 4
  %29 = call i8* @strerror(i32 %28)
  %30 = call i32 @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* %27, i8* %29)
  store i32 0, i32* %3, align 4
  br label %38

31:                                               ; preds = %13
  %32 = getelementptr inbounds %struct.flock, %struct.flock* %5, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  store i32 0, i32* %3, align 4
  br label %37

36:                                               ; preds = %31
  store i32 1, i32* %3, align 4
  br label %37

37:                                               ; preds = %36, %35
  br label %38

38:                                               ; preds = %37, %26
  br label %39

39:                                               ; preds = %38, %12
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @memset(%struct.flock*, i32, i32) #1

declare dso_local i32 @fcntl(i32, i32, %struct.flock*) #1

declare dso_local i32 @printf(i8*, i8*, i8*, i8*) #1

declare dso_local i8* @strerror(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
