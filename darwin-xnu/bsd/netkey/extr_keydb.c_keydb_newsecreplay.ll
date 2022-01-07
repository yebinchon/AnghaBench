; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netkey/extr_keydb.c_keydb_newsecreplay.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netkey/extr_keydb.c_keydb_newsecreplay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.secreplay = type { i64, i8* }

@sadb_mutex = common dso_local global i32 0, align 4
@LCK_MTX_ASSERT_OWNED = common dso_local global i32 0, align 4
@M_SECA = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.secreplay* @keydb_newsecreplay(i64 %0) #0 {
  %2 = alloca %struct.secreplay*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.secreplay*, align 8
  store i64 %0, i64* %3, align 8
  %5 = load i32, i32* @sadb_mutex, align 4
  %6 = load i32, i32* @LCK_MTX_ASSERT_OWNED, align 4
  %7 = call i32 @LCK_MTX_ASSERT(i32 %5, i32 %6)
  %8 = load i32, i32* @M_SECA, align 4
  %9 = load i32, i32* @M_NOWAIT, align 4
  %10 = load i32, i32* @M_ZERO, align 4
  %11 = or i32 %9, %10
  %12 = call i64 @_MALLOC(i64 16, i32 %8, i32 %11)
  %13 = inttoptr i64 %12 to %struct.secreplay*
  store %struct.secreplay* %13, %struct.secreplay** %4, align 8
  %14 = load %struct.secreplay*, %struct.secreplay** %4, align 8
  %15 = icmp ne %struct.secreplay* %14, null
  br i1 %15, label %27, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @sadb_mutex, align 4
  %18 = call i32 @lck_mtx_unlock(i32 %17)
  %19 = load i32, i32* @M_SECA, align 4
  %20 = load i32, i32* @M_WAITOK, align 4
  %21 = load i32, i32* @M_ZERO, align 4
  %22 = or i32 %20, %21
  %23 = call i64 @_MALLOC(i64 16, i32 %19, i32 %22)
  %24 = inttoptr i64 %23 to %struct.secreplay*
  store %struct.secreplay* %24, %struct.secreplay** %4, align 8
  %25 = load i32, i32* @sadb_mutex, align 4
  %26 = call i32 @lck_mtx_lock(i32 %25)
  br label %27

27:                                               ; preds = %16, %1
  %28 = load %struct.secreplay*, %struct.secreplay** %4, align 8
  %29 = icmp ne %struct.secreplay* %28, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %27
  %31 = load %struct.secreplay*, %struct.secreplay** %4, align 8
  store %struct.secreplay* %31, %struct.secreplay** %2, align 8
  br label %78

32:                                               ; preds = %27
  %33 = load i64, i64* %3, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %73

35:                                               ; preds = %32
  %36 = load i64, i64* %3, align 8
  %37 = load i32, i32* @M_SECA, align 4
  %38 = load i32, i32* @M_NOWAIT, align 4
  %39 = load i32, i32* @M_ZERO, align 4
  %40 = or i32 %38, %39
  %41 = call i64 @_MALLOC(i64 %36, i32 %37, i32 %40)
  %42 = inttoptr i64 %41 to i8*
  %43 = load %struct.secreplay*, %struct.secreplay** %4, align 8
  %44 = getelementptr inbounds %struct.secreplay, %struct.secreplay* %43, i32 0, i32 1
  store i8* %42, i8** %44, align 8
  %45 = load %struct.secreplay*, %struct.secreplay** %4, align 8
  %46 = getelementptr inbounds %struct.secreplay, %struct.secreplay* %45, i32 0, i32 1
  %47 = load i8*, i8** %46, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %72, label %49

49:                                               ; preds = %35
  %50 = load i32, i32* @sadb_mutex, align 4
  %51 = call i32 @lck_mtx_unlock(i32 %50)
  %52 = load i64, i64* %3, align 8
  %53 = load i32, i32* @M_SECA, align 4
  %54 = load i32, i32* @M_WAITOK, align 4
  %55 = load i32, i32* @M_ZERO, align 4
  %56 = or i32 %54, %55
  %57 = call i64 @_MALLOC(i64 %52, i32 %53, i32 %56)
  %58 = inttoptr i64 %57 to i8*
  %59 = load %struct.secreplay*, %struct.secreplay** %4, align 8
  %60 = getelementptr inbounds %struct.secreplay, %struct.secreplay* %59, i32 0, i32 1
  store i8* %58, i8** %60, align 8
  %61 = load i32, i32* @sadb_mutex, align 4
  %62 = call i32 @lck_mtx_lock(i32 %61)
  %63 = load %struct.secreplay*, %struct.secreplay** %4, align 8
  %64 = getelementptr inbounds %struct.secreplay, %struct.secreplay* %63, i32 0, i32 1
  %65 = load i8*, i8** %64, align 8
  %66 = icmp ne i8* %65, null
  br i1 %66, label %71, label %67

67:                                               ; preds = %49
  %68 = load %struct.secreplay*, %struct.secreplay** %4, align 8
  %69 = load i32, i32* @M_SECA, align 4
  %70 = call i32 @_FREE(%struct.secreplay* %68, i32 %69)
  store %struct.secreplay* null, %struct.secreplay** %2, align 8
  br label %78

71:                                               ; preds = %49
  br label %72

72:                                               ; preds = %71, %35
  br label %73

73:                                               ; preds = %72, %32
  %74 = load i64, i64* %3, align 8
  %75 = load %struct.secreplay*, %struct.secreplay** %4, align 8
  %76 = getelementptr inbounds %struct.secreplay, %struct.secreplay* %75, i32 0, i32 0
  store i64 %74, i64* %76, align 8
  %77 = load %struct.secreplay*, %struct.secreplay** %4, align 8
  store %struct.secreplay* %77, %struct.secreplay** %2, align 8
  br label %78

78:                                               ; preds = %73, %67, %30
  %79 = load %struct.secreplay*, %struct.secreplay** %2, align 8
  ret %struct.secreplay* %79
}

declare dso_local i32 @LCK_MTX_ASSERT(i32, i32) #1

declare dso_local i64 @_MALLOC(i64, i32, i32) #1

declare dso_local i32 @lck_mtx_unlock(i32) #1

declare dso_local i32 @lck_mtx_lock(i32) #1

declare dso_local i32 @_FREE(%struct.secreplay*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
