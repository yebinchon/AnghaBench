; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if_bond.c_bond_globals_init.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if_bond.c_bond_globals_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32 }

@g_bond = common dso_local global i32* null, align 8
@IFNAMSIZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"en%d\00", align 1
@M_BOND = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @bond_globals_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bond_globals_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = call i32 (...) @bond_assert_lock_not_held()
  %9 = load i32*, i32** @g_bond, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %0
  store i32 0, i32* %1, align 4
  br label %67

12:                                               ; preds = %0
  store %struct.ifnet* null, %struct.ifnet** %4, align 8
  store i32 0, i32* %3, align 4
  br label %13

13:                                               ; preds = %34, %12
  %14 = load i32, i32* %3, align 4
  %15 = icmp slt i32 %14, 4
  br i1 %15, label %16, label %37

16:                                               ; preds = %13
  %17 = load i32, i32* @IFNAMSIZ, align 4
  %18 = add nsw i32 %17, 1
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %5, align 8
  %21 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %6, align 8
  %22 = trunc i64 %19 to i32
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @snprintf(i8* %21, i32 %22, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = call %struct.ifnet* @ifunit(i8* %21)
  store %struct.ifnet* %25, %struct.ifnet** %4, align 8
  %26 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %27 = icmp ne %struct.ifnet* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %16
  store i32 2, i32* %7, align 4
  br label %30

29:                                               ; preds = %16
  store i32 0, i32* %7, align 4
  br label %30

30:                                               ; preds = %29, %28
  %31 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %31)
  %32 = load i32, i32* %7, align 4
  switch i32 %32, label %69 [
    i32 0, label %33
    i32 2, label %37
  ]

33:                                               ; preds = %30
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* %3, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %3, align 4
  br label %13

37:                                               ; preds = %30, %13
  store i32* null, i32** %2, align 8
  %38 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %39 = icmp ne %struct.ifnet* %38, null
  br i1 %39, label %40, label %45

40:                                               ; preds = %37
  %41 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %42 = call i64 @IF_LLADDR(%struct.ifnet* %41)
  %43 = trunc i64 %42 to i32
  %44 = call i32* @bond_globals_create(i32 32768, i32 %43)
  store i32* %44, i32** %2, align 8
  br label %45

45:                                               ; preds = %40, %37
  %46 = call i32 (...) @bond_lock()
  %47 = load i32*, i32** @g_bond, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %49, label %54

49:                                               ; preds = %45
  %50 = call i32 (...) @bond_unlock()
  %51 = load i32*, i32** %2, align 8
  %52 = load i32, i32* @M_BOND, align 4
  %53 = call i32 @_FREE(i32* %51, i32 %52)
  store i32 0, i32* %1, align 4
  br label %67

54:                                               ; preds = %45
  %55 = load i32*, i32** %2, align 8
  store i32* %55, i32** @g_bond, align 8
  %56 = call i32 (...) @bond_unlock()
  %57 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %58 = icmp eq %struct.ifnet* %57, null
  br i1 %58, label %59, label %61

59:                                               ; preds = %54
  %60 = load i32, i32* @ENXIO, align 4
  store i32 %60, i32* %1, align 4
  br label %67

61:                                               ; preds = %54
  %62 = load i32*, i32** %2, align 8
  %63 = icmp eq i32* %62, null
  br i1 %63, label %64, label %66

64:                                               ; preds = %61
  %65 = load i32, i32* @ENOMEM, align 4
  store i32 %65, i32* %1, align 4
  br label %67

66:                                               ; preds = %61
  store i32 0, i32* %1, align 4
  br label %67

67:                                               ; preds = %66, %64, %59, %49, %11
  %68 = load i32, i32* %1, align 4
  ret i32 %68

69:                                               ; preds = %30
  unreachable
}

declare dso_local i32 @bond_assert_lock_not_held(...) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local %struct.ifnet* @ifunit(i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32* @bond_globals_create(i32, i32) #1

declare dso_local i64 @IF_LLADDR(%struct.ifnet*) #1

declare dso_local i32 @bond_lock(...) #1

declare dso_local i32 @bond_unlock(...) #1

declare dso_local i32 @_FREE(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
