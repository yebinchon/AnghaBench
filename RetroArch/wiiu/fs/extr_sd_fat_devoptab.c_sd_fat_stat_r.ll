; ModuleID = '/home/carl/AnghaBench/RetroArch/wiiu/fs/extr_sd_fat_devoptab.c_sd_fat_stat_r.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wiiu/fs/extr_sd_fat_devoptab.c_sd_fat_stat_r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._reent = type { i32 }
%struct.stat = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i8*, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32 }

@ENODEV = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@S_IFDIR = common dso_local global i32 0, align 4
@S_IFREG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct._reent*, i8*, %struct.stat*)* @sd_fat_stat_r to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sd_fat_stat_r(%struct._reent* %0, i8* %1, %struct.stat* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct._reent*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.stat*, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_6__, align 4
  %11 = alloca i32, align 4
  store %struct._reent* %0, %struct._reent** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.stat* %2, %struct.stat** %7, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = call %struct.TYPE_5__* @sd_fat_get_device_data(i8* %12)
  store %struct.TYPE_5__* %13, %struct.TYPE_5__** %8, align 8
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %15 = icmp ne %struct.TYPE_5__* %14, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* @ENODEV, align 4
  %18 = load %struct._reent*, %struct._reent** %5, align 8
  %19 = getelementptr inbounds %struct._reent, %struct._reent* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 4
  store i32 -1, i32* %4, align 4
  br label %128

20:                                               ; preds = %3
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @OSLockMutex(i32 %23)
  %25 = load %struct.stat*, %struct.stat** %7, align 8
  %26 = call i32 @memset(%struct.stat* %25, i32 0, i32 44)
  %27 = load i8*, i8** %6, align 8
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %29 = call i8* @sd_fat_real_path(i8* %27, %struct.TYPE_5__* %28)
  store i8* %29, i8** %9, align 8
  %30 = load i8*, i8** %9, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %40, label %32

32:                                               ; preds = %20
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = load %struct._reent*, %struct._reent** %5, align 8
  %35 = getelementptr inbounds %struct._reent, %struct._reent* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @OSUnlockMutex(i32 %38)
  store i32 -1, i32* %4, align 4
  br label %128

40:                                               ; preds = %20
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = load i8*, i8** %9, align 8
  %48 = bitcast %struct.TYPE_6__* %10 to i32*
  %49 = call i32 @FSGetStat(i32 %43, i32 %46, i8* %47, i32* %48, i32 -1)
  store i32 %49, i32* %11, align 4
  %50 = load i8*, i8** %9, align 8
  %51 = call i32 @free(i8* %50)
  %52 = load i32, i32* %11, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %62

54:                                               ; preds = %40
  %55 = load i32, i32* %11, align 4
  %56 = load %struct._reent*, %struct._reent** %5, align 8
  %57 = getelementptr inbounds %struct._reent, %struct._reent* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 4
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @OSUnlockMutex(i32 %60)
  store i32 -1, i32* %4, align 4
  br label %128

62:                                               ; preds = %40
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = and i32 %64, -2147483648
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %76, label %67

67:                                               ; preds = %62
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = load i8*, i8** %69, align 8
  %71 = call i64 @strlen(i8* %70)
  %72 = add nsw i64 %71, 1
  %73 = load i8*, i8** %9, align 8
  %74 = call i64 @strlen(i8* %73)
  %75 = icmp eq i64 %72, %74
  br i1 %75, label %76, label %78

76:                                               ; preds = %67, %62
  %77 = load i32, i32* @S_IFDIR, align 4
  br label %80

78:                                               ; preds = %67
  %79 = load i32, i32* @S_IFREG, align 4
  br label %80

80:                                               ; preds = %78, %76
  %81 = phi i32 [ %77, %76 ], [ %79, %78 ]
  %82 = load %struct.stat*, %struct.stat** %7, align 8
  %83 = getelementptr inbounds %struct.stat, %struct.stat* %82, i32 0, i32 10
  store i32 %81, i32* %83, align 4
  %84 = load %struct.stat*, %struct.stat** %7, align 8
  %85 = getelementptr inbounds %struct.stat, %struct.stat* %84, i32 0, i32 0
  store i32 1, i32* %85, align 4
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.stat*, %struct.stat** %7, align 8
  %89 = getelementptr inbounds %struct.stat, %struct.stat* %88, i32 0, i32 1
  store i32 %87, i32* %89, align 4
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = add nsw i32 %91, 511
  %93 = ashr i32 %92, 9
  %94 = load %struct.stat*, %struct.stat** %7, align 8
  %95 = getelementptr inbounds %struct.stat, %struct.stat* %94, i32 0, i32 2
  store i32 %93, i32* %95, align 4
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 4
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.stat*, %struct.stat** %7, align 8
  %99 = getelementptr inbounds %struct.stat, %struct.stat* %98, i32 0, i32 9
  store i32 %97, i32* %99, align 4
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 6
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.stat*, %struct.stat** %7, align 8
  %103 = getelementptr inbounds %struct.stat, %struct.stat* %102, i32 0, i32 8
  store i32 %101, i32* %103, align 4
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 5
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.stat*, %struct.stat** %7, align 8
  %107 = getelementptr inbounds %struct.stat, %struct.stat* %106, i32 0, i32 7
  store i32 %105, i32* %107, align 4
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 4
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.stat*, %struct.stat** %7, align 8
  %111 = getelementptr inbounds %struct.stat, %struct.stat* %110, i32 0, i32 6
  store i32 %109, i32* %111, align 4
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 2
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.stat*, %struct.stat** %7, align 8
  %115 = getelementptr inbounds %struct.stat, %struct.stat* %114, i32 0, i32 5
  store i32 %113, i32* %115, align 4
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 3
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.stat*, %struct.stat** %7, align 8
  %119 = getelementptr inbounds %struct.stat, %struct.stat* %118, i32 0, i32 4
  store i32 %117, i32* %119, align 4
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 2
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.stat*, %struct.stat** %7, align 8
  %123 = getelementptr inbounds %struct.stat, %struct.stat* %122, i32 0, i32 3
  store i32 %121, i32* %123, align 4
  %124 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 8
  %127 = call i32 @OSUnlockMutex(i32 %126)
  store i32 0, i32* %4, align 4
  br label %128

128:                                              ; preds = %80, %54, %32, %16
  %129 = load i32, i32* %4, align 4
  ret i32 %129
}

declare dso_local %struct.TYPE_5__* @sd_fat_get_device_data(i8*) #1

declare dso_local i32 @OSLockMutex(i32) #1

declare dso_local i32 @memset(%struct.stat*, i32, i32) #1

declare dso_local i8* @sd_fat_real_path(i8*, %struct.TYPE_5__*) #1

declare dso_local i32 @OSUnlockMutex(i32) #1

declare dso_local i32 @FSGetStat(i32, i32, i8*, i32*, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
