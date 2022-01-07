; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/gp2x/extr_warm.c_warm_init.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/gp2x/extr_warm.c_warm_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.utsname = type { i8* }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"unexpected version string: %s\0A\00", align 1
@kernel_version = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"/proc/warm\00", align 1
@O_RDWR = common dso_local global i32 0, align 4
@warm_fd = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [11 x i8] c"warm_%s.%s\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"ko\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"o\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"/sbin/insmod %s verbose=1\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"system/insmod failed: %d %d\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [10 x i8] c"verbose=1\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"manual insmod also failed: %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [52 x i8] c"wARM: can't init, acting as sys_cacheflush wrapper\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @warm_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.utsname, align 8
  %3 = alloca [32 x i8], align 16
  %4 = alloca [128 x i8], align 16
  %5 = alloca i32, align 4
  %6 = call i32 @memset(%struct.utsname* %2, i32 0, i32 8)
  %7 = call i32 @uname(%struct.utsname* %2)
  %8 = getelementptr inbounds %struct.utsname, %struct.utsname* %2, i32 0, i32 0
  %9 = load i8*, i8** %8, align 8
  %10 = call i32 @strlen(i8* %9)
  %11 = icmp slt i32 %10, 3
  br i1 %11, label %19, label %12

12:                                               ; preds = %0
  %13 = getelementptr inbounds %struct.utsname, %struct.utsname* %2, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 1
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp ne i32 %17, 46
  br i1 %18, label %19, label %24

19:                                               ; preds = %12, %0
  %20 = load i32, i32* @stderr, align 4
  %21 = getelementptr inbounds %struct.utsname, %struct.utsname* %2, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = call i32 (i32, i8*, ...) @fprintf(i32 %20, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8* %22)
  br label %85

24:                                               ; preds = %12
  %25 = getelementptr inbounds %struct.utsname, %struct.utsname* %2, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 0
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = sub nsw i32 %29, 48
  %31 = shl i32 %30, 4
  %32 = getelementptr inbounds %struct.utsname, %struct.utsname* %2, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 2
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = sub nsw i32 %36, 48
  %38 = or i32 %31, %37
  store i32 %38, i32* @kernel_version, align 4
  %39 = load i32, i32* @O_RDWR, align 4
  %40 = call i64 @open(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %39)
  store i64 %40, i64* @warm_fd, align 8
  %41 = load i64, i64* @warm_fd, align 8
  %42 = icmp sge i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %24
  store i32 0, i32* %1, align 4
  br label %88

44:                                               ; preds = %24
  %45 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %46 = getelementptr inbounds %struct.utsname, %struct.utsname* %2, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  %48 = load i32, i32* @kernel_version, align 4
  %49 = icmp sge i32 %48, 38
  %50 = zext i1 %49 to i64
  %51 = select i1 %49, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)
  %52 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %45, i32 32, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* %47, i8* %51)
  %53 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 0
  %54 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %55 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %53, i32 128, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i8* %54)
  %56 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 0
  %57 = call i32 @system(i8* %56)
  store i32 %57, i32* %5, align 4
  %58 = load i32, i32* %5, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %78

60:                                               ; preds = %44
  %61 = load i32, i32* @stderr, align 4
  %62 = load i32, i32* %5, align 4
  %63 = load i32, i32* @errno, align 4
  %64 = call i32 (i32, i8*, ...) @fprintf(i32 %61, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), i32 %62, i32 %63)
  %65 = load i32, i32* @kernel_version, align 4
  %66 = icmp sge i32 %65, 38
  br i1 %66, label %67, label %77

67:                                               ; preds = %60
  %68 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %69 = call i32 @manual_insmod_26(i8* %68, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0))
  store i32 %69, i32* %5, align 4
  %70 = load i32, i32* %5, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %67
  %73 = load i32, i32* @stderr, align 4
  %74 = load i32, i32* %5, align 4
  %75 = call i32 (i32, i8*, ...) @fprintf(i32 %73, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0), i32 %74)
  br label %76

76:                                               ; preds = %72, %67
  br label %77

77:                                               ; preds = %76, %60
  br label %78

78:                                               ; preds = %77, %44
  %79 = load i32, i32* @O_RDWR, align 4
  %80 = call i64 @open(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %79)
  store i64 %80, i64* @warm_fd, align 8
  %81 = load i64, i64* @warm_fd, align 8
  %82 = icmp sge i64 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %78
  store i32 0, i32* %1, align 4
  br label %88

84:                                               ; preds = %78
  br label %85

85:                                               ; preds = %84, %19
  %86 = load i32, i32* @stderr, align 4
  %87 = call i32 (i32, i8*, ...) @fprintf(i32 %86, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.9, i64 0, i64 0))
  store i32 -1, i32* %1, align 4
  br label %88

88:                                               ; preds = %85, %83, %43
  %89 = load i32, i32* %1, align 4
  ret i32 %89
}

declare dso_local i32 @memset(%struct.utsname*, i32, i32) #1

declare dso_local i32 @uname(%struct.utsname*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i64 @open(i8*, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #1

declare dso_local i32 @system(i8*) #1

declare dso_local i32 @manual_insmod_26(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
