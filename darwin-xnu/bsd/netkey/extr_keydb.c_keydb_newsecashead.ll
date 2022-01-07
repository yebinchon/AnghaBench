; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netkey/extr_keydb.c_keydb_newsecashead.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netkey/extr_keydb.c_keydb_newsecashead.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.secashead = type { i32* }

@sadb_mutex = common dso_local global i32 0, align 4
@LCK_MTX_ASSERT_OWNED = common dso_local global i32 0, align 4
@M_SECA = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.secashead* @keydb_newsecashead() #0 {
  %1 = alloca %struct.secashead*, align 8
  %2 = alloca %struct.secashead*, align 8
  %3 = alloca i32, align 4
  %4 = load i32, i32* @sadb_mutex, align 4
  %5 = load i32, i32* @LCK_MTX_ASSERT_OWNED, align 4
  %6 = call i32 @LCK_MTX_ASSERT(i32 %4, i32 %5)
  %7 = load i32, i32* @M_SECA, align 4
  %8 = load i32, i32* @M_NOWAIT, align 4
  %9 = load i32, i32* @M_ZERO, align 4
  %10 = or i32 %8, %9
  %11 = call i64 @_MALLOC(i32 8, i32 %7, i32 %10)
  %12 = inttoptr i64 %11 to %struct.secashead*
  store %struct.secashead* %12, %struct.secashead** %2, align 8
  %13 = load %struct.secashead*, %struct.secashead** %2, align 8
  %14 = icmp ne %struct.secashead* %13, null
  br i1 %14, label %26, label %15

15:                                               ; preds = %0
  %16 = load i32, i32* @sadb_mutex, align 4
  %17 = call i32 @lck_mtx_unlock(i32 %16)
  %18 = load i32, i32* @M_SECA, align 4
  %19 = load i32, i32* @M_WAITOK, align 4
  %20 = load i32, i32* @M_ZERO, align 4
  %21 = or i32 %19, %20
  %22 = call i64 @_MALLOC(i32 8, i32 %18, i32 %21)
  %23 = inttoptr i64 %22 to %struct.secashead*
  store %struct.secashead* %23, %struct.secashead** %2, align 8
  %24 = load i32, i32* @sadb_mutex, align 4
  %25 = call i32 @lck_mtx_lock(i32 %24)
  br label %26

26:                                               ; preds = %15, %0
  %27 = load %struct.secashead*, %struct.secashead** %2, align 8
  %28 = icmp ne %struct.secashead* %27, null
  br i1 %28, label %31, label %29

29:                                               ; preds = %26
  %30 = load %struct.secashead*, %struct.secashead** %2, align 8
  store %struct.secashead* %30, %struct.secashead** %1, align 8
  br label %49

31:                                               ; preds = %26
  store i32 0, i32* %3, align 4
  br label %32

32:                                               ; preds = %44, %31
  %33 = load i32, i32* %3, align 4
  %34 = sext i32 %33 to i64
  %35 = icmp ult i64 %34, 2
  br i1 %35, label %36, label %47

36:                                               ; preds = %32
  %37 = load %struct.secashead*, %struct.secashead** %2, align 8
  %38 = getelementptr inbounds %struct.secashead, %struct.secashead* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %3, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = call i32 @LIST_INIT(i32* %42)
  br label %44

44:                                               ; preds = %36
  %45 = load i32, i32* %3, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %3, align 4
  br label %32

47:                                               ; preds = %32
  %48 = load %struct.secashead*, %struct.secashead** %2, align 8
  store %struct.secashead* %48, %struct.secashead** %1, align 8
  br label %49

49:                                               ; preds = %47, %29
  %50 = load %struct.secashead*, %struct.secashead** %1, align 8
  ret %struct.secashead* %50
}

declare dso_local i32 @LCK_MTX_ASSERT(i32, i32) #1

declare dso_local i64 @_MALLOC(i32, i32, i32) #1

declare dso_local i32 @lck_mtx_unlock(i32) #1

declare dso_local i32 @lck_mtx_lock(i32) #1

declare dso_local i32 @LIST_INIT(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
