; ModuleID = '/home/carl/AnghaBench/darwin-xnu/tests/extr_ioperf.c_io_perf_test_io_init.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/tests/extr_ioperf.c_io_perf_test_io_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sched_param = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"/usr/local/sbin/mount_nand.sh\00", align 1
@__const.io_perf_test_io_init.mount_args = private unnamed_addr constant [2 x i8*] [i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i32 0, i32 0), i8* null], align 16
@environ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [65 x i8] c"NAND mounting in LTE not possible on this device. Skipping test!\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"NAND mounted successfully\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"Unable to mount NAND. Skipping test!\00", align 1
@THR_MANAGER_PRI = common dso_local global i32 0, align 4
@SCHED_FIFO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [22 x i8] c"pthread_setschedparam\00", align 1
@IOPOL_TYPE_DISK = common dso_local global i32 0, align 4
@IOPOL_SCOPE_PROCESS = common dso_local global i32 0, align 4
@IOPOL_IMPORTANT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [12 x i8] c"setiopolicy\00", align 1
@IO_SIZE = common dso_local global i32 0, align 4
@data_buf = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [23 x i8] c"Data buffer allocation\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"/dev/urandom\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@S_IRUSR = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [18 x i8] c"Open /dev/urandom\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"read /dev/urandom\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"/mnt2/test\00", align 1
@O_CREAT = common dso_local global i32 0, align 4
@O_WRONLY = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [29 x i8] c"Open /mnt2/test for writing!\00", align 1
@F_NOCACHE = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [23 x i8] c"fcntl F_NOCACHE enable\00", align 1
@FILE_SIZE = common dso_local global i32 0, align 4
@T_QUIET = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [16 x i8] c"write test file\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @io_perf_test_io_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @io_perf_test_io_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca [2 x i8*], align 16
  %4 = alloca %struct.sched_param, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = bitcast [2 x i8*]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %8, i8* align 16 bitcast ([2 x i8*]* @__const.io_perf_test_io_init.mount_args to i8*), i64 16, i1 false)
  %9 = getelementptr inbounds [2 x i8*], [2 x i8*]* %3, i64 0, i64 0
  %10 = load i8*, i8** %9, align 16
  %11 = getelementptr inbounds [2 x i8*], [2 x i8*]* %3, i64 0, i64 0
  %12 = load i32, i32* @environ, align 4
  %13 = call i32 @posix_spawn(i32* %2, i8* %10, i32* null, i32* null, i8** %11, i32 %12)
  store i32 %13, i32* %1, align 4
  %14 = load i32, i32* %1, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %0
  %17 = call i32 @T_SKIP(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.1, i64 0, i64 0))
  br label %18

