; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kdebug.c_kdbg_copyin_typefilter.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kdebug.c_kdbg_copyin_typefilter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@KDBG_TYPEFILTER_BITMAP_SIZE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@DBG_TRACE = common dso_local global i32 0, align 4
@kdbg_typefilter = common dso_local global i32 0, align 4
@kd_ctrl_page = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@KD_CALLBACK_TYPEFILTER_CHANGED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64)* @kdbg_copyin_typefilter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kdbg_copyin_typefilter(i32 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  %8 = load i32, i32* @ENOMEM, align 4
  store i32 %8, i32* %6, align 4
  %9 = call i32 (...) @ktrace_assert_lock_held()
  %10 = load i64, i64* %5, align 8
  %11 = load i64, i64* @KDBG_TYPEFILTER_BITMAP_SIZE, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* @EINVAL, align 4
  store i32 %14, i32* %3, align 4
  br label %56

15:                                               ; preds = %2
  %16 = call i32* (...) @typefilter_create()
  store i32* %16, i32** %7, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %54

18:                                               ; preds = %15
  %19 = load i32, i32* %4, align 4
  %20 = load i32*, i32** %7, align 8
  %21 = load i64, i64* @KDBG_TYPEFILTER_BITMAP_SIZE, align 8
  %22 = call i32 @copyin(i32 %19, i32* %20, i64 %21)
  store i32 %22, i32* %6, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %47

24:                                               ; preds = %18
  %25 = load i32*, i32** %7, align 8
  %26 = load i32, i32* @DBG_TRACE, align 4
  %27 = call i32 @typefilter_allow_class(i32* %25, i32 %26)
  %28 = load i32, i32* @kdbg_typefilter, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %37, label %30

30:                                               ; preds = %24
  %31 = load i32*, i32** %7, align 8
  %32 = call i32 @kdbg_initialize_typefilter(i32* %31)
  store i32 %32, i32* %6, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = load i32, i32* %6, align 4
  store i32 %35, i32* %3, align 4
  br label %56

36:                                               ; preds = %30
  store i32* null, i32** %7, align 8
  br label %41

37:                                               ; preds = %24
  %38 = load i32, i32* @kdbg_typefilter, align 4
  %39 = load i32*, i32** %7, align 8
  %40 = call i32 @typefilter_copy(i32 %38, i32* %39)
  br label %41

41:                                               ; preds = %37, %36
  %42 = call i32 (...) @kdbg_enable_typefilter()
  %43 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @kd_ctrl_page, i32 0, i32 0), align 4
  %44 = load i32, i32* @KD_CALLBACK_TYPEFILTER_CHANGED, align 4
  %45 = load i32, i32* @kdbg_typefilter, align 4
  %46 = call i32 @kdbg_iop_list_callback(i32 %43, i32 %44, i32 %45)
  br label %47

47:                                               ; preds = %41, %18
  %48 = load i32*, i32** %7, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %50, label %53

50:                                               ; preds = %47
  %51 = load i32*, i32** %7, align 8
  %52 = call i32 @typefilter_deallocate(i32* %51)
  br label %53

53:                                               ; preds = %50, %47
  br label %54

54:                                               ; preds = %53, %15
  %55 = load i32, i32* %6, align 4
  store i32 %55, i32* %3, align 4
  br label %56

56:                                               ; preds = %54, %34, %13
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i32 @ktrace_assert_lock_held(...) #1

declare dso_local i32* @typefilter_create(...) #1

declare dso_local i32 @copyin(i32, i32*, i64) #1

declare dso_local i32 @typefilter_allow_class(i32*, i32) #1

declare dso_local i32 @kdbg_initialize_typefilter(i32*) #1

declare dso_local i32 @typefilter_copy(i32, i32*) #1

declare dso_local i32 @kdbg_enable_typefilter(...) #1

declare dso_local i32 @kdbg_iop_list_callback(i32, i32, i32) #1

declare dso_local i32 @typefilter_deallocate(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
