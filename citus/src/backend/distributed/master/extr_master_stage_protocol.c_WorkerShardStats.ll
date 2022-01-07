; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/master/extr_master_stage_protocol.c_WorkerShardStats.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/master/extr_master_stage_protocol.c_WorkerShardStats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@SHARD_CSTORE_TABLE_SIZE_QUERY = common dso_local global i32 0, align 4
@SHARD_TABLE_SIZE_QUERY = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@DISTRIBUTE_BY_APPEND = common dso_local global i8 0, align 1
@SHARD_RANGE_QUERY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i8*, i32*, i32**, i32**)* @WorkerShardStats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @WorkerShardStats(i32* %0, i32 %1, i8* %2, i32* %3, i32** %4, i32** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32**, align 8
  %13 = alloca i32**, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_7__*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i8, align 1
  %19 = alloca %struct.TYPE_6__*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca %struct.TYPE_7__*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i8*, align 8
  %27 = alloca i8*, align 8
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32*, align 8
  %33 = alloca i8*, align 8
  %34 = alloca i8*, align 8
  store i32* %0, i32** %8, align 8
  store i32 %1, i32* %9, align 4
  store i8* %2, i8** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32** %4, i32*** %12, align 8
  store i32** %5, i32*** %13, align 8
  store i8* null, i8** %14, align 8
  store i32 0, i32* %15, align 4
  %35 = call %struct.TYPE_7__* (...) @makeStringInfo()
  store %struct.TYPE_7__* %35, %struct.TYPE_7__** %16, align 8
  store i32 1, i32* %17, align 4
  %36 = load i32, i32* %9, align 4
  %37 = call signext i8 @PartitionMethod(i32 %36)
  store i8 %37, i8* %18, align 1
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %19, align 8
  store i8* null, i8** %20, align 8
  %38 = call %struct.TYPE_7__* (...) @makeStringInfo()
  store %struct.TYPE_7__* %38, %struct.TYPE_7__** %21, align 8
  store i32* null, i32** %22, align 8
  store i32 0, i32* %23, align 4
  store i32 1, i32* %24, align 4
  store i32 0, i32* %25, align 4
  store i8* null, i8** %26, align 8
  store i8* null, i8** %27, align 8
  store i32 0, i32* %28, align 4
  store i32 0, i32* %29, align 4
  store i32 0, i32* %30, align 4
  store i32 0, i32* %31, align 4
  %39 = load i32, i32* %30, align 4
  %40 = load i32*, i32** %8, align 8
  %41 = call i32* @GetPlacementConnection(i32 %39, i32* %40, i32* null)
  store i32* %41, i32** %32, align 8
  %42 = load i32*, i32** %11, align 8
  store i32 0, i32* %42, align 4
  %43 = load i32**, i32*** %12, align 8
  store i32* null, i32** %43, align 8
  %44 = load i32**, i32*** %13, align 8
  store i32* null, i32** %44, align 8
  %45 = load i8*, i8** %10, align 8
  %46 = call i8* @quote_literal_cstr(i8* %45)
  store i8* %46, i8** %14, align 8
  %47 = load i32, i32* %9, align 4
  %48 = call i32 @CStoreTable(i32 %47)
  store i32 %48, i32* %15, align 4
  %49 = load i32, i32* %15, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %6
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %53 = load i32, i32* @SHARD_CSTORE_TABLE_SIZE_QUERY, align 4
  %54 = load i8*, i8** %14, align 8
  %55 = call i32 (%struct.TYPE_7__*, i32, i8*, ...) @appendStringInfo(%struct.TYPE_7__* %52, i32 %53, i8* %54)
  br label %61

56:                                               ; preds = %6
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %58 = load i32, i32* @SHARD_TABLE_SIZE_QUERY, align 4
  %59 = load i8*, i8** %14, align 8
  %60 = call i32 (%struct.TYPE_7__*, i32, i8*, ...) @appendStringInfo(%struct.TYPE_7__* %57, i32 %58, i8* %59)
  br label %61

61:                                               ; preds = %56, %51
  %62 = load i32*, i32** %32, align 8
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @ExecuteOptionalRemoteCommand(i32* %62, i32 %65, i32** %22)
  store i32 %66, i32* %31, align 4
  %67 = load i32, i32* %31, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %61
  store i32 0, i32* %7, align 4
  br label %156

70:                                               ; preds = %61
  %71 = load i32*, i32** %22, align 8
  %72 = call i8* @PQgetvalue(i32* %71, i32 0, i32 0)
  store i8* %72, i8** %26, align 8
  %73 = load i8*, i8** %26, align 8
  %74 = icmp eq i8* %73, null
  br i1 %74, label %75, label %80

75:                                               ; preds = %70
  %76 = load i32*, i32** %22, align 8
  %77 = call i32 @PQclear(i32* %76)
  %78 = load i32*, i32** %32, align 8
  %79 = call i32 @ForgetResults(i32* %78)
  store i32 0, i32* %7, align 4
  br label %156

80:                                               ; preds = %70
  store i64 0, i64* @errno, align 8
  %81 = load i8*, i8** %26, align 8
  %82 = call i32 @pg_strtouint64(i8* %81, i8** %27, i32 0)
  store i32 %82, i32* %25, align 4
  %83 = load i64, i64* @errno, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %90, label %85

85:                                               ; preds = %80
  %86 = load i8*, i8** %27, align 8
  %87 = load i8, i8* %86, align 1
  %88 = sext i8 %87 to i32
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %85, %80
  %91 = load i32*, i32** %22, align 8
  %92 = call i32 @PQclear(i32* %91)
  %93 = load i32*, i32** %32, align 8
  %94 = call i32 @ForgetResults(i32* %93)
  store i32 0, i32* %7, align 4
  br label %156

95:                                               ; preds = %85
  %96 = load i32, i32* %25, align 4
  %97 = load i32*, i32** %11, align 8
  store i32 %96, i32* %97, align 4
  %98 = load i32*, i32** %22, align 8
  %99 = call i32 @PQclear(i32* %98)
  %100 = load i32*, i32** %32, align 8
  %101 = call i32 @ForgetResults(i32* %100)
  %102 = load i8, i8* %18, align 1
  %103 = sext i8 %102 to i32
  %104 = load i8, i8* @DISTRIBUTE_BY_APPEND, align 1
  %105 = sext i8 %104 to i32
  %106 = icmp ne i32 %103, %105
  br i1 %106, label %107, label %108

107:                                              ; preds = %95
  store i32 1, i32* %7, align 4
  br label %156

108:                                              ; preds = %95
  %109 = load i32, i32* %9, align 4
  %110 = call %struct.TYPE_6__* @PartitionColumn(i32 %109, i32 1)
  store %struct.TYPE_6__* %110, %struct.TYPE_6__** %19, align 8
  %111 = load i32, i32* %9, align 4
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = call i8* @get_attname(i32 %111, i32 %114, i32 0)
  store i8* %115, i8** %20, align 8
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %117 = load i32, i32* @SHARD_RANGE_QUERY, align 4
  %118 = load i8*, i8** %20, align 8
  %119 = load i8*, i8** %20, align 8
  %120 = load i8*, i8** %10, align 8
  %121 = call i32 (%struct.TYPE_7__*, i32, i8*, ...) @appendStringInfo(%struct.TYPE_7__* %116, i32 %117, i8* %118, i8* %119, i8* %120)
  %122 = load i32*, i32** %32, align 8
  %123 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @ExecuteOptionalRemoteCommand(i32* %122, i32 %125, i32** %22)
  store i32 %126, i32* %31, align 4
  %127 = load i32, i32* %31, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %108
  store i32 0, i32* %7, align 4
  br label %156

130:                                              ; preds = %108
  %131 = load i32*, i32** %22, align 8
  %132 = call i32 @PQgetisnull(i32* %131, i32 0, i32 0)
  store i32 %132, i32* %28, align 4
  %133 = load i32*, i32** %22, align 8
  %134 = call i32 @PQgetisnull(i32* %133, i32 0, i32 1)
  store i32 %134, i32* %29, align 4
  %135 = load i32, i32* %28, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %151, label %137

137:                                              ; preds = %130
  %138 = load i32, i32* %29, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %151, label %140

140:                                              ; preds = %137
  %141 = load i32*, i32** %22, align 8
  %142 = call i8* @PQgetvalue(i32* %141, i32 0, i32 0)
  store i8* %142, i8** %33, align 8
  %143 = load i32*, i32** %22, align 8
  %144 = call i8* @PQgetvalue(i32* %143, i32 0, i32 1)
  store i8* %144, i8** %34, align 8
  %145 = load i8*, i8** %33, align 8
  %146 = call i32* @cstring_to_text(i8* %145)
  %147 = load i32**, i32*** %12, align 8
  store i32* %146, i32** %147, align 8
  %148 = load i8*, i8** %34, align 8
  %149 = call i32* @cstring_to_text(i8* %148)
  %150 = load i32**, i32*** %13, align 8
  store i32* %149, i32** %150, align 8
  br label %151

151:                                              ; preds = %140, %137, %130
  %152 = load i32*, i32** %22, align 8
  %153 = call i32 @PQclear(i32* %152)
  %154 = load i32*, i32** %32, align 8
  %155 = call i32 @ForgetResults(i32* %154)
  store i32 1, i32* %7, align 4
  br label %156

156:                                              ; preds = %151, %129, %107, %90, %75, %69
  %157 = load i32, i32* %7, align 4
  ret i32 %157
}

declare dso_local %struct.TYPE_7__* @makeStringInfo(...) #1

declare dso_local signext i8 @PartitionMethod(i32) #1

declare dso_local i32* @GetPlacementConnection(i32, i32*, i32*) #1

declare dso_local i8* @quote_literal_cstr(i8*) #1

declare dso_local i32 @CStoreTable(i32) #1

declare dso_local i32 @appendStringInfo(%struct.TYPE_7__*, i32, i8*, ...) #1

declare dso_local i32 @ExecuteOptionalRemoteCommand(i32*, i32, i32**) #1

declare dso_local i8* @PQgetvalue(i32*, i32, i32) #1

declare dso_local i32 @PQclear(i32*) #1

declare dso_local i32 @ForgetResults(i32*) #1

declare dso_local i32 @pg_strtouint64(i8*, i8**, i32) #1

declare dso_local %struct.TYPE_6__* @PartitionColumn(i32, i32) #1

declare dso_local i8* @get_attname(i32, i32, i32) #1

declare dso_local i32 @PQgetisnull(i32*, i32, i32) #1

declare dso_local i32* @cstring_to_text(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
