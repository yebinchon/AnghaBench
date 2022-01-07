; ModuleID = '/home/carl/AnghaBench/darwin-xnu/tests/extr_memorystatus_vm_map_fork.c_memorystatus_vm_map_fork_parent.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/tests/extr_memorystatus_vm_map_fork.c_memorystatus_vm_map_fork_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rusage = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"Can't test on release kernel\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"kern.max_task_pmem\00", align 1
@TEST_ALLOWED = common dso_local global i32 0, align 4
@LIMIT_DELTA_MB = common dso_local global i32 0, align 4
@MEMORYSTATUS_VM_MAP_FORK_ALLOWED = common dso_local global i64 0, align 8
@MEMORYSTATUS_VM_MAP_FORK_NOT_ALLOWED = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [22 x i8] c"using limit of %d Meg\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@testpath = common dso_local global i32 0, align 4
@testpath_size = common dso_local global i32 0, align 4
@T_QUIET = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [30 x i8] c"_NSGetExecutablePath(%s, ...)\00", align 1
@JETSAM_PRIORITY_FOREGROUND = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [49 x i8] c"  spawned child_pid[%d] with memlimit %s (%d)MB\0A\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"Child exited with max_rss of %ld\00", align 1
@SIGKILL = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [43 x i8] c"Child appears to have been a jetsam victim\00", align 1
@.str.8 = private unnamed_addr constant [50 x i8] c"Child terminated by signal %d test result invalid\00", align 1
@.str.9 = private unnamed_addr constant [60 x i8] c"child did not exit normally (status=%d) test result invalid\00", align 1
@NORMAL_EXIT = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [22 x i8] c"child exit due to: %s\00", align 1
@NUM_CHILD_EXIT = common dso_local global i32 0, align 4
@child_exit_why = common dso_local global i8** null, align 8
@.str.11 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.12 = private unnamed_addr constant [40 x i8] c"corpse generation was aborted by kernel\00", align 1
@.str.13 = private unnamed_addr constant [39 x i8] c"child didn't trigger corpse generation\00", align 1
@.str.14 = private unnamed_addr constant [38 x i8] c"kernel value 0x%llx - expected 0x%llx\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @memorystatus_vm_map_fork_parent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @memorystatus_vm_map_fork_parent(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i16, align 2
  %8 = alloca [16 x i8], align 16
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.rusage, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  store i64 0, i64* %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i16 0, i16* %7, align 2
  %16 = call i32 (...) @is_development_kernel()
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %1
  %19 = call i32 (i8*, ...) @T_SKIP(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %20

20:                                               ; preds = %18, %1
  store i64 4, i64* %4, align 8
  %21 = call i32 @sysctlbyname(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32* %3, i64* %4, i32* null, i32 0)
  %22 = load i32, i32* %3, align 4
  %23 = icmp sle i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  store i32 0, i32* %3, align 4
  br label %25

25:                                               ; preds = %24, %20
  %26 = load i32, i32* %2, align 4
  %27 = load i32, i32* @TEST_ALLOWED, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %44

29:                                               ; preds = %25
  %30 = load i32, i32* %3, align 4
  %31 = sdiv i32 %30, 4
  %32 = load i32, i32* @LIMIT_DELTA_MB, align 4
  %33 = sub nsw i32 %31, %32
  %34 = icmp sle i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %29
  %36 = load i32, i32* @LIMIT_DELTA_MB, align 4
  store i32 %36, i32* %5, align 4
  br label %42

37:                                               ; preds = %29
  %38 = load i32, i32* %3, align 4
  %39 = sdiv i32 %38, 4
  %40 = load i32, i32* @LIMIT_DELTA_MB, align 4
  %41 = sub nsw i32 %39, %40
  store i32 %41, i32* %5, align 4
  br label %42

42:                                               ; preds = %37, %35
  %43 = load i64, i64* @MEMORYSTATUS_VM_MAP_FORK_ALLOWED, align 8
  store i64 %43, i64* %12, align 8
  br label %56

44:                                               ; preds = %25
  %45 = load i32, i32* %3, align 4
  %46 = sdiv i32 %45, 4
  %47 = load i32, i32* @LIMIT_DELTA_MB, align 4
  %48 = add nsw i32 %46, %47
  store i32 %48, i32* %5, align 4
  %49 = load i32, i32* %3, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %44
  %52 = load i64, i64* @MEMORYSTATUS_VM_MAP_FORK_ALLOWED, align 8
  store i64 %52, i64* %12, align 8
  br label %55

53:                                               ; preds = %44
  %54 = load i64, i64* @MEMORYSTATUS_VM_MAP_FORK_NOT_ALLOWED, align 8
  store i64 %54, i64* %12, align 8
  br label %55

55:                                               ; preds = %53, %51
  br label %56

56:                                               ; preds = %55, %42
  %57 = load i32, i32* %5, align 4
  store i32 %57, i32* %6, align 4
  %58 = load i32, i32* %5, align 4
  %59 = call i32 (i8*, ...) @T_LOG(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %58)
  %60 = load i32, i32* %5, align 4
  %61 = call i32 @wait_for_free_mem(i32 %60)
  %62 = load i64, i64* @MEMORYSTATUS_VM_MAP_FORK_ALLOWED, align 8
  store i64 %62, i64* %12, align 8
  %63 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i64 0, i64 0
  %64 = call i32 @memset(i8* %63, i32 0, i32 16)
  %65 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i64 0, i64 0
  %66 = load i32, i32* %5, align 4
  %67 = call i32 @sprintf(i8* %65, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %66)
  %68 = load i32, i32* @testpath, align 4
  %69 = call i32 @_NSGetExecutablePath(i32 %68, i32* @testpath_size)
  store i32 %69, i32* %13, align 4
  %70 = load i32, i32* @T_QUIET, align 4
  %71 = load i32, i32* %13, align 4
  %72 = load i32, i32* @testpath, align 4
  %73 = call i32 @T_ASSERT_POSIX_SUCCESS(i32 %71, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i32 %72)
  %74 = load i32, i32* @testpath, align 4
  %75 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i64 0, i64 0
  %76 = load i16, i16* %7, align 2
  %77 = load i32, i32* @JETSAM_PRIORITY_FOREGROUND, align 4
  %78 = load i32, i32* %5, align 4
  %79 = load i32, i32* %6, align 4
  %80 = call i64 @spawn_child_process(i32 %74, i8* %75, i16 signext %76, i32 %77, i32 %78, i32 %79)
  store i64 %80, i64* %9, align 8
  %81 = load i64, i64* %9, align 8
  %82 = load i64, i64* %12, align 8
  %83 = or i64 %82, %81
  store i64 %83, i64* %12, align 8
  %84 = load i64, i64* %9, align 8
  %85 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i64 0, i64 0
  %86 = load i32, i32* %5, align 4
  %87 = call i32 (i8*, ...) @T_LOG(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.5, i64 0, i64 0), i64 %84, i8* %85, i32 %86)
  %88 = call i32 @set_memorystatus_vm_map_fork_pidwatch(i64 0)
  %89 = load i64, i64* %9, align 8
  %90 = call i32 @set_memorystatus_vm_map_fork_pidwatch(i64 %89)
  %91 = load i64, i64* %9, align 8
  %92 = call i32 @test_child_process(i64 %91, i32* %10, %struct.rusage* %14)
  %93 = getelementptr inbounds %struct.rusage, %struct.rusage* %14, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 (i8*, ...) @T_LOG(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0), i32 %94)
  %96 = call i64 (...) @get_memorystatus_vm_map_fork_pidwatch()
  store i64 %96, i64* %11, align 8
  %97 = call i32 @set_memorystatus_vm_map_fork_pidwatch(i64 0)
  %98 = load i32, i32* %10, align 4
  %99 = call i32 @WIFEXITED(i32 %98)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %119, label %101

