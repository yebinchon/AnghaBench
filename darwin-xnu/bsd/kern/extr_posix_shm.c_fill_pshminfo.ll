; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_posix_shm.c_fill_pshminfo.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_posix_shm.c_fill_pshminfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pshminfo = type { i32*, i32, i32, i32, i32 }
%struct.pshmnode = type { i32, %struct.pshminfo* }
%struct.pshm_info = type { i32*, i32, %struct.vinfo_stat }
%struct.vinfo_stat = type { i32, i32, i32, i32 }

@PSHMINFO_NULL = common dso_local global %struct.pshminfo* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@PSHMNAMLEN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fill_pshminfo(%struct.pshmnode* %0, %struct.pshm_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pshmnode*, align 8
  %5 = alloca %struct.pshm_info*, align 8
  %6 = alloca %struct.pshminfo*, align 8
  %7 = alloca %struct.vinfo_stat*, align 8
  store %struct.pshmnode* %0, %struct.pshmnode** %4, align 8
  store %struct.pshm_info* %1, %struct.pshm_info** %5, align 8
  %8 = call i32 (...) @PSHM_SUBSYS_LOCK()
  %9 = load %struct.pshmnode*, %struct.pshmnode** %4, align 8
  %10 = getelementptr inbounds %struct.pshmnode, %struct.pshmnode* %9, i32 0, i32 1
  %11 = load %struct.pshminfo*, %struct.pshminfo** %10, align 8
  store %struct.pshminfo* %11, %struct.pshminfo** %6, align 8
  %12 = load %struct.pshminfo*, %struct.pshminfo** @PSHMINFO_NULL, align 8
  %13 = icmp eq %struct.pshminfo* %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = call i32 (...) @PSHM_SUBSYS_UNLOCK()
  %16 = load i32, i32* @EINVAL, align 4
  store i32 %16, i32* %3, align 4
  br label %59

17:                                               ; preds = %2
  %18 = load %struct.pshm_info*, %struct.pshm_info** %5, align 8
  %19 = getelementptr inbounds %struct.pshm_info, %struct.pshm_info* %18, i32 0, i32 2
  store %struct.vinfo_stat* %19, %struct.vinfo_stat** %7, align 8
  %20 = load %struct.vinfo_stat*, %struct.vinfo_stat** %7, align 8
  %21 = call i32 @bzero(%struct.vinfo_stat* %20, i32 16)
  %22 = load %struct.pshminfo*, %struct.pshminfo** %6, align 8
  %23 = getelementptr inbounds %struct.pshminfo, %struct.pshminfo* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.vinfo_stat*, %struct.vinfo_stat** %7, align 8
  %26 = getelementptr inbounds %struct.vinfo_stat, %struct.vinfo_stat* %25, i32 0, i32 3
  store i32 %24, i32* %26, align 4
  %27 = load %struct.pshminfo*, %struct.pshminfo** %6, align 8
  %28 = getelementptr inbounds %struct.pshminfo, %struct.pshminfo* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.vinfo_stat*, %struct.vinfo_stat** %7, align 8
  %31 = getelementptr inbounds %struct.vinfo_stat, %struct.vinfo_stat* %30, i32 0, i32 2
  store i32 %29, i32* %31, align 4
  %32 = load %struct.pshminfo*, %struct.pshminfo** %6, align 8
  %33 = getelementptr inbounds %struct.pshminfo, %struct.pshminfo* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.vinfo_stat*, %struct.vinfo_stat** %7, align 8
  %36 = getelementptr inbounds %struct.vinfo_stat, %struct.vinfo_stat* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  %37 = load %struct.pshminfo*, %struct.pshminfo** %6, align 8
  %38 = getelementptr inbounds %struct.pshminfo, %struct.pshminfo* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.vinfo_stat*, %struct.vinfo_stat** %7, align 8
  %41 = getelementptr inbounds %struct.vinfo_stat, %struct.vinfo_stat* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 4
  %42 = load %struct.pshmnode*, %struct.pshmnode** %4, align 8
  %43 = getelementptr inbounds %struct.pshmnode, %struct.pshmnode* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.pshm_info*, %struct.pshm_info** %5, align 8
  %46 = getelementptr inbounds %struct.pshm_info, %struct.pshm_info* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 8
  %47 = load %struct.pshminfo*, %struct.pshminfo** %6, align 8
  %48 = getelementptr inbounds %struct.pshminfo, %struct.pshminfo* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 0
  %51 = load %struct.pshm_info*, %struct.pshm_info** %5, align 8
  %52 = getelementptr inbounds %struct.pshm_info, %struct.pshm_info* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 0
  %55 = load i64, i64* @PSHMNAMLEN, align 8
  %56 = add nsw i64 %55, 1
  %57 = call i32 @bcopy(i32* %50, i32* %54, i64 %56)
  %58 = call i32 (...) @PSHM_SUBSYS_UNLOCK()
  store i32 0, i32* %3, align 4
  br label %59

59:                                               ; preds = %17, %14
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local i32 @PSHM_SUBSYS_LOCK(...) #1

declare dso_local i32 @PSHM_SUBSYS_UNLOCK(...) #1

declare dso_local i32 @bzero(%struct.vinfo_stat*, i32) #1

declare dso_local i32 @bcopy(i32*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
