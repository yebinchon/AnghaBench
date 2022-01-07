; ModuleID = '/home/carl/AnghaBench/Craft/src/extr_db.c_db_close.c'
source_filename = "/home/carl/AnghaBench/Craft/src/extr_db.c_db_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@db_enabled = common dso_local global i32 0, align 4
@db = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"commit;\00", align 1
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

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @db_close() #0 {
  %1 = load i32, i32* @db_enabled, align 4
  %2 = icmp ne i32 %1, 0
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  br label %30

4:                                                ; preds = %0
  %5 = call i32 (...) @db_worker_stop()
  %6 = load i32, i32* @db, align 4
  %7 = call i32 @sqlite3_exec(i32 %6, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32* null, i32* null, i32* null)
  %8 = load i32, i32* @insert_block_stmt, align 4
  %9 = call i32 @sqlite3_finalize(i32 %8)
  %10 = load i32, i32* @insert_light_stmt, align 4
  %11 = call i32 @sqlite3_finalize(i32 %10)
  %12 = load i32, i32* @insert_sign_stmt, align 4
  %13 = call i32 @sqlite3_finalize(i32 %12)
  %14 = load i32, i32* @delete_sign_stmt, align 4
  %15 = call i32 @sqlite3_finalize(i32 %14)
  %16 = load i32, i32* @delete_signs_stmt, align 4
  %17 = call i32 @sqlite3_finalize(i32 %16)
  %18 = load i32, i32* @load_blocks_stmt, align 4
  %19 = call i32 @sqlite3_finalize(i32 %18)
  %20 = load i32, i32* @load_lights_stmt, align 4
  %21 = call i32 @sqlite3_finalize(i32 %20)
  %22 = load i32, i32* @load_signs_stmt, align 4
  %23 = call i32 @sqlite3_finalize(i32 %22)
  %24 = load i32, i32* @get_key_stmt, align 4
  %25 = call i32 @sqlite3_finalize(i32 %24)
  %26 = load i32, i32* @set_key_stmt, align 4
  %27 = call i32 @sqlite3_finalize(i32 %26)
  %28 = load i32, i32* @db, align 4
  %29 = call i32 @sqlite3_close(i32 %28)
  br label %30

30:                                               ; preds = %4, %3
  ret void
}

declare dso_local i32 @db_worker_stop(...) #1

declare dso_local i32 @sqlite3_exec(i32, i8*, i32*, i32*, i32*) #1

declare dso_local i32 @sqlite3_finalize(i32) #1

declare dso_local i32 @sqlite3_close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