101:                                              ; preds = %56
  %102 = load i32, i32* %10, align 4
  %103 = call i64 @WIFSIGNALED(i32 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %116

105:                                              ; preds = %101
  %106 = load i32, i32* %10, align 4
  %107 = call i64 @WTERMSIG(i32 %106)
  %108 = load i64, i64* @SIGKILL, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %110, label %112

110:                                              ; preds = %105
  %111 = call i32 (i8*, ...) @T_LOG(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.7, i64 0, i64 0))
  br label %112

112:                                              ; preds = %110, %105
  %113 = load i32, i32* %10, align 4
  %114 = call i64 @WTERMSIG(i32 %113)
  %115 = call i32 (i8*, ...) @T_SKIP(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.8, i64 0, i64 0), i64 %114)
  br label %116

116:                                              ; preds = %112, %101
  %117 = load i32, i32* %10, align 4
  %118 = call i32 (i8*, ...) @T_SKIP(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.9, i64 0, i64 0), i32 %117)
  br label %119

119:                                              ; preds = %116, %56
  %120 = load i32, i32* %10, align 4
  %121 = call i64 @WEXITSTATUS(i32 %120)
  %122 = trunc i64 %121 to i32
  store i32 %122, i32* %15, align 4
  %123 = load i32, i32* @T_QUIET, align 4
  %124 = load i32, i32* %15, align 4
  %125 = load i32, i32* @NORMAL_EXIT, align 4
  %126 = load i32, i32* %15, align 4
  %127 = icmp ult i32 0, %126
  br i1 %127, label %128, label %138

