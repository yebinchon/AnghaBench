; ModuleID = '/home/carl/AnghaBench/Craft/src/extr_db.c_db_init.c'
source_filename = "/home/carl/AnghaBench/Craft/src/extr_db.c_db_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@db_enabled = common dso_local global i32 0, align 4
@db_init.create_query = internal global i8* getelementptr inbounds ([1295 x i8], [1295 x i8]* @.str, i32 0, i32 0), align 8
@.str = private unnamed_addr constant [1295 x i8] c"attach database 'auth.db' as auth;create table if not exists auth.identity_token (   username text not null,   token text not null,   selected int not null);create unique index if not exists auth.identity_token_username_idx   on identity_token (username);create table if not exists state (   x float not null,   y float not null,   z float not null,   rx float not null,   ry float not null);create table if not exists block (    p int not null,    q int not null,    x int not null,    y int not null,    z int not null,    w int not null);create table if not exists light (    p int not null,    q int not null,    x int not null,    y int not null,    z int not null,    w int not null);create table if not exists key (    p int not null,    q int not null,    key int not null);create table if not exists sign (    p int not null,    q int not null,    x int not null,    y int not null,    z int not null,    face int not null,    text text not null);create unique index if not exists block_pqxyz_idx on block (p, q, x, y, z);create unique index if not exists light_pqxyz_idx on light (p, q, x, y, z);create unique index if not exists key_pq_idx on key (p, q);create unique index if not exists sign_xyzface_idx on sign (x, y, z, face);create index if not exists sign_pq_idx on sign (p, q);\00", align 1
@db_init.insert_block_query = internal global i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.1, i32 0, i32 0), align 8
@.str.1 = private unnamed_addr constant [75 x i8] c"insert or replace into block (p, q, x, y, z, w) values (?, ?, ?, ?, ?, ?);\00", align 1
@db_init.insert_light_query = internal global i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.2, i32 0, i32 0), align 8
@.str.2 = private unnamed_addr constant [75 x i8] c"insert or replace into light (p, q, x, y, z, w) values (?, ?, ?, ?, ?, ?);\00", align 1
@db_init.insert_sign_query = internal global i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.3, i32 0, i32 0), align 8
@.str.3 = private unnamed_addr constant [86 x i8] c"insert or replace into sign (p, q, x, y, z, face, text) values (?, ?, ?, ?, ?, ?, ?);\00", align 1
@db_init.delete_sign_query = internal global i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.4, i32 0, i32 0), align 8
@.str.4 = private unnamed_addr constant [63 x i8] c"delete from sign where x = ? and y = ? and z = ? and face = ?;\00", align 1
@db_init.delete_signs_query = internal global i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.5, i32 0, i32 0), align 8
@.str.5 = private unnamed_addr constant [50 x i8] c"delete from sign where x = ? and y = ? and z = ?;\00", align 1
@db_init.load_blocks_query = internal global i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.6, i32 0, i32 0), align 8
@.str.6 = private unnamed_addr constant [52 x i8] c"select x, y, z, w from block where p = ? and q = ?;\00", align 1
@db_init.load_lights_query = internal global i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.7, i32 0, i32 0), align 8
@.str.7 = private unnamed_addr constant [52 x i8] c"select x, y, z, w from light where p = ? and q = ?;\00", align 1
@db_init.load_signs_query = internal global i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.8, i32 0, i32 0), align 8
@.str.8 = private unnamed_addr constant [60 x i8] c"select x, y, z, face, text from sign where p = ? and q = ?;\00", align 1
@db_init.get_key_query = internal global i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.9, i32 0, i32 0), align 8
@.str.9 = private unnamed_addr constant [43 x i8] c"select key from key where p = ? and q = ?;\00", align 1
@db_init.set_key_query = internal global i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.10, i32 0, i32 0), align 8
@.str.10 = private unnamed_addr constant [57 x i8] c"insert or replace into key (p, q, key) values (?, ?, ?);\00", align 1
@db = common dso_local global i32 0, align 4
@insert_block_stmt = common dso_local global i32 0, align 4
@insert_light_stmt = common dso_local global i32 0, align 4
@insert_sign_stmt = common dso_local global i32 0, align 4
@delete_sign_stmt = common dso_local global i32 0, align 4
@delete_signs_stmt = common dso_local global i32 0, align 4
@load_blocks_stmt = common dso_local global i32 0, align 4
@load_lights_stmt = common dso_local global i32 0, align 4
@load_signs_stmt = common dso_local global i32 0, align 4
@get_key_stmt = common dso_local global i32 0, align 4
@set_key_stmt = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [7 x i8] c"begin;\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @db_init(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %5 = load i32, i32* @db_enabled, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %107

8:                                                ; preds = %1
  %9 = load i8*, i8** %3, align 8
  %10 = call i32 @sqlite3_open(i8* %9, i32* @db)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %8
  %14 = load i32, i32* %4, align 4
  store i32 %14, i32* %2, align 4
  br label %107

15:                                               ; preds = %8
  %16 = load i32, i32* @db, align 4
  %17 = load i8*, i8** @db_init.create_query, align 8
  %18 = call i32 @sqlite3_exec(i32 %16, i8* %17, i32* null, i32* null, i32* null)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %15
  %22 = load i32, i32* %4, align 4
  store i32 %22, i32* %2, align 4
  br label %107

23:                                               ; preds = %15
  %24 = load i32, i32* @db, align 4
  %25 = load i8*, i8** @db_init.insert_block_query, align 8
  %26 = call i32 @sqlite3_prepare_v2(i32 %24, i8* %25, i32 -1, i32* @insert_block_stmt, i32* null)
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* %4, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = load i32, i32* %4, align 4
  store i32 %30, i32* %2, align 4
  br label %107

