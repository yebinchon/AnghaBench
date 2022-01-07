; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/libiosuhax/extr_iosuhax_devoptab.c_fs_dev_dirnext_r.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/libiosuhax/extr_iosuhax_devoptab.c_fs_dev_dirnext_r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._reent = type { i32 }
%struct.TYPE_14__ = type { i64 }
%struct.stat = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__*, i32 }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@S_IFDIR = common dso_local global i32 0, align 4
@S_IFREG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct._reent*, %struct.TYPE_14__*, i8*, %struct.stat*)* @fs_dev_dirnext_r to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fs_dev_dirnext_r(%struct._reent* %0, %struct.TYPE_14__* %1, i8* %2, %struct.stat* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct._reent*, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.stat*, align 8
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca %struct.TYPE_13__*, align 8
  %12 = alloca i32, align 4
  store %struct._reent* %0, %struct._reent** %6, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %7, align 8
  store i8* %2, i8** %8, align 8
  store %struct.stat* %3, %struct.stat** %9, align 8
  %13 = load %struct._reent*, %struct._reent** %6, align 8
  %14 = icmp ne %struct._reent* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %160

16:                                               ; preds = %4
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %18 = icmp ne %struct.TYPE_14__* %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %16
  %20 = load i32, i32* @EINVAL, align 4
  %21 = load %struct._reent*, %struct._reent** %6, align 8
  %22 = getelementptr inbounds %struct._reent, %struct._reent* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  store i32 -1, i32* %5, align 4
  br label %160

23:                                               ; preds = %16
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %27, %struct.TYPE_12__** %10, align 8
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %29, align 8
  %31 = icmp ne %struct.TYPE_11__* %30, null
  br i1 %31, label %36, label %32

32:                                               ; preds = %23
  %33 = load i32, i32* @ENODEV, align 4
  %34 = load %struct._reent*, %struct._reent** %6, align 8
  %35 = getelementptr inbounds %struct._reent, %struct._reent* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  store i32 -1, i32* %5, align 4
  br label %160

36:                                               ; preds = %23
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @OSLockMutex(i32 %41)
  %43 = call %struct.TYPE_13__* @malloc(i32 32)
  store %struct.TYPE_13__* %43, %struct.TYPE_13__** %11, align 8
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %53 = call i32 @IOSUHAX_FSA_ReadDir(i32 %48, i32 %51, %struct.TYPE_13__* %52)
  store i32 %53, i32* %12, align 4
  %54 = load i32, i32* %12, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %68

56:                                               ; preds = %36
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %58 = call i32 @free(%struct.TYPE_13__* %57)
  %59 = load i32, i32* %12, align 4
  %60 = load %struct._reent*, %struct._reent** %6, align 8
  %61 = getelementptr inbounds %struct._reent, %struct._reent* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 4
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @OSUnlockMutex(i32 %66)
  store i32 -1, i32* %5, align 4
  br label %160

68:                                               ; preds = %36
  %69 = load i8*, i8** %8, align 8
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @strcpy(i8* %69, i32 %72)
  %74 = load %struct.stat*, %struct.stat** %9, align 8
  %75 = icmp ne %struct.stat* %74, null
  br i1 %75, label %76, label %151

76:                                               ; preds = %68
  %77 = load %struct.stat*, %struct.stat** %9, align 8
  %78 = call i32 @memset(%struct.stat* %77, i32 0, i32 44)
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = and i32 %82, -2147483648
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %76
  %86 = load i32, i32* @S_IFDIR, align 4
  br label %89

87:                                               ; preds = %76
  %88 = load i32, i32* @S_IFREG, align 4
  br label %89

89:                                               ; preds = %87, %85
  %90 = phi i32 [ %86, %85 ], [ %88, %87 ]
  %91 = load %struct.stat*, %struct.stat** %9, align 8
  %92 = getelementptr inbounds %struct.stat, %struct.stat* %91, i32 0, i32 10
  store i32 %90, i32* %92, align 4
  %93 = load %struct.stat*, %struct.stat** %9, align 8
  %94 = getelementptr inbounds %struct.stat, %struct.stat* %93, i32 0, i32 0
  store i32 1, i32* %94, align 4
  %95 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %96 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.stat*, %struct.stat** %9, align 8
  %100 = getelementptr inbounds %struct.stat, %struct.stat* %99, i32 0, i32 1
  store i32 %98, i32* %100, align 4
  %101 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %102 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = add nsw i32 %104, 511
  %106 = ashr i32 %105, 9
  %107 = load %struct.stat*, %struct.stat** %9, align 8
  %108 = getelementptr inbounds %struct.stat, %struct.stat* %107, i32 0, i32 2
  store i32 %106, i32* %108, align 4
  %109 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %110 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 4
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.stat*, %struct.stat** %9, align 8
  %114 = getelementptr inbounds %struct.stat, %struct.stat* %113, i32 0, i32 9
  store i32 %112, i32* %114, align 4
  %115 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %116 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i32 0, i32 6
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.stat*, %struct.stat** %9, align 8
  %120 = getelementptr inbounds %struct.stat, %struct.stat* %119, i32 0, i32 8
  store i32 %118, i32* %120, align 4
  %121 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %122 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 5
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.stat*, %struct.stat** %9, align 8
  %126 = getelementptr inbounds %struct.stat, %struct.stat* %125, i32 0, i32 7
  store i32 %124, i32* %126, align 4
  %127 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %128 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %128, i32 0, i32 4
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.stat*, %struct.stat** %9, align 8
  %132 = getelementptr inbounds %struct.stat, %struct.stat* %131, i32 0, i32 6
  store i32 %130, i32* %132, align 4
  %133 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %134 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.stat*, %struct.stat** %9, align 8
  %138 = getelementptr inbounds %struct.stat, %struct.stat* %137, i32 0, i32 5
  store i32 %136, i32* %138, align 4
  %139 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %140 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %140, i32 0, i32 3
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.stat*, %struct.stat** %9, align 8
  %144 = getelementptr inbounds %struct.stat, %struct.stat* %143, i32 0, i32 4
  store i32 %142, i32* %144, align 4
  %145 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %146 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.stat*, %struct.stat** %9, align 8
  %150 = getelementptr inbounds %struct.stat, %struct.stat* %149, i32 0, i32 3
  store i32 %148, i32* %150, align 4
  br label %151

151:                                              ; preds = %89, %68
  %152 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %153 = call i32 @free(%struct.TYPE_13__* %152)
  %154 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %155 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %154, i32 0, i32 0
  %156 = load %struct.TYPE_11__*, %struct.TYPE_11__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @OSUnlockMutex(i32 %158)
  store i32 0, i32* %5, align 4
  br label %160

160:                                              ; preds = %151, %56, %32, %19, %15
  %161 = load i32, i32* %5, align 4
  ret i32 %161
}

declare dso_local i32 @OSLockMutex(i32) #1

declare dso_local %struct.TYPE_13__* @malloc(i32) #1

declare dso_local i32 @IOSUHAX_FSA_ReadDir(i32, i32, %struct.TYPE_13__*) #1

declare dso_local i32 @free(%struct.TYPE_13__*) #1

declare dso_local i32 @OSUnlockMutex(i32) #1

declare dso_local i32 @strcpy(i8*, i32) #1

declare dso_local i32 @memset(%struct.stat*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