128:                                              ; preds = %119
  %129 = load i32, i32* %15, align 4
  %130 = load i32, i32* @NUM_CHILD_EXIT, align 4
  %131 = icmp ult i32 %129, %130
  br i1 %131, label %132, label %138

132:                                              ; preds = %128
  %133 = load i8**, i8*** @child_exit_why, align 8
  %134 = load i32, i32* %15, align 4
  %135 = zext i32 %134 to i64
  %136 = getelementptr inbounds i8*, i8** %133, i64 %135
  %137 = load i8*, i8** %136, align 8
  br label %139

138:                                              ; preds = %128, %119
  br label %139

139:                                              ; preds = %138, %132
  %140 = phi i8* [ %137, %132 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0), %138 ]
  %141 = call i32 @T_ASSERT_EQ(i32 %124, i32 %125, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i64 0, i64 0), i8* %140)
  %142 = load i64, i64* %11, align 8
  %143 = icmp eq i64 %142, -1
  br i1 %143, label %144, label %146

144:                                              ; preds = %139
  %145 = call i32 (i8*, ...) @T_SKIP(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.12, i64 0, i64 0))
  br label %146

146:                                              ; preds = %144, %139
  %147 = load i32, i32* @T_QUIET, align 4
  %148 = load i64, i64* %11, align 8
  %149 = load i64, i64* %9, align 8
  %150 = call i32 @T_ASSERT_NE_ULLONG(i64 %148, i64 %149, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.13, i64 0, i64 0))
  %151 = load i64, i64* %11, align 8
  %152 = load i64, i64* %12, align 8
  %153 = load i64, i64* %11, align 8
  %154 = load i64, i64* %12, align 8
  %155 = call i32 @T_EXPECT_EQ(i64 %151, i64 %152, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.14, i64 0, i64 0), i64 %153, i64 %154)
  ret void
}

declare dso_local i32 @is_development_kernel(...) #1

declare dso_local i32 @T_SKIP(i8*, ...) #1

declare dso_local i32 @sysctlbyname(i8*, i32*, i64*, i32*, i32) #1

declare dso_local i32 @T_LOG(i8*, ...) #1

declare dso_local i32 @wait_for_free_mem(i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @_NSGetExecutablePath(i32, i32*) #1

declare dso_local i32 @T_ASSERT_POSIX_SUCCESS(i32, i8*, i32) #1

declare dso_local i64 @spawn_child_process(i32, i8*, i16 signext, i32, i32, i32) #1

declare dso_local i32 @set_memorystatus_vm_map_fork_pidwatch(i64) #1

declare dso_local i32 @test_child_process(i64, i32*, %struct.rusage*) #1

declare dso_local i64 @get_memorystatus_vm_map_fork_pidwatch(...) #1

declare dso_local i32 @WIFEXITED(i32) #1

declare dso_local i64 @WIFSIGNALED(i32) #1

declare dso_local i64 @WTERMSIG(i32) #1

declare dso_local i64 @WEXITSTATUS(i32) #1

declare dso_local i32 @T_ASSERT_EQ(i32, i32, i8*, i8*) #1

declare dso_local i32 @T_ASSERT_NE_ULLONG(i64, i64, i8*) #1

declare dso_local i32 @T_EXPECT_EQ(i64, i64, i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