31:                                               ; preds = %23
  %32 = load i32, i32* @db, align 4
  %33 = load i8*, i8** @db_init.insert_light_query, align 8
  %34 = call i32 @sqlite3_prepare_v2(i32 %32, i8* %33, i32 -1, i32* @insert_light_stmt, i32* null)
  store i32 %34, i32* %4, align 4
  %35 = load i32, i32* %4, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %31
  %38 = load i32, i32* %4, align 4
  store i32 %38, i32* %2, align 4
  br label %107

39:                                               ; preds = %31
  %40 = load i32, i32* @db, align 4
  %41 = load i8*, i8** @db_init.insert_sign_query, align 8
  %42 = call i32 @sqlite3_prepare_v2(i32 %40, i8* %41, i32 -1, i32* @insert_sign_stmt, i32* null)
  store i32 %42, i32* %4, align 4
  %43 = load i32, i32* %4, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %39
  %46 = load i32, i32* %4, align 4
  store i32 %46, i32* %2, align 4
  br label %107

47:                                               ; preds = %39
  %48 = load i32, i32* @db, align 4
  %49 = load i8*, i8** @db_init.delete_sign_query, align 8
  %50 = call i32 @sqlite3_prepare_v2(i32 %48, i8* %49, i32 -1, i32* @delete_sign_stmt, i32* null)
  store i32 %50, i32* %4, align 4
  %51 = load i32, i32* %4, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %47
  %54 = load i32, i32* %4, align 4
  store i32 %54, i32* %2, align 4
  br label %107

55:                                               ; preds = %47
  %56 = load i32, i32* @db, align 4
  %57 = load i8*, i8** @db_init.delete_signs_query, align 8
  %58 = call i32 @sqlite3_prepare_v2(i32 %56, i8* %57, i32 -1, i32* @delete_signs_stmt, i32* null)
  store i32 %58, i32* %4, align 4
  %59 = load i32, i32* %4, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %55
  %62 = load i32, i32* %4, align 4
  store i32 %62, i32* %2, align 4
  br label %107

63:                                               ; preds = %55
  %64 = load i32, i32* @db, align 4
  %65 = load i8*, i8** @db_init.load_blocks_query, align 8
  %66 = call i32 @sqlite3_prepare_v2(i32 %64, i8* %65, i32 -1, i32* @load_blocks_stmt, i32* null)
  store i32 %66, i32* %4, align 4
  %67 = load i32, i32* %4, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %63
  %70 = load i32, i32* %4, align 4
  store i32 %70, i32* %2, align 4
  br label %107

71:                                               ; preds = %63
  %72 = load i32, i32* @db, align 4
  %73 = load i8*, i8** @db_init.load_lights_query, align 8
  %74 = call i32 @sqlite3_prepare_v2(i32 %72, i8* %73, i32 -1, i32* @load_lights_stmt, i32* null)
  store i32 %74, i32* %4, align 4
  %75 = load i32, i32* %4, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %71
  %78 = load i32, i32* %4, align 4
  store i32 %78, i32* %2, align 4
  br label %107

79:                                               ; preds = %71
  %80 = load i32, i32* @db, align 4
  %81 = load i8*, i8** @db_init.load_signs_query, align 8
  %82 = call i32 @sqlite3_prepare_v2(i32 %80, i8* %81, i32 -1, i32* @load_signs_stmt, i32* null)
  store i32 %82, i32* %4, align 4
  %83 = load i32, i32* %4, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %79
  %86 = load i32, i32* %4, align 4
  store i32 %86, i32* %2, align 4
  br label %107

87:                                               ; preds = %79
  %88 = load i32, i32* @db, align 4
  %89 = load i8*, i8** @db_init.get_key_query, align 8
  %90 = call i32 @sqlite3_prepare_v2(i32 %88, i8* %89, i32 -1, i32* @get_key_stmt, i32* null)
  store i32 %90, i32* %4, align 4
  %91 = load i32, i32* %4, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %87
  %94 = load i32, i32* %4, align 4
  store i32 %94, i32* %2, align 4
  br label %107

95:                                               ; preds = %87
  %96 = load i32, i32* @db, align 4
  %97 = load i8*, i8** @db_init.set_key_query, align 8
  %98 = call i32 @sqlite3_prepare_v2(i32 %96, i8* %97, i32 -1, i32* @set_key_stmt, i32* null)
  store i32 %98, i32* %4, align 4
  %99 = load i32, i32* %4, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %95
  %102 = load i32, i32* %4, align 4
  store i32 %102, i32* %2, align 4
  br label %107

103:                                              ; preds = %95
  %104 = load i32, i32* @db, align 4
  %105 = call i32 @sqlite3_exec(i32 %104, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0), i32* null, i32* null, i32* null)
  %106 = call i32 (...) @db_worker_start()
  store i32 0, i32* %2, align 4
  br label %107

107:                                              ; preds = %103, %101, %93, %85, %77, %69, %61, %53, %45, %37, %29, %21, %13, %7
  %108 = load i32, i32* %2, align 4
  ret i32 %108
}

declare dso_local i32 @sqlite3_open(i8*, i32*) #1

declare dso_local i32 @sqlite3_exec(i32, i8*, i32*, i32*, i32*) #1

declare dso_local i32 @sqlite3_prepare_v2(i32, i8*, i32, i32*, i32*) #1

declare dso_local i32 @db_worker_start(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
