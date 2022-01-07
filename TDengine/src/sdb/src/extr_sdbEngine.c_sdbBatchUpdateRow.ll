; ModuleID = '/home/carl/AnghaBench/TDengine/src/sdb/src/extr_sdbEngine.c_sdbBatchUpdateRow.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/sdb/src/extr_sdbEngine.c_sdbBatchUpdateRow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i8* (i32, i8*, i8*, i32, i32*)*, i32, i32, i64, i32 }
%struct.TYPE_12__ = type { i32, i64, i32, i8* }
%struct.TYPE_13__ = type { i8*, i32, i64, i32 }

@.str = private unnamed_addr constant [52 x i8] c"table: %s, record is not there, batch update failed\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"failed to allocate row head memory, sdb: %s\00", align 1
@SDB_TYPE_BATCH_UPDATE = common dso_local global i32 0, align 4
@SDB_TYPE_BEFORE_BATCH_UPDATE = common dso_local global i32 0, align 4
@sdbVersion = common dso_local global i32 0, align 4
@SDB_DELIMITER = common dso_local global i32 0, align 4
@SDB_TYPE_ENCODE = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@SDB_TYPE_UPDATE = common dso_local global i32 0, align 4
@SDB_TYPE_AFTER_BATCH_UPDATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sdbBatchUpdateRow(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_13__*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load i8*, i8** %5, align 8
  %16 = bitcast i8* %15 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %16, %struct.TYPE_11__** %8, align 8
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %9, align 8
  store i32 0, i32* %10, align 4
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %18 = icmp eq %struct.TYPE_11__* %17, null
  br i1 %18, label %25, label %19

19:                                               ; preds = %3
  %20 = load i8*, i8** %6, align 8
  %21 = icmp eq i8* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %19
  %23 = load i32, i32* %7, align 4
  %24 = icmp sle i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %22, %19, %3
  store i32 -1, i32* %4, align 4
  br label %211

26:                                               ; preds = %22
  %27 = load i8*, i8** %5, align 8
  %28 = load i8*, i8** %6, align 8
  %29 = call %struct.TYPE_12__* @sdbGetRowMeta(i8* %27, i8* %28)
  store %struct.TYPE_12__* %29, %struct.TYPE_12__** %9, align 8
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %31 = icmp eq %struct.TYPE_12__* %30, null
  br i1 %31, label %32, label %37

32:                                               ; preds = %26
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 6
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @sdbTrace(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %35)
  store i32 -1, i32* %4, align 4
  br label %211

37:                                               ; preds = %26
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 3
  %40 = load i8*, i8** %39, align 8
  store i8* %40, i8** %11, align 8
  %41 = load i8*, i8** %11, align 8
  %42 = icmp ne i8* %41, null
  %43 = zext i1 %42 to i32
  %44 = call i32 @assert(i32 %43)
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = sext i32 %47 to i64
  %49 = add i64 32, %48
  %50 = add i64 %49, 4
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %10, align 4
  %52 = load i32, i32* %10, align 4
  %53 = call i64 @malloc(i32 %52)
  %54 = inttoptr i64 %53 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %54, %struct.TYPE_13__** %12, align 8
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %56 = icmp eq %struct.TYPE_13__* %55, null
  br i1 %56, label %57, label %62

57:                                               ; preds = %37
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 6
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @sdbError(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %60)
  store i32 -1, i32* %4, align 4
  br label %211

62:                                               ; preds = %37
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 1
  %65 = call i32 @pthread_mutex_lock(i32* %64)
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %67 = load i32, i32* @SDB_TYPE_BATCH_UPDATE, align 4
  %68 = load i8*, i8** %6, align 8
  %69 = load i32, i32* %7, align 4
  %70 = call i64 @sdbForwardDbReqToPeer(%struct.TYPE_11__* %66, i32 %67, i8* %68, i32 %69)
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %72, label %205

72:                                               ; preds = %62
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 2
  %75 = load i8* (i32, i8*, i8*, i32, i32*)*, i8* (i32, i8*, i8*, i32, i32*)** %74, align 8
  %76 = load i32, i32* @SDB_TYPE_BEFORE_BATCH_UPDATE, align 4
  %77 = load i8*, i8** %11, align 8
  %78 = call i8* %75(i32 %76, i8* %77, i8* null, i32 0, i32* null)
  %79 = load i8*, i8** %11, align 8
  store i8* %79, i8** %13, align 8
  br label %80

80:                                               ; preds = %195, %72
  %81 = load i8*, i8** %13, align 8
  %82 = icmp ne i8* %81, null
  br i1 %82, label %83, label %196

83:                                               ; preds = %80
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 5
  %86 = load i64, i64* %85, align 8
  %87 = add nsw i64 %86, 1
  store i64 %87, i64* %85, align 8
  %88 = load i32, i32* @sdbVersion, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* @sdbVersion, align 4
  %90 = load i8*, i8** %13, align 8
  store i8* %90, i8** %14, align 8
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 2
  %93 = load i8* (i32, i8*, i8*, i32, i32*)*, i8* (i32, i8*, i8*, i32, i32*)** %92, align 8
  %94 = load i32, i32* @SDB_TYPE_BATCH_UPDATE, align 4
  %95 = load i8*, i8** %14, align 8
  %96 = load i8*, i8** %6, align 8
  %97 = load i32, i32* %7, align 4
  %98 = call i8* %93(i32 %94, i8* %95, i8* %96, i32 %97, i32* null)
  store i8* %98, i8** %13, align 8
  %99 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %100 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = sext i32 %102 to i64
  %104 = add i64 32, %103
  %105 = add i64 %104, 4
  %106 = trunc i64 %105 to i32
  %107 = call i32 @memset(%struct.TYPE_13__* %99, i32 0, i32 %106)
  %108 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %109 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %108, i32 0, i32 5
  %110 = load i64, i64* %109, align 8
  %111 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %111, i32 0, i32 1
  store i64 %110, i64* %112, align 8
  %113 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %114 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 8
  %116 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %117 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %116, i32 0, i32 2
  store i32 %115, i32* %117, align 8
  %118 = load i32, i32* @SDB_DELIMITER, align 4
  %119 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %120 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %119, i32 0, i32 3
  store i32 %118, i32* %120, align 8
  %121 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %122 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %125 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %124, i32 0, i32 2
  store i64 %123, i64* %125, align 8
  %126 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %127 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %126, i32 0, i32 2
  %128 = load i8* (i32, i8*, i8*, i32, i32*)*, i8* (i32, i8*, i8*, i32, i32*)** %127, align 8
  %129 = load i32, i32* @SDB_TYPE_ENCODE, align 4
  %130 = load i8*, i8** %14, align 8
  %131 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %132 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %131, i32 0, i32 0
  %133 = load i8*, i8** %132, align 8
  %134 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %135 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %138 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %137, i32 0, i32 1
  %139 = call i8* %128(i32 %129, i8* %130, i8* %133, i32 %136, i32* %138)
  %140 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %141 = bitcast %struct.TYPE_13__* %140 to i32*
  %142 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %143 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 8
  %145 = sext i32 %144 to i64
  %146 = add i64 32, %145
  %147 = add i64 %146, 4
  %148 = call i32 @taosCalcChecksumAppend(i32 0, i32* %141, i64 %147)
  %149 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %150 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 8
  %152 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %153 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %152, i32 0, i32 0
  store i32 %151, i32* %153, align 8
  %154 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %155 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %154, i32 0, i32 4
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %158 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %157, i32 0, i32 3
  %159 = load i32, i32* %158, align 8
  %160 = load i32, i32* @SEEK_SET, align 4
  %161 = call i32 @lseek(i32 %156, i32 %159, i32 %160)
  %162 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %163 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %162, i32 0, i32 4
  %164 = load i32, i32* %163, align 4
  %165 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %166 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %167 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 8
  %169 = sext i32 %168 to i64
  %170 = add i64 32, %169
  %171 = add i64 %170, 4
  %172 = call i32 @twrite(i32 %164, %struct.TYPE_13__* %165, i64 %171)
  %173 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %174 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 8
  %176 = sext i32 %175 to i64
  %177 = add i64 32, %176
  %178 = add i64 %177, 4
  %179 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %180 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %179, i32 0, i32 3
  %181 = load i32, i32* %180, align 8
  %182 = sext i32 %181 to i64
  %183 = add i64 %182, %178
  %184 = trunc i64 %183 to i32
  store i32 %184, i32* %180, align 8
  %185 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %186 = load i32, i32* @SDB_TYPE_UPDATE, align 4
  %187 = load i8*, i8** %14, align 8
  %188 = call i32 @sdbAddIntoUpdateList(%struct.TYPE_11__* %185, i32 %186, i8* %187)
  %189 = load i8*, i8** %13, align 8
  %190 = icmp ne i8* %189, null
  br i1 %190, label %191, label %195

191:                                              ; preds = %83
  %192 = load i8*, i8** %5, align 8
  %193 = load i8*, i8** %13, align 8
  %194 = call %struct.TYPE_12__* @sdbGetRowMeta(i8* %192, i8* %193)
  store %struct.TYPE_12__* %194, %struct.TYPE_12__** %9, align 8
  br label %195

195:                                              ; preds = %191, %83
  br label %80

196:                                              ; preds = %80
  %197 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %198 = call i32 @sdbFinishCommit(%struct.TYPE_11__* %197)
  %199 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %200 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %199, i32 0, i32 2
  %201 = load i8* (i32, i8*, i8*, i32, i32*)*, i8* (i32, i8*, i8*, i32, i32*)** %200, align 8
  %202 = load i32, i32* @SDB_TYPE_AFTER_BATCH_UPDATE, align 4
  %203 = load i8*, i8** %11, align 8
  %204 = call i8* %201(i32 %202, i8* %203, i8* null, i32 0, i32* null)
  br label %205

205:                                              ; preds = %196, %62
  %206 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %207 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %206, i32 0, i32 1
  %208 = call i32 @pthread_mutex_unlock(i32* %207)
  %209 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %210 = call i32 @tfree(%struct.TYPE_13__* %209)
  store i32 0, i32* %4, align 4
  br label %211

211:                                              ; preds = %205, %57, %32, %25
  %212 = load i32, i32* %4, align 4
  ret i32 %212
}

declare dso_local %struct.TYPE_12__* @sdbGetRowMeta(i8*, i8*) #1

declare dso_local i32 @sdbTrace(i8*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @sdbError(i8*, i32) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i64 @sdbForwardDbReqToPeer(%struct.TYPE_11__*, i32, i8*, i32) #1

declare dso_local i32 @memset(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @taosCalcChecksumAppend(i32, i32*, i64) #1

declare dso_local i32 @lseek(i32, i32, i32) #1

declare dso_local i32 @twrite(i32, %struct.TYPE_13__*, i64) #1

declare dso_local i32 @sdbAddIntoUpdateList(%struct.TYPE_11__*, i32, i8*) #1

declare dso_local i32 @sdbFinishCommit(%struct.TYPE_11__*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i32 @tfree(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
