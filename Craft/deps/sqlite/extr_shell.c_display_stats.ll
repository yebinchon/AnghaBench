; ModuleID = '/home/carl/AnghaBench/Craft/deps/sqlite/extr_shell.c_display_stats.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/sqlite/extr_shell.c_display_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.callback_data = type { i64, i64 }

@SQLITE_STATUS_MEMORY_USED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"Memory Used:                         %d (max %d) bytes\0A\00", align 1
@SQLITE_STATUS_MALLOC_COUNT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"Number of Outstanding Allocations:   %d (max %d)\0A\00", align 1
@SQLITE_STATUS_PAGECACHE_OVERFLOW = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [56 x i8] c"Number of Pcache Overflow Bytes:     %d (max %d) bytes\0A\00", align 1
@SQLITE_STATUS_SCRATCH_OVERFLOW = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [56 x i8] c"Number of Scratch Overflow Bytes:    %d (max %d) bytes\0A\00", align 1
@SQLITE_STATUS_MALLOC_SIZE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [47 x i8] c"Largest Allocation:                  %d bytes\0A\00", align 1
@SQLITE_STATUS_PAGECACHE_SIZE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [47 x i8] c"Largest Pcache Allocation:           %d bytes\0A\00", align 1
@SQLITE_STATUS_SCRATCH_SIZE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [47 x i8] c"Largest Scratch Allocation:          %d bytes\0A\00", align 1
@SQLITE_DBSTATUS_LOOKASIDE_USED = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [50 x i8] c"Lookaside Slots Used:                %d (max %d)\0A\00", align 1
@SQLITE_DBSTATUS_LOOKASIDE_HIT = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [41 x i8] c"Successful lookaside attempts:       %d\0A\00", align 1
@SQLITE_DBSTATUS_LOOKASIDE_MISS_SIZE = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [41 x i8] c"Lookaside failures due to size:      %d\0A\00", align 1
@SQLITE_DBSTATUS_LOOKASIDE_MISS_FULL = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [41 x i8] c"Lookaside failures due to OOM:       %d\0A\00", align 1
@SQLITE_DBSTATUS_CACHE_USED = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [47 x i8] c"Pager Heap Usage:                    %d bytes\0A\00", align 1
@SQLITE_DBSTATUS_CACHE_HIT = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [41 x i8] c"Page cache hits:                     %d\0A\00", align 1
@SQLITE_DBSTATUS_CACHE_MISS = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [41 x i8] c"Page cache misses:                   %d\0A\00", align 1
@SQLITE_DBSTATUS_CACHE_WRITE = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [41 x i8] c"Page cache writes:                   %d\0A\00", align 1
@SQLITE_DBSTATUS_SCHEMA_USED = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [47 x i8] c"Schema Heap Usage:                   %d bytes\0A\00", align 1
@SQLITE_DBSTATUS_STMT_USED = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [47 x i8] c"Statement Heap/Lookaside Usage:      %d bytes\0A\00", align 1
@SQLITE_STMTSTATUS_FULLSCAN_STEP = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [41 x i8] c"Fullscan Steps:                      %d\0A\00", align 1
@SQLITE_STMTSTATUS_SORT = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [41 x i8] c"Sort Operations:                     %d\0A\00", align 1
@SQLITE_STMTSTATUS_AUTOINDEX = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [41 x i8] c"Autoindex Inserts:                   %d\0A\00", align 1
@SQLITE_STATUS_PARSER_STACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.callback_data*, i32)* @display_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @display_stats(i32* %0, %struct.callback_data* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.callback_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.callback_data* %1, %struct.callback_data** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.callback_data*, %struct.callback_data** %5, align 8
  %10 = icmp ne %struct.callback_data* %9, null
  br i1 %10, label %11, label %77

11:                                               ; preds = %3
  %12 = load %struct.callback_data*, %struct.callback_data** %5, align 8
  %13 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %77

16:                                               ; preds = %11
  store i32 -1, i32* %7, align 4
  store i32 -1, i32* %8, align 4
  %17 = load i32, i32* @SQLITE_STATUS_MEMORY_USED, align 4
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @sqlite3_status(i32 %17, i32* %7, i32* %8, i32 %18)
  %20 = load %struct.callback_data*, %struct.callback_data** %5, align 8
  %21 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* %8, align 4
  %25 = call i32 (i64, i8*, i32, ...) @fprintf(i64 %22, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %23, i32 %24)
  store i32 -1, i32* %7, align 4
  store i32 -1, i32* %8, align 4
  %26 = load i32, i32* @SQLITE_STATUS_MALLOC_COUNT, align 4
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @sqlite3_status(i32 %26, i32* %7, i32* %8, i32 %27)
  %29 = load %struct.callback_data*, %struct.callback_data** %5, align 8
  %30 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* %8, align 4
  %34 = call i32 (i64, i8*, i32, ...) @fprintf(i64 %31, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i32 %32, i32 %33)
  store i32 -1, i32* %7, align 4
  store i32 -1, i32* %8, align 4
  %35 = load i32, i32* @SQLITE_STATUS_PAGECACHE_OVERFLOW, align 4
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @sqlite3_status(i32 %35, i32* %7, i32* %8, i32 %36)
  %38 = load %struct.callback_data*, %struct.callback_data** %5, align 8
  %39 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* %8, align 4
  %43 = call i32 (i64, i8*, i32, ...) @fprintf(i64 %40, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0), i32 %41, i32 %42)
  store i32 -1, i32* %7, align 4
  store i32 -1, i32* %8, align 4
  %44 = load i32, i32* @SQLITE_STATUS_SCRATCH_OVERFLOW, align 4
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @sqlite3_status(i32 %44, i32* %7, i32* %8, i32 %45)
  %47 = load %struct.callback_data*, %struct.callback_data** %5, align 8
  %48 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* %8, align 4
  %52 = call i32 (i64, i8*, i32, ...) @fprintf(i64 %49, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.3, i64 0, i64 0), i32 %50, i32 %51)
  store i32 -1, i32* %7, align 4
  store i32 -1, i32* %8, align 4
  %53 = load i32, i32* @SQLITE_STATUS_MALLOC_SIZE, align 4
  %54 = load i32, i32* %6, align 4
  %55 = call i32 @sqlite3_status(i32 %53, i32* %7, i32* %8, i32 %54)
  %56 = load %struct.callback_data*, %struct.callback_data** %5, align 8
  %57 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i32, i32* %8, align 4
  %60 = call i32 (i64, i8*, i32, ...) @fprintf(i64 %58, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0), i32 %59)
  store i32 -1, i32* %7, align 4
  store i32 -1, i32* %8, align 4
  %61 = load i32, i32* @SQLITE_STATUS_PAGECACHE_SIZE, align 4
  %62 = load i32, i32* %6, align 4
  %63 = call i32 @sqlite3_status(i32 %61, i32* %7, i32* %8, i32 %62)
  %64 = load %struct.callback_data*, %struct.callback_data** %5, align 8
  %65 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i32, i32* %8, align 4
  %68 = call i32 (i64, i8*, i32, ...) @fprintf(i64 %66, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.5, i64 0, i64 0), i32 %67)
  store i32 -1, i32* %7, align 4
  store i32 -1, i32* %8, align 4
  %69 = load i32, i32* @SQLITE_STATUS_SCRATCH_SIZE, align 4
  %70 = load i32, i32* %6, align 4
  %71 = call i32 @sqlite3_status(i32 %69, i32* %7, i32* %8, i32 %70)
  %72 = load %struct.callback_data*, %struct.callback_data** %5, align 8
  %73 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i32, i32* %8, align 4
  %76 = call i32 (i64, i8*, i32, ...) @fprintf(i64 %74, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.6, i64 0, i64 0), i32 %75)
  br label %77

