; ModuleID = '/home/carl/AnghaBench/RetroArch/wiiu/fs/extr_sd_fat_devoptab.c_sd_fat_dirnext_r.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wiiu/fs/extr_sd_fat_devoptab.c_sd_fat_dirnext_r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._reent = type { i32 }
%struct.TYPE_13__ = type { i64 }
%struct.stat = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__*, i32 }
%struct.TYPE_10__ = type { i32, i32, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, i32, i32 }

@ENODEV = common dso_local global i32 0, align 4
@S_IFDIR = common dso_local global i32 0, align 4
@S_IFREG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct._reent*, %struct.TYPE_13__*, i8*, %struct.stat*)* @sd_fat_dirnext_r to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sd_fat_dirnext_r(%struct._reent* %0, %struct.TYPE_13__* %1, i8* %2, %struct.stat* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct._reent*, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.stat*, align 8
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca %struct.TYPE_12__*, align 8
  %12 = alloca i32, align 4
  store %struct._reent* %0, %struct._reent** %6, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %7, align 8
  store i8* %2, i8** %8, align 8
  store %struct.stat* %3, %struct.stat** %9, align 8
  %13 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %14 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %16, %struct.TYPE_11__** %10, align 8
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %20 = icmp ne %struct.TYPE_10__* %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %4
  %22 = load i32, i32* @ENODEV, align 4
  %23 = load %struct._reent*, %struct._reent** %6, align 8
  %24 = getelementptr inbounds %struct._reent, %struct._reent* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  store i32 -1, i32* %5, align 4
  br label %155

25:                                               ; preds = %4
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @OSLockMutex(i32 %30)
  %32 = call %struct.TYPE_12__* @malloc(i32 32)
  store %struct.TYPE_12__* %32, %struct.TYPE_12__** %11, align 8
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %47 = bitcast %struct.TYPE_12__* %46 to i32*
  %48 = call i32 @FSReadDir(i32 %37, i32 %42, i32 %45, i32* %47, i32 -1)
  store i32 %48, i32* %12, align 4
  %49 = load i32, i32* %12, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %63

51:                                               ; preds = %25
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %53 = call i32 @free(%struct.TYPE_12__* %52)
  %54 = load i32, i32* %12, align 4
  %55 = load %struct._reent*, %struct._reent** %6, align 8
  %56 = getelementptr inbounds %struct._reent, %struct._reent* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 4
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @OSUnlockMutex(i32 %61)
  store i32 -1, i32* %5, align 4
  br label %155

63:                                               ; preds = %25
  %64 = load i8*, i8** %8, align 8
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @strcpy(i8* %64, i32 %67)
  %69 = load %struct.stat*, %struct.stat** %9, align 8
  %70 = icmp ne %struct.stat* %69, null
  br i1 %70, label %71, label %146

71:                                               ; preds = %63
  %72 = load %struct.stat*, %struct.stat** %9, align 8
  %73 = call i32 @memset(%struct.stat* %72, i32 0, i32 44)
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = and i32 %77, -2147483648
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %71
  %81 = load i32, i32* @S_IFDIR, align 4
  br label %84

82:                                               ; preds = %71
  %83 = load i32, i32* @S_IFREG, align 4
  br label %84

84:                                               ; preds = %82, %80
  %85 = phi i32 [ %81, %80 ], [ %83, %82 ]
  %86 = load %struct.stat*, %struct.stat** %9, align 8
  %87 = getelementptr inbounds %struct.stat, %struct.stat* %86, i32 0, i32 10
  store i32 %85, i32* %87, align 4
  %88 = load %struct.stat*, %struct.stat** %9, align 8
  %89 = getelementptr inbounds %struct.stat, %struct.stat* %88, i32 0, i32 0
  store i32 1, i32* %89, align 4
  %90 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.stat*, %struct.stat** %9, align 8
  %95 = getelementptr inbounds %struct.stat, %struct.stat* %94, i32 0, i32 1
  store i32 %93, i32* %95, align 4
  %96 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %97 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = add nsw i32 %99, 511
  %101 = ashr i32 %100, 9
  %102 = load %struct.stat*, %struct.stat** %9, align 8
  %103 = getelementptr inbounds %struct.stat, %struct.stat* %102, i32 0, i32 2
  store i32 %101, i32* %103, align 4
  %104 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i32 0, i32 4
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.stat*, %struct.stat** %9, align 8
  %109 = getelementptr inbounds %struct.stat, %struct.stat* %108, i32 0, i32 9
  store i32 %107, i32* %109, align 4
  %110 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %111 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i32 0, i32 6
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.stat*, %struct.stat** %9, align 8
  %115 = getelementptr inbounds %struct.stat, %struct.stat* %114, i32 0, i32 8
  store i32 %113, i32* %115, align 4
  %116 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %117 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %117, i32 0, i32 5
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.stat*, %struct.stat** %9, align 8
  %121 = getelementptr inbounds %struct.stat, %struct.stat* %120, i32 0, i32 7
  store i32 %119, i32* %121, align 4
  %122 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %123 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %123, i32 0, i32 4
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.stat*, %struct.stat** %9, align 8
  %127 = getelementptr inbounds %struct.stat, %struct.stat* %126, i32 0, i32 6
  store i32 %125, i32* %127, align 4
  %128 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %129 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.stat*, %struct.stat** %9, align 8
  %133 = getelementptr inbounds %struct.stat, %struct.stat* %132, i32 0, i32 5
  store i32 %131, i32* %133, align 4
  %134 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %135 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %135, i32 0, i32 3
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.stat*, %struct.stat** %9, align 8
  %139 = getelementptr inbounds %struct.stat, %struct.stat* %138, i32 0, i32 4
  store i32 %137, i32* %139, align 4
  %140 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %141 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.stat*, %struct.stat** %9, align 8
  %145 = getelementptr inbounds %struct.stat, %struct.stat* %144, i32 0, i32 3
  store i32 %143, i32* %145, align 4
  br label %146

146:                                              ; preds = %84, %63
  %147 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %148 = call i32 @free(%struct.TYPE_12__* %147)
  %149 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %150 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %149, i32 0, i32 0
  %151 = load %struct.TYPE_10__*, %struct.TYPE_10__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @OSUnlockMutex(i32 %153)
  store i32 0, i32* %5, align 4
  br label %155

155:                                              ; preds = %146, %51, %21
  %156 = load i32, i32* %5, align 4
  ret i32 %156
}

declare dso_local i32 @OSLockMutex(i32) #1

declare dso_local %struct.TYPE_12__* @malloc(i32) #1

declare dso_local i32 @FSReadDir(i32, i32, i32, i32*, i32) #1

declare dso_local i32 @free(%struct.TYPE_12__*) #1

declare dso_local i32 @OSUnlockMutex(i32) #1

declare dso_local i32 @strcpy(i8*, i32) #1

declare dso_local i32 @memset(%struct.stat*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
