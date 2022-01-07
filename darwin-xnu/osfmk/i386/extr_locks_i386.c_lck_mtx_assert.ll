; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_locks_i386.c_lck_mtx_assert.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_locks_i386.c_lck_mtx_assert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }

@LCK_MTX_TAG_INDIRECT = common dso_local global i32 0, align 4
@LCK_MTX_ASSERT_OWNED = common dso_local global i32 0, align 4
@LCK_MTX_ILOCKED_MSK = common dso_local global i32 0, align 4
@LCK_MTX_MLOCKED_MSK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"mutex (%p) not owned\0A\00", align 1
@LCK_MTX_ASSERT_NOTOWNED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"mutex (%p) owned\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lck_mtx_assert(%struct.TYPE_6__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = call i64 (...) @current_thread()
  store i64 %8, i64* %5, align 8
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %10 = call i32 @ordered_load_mtx_state(%struct.TYPE_6__* %9)
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* @LCK_MTX_TAG_INDIRECT, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = call i32 @get_indirect_mutex(%struct.TYPE_6__** %3, i32* %7)
  br label %16

16:                                               ; preds = %14, %2
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %6, align 8
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @LCK_MTX_ASSERT_OWNED, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %38

23:                                               ; preds = %16
  %24 = load i64, i64* %6, align 8
  %25 = load i64, i64* %5, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %34, label %27

27:                                               ; preds = %23
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @LCK_MTX_ILOCKED_MSK, align 4
  %30 = load i32, i32* @LCK_MTX_MLOCKED_MSK, align 4
  %31 = or i32 %29, %30
  %32 = and i32 %28, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %27, %23
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %36 = call i32 @panic(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), %struct.TYPE_6__* %35)
  br label %37

37:                                               ; preds = %34, %27
  br label %51

38:                                               ; preds = %16
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* @LCK_MTX_ASSERT_NOTOWNED, align 4
  %41 = icmp eq i32 %39, %40
  %42 = zext i1 %41 to i32
  %43 = call i32 @assert(i32 %42)
  %44 = load i64, i64* %6, align 8
  %45 = load i64, i64* %5, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %38
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %49 = call i32 @panic(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_6__* %48)
  br label %50

50:                                               ; preds = %47, %38
  br label %51

51:                                               ; preds = %50, %37
  ret void
}

declare dso_local i64 @current_thread(...) #1

declare dso_local i32 @ordered_load_mtx_state(%struct.TYPE_6__*) #1

declare dso_local i32 @get_indirect_mutex(%struct.TYPE_6__**, i32*) #1

declare dso_local i32 @panic(i8*, %struct.TYPE_6__*) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