77:                                               ; preds = %16, %11, %3
  %78 = load %struct.callback_data*, %struct.callback_data** %5, align 8
  %79 = icmp ne %struct.callback_data* %78, null
  br i1 %79, label %80, label %177

80:                                               ; preds = %77
  %81 = load %struct.callback_data*, %struct.callback_data** %5, align 8
  %82 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %177

85:                                               ; preds = %80
  %86 = load i32*, i32** %4, align 8
  %87 = icmp ne i32* %86, null
  br i1 %87, label %88, label %177

88:                                               ; preds = %85
  store i32 -1, i32* %7, align 4
  store i32 -1, i32* %8, align 4
  %89 = load i32*, i32** %4, align 8
  %90 = load i32, i32* @SQLITE_DBSTATUS_LOOKASIDE_USED, align 4
  %91 = load i32, i32* %6, align 4
  %92 = call i32 @sqlite3_db_status(i32* %89, i32 %90, i32* %7, i32* %8, i32 %91)
  %93 = load %struct.callback_data*, %struct.callback_data** %5, align 8
  %94 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i32, i32* %7, align 4
  %97 = load i32, i32* %8, align 4
  %98 = call i32 (i64, i8*, i32, ...) @fprintf(i64 %95, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.7, i64 0, i64 0), i32 %96, i32 %97)
  %99 = load i32*, i32** %4, align 8
  %100 = load i32, i32* @SQLITE_DBSTATUS_LOOKASIDE_HIT, align 4
  %101 = load i32, i32* %6, align 4
  %102 = call i32 @sqlite3_db_status(i32* %99, i32 %100, i32* %7, i32* %8, i32 %101)
  %103 = load %struct.callback_data*, %struct.callback_data** %5, align 8
  %104 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load i32, i32* %8, align 4
  %107 = call i32 (i64, i8*, i32, ...) @fprintf(i64 %105, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.8, i64 0, i64 0), i32 %106)
  %108 = load i32*, i32** %4, align 8
  %109 = load i32, i32* @SQLITE_DBSTATUS_LOOKASIDE_MISS_SIZE, align 4
  %110 = load i32, i32* %6, align 4
  %111 = call i32 @sqlite3_db_status(i32* %108, i32 %109, i32* %7, i32* %8, i32 %110)
  %112 = load %struct.callback_data*, %struct.callback_data** %5, align 8
  %113 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load i32, i32* %8, align 4
  %116 = call i32 (i64, i8*, i32, ...) @fprintf(i64 %114, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.9, i64 0, i64 0), i32 %115)
  %117 = load i32*, i32** %4, align 8
  %118 = load i32, i32* @SQLITE_DBSTATUS_LOOKASIDE_MISS_FULL, align 4
  %119 = load i32, i32* %6, align 4
  %120 = call i32 @sqlite3_db_status(i32* %117, i32 %118, i32* %7, i32* %8, i32 %119)
  %121 = load %struct.callback_data*, %struct.callback_data** %5, align 8
  %122 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = load i32, i32* %8, align 4
  %125 = call i32 (i64, i8*, i32, ...) @fprintf(i64 %123, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.10, i64 0, i64 0), i32 %124)
  store i32 -1, i32* %7, align 4
  store i32 -1, i32* %8, align 4
  %126 = load i32*, i32** %4, align 8
  %127 = load i32, i32* @SQLITE_DBSTATUS_CACHE_USED, align 4
  %128 = load i32, i32* %6, align 4
  %129 = call i32 @sqlite3_db_status(i32* %126, i32 %127, i32* %7, i32* %8, i32 %128)
  %130 = load %struct.callback_data*, %struct.callback_data** %5, align 8
  %131 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = load i32, i32* %7, align 4
  %134 = call i32 (i64, i8*, i32, ...) @fprintf(i64 %132, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.11, i64 0, i64 0), i32 %133)
  store i32 -1, i32* %7, align 4
  store i32 -1, i32* %8, align 4
  %135 = load i32*, i32** %4, align 8
  %136 = load i32, i32* @SQLITE_DBSTATUS_CACHE_HIT, align 4
  %137 = call i32 @sqlite3_db_status(i32* %135, i32 %136, i32* %7, i32* %8, i32 1)
  %138 = load %struct.callback_data*, %struct.callback_data** %5, align 8
  %139 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = load i32, i32* %7, align 4
  %142 = call i32 (i64, i8*, i32, ...) @fprintf(i64 %140, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.12, i64 0, i64 0), i32 %141)
  store i32 -1, i32* %7, align 4
  store i32 -1, i32* %8, align 4
  %143 = load i32*, i32** %4, align 8
  %144 = load i32, i32* @SQLITE_DBSTATUS_CACHE_MISS, align 4
  %145 = call i32 @sqlite3_db_status(i32* %143, i32 %144, i32* %7, i32* %8, i32 1)
  %146 = load %struct.callback_data*, %struct.callback_data** %5, align 8
  %147 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = load i32, i32* %7, align 4
  %150 = call i32 (i64, i8*, i32, ...) @fprintf(i64 %148, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.13, i64 0, i64 0), i32 %149)
  store i32 -1, i32* %7, align 4
  store i32 -1, i32* %8, align 4
  %151 = load i32*, i32** %4, align 8
  %152 = load i32, i32* @SQLITE_DBSTATUS_CACHE_WRITE, align 4
  %153 = call i32 @sqlite3_db_status(i32* %151, i32 %152, i32* %7, i32* %8, i32 1)
  %154 = load %struct.callback_data*, %struct.callback_data** %5, align 8
  %155 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = load i32, i32* %7, align 4
  %158 = call i32 (i64, i8*, i32, ...) @fprintf(i64 %156, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.14, i64 0, i64 0), i32 %157)
  store i32 -1, i32* %7, align 4
  store i32 -1, i32* %8, align 4
  %159 = load i32*, i32** %4, align 8
  %160 = load i32, i32* @SQLITE_DBSTATUS_SCHEMA_USED, align 4
  %161 = load i32, i32* %6, align 4
  %162 = call i32 @sqlite3_db_status(i32* %159, i32 %160, i32* %7, i32* %8, i32 %161)
  %163 = load %struct.callback_data*, %struct.callback_data** %5, align 8
  %164 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = load i32, i32* %7, align 4
  %167 = call i32 (i64, i8*, i32, ...) @fprintf(i64 %165, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.15, i64 0, i64 0), i32 %166)
  store i32 -1, i32* %7, align 4
  store i32 -1, i32* %8, align 4
  %168 = load i32*, i32** %4, align 8
  %169 = load i32, i32* @SQLITE_DBSTATUS_STMT_USED, align 4
  %170 = load i32, i32* %6, align 4
  %171 = call i32 @sqlite3_db_status(i32* %168, i32 %169, i32* %7, i32* %8, i32 %170)
  %172 = load %struct.callback_data*, %struct.callback_data** %5, align 8
  %173 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = load i32, i32* %7, align 4
  %176 = call i32 (i64, i8*, i32, ...) @fprintf(i64 %174, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.16, i64 0, i64 0), i32 %175)
  br label %177

