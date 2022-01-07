; ModuleID = '/home/carl/AnghaBench/RetroArch/wiiu/fs/extr_sd_fat_devoptab.c_sd_fat_fstat_r.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wiiu/fs/extr_sd_fat_devoptab.c_sd_fat_fstat_r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._reent = type { i32 }
%struct.stat = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32 }

@ENODEV = common dso_local global i32 0, align 4
@S_IFREG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct._reent*, i8*, %struct.stat*)* @sd_fat_fstat_r to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sd_fat_fstat_r(%struct._reent* %0, i8* %1, %struct.stat* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct._reent*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.stat*, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca %struct.TYPE_6__, align 4
  %10 = alloca i32, align 4
  store %struct._reent* %0, %struct._reent** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.stat* %2, %struct.stat** %7, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %12, %struct.TYPE_5__** %8, align 8
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = icmp ne %struct.TYPE_4__* %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* @ENODEV, align 4
  %19 = load %struct._reent*, %struct._reent** %5, align 8
  %20 = getelementptr inbounds %struct._reent, %struct._reent* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  store i32 -1, i32* %4, align 4
  br label %107

21:                                               ; preds = %3
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @OSLockMutex(i32 %26)
  %28 = load %struct.stat*, %struct.stat** %7, align 8
  %29 = call i32 @memset(%struct.stat* %28, i32 0, i32 44)
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = bitcast %struct.TYPE_6__* %9 to i32*
  %44 = call i32 @FSGetStatFile(i32 %34, i32 %39, i32 %42, i32* %43, i32 -1)
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %10, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %57

47:                                               ; preds = %21
  %48 = load i32, i32* %10, align 4
  %49 = load %struct._reent*, %struct._reent** %5, align 8
  %50 = getelementptr inbounds %struct._reent, %struct._reent* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 4
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @OSUnlockMutex(i32 %55)
  store i32 -1, i32* %4, align 4
  br label %107

57:                                               ; preds = %21
  %58 = load i32, i32* @S_IFREG, align 4
  %59 = load %struct.stat*, %struct.stat** %7, align 8
  %60 = getelementptr inbounds %struct.stat, %struct.stat* %59, i32 0, i32 10
  store i32 %58, i32* %60, align 4
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.stat*, %struct.stat** %7, align 8
  %64 = getelementptr inbounds %struct.stat, %struct.stat* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 4
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = add nsw i32 %66, 511
  %68 = ashr i32 %67, 9
  %69 = load %struct.stat*, %struct.stat** %7, align 8
  %70 = getelementptr inbounds %struct.stat, %struct.stat* %69, i32 0, i32 1
  store i32 %68, i32* %70, align 4
  %71 = load %struct.stat*, %struct.stat** %7, align 8
  %72 = getelementptr inbounds %struct.stat, %struct.stat* %71, i32 0, i32 2
  store i32 1, i32* %72, align 4
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 3
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.stat*, %struct.stat** %7, align 8
  %76 = getelementptr inbounds %struct.stat, %struct.stat* %75, i32 0, i32 9
  store i32 %74, i32* %76, align 4
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 5
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.stat*, %struct.stat** %7, align 8
  %80 = getelementptr inbounds %struct.stat, %struct.stat* %79, i32 0, i32 8
  store i32 %78, i32* %80, align 4
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 4
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.stat*, %struct.stat** %7, align 8
  %84 = getelementptr inbounds %struct.stat, %struct.stat* %83, i32 0, i32 7
  store i32 %82, i32* %84, align 4
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 3
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.stat*, %struct.stat** %7, align 8
  %88 = getelementptr inbounds %struct.stat, %struct.stat* %87, i32 0, i32 6
  store i32 %86, i32* %88, align 4
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.stat*, %struct.stat** %7, align 8
  %92 = getelementptr inbounds %struct.stat, %struct.stat* %91, i32 0, i32 5
  store i32 %90, i32* %92, align 4
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.stat*, %struct.stat** %7, align 8
  %96 = getelementptr inbounds %struct.stat, %struct.stat* %95, i32 0, i32 4
  store i32 %94, i32* %96, align 4
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.stat*, %struct.stat** %7, align 8
  %100 = getelementptr inbounds %struct.stat, %struct.stat* %99, i32 0, i32 3
  store i32 %98, i32* %100, align 4
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 0
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @OSUnlockMutex(i32 %105)
  store i32 0, i32* %4, align 4
  br label %107

107:                                              ; preds = %57, %47, %17
  %108 = load i32, i32* %4, align 4
  ret i32 %108
}

declare dso_local i32 @OSLockMutex(i32) #1

declare dso_local i32 @memset(%struct.stat*, i32, i32) #1

declare dso_local i32 @FSGetStatFile(i32, i32, i32, i32*, i32) #1

declare dso_local i32 @OSUnlockMutex(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
