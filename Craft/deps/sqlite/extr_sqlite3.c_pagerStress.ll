; ModuleID = '/home/carl/AnghaBench/Craft/deps/sqlite/extr_sqlite3.c_pagerStress.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/sqlite/extr_sqlite3.c_pagerStress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i64, i64, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32, i64, i64, i64, i64 }

@SQLITE_OK = common dso_local global i32 0, align 4
@PGHDR_DIRTY = common dso_local global i32 0, align 4
@PGHDR_NEED_SYNC = common dso_local global i32 0, align 4
@PAGER_WRITER_CACHEMOD = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"STRESS %d page %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.TYPE_15__*)* @pagerStress to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pagerStress(i8* %0, %struct.TYPE_15__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %9, %struct.TYPE_16__** %6, align 8
  %10 = load i32, i32* @SQLITE_OK, align 4
  store i32 %10, i32* %7, align 4
  %11 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 3
  %13 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %14 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %15 = icmp eq %struct.TYPE_16__* %13, %14
  %16 = zext i1 %15 to i32
  %17 = call i32 @assert(i32 %16)
  %18 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @PGHDR_DIRTY, align 4
  %22 = and i32 %20, %21
  %23 = call i32 @assert(i32 %22)
  %24 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i64 @NEVER(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %2
  %30 = load i32, i32* @SQLITE_OK, align 4
  store i32 %30, i32* %3, align 4
  br label %149

31:                                               ; preds = %2
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %32, i32 0, i32 4
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = load i32, i32* @SQLITE_OK, align 4
  store i32 %37, i32* %3, align 4
  br label %149

38:                                               ; preds = %31
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %39, i32 0, i32 3
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %52

43:                                               ; preds = %38
  %44 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @PGHDR_NEED_SYNC, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %43
  %51 = load i32, i32* @SQLITE_OK, align 4
  store i32 %51, i32* %3, align 4
  br label %149

52:                                               ; preds = %43, %38
  %53 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %53, i32 0, i32 2
  store i64 0, i64* %54, align 8
  %55 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %56 = call i64 @pagerUseWal(%struct.TYPE_16__* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %74

58:                                               ; preds = %52
  %59 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %60 = call i64 @subjRequiresPage(%struct.TYPE_15__* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %58
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %64 = call i32 @subjournalPage(%struct.TYPE_15__* %63)
  store i32 %64, i32* %7, align 4
  br label %65

65:                                               ; preds = %62, %58
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* @SQLITE_OK, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %73

69:                                               ; preds = %65
  %70 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %72 = call i32 @pagerWalFrames(%struct.TYPE_16__* %70, %struct.TYPE_15__* %71, i32 0, i32 0)
  store i32 %72, i32* %7, align 4
  br label %73

73:                                               ; preds = %69, %65
  br label %131

74:                                               ; preds = %52
  %75 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @PGHDR_NEED_SYNC, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %87, label %81

81:                                               ; preds = %74
  %82 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @PAGER_WRITER_CACHEMOD, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %90

87:                                               ; preds = %81, %74
  %88 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %89 = call i32 @syncJournal(%struct.TYPE_16__* %88, i32 1)
  store i32 %89, i32* %7, align 4
  br label %90

90:                                               ; preds = %87, %81
  %91 = load i32, i32* %7, align 4
  %92 = load i32, i32* @SQLITE_OK, align 4
  %93 = icmp eq i32 %91, %92
  br i1 %93, label %94, label %106

94:                                               ; preds = %90
  %95 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %98, i32 0, i32 2
  %100 = load i64, i64* %99, align 8
  %101 = icmp sgt i64 %97, %100
  br i1 %101, label %102, label %106

102:                                              ; preds = %94
  %103 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %104 = call i64 @subjRequiresPage(%struct.TYPE_15__* %103)
  %105 = icmp ne i64 %104, 0
  br label %106

106:                                              ; preds = %102, %94, %90
  %107 = phi i1 [ false, %94 ], [ false, %90 ], [ %105, %102 ]
  %108 = zext i1 %107 to i32
  %109 = call i64 @NEVER(i32 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %106
  %112 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %113 = call i32 @subjournalPage(%struct.TYPE_15__* %112)
  store i32 %113, i32* %7, align 4
  br label %114

114:                                              ; preds = %111, %106
  %115 = load i32, i32* %7, align 4
  %116 = load i32, i32* @SQLITE_OK, align 4
  %117 = icmp eq i32 %115, %116
  br i1 %117, label %118, label %130

118:                                              ; preds = %114
  %119 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = load i32, i32* @PGHDR_NEED_SYNC, align 4
  %123 = and i32 %121, %122
  %124 = icmp eq i32 %123, 0
  %125 = zext i1 %124 to i32
  %126 = call i32 @assert(i32 %125)
  %127 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %128 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %129 = call i32 @pager_write_pagelist(%struct.TYPE_16__* %127, %struct.TYPE_15__* %128)
  store i32 %129, i32* %7, align 4
  br label %130

130:                                              ; preds = %118, %114
  br label %131

131:                                              ; preds = %130, %73
  %132 = load i32, i32* %7, align 4
  %133 = load i32, i32* @SQLITE_OK, align 4
  %134 = icmp eq i32 %132, %133
  br i1 %134, label %135, label %145

135:                                              ; preds = %131
  %136 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %137 = call i32 @PAGERID(%struct.TYPE_16__* %136)
  %138 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %139 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %138, i32 0, i32 1
  %140 = load i64, i64* %139, align 8
  %141 = inttoptr i64 %140 to i8*
  %142 = call i32 @PAGERTRACE(i8* %141)
  %143 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %144 = call i32 @sqlite3PcacheMakeClean(%struct.TYPE_15__* %143)
  br label %145

145:                                              ; preds = %135, %131
  %146 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %147 = load i32, i32* %7, align 4
  %148 = call i32 @pager_error(%struct.TYPE_16__* %146, i32 %147)
  store i32 %148, i32* %3, align 4
  br label %149

149:                                              ; preds = %145, %50, %36, %29
  %150 = load i32, i32* %3, align 4
  ret i32 %150
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @NEVER(i32) #1

declare dso_local i64 @pagerUseWal(%struct.TYPE_16__*) #1

declare dso_local i64 @subjRequiresPage(%struct.TYPE_15__*) #1

declare dso_local i32 @subjournalPage(%struct.TYPE_15__*) #1

declare dso_local i32 @pagerWalFrames(%struct.TYPE_16__*, %struct.TYPE_15__*, i32, i32) #1

declare dso_local i32 @syncJournal(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @pager_write_pagelist(%struct.TYPE_16__*, %struct.TYPE_15__*) #1

declare dso_local i32 @PAGERTRACE(i8*) #1

declare dso_local i32 @PAGERID(%struct.TYPE_16__*) #1

declare dso_local i32 @sqlite3PcacheMakeClean(%struct.TYPE_15__*) #1

declare dso_local i32 @pager_error(%struct.TYPE_16__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
