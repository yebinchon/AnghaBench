; ModuleID = '/home/carl/AnghaBench/AppImageKit/src/extr_runtime.c_private_sqfs_stat.c'
source_filename = "/home/carl/AnghaBench/AppImageKit/src/extr_runtime.c_private_sqfs_stat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_16__ = type { %struct.TYPE_15__, %struct.TYPE_13__, i32 }
%struct.TYPE_15__ = type { i32, i32, i32, i32 }
%struct.TYPE_13__ = type { i32, %struct.TYPE_12__, %struct.TYPE_11__ }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.stat = type { i32, i32, i8*, i8*, i32, i32, i32, i32, i32, i32, i32 }

@SQFS_OK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @private_sqfs_stat(%struct.TYPE_17__* %0, %struct.TYPE_16__* %1, %struct.stat* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca %struct.stat*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %5, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %6, align 8
  store %struct.stat* %2, %struct.stat** %7, align 8
  %10 = load i64, i64* @SQFS_OK, align 8
  store i64 %10, i64* %8, align 8
  %11 = load %struct.stat*, %struct.stat** %7, align 8
  %12 = call i32 @memset(%struct.stat* %11, i32 0, i32 56)
  %13 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.stat*, %struct.stat** %7, align 8
  %18 = getelementptr inbounds %struct.stat, %struct.stat* %17, i32 0, i32 5
  store i32 %16, i32* %18, align 4
  %19 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.stat*, %struct.stat** %7, align 8
  %23 = getelementptr inbounds %struct.stat, %struct.stat* %22, i32 0, i32 10
  store i32 %21, i32* %23, align 8
  %24 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.stat*, %struct.stat** %7, align 8
  %29 = getelementptr inbounds %struct.stat, %struct.stat* %28, i32 0, i32 7
  store i32 %27, i32* %29, align 4
  %30 = load %struct.stat*, %struct.stat** %7, align 8
  %31 = getelementptr inbounds %struct.stat, %struct.stat* %30, i32 0, i32 8
  store i32 %27, i32* %31, align 8
  %32 = load %struct.stat*, %struct.stat** %7, align 8
  %33 = getelementptr inbounds %struct.stat, %struct.stat* %32, i32 0, i32 9
  store i32 %27, i32* %33, align 4
  %34 = load %struct.stat*, %struct.stat** %7, align 8
  %35 = getelementptr inbounds %struct.stat, %struct.stat* %34, i32 0, i32 5
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @S_ISREG(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %53

39:                                               ; preds = %3
  %40 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.stat*, %struct.stat** %7, align 8
  %46 = getelementptr inbounds %struct.stat, %struct.stat* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  %47 = load %struct.stat*, %struct.stat** %7, align 8
  %48 = getelementptr inbounds %struct.stat, %struct.stat* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = sdiv i32 %49, 512
  %51 = load %struct.stat*, %struct.stat** %7, align 8
  %52 = getelementptr inbounds %struct.stat, %struct.stat* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  br label %94

53:                                               ; preds = %3
  %54 = load %struct.stat*, %struct.stat** %7, align 8
  %55 = getelementptr inbounds %struct.stat, %struct.stat* %54, i32 0, i32 5
  %56 = load i32, i32* %55, align 4
  %57 = call i64 @S_ISBLK(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %65, label %59

59:                                               ; preds = %53
  %60 = load %struct.stat*, %struct.stat** %7, align 8
  %61 = getelementptr inbounds %struct.stat, %struct.stat* %60, i32 0, i32 5
  %62 = load i32, i32* %61, align 4
  %63 = call i64 @S_ISCHR(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %79

65:                                               ; preds = %59, %53
  %66 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @sqfs_makedev(i32 %70, i32 %75)
  %77 = load %struct.stat*, %struct.stat** %7, align 8
  %78 = getelementptr inbounds %struct.stat, %struct.stat* %77, i32 0, i32 6
  store i32 %76, i32* %78, align 8
  br label %93

79:                                               ; preds = %59
  %80 = load %struct.stat*, %struct.stat** %7, align 8
  %81 = getelementptr inbounds %struct.stat, %struct.stat* %80, i32 0, i32 5
  %82 = load i32, i32* %81, align 4
  %83 = call i64 @S_ISLNK(i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %92

85:                                               ; preds = %79
  %86 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.stat*, %struct.stat** %7, align 8
  %91 = getelementptr inbounds %struct.stat, %struct.stat* %90, i32 0, i32 0
  store i32 %89, i32* %91, align 8
  br label %92

92:                                               ; preds = %85, %79
  br label %93

93:                                               ; preds = %92, %65
  br label %94

94:                                               ; preds = %93, %39
  %95 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.stat*, %struct.stat** %7, align 8
  %100 = getelementptr inbounds %struct.stat, %struct.stat* %99, i32 0, i32 4
  store i32 %98, i32* %100, align 8
  %101 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %102 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = call i64 @sqfs_id_get(%struct.TYPE_17__* %101, i32 %105, i8** %9)
  store i64 %106, i64* %8, align 8
  %107 = load i64, i64* %8, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %94
  %110 = load i64, i64* %8, align 8
  store i64 %110, i64* %4, align 8
  br label %130

111:                                              ; preds = %94
  %112 = load i8*, i8** %9, align 8
  %113 = load %struct.stat*, %struct.stat** %7, align 8
  %114 = getelementptr inbounds %struct.stat, %struct.stat* %113, i32 0, i32 3
  store i8* %112, i8** %114, align 8
  %115 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %116 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %117 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = call i64 @sqfs_id_get(%struct.TYPE_17__* %115, i32 %119, i8** %9)
  store i64 %120, i64* %8, align 8
  %121 = load i8*, i8** %9, align 8
  %122 = load %struct.stat*, %struct.stat** %7, align 8
  %123 = getelementptr inbounds %struct.stat, %struct.stat* %122, i32 0, i32 2
  store i8* %121, i8** %123, align 8
  %124 = load i64, i64* %8, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %128

126:                                              ; preds = %111
  %127 = load i64, i64* %8, align 8
  store i64 %127, i64* %4, align 8
  br label %130

128:                                              ; preds = %111
  %129 = load i64, i64* @SQFS_OK, align 8
  store i64 %129, i64* %4, align 8
  br label %130

130:                                              ; preds = %128, %126, %109
  %131 = load i64, i64* %4, align 8
  ret i64 %131
}

declare dso_local i32 @memset(%struct.stat*, i32, i32) #1

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local i64 @S_ISBLK(i32) #1

declare dso_local i64 @S_ISCHR(i32) #1

declare dso_local i32 @sqfs_makedev(i32, i32) #1

declare dso_local i64 @S_ISLNK(i32) #1

declare dso_local i64 @sqfs_id_get(%struct.TYPE_17__*, i32, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
