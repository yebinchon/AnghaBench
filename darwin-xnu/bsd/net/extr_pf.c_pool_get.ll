; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_pf.c_pool_get.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_pf.c_pool_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pool = type { i64, i64, i8*, i32, i32 }

@pf_lock = common dso_local global i32 0, align 4
@LCK_MTX_ASSERT_OWNED = common dso_local global i32 0, align 4
@PF_DEBUG_NOISY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"pf: pool %s hard limit reached (%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@PR_NOWAIT = common dso_local global i32 0, align 4
@PR_WAITOK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @pool_get(%struct.pool* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.pool*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store %struct.pool* %0, %struct.pool** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* @pf_lock, align 4
  %8 = load i32, i32* @LCK_MTX_ASSERT_OWNED, align 4
  %9 = call i32 @LCK_MTX_ASSERT(i32 %7, i32 %8)
  %10 = load %struct.pool*, %struct.pool** %4, align 8
  %11 = getelementptr inbounds %struct.pool, %struct.pool* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.pool*, %struct.pool** %4, align 8
  %14 = getelementptr inbounds %struct.pool, %struct.pool* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp sgt i64 %12, %15
  br i1 %16, label %17, label %39

17:                                               ; preds = %2
  %18 = load i32, i32* @PF_DEBUG_NOISY, align 4
  %19 = load %struct.pool*, %struct.pool** %4, align 8
  %20 = getelementptr inbounds %struct.pool, %struct.pool* %19, i32 0, i32 2
  %21 = load i8*, i8** %20, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %27

23:                                               ; preds = %17
  %24 = load %struct.pool*, %struct.pool** %4, align 8
  %25 = getelementptr inbounds %struct.pool, %struct.pool* %24, i32 0, i32 2
  %26 = load i8*, i8** %25, align 8
  br label %28

27:                                               ; preds = %17
  br label %28

28:                                               ; preds = %27, %23
  %29 = phi i8* [ %26, %23 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), %27 ]
  %30 = load %struct.pool*, %struct.pool** %4, align 8
  %31 = getelementptr inbounds %struct.pool, %struct.pool* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = inttoptr i64 %32 to i8*
  %34 = call i32 @DPFPRINTF(i32 %18, i8* %33)
  %35 = load %struct.pool*, %struct.pool** %4, align 8
  %36 = getelementptr inbounds %struct.pool, %struct.pool* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %36, align 4
  store i8* null, i8** %3, align 8
  br label %64

39:                                               ; preds = %2
  %40 = load %struct.pool*, %struct.pool** %4, align 8
  %41 = getelementptr inbounds %struct.pool, %struct.pool* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* @PR_NOWAIT, align 4
  %45 = load i32, i32* @PR_WAITOK, align 4
  %46 = or i32 %44, %45
  %47 = and i32 %43, %46
  %48 = call i8* @zalloc_canblock(i32 %42, i32 %47)
  store i8* %48, i8** %6, align 8
  %49 = load i8*, i8** %6, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %51, label %62

51:                                               ; preds = %39
  %52 = load %struct.pool*, %struct.pool** %4, align 8
  %53 = getelementptr inbounds %struct.pool, %struct.pool* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = add nsw i64 %54, 1
  store i64 %55, i64* %53, align 8
  %56 = load %struct.pool*, %struct.pool** %4, align 8
  %57 = getelementptr inbounds %struct.pool, %struct.pool* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  %60 = zext i1 %59 to i32
  %61 = call i32 @VERIFY(i32 %60)
  br label %62

62:                                               ; preds = %51, %39
  %63 = load i8*, i8** %6, align 8
  store i8* %63, i8** %3, align 8
  br label %64

64:                                               ; preds = %62, %28
  %65 = load i8*, i8** %3, align 8
  ret i8* %65
}

declare dso_local i32 @LCK_MTX_ASSERT(i32, i32) #1

declare dso_local i32 @DPFPRINTF(i32, i8*) #1

declare dso_local i8* @zalloc_canblock(i32, i32) #1

declare dso_local i32 @VERIFY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