18:                                               ; preds = %16, %0
  %19 = load i32, i32* %2, align 4
  %20 = call i32 @waitpid(i32 %19, i32* %1, i32 0)
  %21 = load i32, i32* %1, align 4
  %22 = call i64 @WIFEXITED(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %18
  %25 = load i32, i32* %1, align 4
  %26 = call i32 @WEXITSTATUS(i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %24
  %29 = call i32 @T_PASS(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  br label %32

30:                                               ; preds = %24, %18
  %31 = call i32 @T_SKIP(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  br label %32

32:                                               ; preds = %30, %28
  %33 = getelementptr inbounds %struct.sched_param, %struct.sched_param* %4, i32 0, i32 0
  %34 = load i32, i32* @THR_MANAGER_PRI, align 4
  store i32 %34, i32* %33, align 4
  %35 = call i32 (...) @pthread_self()
  %36 = load i32, i32* @SCHED_FIFO, align 4
  %37 = call i32 @pthread_setschedparam(i32 %35, i32 %36, %struct.sched_param* %4)
  %38 = call i32 @T_ASSERT_POSIX_ZERO(i32 %37, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  %39 = load i32, i32* @IOPOL_TYPE_DISK, align 4
  %40 = load i32, i32* @IOPOL_SCOPE_PROCESS, align 4
  %41 = load i32, i32* @IOPOL_IMPORTANT, align 4
  %42 = call i32 @setiopolicy_np(i32 %39, i32 %40, i32 %41)
  %43 = call i32 @T_ASSERT_POSIX_ZERO(i32 %42, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  %44 = load i32, i32* @IO_SIZE, align 4
  %45 = mul nsw i32 %44, 16
  %46 = call i32 @malloc(i32 %45)
  store i32 %46, i32* @data_buf, align 4
  %47 = load i32, i32* @data_buf, align 4
  %48 = call i32 @T_ASSERT_NOTNULL(i32 %47, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0))
  %49 = load i32, i32* @O_RDONLY, align 4
  %50 = load i32, i32* @S_IRUSR, align 4
  %51 = call i32 @open(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0), i32 %49, i32 %50)
  store i32 %51, i32* %5, align 4
  %52 = load i32, i32* %5, align 4
  %53 = call i32 (i32, i8*, ...) @T_ASSERT_POSIX_SUCCESS(i32 %52, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0))
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* @data_buf, align 4
  %56 = load i32, i32* @IO_SIZE, align 4
  %57 = mul nsw i32 %56, 16
  %58 = call i64 @read(i32 %54, i32 %55, i32 %57)
  %59 = trunc i64 %58 to i32
  %60 = call i32 @T_ASSERT_GE_INT(i32 %59, i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0))
  %61 = load i32, i32* %5, align 4
  %62 = call i32 @close(i32 %61)
  %63 = load i32, i32* @O_CREAT, align 4
  %64 = load i32, i32* @O_WRONLY, align 4
  %65 = or i32 %63, %64
  %66 = load i32, i32* @S_IRUSR, align 4
  %67 = call i32 @open(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0), i32 %65, i32 %66)
  store i32 %67, i32* %6, align 4
  %68 = load i32, i32* %6, align 4
  %69 = call i32 (i32, i8*, ...) @T_ASSERT_POSIX_SUCCESS(i32 %68, i8* null, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.11, i64 0, i64 0))
  %70 = load i32, i32* %6, align 4
  %71 = load i32, i32* @F_NOCACHE, align 4
  %72 = call i32 @fcntl(i32 %70, i32 %71, i32 1)
  %73 = call i32 @T_ASSERT_POSIX_ZERO(i32 %72, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %74

74:                                               ; preds = %78, %32
  %75 = load i32, i32* %7, align 4
  %76 = load i32, i32* @FILE_SIZE, align 4
  %77 = icmp slt i32 %75, %76
  br i1 %77, label %78, label %91

78:                                               ; preds = %74
  %79 = load i32, i32* @T_QUIET, align 4
  %80 = load i32, i32* %6, align 4
  %81 = load i32, i32* @data_buf, align 4
  %82 = load i32, i32* @IO_SIZE, align 4
  %83 = mul nsw i32 %82, 16
  %84 = call i64 @write(i32 %80, i32 %81, i32 %83)
  %85 = trunc i64 %84 to i32
  %86 = call i32 @T_ASSERT_GE_INT(i32 %85, i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i64 0, i64 0))
  %87 = load i32, i32* @IO_SIZE, align 4
  %88 = mul nsw i32 %87, 16
  %89 = load i32, i32* %7, align 4
  %90 = add nsw i32 %89, %88
  store i32 %90, i32* %7, align 4
  br label %74

91:                                               ; preds = %74
  %92 = load i32, i32* %6, align 4
  %93 = call i32 @close(i32 %92)
  %94 = call i32 (...) @sync()
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @posix_spawn(i32*, i8*, i32*, i32*, i8**, i32) #2

declare dso_local i32 @T_SKIP(i8*) #2

declare dso_local i32 @waitpid(i32, i32*, i32) #2

declare dso_local i64 @WIFEXITED(i32) #2

declare dso_local i32 @WEXITSTATUS(i32) #2

declare dso_local i32 @T_PASS(i8*) #2

declare dso_local i32 @T_ASSERT_POSIX_ZERO(i32, i8*) #2

declare dso_local i32 @pthread_setschedparam(i32, i32, %struct.sched_param*) #2

declare dso_local i32 @pthread_self(...) #2

declare dso_local i32 @setiopolicy_np(i32, i32, i32) #2

declare dso_local i32 @malloc(i32) #2

declare dso_local i32 @T_ASSERT_NOTNULL(i32, i8*) #2

declare dso_local i32 @open(i8*, i32, i32) #2

declare dso_local i32 @T_ASSERT_POSIX_SUCCESS(i32, i8*, ...) #2

declare dso_local i32 @T_ASSERT_GE_INT(i32, i32, i8*) #2

declare dso_local i64 @read(i32, i32, i32) #2

declare dso_local i32 @close(i32) #2

declare dso_local i32 @fcntl(i32, i32, i32) #2

declare dso_local i64 @write(i32, i32, i32) #2

declare dso_local i32 @sync(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
