; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netkey/extr_key.c_key_getnewspid.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netkey/extr_key.c_key_getnewspid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.secpolicy = type { i32 }

@key_spi_trycnt = common dso_local global i32 0, align 4
@sadb_mutex = common dso_local global i32 0, align 4
@policy_id = common dso_local global i32 0, align 4
@KEY_SADB_LOCKED = common dso_local global i32 0, align 4
@LOG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"key_getnewspid: to allocate policy id is failed.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @key_getnewspid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @key_getnewspid() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.secpolicy*, align 8
  store i32 0, i32* %2, align 4
  %5 = load i32, i32* @key_spi_trycnt, align 4
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* @sadb_mutex, align 4
  %7 = call i32 @lck_mtx_lock(i32 %6)
  br label %8

8:                                                ; preds = %25, %0
  %9 = load i32, i32* %3, align 4
  %10 = add nsw i32 %9, -1
  store i32 %10, i32* %3, align 4
  %11 = icmp ne i32 %9, 0
  br i1 %11, label %12, label %29

12:                                               ; preds = %8
  %13 = load i32, i32* @policy_id, align 4
  %14 = icmp eq i32 %13, -1
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  br label %19

16:                                               ; preds = %12
  %17 = load i32, i32* @policy_id, align 4
  %18 = add nsw i32 %17, 1
  br label %19

19:                                               ; preds = %16, %15
  %20 = phi i32 [ 1, %15 ], [ %18, %16 ]
  store i32 %20, i32* @policy_id, align 4
  store i32 %20, i32* %2, align 4
  %21 = load i32, i32* %2, align 4
  %22 = call %struct.secpolicy* @__key_getspbyid(i32 %21)
  store %struct.secpolicy* %22, %struct.secpolicy** %4, align 8
  %23 = icmp eq %struct.secpolicy* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  br label %29

25:                                               ; preds = %19
  %26 = load %struct.secpolicy*, %struct.secpolicy** %4, align 8
  %27 = load i32, i32* @KEY_SADB_LOCKED, align 4
  %28 = call i32 @key_freesp(%struct.secpolicy* %26, i32 %27)
  br label %8

29:                                               ; preds = %24, %8
  %30 = load i32, i32* @sadb_mutex, align 4
  %31 = call i32 @lck_mtx_unlock(i32 %30)
  %32 = load i32, i32* %3, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %29
  %35 = load i32, i32* %2, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %34, %29
  %38 = load i32, i32* @LOG_DEBUG, align 4
  %39 = call i32 @ipseclog(i32 ptrtoint ([50 x i8]* @.str to i32))
  store i32 0, i32* %1, align 4
  br label %42

40:                                               ; preds = %34
  %41 = load i32, i32* %2, align 4
  store i32 %41, i32* %1, align 4
  br label %42

42:                                               ; preds = %40, %37
  %43 = load i32, i32* %1, align 4
  ret i32 %43
}

declare dso_local i32 @lck_mtx_lock(i32) #1

declare dso_local %struct.secpolicy* @__key_getspbyid(i32) #1

declare dso_local i32 @key_freesp(%struct.secpolicy*, i32) #1

declare dso_local i32 @lck_mtx_unlock(i32) #1

declare dso_local i32 @ipseclog(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
