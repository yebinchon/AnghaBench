; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/libiosuhax/extr_iosuhax_devoptab.c_fs_dev_fstat_r.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/libiosuhax/extr_iosuhax_devoptab.c_fs_dev_fstat_r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._reent = type { i32 }
%struct.stat = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@S_IFREG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct._reent*, i8*, %struct.stat*)* @fs_dev_fstat_r to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fs_dev_fstat_r(%struct._reent* %0, i8* %1, %struct.stat* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct._reent*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.stat*, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca %struct.TYPE_7__, align 4
  %10 = alloca i32, align 4
  store %struct._reent* %0, %struct._reent** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.stat* %2, %struct.stat** %7, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %12, %struct.TYPE_6__** %8, align 8
  %13 = load %struct._reent*, %struct._reent** %5, align 8
  %14 = icmp ne %struct._reent* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %111

16:                                               ; preds = %3
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %18 = icmp ne %struct.TYPE_6__* %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %16
  %20 = load i32, i32* @EINVAL, align 4
  %21 = load %struct._reent*, %struct._reent** %5, align 8
  %22 = getelementptr inbounds %struct._reent, %struct._reent* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  store i32 -1, i32* %4, align 4
  br label %111

23:                                               ; preds = %16
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  %27 = icmp ne %struct.TYPE_5__* %26, null
  br i1 %27, label %32, label %28

28:                                               ; preds = %23
  %29 = load i32, i32* @ENODEV, align 4
  %30 = load %struct._reent*, %struct._reent** %5, align 8
  %31 = getelementptr inbounds %struct._reent, %struct._reent* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  store i32 -1, i32* %4, align 4
  br label %111

32:                                               ; preds = %23
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @OSLockMutex(i32 %37)
  %39 = load %struct.stat*, %struct.stat** %7, align 8
  %40 = call i32 @memset(%struct.stat* %39, i32 0, i32 44)
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i8*, i8** %6, align 8
  %47 = ptrtoint i8* %46 to i32
  %48 = call i32 @IOSUHAX_FSA_StatFile(i32 %45, i32 %47, %struct.TYPE_7__* %9)
  store i32 %48, i32* %10, align 4
  %49 = load i32, i32* %10, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %61

51:                                               ; preds = %32
  %52 = load i32, i32* %10, align 4
  %53 = load %struct._reent*, %struct._reent** %5, align 8
  %54 = getelementptr inbounds %struct._reent, %struct._reent* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 4
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @OSUnlockMutex(i32 %59)
  store i32 -1, i32* %4, align 4
  br label %111

61:                                               ; preds = %32
  %62 = load i32, i32* @S_IFREG, align 4
  %63 = load %struct.stat*, %struct.stat** %7, align 8
  %64 = getelementptr inbounds %struct.stat, %struct.stat* %63, i32 0, i32 10
  store i32 %62, i32* %64, align 4
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.stat*, %struct.stat** %7, align 8
  %68 = getelementptr inbounds %struct.stat, %struct.stat* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 4
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = add nsw i32 %70, 511
  %72 = ashr i32 %71, 9
  %73 = load %struct.stat*, %struct.stat** %7, align 8
  %74 = getelementptr inbounds %struct.stat, %struct.stat* %73, i32 0, i32 1
  store i32 %72, i32* %74, align 4
  %75 = load %struct.stat*, %struct.stat** %7, align 8
  %76 = getelementptr inbounds %struct.stat, %struct.stat* %75, i32 0, i32 2
  store i32 1, i32* %76, align 4
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.stat*, %struct.stat** %7, align 8
  %80 = getelementptr inbounds %struct.stat, %struct.stat* %79, i32 0, i32 9
  store i32 %78, i32* %80, align 4
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 5
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.stat*, %struct.stat** %7, align 8
  %84 = getelementptr inbounds %struct.stat, %struct.stat* %83, i32 0, i32 8
  store i32 %82, i32* %84, align 4
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 4
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.stat*, %struct.stat** %7, align 8
  %88 = getelementptr inbounds %struct.stat, %struct.stat* %87, i32 0, i32 7
  store i32 %86, i32* %88, align 4
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 3
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.stat*, %struct.stat** %7, align 8
  %92 = getelementptr inbounds %struct.stat, %struct.stat* %91, i32 0, i32 6
  store i32 %90, i32* %92, align 4
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.stat*, %struct.stat** %7, align 8
  %96 = getelementptr inbounds %struct.stat, %struct.stat* %95, i32 0, i32 5
  store i32 %94, i32* %96, align 4
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.stat*, %struct.stat** %7, align 8
  %100 = getelementptr inbounds %struct.stat, %struct.stat* %99, i32 0, i32 4
  store i32 %98, i32* %100, align 4
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.stat*, %struct.stat** %7, align 8
  %104 = getelementptr inbounds %struct.stat, %struct.stat* %103, i32 0, i32 3
  store i32 %102, i32* %104, align 4
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 0
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @OSUnlockMutex(i32 %109)
  store i32 0, i32* %4, align 4
  br label %111

111:                                              ; preds = %61, %51, %28, %19, %15
  %112 = load i32, i32* %4, align 4
  ret i32 %112
}

declare dso_local i32 @OSLockMutex(i32) #1

declare dso_local i32 @memset(%struct.stat*, i32, i32) #1

declare dso_local i32 @IOSUHAX_FSA_StatFile(i32, i32, %struct.TYPE_7__*) #1

declare dso_local i32 @OSUnlockMutex(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
