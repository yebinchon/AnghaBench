; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_sys_pipe.c_fill_pipeinfo.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_sys_pipe.c_fill_pipeinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pipe = type { i32, %struct.pipe*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }
%struct.pipe_info = type { i32, i8*, i8*, %struct.vinfo_stat }
%struct.vinfo_stat = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.timespec = type { i32, i32 }

@EBADF = common dso_local global i32 0, align 4
@PIPE_SIZE = common dso_local global i32 0, align 4
@S_IFIFO = common dso_local global i32 0, align 4
@S_IRUSR = common dso_local global i32 0, align 4
@S_IWUSR = common dso_local global i32 0, align 4
@S_IRGRP = common dso_local global i32 0, align 4
@S_IWGRP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fill_pipeinfo(%struct.pipe* %0, %struct.pipe_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pipe*, align 8
  %5 = alloca %struct.pipe_info*, align 8
  %6 = alloca %struct.timespec, align 4
  %7 = alloca %struct.vinfo_stat*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.pipe* %0, %struct.pipe** %4, align 8
  store %struct.pipe_info* %1, %struct.pipe_info** %5, align 8
  store i32 0, i32* %8, align 4
  %10 = load %struct.pipe*, %struct.pipe** %4, align 8
  %11 = icmp eq %struct.pipe* %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* @EBADF, align 4
  store i32 %13, i32* %3, align 4
  br label %148

14:                                               ; preds = %2
  %15 = load %struct.pipe*, %struct.pipe** %4, align 8
  %16 = call i32 @PIPE_LOCK(%struct.pipe* %15)
  %17 = load %struct.pipe*, %struct.pipe** %4, align 8
  %18 = getelementptr inbounds %struct.pipe, %struct.pipe* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %40

22:                                               ; preds = %14
  %23 = load %struct.pipe*, %struct.pipe** %4, align 8
  %24 = getelementptr inbounds %struct.pipe, %struct.pipe* %23, i32 0, i32 1
  %25 = load %struct.pipe*, %struct.pipe** %24, align 8
  %26 = icmp ne %struct.pipe* %25, null
  br i1 %26, label %27, label %38

27:                                               ; preds = %22
  %28 = load %struct.pipe*, %struct.pipe** %4, align 8
  %29 = getelementptr inbounds %struct.pipe, %struct.pipe* %28, i32 0, i32 1
  %30 = load %struct.pipe*, %struct.pipe** %29, align 8
  %31 = call i32 @MAX_PIPESIZE(%struct.pipe* %30)
  store i32 %31, i32* %8, align 4
  %32 = load %struct.pipe*, %struct.pipe** %4, align 8
  %33 = getelementptr inbounds %struct.pipe, %struct.pipe* %32, i32 0, i32 1
  %34 = load %struct.pipe*, %struct.pipe** %33, align 8
  %35 = getelementptr inbounds %struct.pipe, %struct.pipe* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  store i32 %37, i32* %9, align 4
  br label %39

38:                                               ; preds = %22
  store i32 0, i32* %9, align 4
  br label %39

39:                                               ; preds = %38, %27
  br label %47

40:                                               ; preds = %14
  %41 = load %struct.pipe*, %struct.pipe** %4, align 8
  %42 = call i32 @MAX_PIPESIZE(%struct.pipe* %41)
  store i32 %42, i32* %8, align 4
  %43 = load %struct.pipe*, %struct.pipe** %4, align 8
  %44 = getelementptr inbounds %struct.pipe, %struct.pipe* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  store i32 %46, i32* %9, align 4
  br label %47

47:                                               ; preds = %40, %39
  %48 = load i32, i32* %8, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %47
  %51 = load i32, i32* @PIPE_SIZE, align 4
  store i32 %51, i32* %8, align 4
  br label %52

52:                                               ; preds = %50, %47
  %53 = load %struct.pipe_info*, %struct.pipe_info** %5, align 8
  %54 = getelementptr inbounds %struct.pipe_info, %struct.pipe_info* %53, i32 0, i32 3
  store %struct.vinfo_stat* %54, %struct.vinfo_stat** %7, align 8
  %55 = load %struct.vinfo_stat*, %struct.vinfo_stat** %7, align 8
  %56 = call i32 @bzero(%struct.vinfo_stat* %55, i32 52)
  %57 = load i32, i32* @S_IFIFO, align 4
  %58 = load i32, i32* @S_IRUSR, align 4
  %59 = or i32 %57, %58
  %60 = load i32, i32* @S_IWUSR, align 4
  %61 = or i32 %59, %60
  %62 = load i32, i32* @S_IRGRP, align 4
  %63 = or i32 %61, %62
  %64 = load i32, i32* @S_IWGRP, align 4
  %65 = or i32 %63, %64
  %66 = load %struct.vinfo_stat*, %struct.vinfo_stat** %7, align 8
  %67 = getelementptr inbounds %struct.vinfo_stat, %struct.vinfo_stat* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 4
  %68 = load i32, i32* %8, align 4
  %69 = load %struct.vinfo_stat*, %struct.vinfo_stat** %7, align 8
  %70 = getelementptr inbounds %struct.vinfo_stat, %struct.vinfo_stat* %69, i32 0, i32 1
  store i32 %68, i32* %70, align 4
  %71 = load i32, i32* %9, align 4
  %72 = load %struct.vinfo_stat*, %struct.vinfo_stat** %7, align 8
  %73 = getelementptr inbounds %struct.vinfo_stat, %struct.vinfo_stat* %72, i32 0, i32 2
  store i32 %71, i32* %73, align 4
  %74 = load %struct.vinfo_stat*, %struct.vinfo_stat** %7, align 8
  %75 = getelementptr inbounds %struct.vinfo_stat, %struct.vinfo_stat* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %93

78:                                               ; preds = %52
  %79 = load %struct.vinfo_stat*, %struct.vinfo_stat** %7, align 8
  %80 = getelementptr inbounds %struct.vinfo_stat, %struct.vinfo_stat* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.vinfo_stat*, %struct.vinfo_stat** %7, align 8
  %83 = getelementptr inbounds %struct.vinfo_stat, %struct.vinfo_stat* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = add nsw i32 %81, %84
  %86 = sub nsw i32 %85, 1
  %87 = load %struct.vinfo_stat*, %struct.vinfo_stat** %7, align 8
  %88 = getelementptr inbounds %struct.vinfo_stat, %struct.vinfo_stat* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = sdiv i32 %86, %89
  %91 = load %struct.vinfo_stat*, %struct.vinfo_stat** %7, align 8
  %92 = getelementptr inbounds %struct.vinfo_stat, %struct.vinfo_stat* %91, i32 0, i32 3
  store i32 %90, i32* %92, align 4
  br label %93

93:                                               ; preds = %78, %52
  %94 = load %struct.vinfo_stat*, %struct.vinfo_stat** %7, align 8
  %95 = getelementptr inbounds %struct.vinfo_stat, %struct.vinfo_stat* %94, i32 0, i32 4
  store i32 1, i32* %95, align 4
  %96 = call i32 (...) @kauth_getuid()
  %97 = load %struct.vinfo_stat*, %struct.vinfo_stat** %7, align 8
  %98 = getelementptr inbounds %struct.vinfo_stat, %struct.vinfo_stat* %97, i32 0, i32 12
  store i32 %96, i32* %98, align 4
  %99 = call i32 (...) @kauth_getgid()
  %100 = load %struct.vinfo_stat*, %struct.vinfo_stat** %7, align 8
  %101 = getelementptr inbounds %struct.vinfo_stat, %struct.vinfo_stat* %100, i32 0, i32 11
  store i32 %99, i32* %101, align 4
  %102 = call i32 @nanotime(%struct.timespec* %6)
  %103 = getelementptr inbounds %struct.timespec, %struct.timespec* %6, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.vinfo_stat*, %struct.vinfo_stat** %7, align 8
  %106 = getelementptr inbounds %struct.vinfo_stat, %struct.vinfo_stat* %105, i32 0, i32 10
  store i32 %104, i32* %106, align 4
  %107 = getelementptr inbounds %struct.timespec, %struct.timespec* %6, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.vinfo_stat*, %struct.vinfo_stat** %7, align 8
  %110 = getelementptr inbounds %struct.vinfo_stat, %struct.vinfo_stat* %109, i32 0, i32 9
  store i32 %108, i32* %110, align 4
  %111 = getelementptr inbounds %struct.timespec, %struct.timespec* %6, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.vinfo_stat*, %struct.vinfo_stat** %7, align 8
  %114 = getelementptr inbounds %struct.vinfo_stat, %struct.vinfo_stat* %113, i32 0, i32 8
  store i32 %112, i32* %114, align 4
  %115 = getelementptr inbounds %struct.timespec, %struct.timespec* %6, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.vinfo_stat*, %struct.vinfo_stat** %7, align 8
  %118 = getelementptr inbounds %struct.vinfo_stat, %struct.vinfo_stat* %117, i32 0, i32 7
  store i32 %116, i32* %118, align 4
  %119 = getelementptr inbounds %struct.timespec, %struct.timespec* %6, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.vinfo_stat*, %struct.vinfo_stat** %7, align 8
  %122 = getelementptr inbounds %struct.vinfo_stat, %struct.vinfo_stat* %121, i32 0, i32 6
  store i32 %120, i32* %122, align 4
  %123 = getelementptr inbounds %struct.timespec, %struct.timespec* %6, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.vinfo_stat*, %struct.vinfo_stat** %7, align 8
  %126 = getelementptr inbounds %struct.vinfo_stat, %struct.vinfo_stat* %125, i32 0, i32 5
  store i32 %124, i32* %126, align 4
  %127 = load %struct.pipe*, %struct.pipe** %4, align 8
  %128 = ptrtoint %struct.pipe* %127 to i64
  %129 = call i64 @VM_KERNEL_ADDRPERM(i64 %128)
  %130 = inttoptr i64 %129 to i8*
  %131 = load %struct.pipe_info*, %struct.pipe_info** %5, align 8
  %132 = getelementptr inbounds %struct.pipe_info, %struct.pipe_info* %131, i32 0, i32 2
  store i8* %130, i8** %132, align 8
  %133 = load %struct.pipe*, %struct.pipe** %4, align 8
  %134 = getelementptr inbounds %struct.pipe, %struct.pipe* %133, i32 0, i32 1
  %135 = load %struct.pipe*, %struct.pipe** %134, align 8
  %136 = ptrtoint %struct.pipe* %135 to i64
  %137 = call i64 @VM_KERNEL_ADDRPERM(i64 %136)
  %138 = inttoptr i64 %137 to i8*
  %139 = load %struct.pipe_info*, %struct.pipe_info** %5, align 8
  %140 = getelementptr inbounds %struct.pipe_info, %struct.pipe_info* %139, i32 0, i32 1
  store i8* %138, i8** %140, align 8
  %141 = load %struct.pipe*, %struct.pipe** %4, align 8
  %142 = getelementptr inbounds %struct.pipe, %struct.pipe* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = load %struct.pipe_info*, %struct.pipe_info** %5, align 8
  %145 = getelementptr inbounds %struct.pipe_info, %struct.pipe_info* %144, i32 0, i32 0
  store i32 %143, i32* %145, align 8
  %146 = load %struct.pipe*, %struct.pipe** %4, align 8
  %147 = call i32 @PIPE_UNLOCK(%struct.pipe* %146)
  store i32 0, i32* %3, align 4
  br label %148

148:                                              ; preds = %93, %12
  %149 = load i32, i32* %3, align 4
  ret i32 %149
}

declare dso_local i32 @PIPE_LOCK(%struct.pipe*) #1

declare dso_local i32 @MAX_PIPESIZE(%struct.pipe*) #1

declare dso_local i32 @bzero(%struct.vinfo_stat*, i32) #1

declare dso_local i32 @kauth_getuid(...) #1

declare dso_local i32 @kauth_getgid(...) #1

declare dso_local i32 @nanotime(%struct.timespec*) #1

declare dso_local i64 @VM_KERNEL_ADDRPERM(i64) #1

declare dso_local i32 @PIPE_UNLOCK(%struct.pipe*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
