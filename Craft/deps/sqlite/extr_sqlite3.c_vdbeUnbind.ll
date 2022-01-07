; ModuleID = '/home/carl/AnghaBench/Craft/deps/sqlite/extr_sqlite3.c_vdbeUnbind.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/sqlite/extr_sqlite3.c_vdbeUnbind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i64, i32, i32, i32, i64, %struct.TYPE_9__*, %struct.TYPE_8__*, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }

@SQLITE_MISUSE_BKPT = common dso_local global i32 0, align 4
@VDBE_MAGIC_RUN = common dso_local global i64 0, align 8
@SQLITE_MISUSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"bind on a busy prepared statement: [%s]\00", align 1
@SQLITE_RANGE = common dso_local global i32 0, align 4
@MEM_Null = common dso_local global i32 0, align 4
@SQLITE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i32)* @vdbeUnbind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vdbeUnbind(%struct.TYPE_7__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %8 = call i64 @vdbeSafetyNotNull(%struct.TYPE_7__* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = load i32, i32* @SQLITE_MISUSE_BKPT, align 4
  store i32 %11, i32* %3, align 4
  br label %113

12:                                               ; preds = %2
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 6
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @sqlite3_mutex_enter(i32 %17)
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @VDBE_MAGIC_RUN, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %29, label %24

24:                                               ; preds = %12
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp sge i64 %27, 0
  br i1 %28, label %29, label %47

29:                                               ; preds = %24, %12
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 6
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %31, align 8
  %33 = load i32, i32* @SQLITE_MISUSE, align 4
  %34 = call i32 @sqlite3Error(%struct.TYPE_9__* %32, i32 %33, i32 0)
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 6
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @sqlite3_mutex_leave(i32 %39)
  %41 = load i32, i32* @SQLITE_MISUSE, align 4
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 8
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @sqlite3_log(i32 %41, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %44)
  %46 = load i32, i32* @SQLITE_MISUSE_BKPT, align 4
  store i32 %46, i32* %3, align 4
  br label %113

47:                                               ; preds = %24
  %48 = load i32, i32* %5, align 4
  %49 = icmp slt i32 %48, 1
  br i1 %49, label %56, label %50

50:                                               ; preds = %47
  %51 = load i32, i32* %5, align 4
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = icmp sgt i32 %51, %54
  br i1 %55, label %56, label %69

56:                                               ; preds = %50, %47
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 6
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %58, align 8
  %60 = load i32, i32* @SQLITE_RANGE, align 4
  %61 = call i32 @sqlite3Error(%struct.TYPE_9__* %59, i32 %60, i32 0)
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 6
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @sqlite3_mutex_leave(i32 %66)
  %68 = load i32, i32* @SQLITE_RANGE, align 4
  store i32 %68, i32* %3, align 4
  br label %113

69:                                               ; preds = %50
  %70 = load i32, i32* %5, align 4
  %71 = add nsw i32 %70, -1
  store i32 %71, i32* %5, align 4
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 7
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %73, align 8
  %75 = load i32, i32* %5, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i64 %76
  store %struct.TYPE_8__* %77, %struct.TYPE_8__** %6, align 8
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %79 = call i32 @sqlite3VdbeMemRelease(%struct.TYPE_8__* %78)
  %80 = load i32, i32* @MEM_Null, align 4
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 0
  store i32 %80, i32* %82, align 4
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 6
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %84, align 8
  %86 = load i32, i32* @SQLITE_OK, align 4
  %87 = call i32 @sqlite3Error(%struct.TYPE_9__* %85, i32 %86, i32 0)
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 5
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %111

92:                                               ; preds = %69
  %93 = load i32, i32* %5, align 4
  %94 = icmp slt i32 %93, 32
  br i1 %94, label %95, label %103

95:                                               ; preds = %92
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* %5, align 4
  %100 = shl i32 1, %99
  %101 = and i32 %98, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %108, label %103

103:                                              ; preds = %95, %92
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 4
  %107 = icmp eq i32 %106, -1
  br i1 %107, label %108, label %111

108:                                              ; preds = %103, %95
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 4
  store i32 1, i32* %110, align 8
  br label %111

111:                                              ; preds = %108, %103, %69
  %112 = load i32, i32* @SQLITE_OK, align 4
  store i32 %112, i32* %3, align 4
  br label %113

113:                                              ; preds = %111, %56, %29, %10
  %114 = load i32, i32* %3, align 4
  ret i32 %114
}

declare dso_local i64 @vdbeSafetyNotNull(%struct.TYPE_7__*) #1

declare dso_local i32 @sqlite3_mutex_enter(i32) #1

declare dso_local i32 @sqlite3Error(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @sqlite3_mutex_leave(i32) #1

declare dso_local i32 @sqlite3_log(i32, i8*, i32) #1

declare dso_local i32 @sqlite3VdbeMemRelease(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