177:                                              ; preds = %88, %85, %80, %77
  %178 = load %struct.callback_data*, %struct.callback_data** %5, align 8
  %179 = icmp ne %struct.callback_data* %178, null
  br i1 %179, label %180, label %227

180:                                              ; preds = %177
  %181 = load %struct.callback_data*, %struct.callback_data** %5, align 8
  %182 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %181, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %227

185:                                              ; preds = %180
  %186 = load i32*, i32** %4, align 8
  %187 = icmp ne i32* %186, null
  br i1 %187, label %188, label %227

188:                                              ; preds = %185
  %189 = load %struct.callback_data*, %struct.callback_data** %5, align 8
  %190 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %189, i32 0, i32 1
  %191 = load i64, i64* %190, align 8
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %227

193:                                              ; preds = %188
  %194 = load %struct.callback_data*, %struct.callback_data** %5, align 8
  %195 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %194, i32 0, i32 1
  %196 = load i64, i64* %195, align 8
  %197 = load i32, i32* @SQLITE_STMTSTATUS_FULLSCAN_STEP, align 4
  %198 = load i32, i32* %6, align 4
  %199 = call i32 @sqlite3_stmt_status(i64 %196, i32 %197, i32 %198)
  store i32 %199, i32* %7, align 4
  %200 = load %struct.callback_data*, %struct.callback_data** %5, align 8
  %201 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %200, i32 0, i32 0
  %202 = load i64, i64* %201, align 8
  %203 = load i32, i32* %7, align 4
  %204 = call i32 (i64, i8*, i32, ...) @fprintf(i64 %202, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.17, i64 0, i64 0), i32 %203)
  %205 = load %struct.callback_data*, %struct.callback_data** %5, align 8
  %206 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %205, i32 0, i32 1
  %207 = load i64, i64* %206, align 8
  %208 = load i32, i32* @SQLITE_STMTSTATUS_SORT, align 4
  %209 = load i32, i32* %6, align 4
  %210 = call i32 @sqlite3_stmt_status(i64 %207, i32 %208, i32 %209)
  store i32 %210, i32* %7, align 4
  %211 = load %struct.callback_data*, %struct.callback_data** %5, align 8
  %212 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %211, i32 0, i32 0
  %213 = load i64, i64* %212, align 8
  %214 = load i32, i32* %7, align 4
  %215 = call i32 (i64, i8*, i32, ...) @fprintf(i64 %213, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.18, i64 0, i64 0), i32 %214)
  %216 = load %struct.callback_data*, %struct.callback_data** %5, align 8
  %217 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %216, i32 0, i32 1
  %218 = load i64, i64* %217, align 8
  %219 = load i32, i32* @SQLITE_STMTSTATUS_AUTOINDEX, align 4
  %220 = load i32, i32* %6, align 4
  %221 = call i32 @sqlite3_stmt_status(i64 %218, i32 %219, i32 %220)
  store i32 %221, i32* %7, align 4
  %222 = load %struct.callback_data*, %struct.callback_data** %5, align 8
  %223 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %222, i32 0, i32 0
  %224 = load i64, i64* %223, align 8
  %225 = load i32, i32* %7, align 4
  %226 = call i32 (i64, i8*, i32, ...) @fprintf(i64 %224, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.19, i64 0, i64 0), i32 %225)
  br label %227

227:                                              ; preds = %193, %188, %185, %180, %177
  ret i32 0
}

declare dso_local i32 @sqlite3_status(i32, i32*, i32*, i32) #1

declare dso_local i32 @fprintf(i64, i8*, i32, ...) #1

declare dso_local i32 @sqlite3_db_status(i32*, i32, i32*, i32*, i32) #1

declare dso_local i32 @sqlite3_stmt_status(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
