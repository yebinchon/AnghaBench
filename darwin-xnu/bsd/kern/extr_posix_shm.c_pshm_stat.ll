; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_posix_shm.c_pshm_stat.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_posix_shm.c_pshm_stat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pshminfo = type { i32, i32, i32, i32 }
%struct.pshmnode = type { %struct.pshminfo* }
%struct.stat = type { i32, i32, i32, i32 }
%struct.stat64 = type { i32, i32, i32, i32 }

@PSHMINFO_NULL = common dso_local global %struct.pshminfo* null, align 8
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pshm_stat(%struct.pshmnode* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pshmnode*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.stat*, align 8
  %9 = alloca %struct.stat64*, align 8
  %10 = alloca %struct.pshminfo*, align 8
  store %struct.pshmnode* %0, %struct.pshmnode** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.stat* null, %struct.stat** %8, align 8
  store %struct.stat64* null, %struct.stat64** %9, align 8
  %11 = call i32 (...) @PSHM_SUBSYS_LOCK()
  %12 = load %struct.pshmnode*, %struct.pshmnode** %5, align 8
  %13 = getelementptr inbounds %struct.pshmnode, %struct.pshmnode* %12, i32 0, i32 0
  %14 = load %struct.pshminfo*, %struct.pshminfo** %13, align 8
  store %struct.pshminfo* %14, %struct.pshminfo** %10, align 8
  %15 = load %struct.pshminfo*, %struct.pshminfo** @PSHMINFO_NULL, align 8
  %16 = icmp eq %struct.pshminfo* %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = call i32 (...) @PSHM_SUBSYS_UNLOCK()
  %19 = load i32, i32* @EINVAL, align 4
  store i32 %19, i32* %4, align 4
  br label %76

20:                                               ; preds = %3
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %48

23:                                               ; preds = %20
  %24 = load i8*, i8** %6, align 8
  %25 = bitcast i8* %24 to %struct.stat64*
  store %struct.stat64* %25, %struct.stat64** %9, align 8
  %26 = load %struct.stat64*, %struct.stat64** %9, align 8
  %27 = call i32 @bzero(%struct.stat64* %26, i32 16)
  %28 = load %struct.pshminfo*, %struct.pshminfo** %10, align 8
  %29 = getelementptr inbounds %struct.pshminfo, %struct.pshminfo* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.stat64*, %struct.stat64** %9, align 8
  %32 = getelementptr inbounds %struct.stat64, %struct.stat64* %31, i32 0, i32 3
  store i32 %30, i32* %32, align 4
  %33 = load %struct.pshminfo*, %struct.pshminfo** %10, align 8
  %34 = getelementptr inbounds %struct.pshminfo, %struct.pshminfo* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.stat64*, %struct.stat64** %9, align 8
  %37 = getelementptr inbounds %struct.stat64, %struct.stat64* %36, i32 0, i32 2
  store i32 %35, i32* %37, align 4
  %38 = load %struct.pshminfo*, %struct.pshminfo** %10, align 8
  %39 = getelementptr inbounds %struct.pshminfo, %struct.pshminfo* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.stat64*, %struct.stat64** %9, align 8
  %42 = getelementptr inbounds %struct.stat64, %struct.stat64* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  %43 = load %struct.pshminfo*, %struct.pshminfo** %10, align 8
  %44 = getelementptr inbounds %struct.pshminfo, %struct.pshminfo* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.stat64*, %struct.stat64** %9, align 8
  %47 = getelementptr inbounds %struct.stat64, %struct.stat64* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 4
  br label %74

48:                                               ; preds = %20
  %49 = load i8*, i8** %6, align 8
  %50 = bitcast i8* %49 to %struct.stat*
  store %struct.stat* %50, %struct.stat** %8, align 8
  %51 = load %struct.stat*, %struct.stat** %8, align 8
  %52 = bitcast %struct.stat* %51 to %struct.stat64*
  %53 = call i32 @bzero(%struct.stat64* %52, i32 16)
  %54 = load %struct.pshminfo*, %struct.pshminfo** %10, align 8
  %55 = getelementptr inbounds %struct.pshminfo, %struct.pshminfo* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.stat*, %struct.stat** %8, align 8
  %58 = getelementptr inbounds %struct.stat, %struct.stat* %57, i32 0, i32 3
  store i32 %56, i32* %58, align 4
  %59 = load %struct.pshminfo*, %struct.pshminfo** %10, align 8
  %60 = getelementptr inbounds %struct.pshminfo, %struct.pshminfo* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.stat*, %struct.stat** %8, align 8
  %63 = getelementptr inbounds %struct.stat, %struct.stat* %62, i32 0, i32 2
  store i32 %61, i32* %63, align 4
  %64 = load %struct.pshminfo*, %struct.pshminfo** %10, align 8
  %65 = getelementptr inbounds %struct.pshminfo, %struct.pshminfo* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.stat*, %struct.stat** %8, align 8
  %68 = getelementptr inbounds %struct.stat, %struct.stat* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 4
  %69 = load %struct.pshminfo*, %struct.pshminfo** %10, align 8
  %70 = getelementptr inbounds %struct.pshminfo, %struct.pshminfo* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.stat*, %struct.stat** %8, align 8
  %73 = getelementptr inbounds %struct.stat, %struct.stat* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 4
  br label %74

74:                                               ; preds = %48, %23
  %75 = call i32 (...) @PSHM_SUBSYS_UNLOCK()
  store i32 0, i32* %4, align 4
  br label %76

76:                                               ; preds = %74, %17
  %77 = load i32, i32* %4, align 4
  ret i32 %77
}

declare dso_local i32 @PSHM_SUBSYS_LOCK(...) #1

declare dso_local i32 @PSHM_SUBSYS_UNLOCK(...) #1

declare dso_local i32 @bzero(%struct.stat64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
