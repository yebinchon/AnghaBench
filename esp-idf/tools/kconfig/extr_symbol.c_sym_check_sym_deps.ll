; ModuleID = '/home/carl/AnghaBench/esp-idf/tools/kconfig/extr_symbol.c_sym_check_sym_deps.c'
source_filename = "/home/carl/AnghaBench/esp-idf/tools/kconfig/extr_symbol.c_sym_check_sym_deps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.symbol = type { %struct.property*, %struct.TYPE_3__ }
%struct.property = type { i64, i32*, %struct.TYPE_4__, %struct.property* }
%struct.TYPE_4__ = type { i32* }
%struct.TYPE_3__ = type { i32* }
%struct.dep_stack = type { i32*, %struct.property* }

@P_CHOICE = common dso_local global i64 0, align 8
@P_SELECT = common dso_local global i64 0, align 8
@P_DEFAULT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.symbol* (%struct.symbol*)* @sym_check_sym_deps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.symbol* @sym_check_sym_deps(%struct.symbol* %0) #0 {
  %2 = alloca %struct.symbol*, align 8
  %3 = alloca %struct.symbol*, align 8
  %4 = alloca %struct.property*, align 8
  %5 = alloca %struct.dep_stack, align 8
  store %struct.symbol* %0, %struct.symbol** %2, align 8
  %6 = load %struct.symbol*, %struct.symbol** %2, align 8
  %7 = call i32 @dep_stack_insert(%struct.dep_stack* %5, %struct.symbol* %6)
  %8 = load %struct.symbol*, %struct.symbol** %2, align 8
  %9 = getelementptr inbounds %struct.symbol, %struct.symbol* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = call %struct.symbol* @sym_check_expr_deps(i32* %11)
  store %struct.symbol* %12, %struct.symbol** %3, align 8
  %13 = load %struct.symbol*, %struct.symbol** %3, align 8
  %14 = icmp ne %struct.symbol* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  br label %77

16:                                               ; preds = %1
  %17 = load %struct.symbol*, %struct.symbol** %2, align 8
  %18 = getelementptr inbounds %struct.symbol, %struct.symbol* %17, i32 0, i32 0
  %19 = load %struct.property*, %struct.property** %18, align 8
  store %struct.property* %19, %struct.property** %4, align 8
  br label %20

20:                                               ; preds = %72, %16
  %21 = load %struct.property*, %struct.property** %4, align 8
  %22 = icmp ne %struct.property* %21, null
  br i1 %22, label %23, label %76

23:                                               ; preds = %20
  %24 = load %struct.property*, %struct.property** %4, align 8
  %25 = getelementptr inbounds %struct.property, %struct.property* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @P_CHOICE, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %35, label %29

29:                                               ; preds = %23
  %30 = load %struct.property*, %struct.property** %4, align 8
  %31 = getelementptr inbounds %struct.property, %struct.property* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @P_SELECT, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %29, %23
  br label %72

36:                                               ; preds = %29
  %37 = load %struct.property*, %struct.property** %4, align 8
  %38 = getelementptr inbounds %struct.dep_stack, %struct.dep_stack* %5, i32 0, i32 1
  store %struct.property* %37, %struct.property** %38, align 8
  %39 = load %struct.property*, %struct.property** %4, align 8
  %40 = getelementptr inbounds %struct.property, %struct.property* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = call %struct.symbol* @sym_check_expr_deps(i32* %42)
  store %struct.symbol* %43, %struct.symbol** %3, align 8
  %44 = load %struct.symbol*, %struct.symbol** %3, align 8
  %45 = icmp ne %struct.symbol* %44, null
  br i1 %45, label %46, label %47

46:                                               ; preds = %36
  br label %76

47:                                               ; preds = %36
  %48 = load %struct.property*, %struct.property** %4, align 8
  %49 = getelementptr inbounds %struct.property, %struct.property* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @P_DEFAULT, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %57, label %53

53:                                               ; preds = %47
  %54 = load %struct.symbol*, %struct.symbol** %2, align 8
  %55 = call i64 @sym_is_choice(%struct.symbol* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %53, %47
  br label %72

58:                                               ; preds = %53
  %59 = load %struct.property*, %struct.property** %4, align 8
  %60 = getelementptr inbounds %struct.property, %struct.property* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds %struct.dep_stack, %struct.dep_stack* %5, i32 0, i32 0
  store i32* %61, i32** %62, align 8
  %63 = load %struct.property*, %struct.property** %4, align 8
  %64 = getelementptr inbounds %struct.property, %struct.property* %63, i32 0, i32 1
  %65 = load i32*, i32** %64, align 8
  %66 = call %struct.symbol* @sym_check_expr_deps(i32* %65)
  store %struct.symbol* %66, %struct.symbol** %3, align 8
  %67 = load %struct.symbol*, %struct.symbol** %3, align 8
  %68 = icmp ne %struct.symbol* %67, null
  br i1 %68, label %69, label %70

69:                                               ; preds = %58
  br label %76

70:                                               ; preds = %58
  %71 = getelementptr inbounds %struct.dep_stack, %struct.dep_stack* %5, i32 0, i32 0
  store i32* null, i32** %71, align 8
  br label %72

72:                                               ; preds = %70, %57, %35
  %73 = load %struct.property*, %struct.property** %4, align 8
  %74 = getelementptr inbounds %struct.property, %struct.property* %73, i32 0, i32 3
  %75 = load %struct.property*, %struct.property** %74, align 8
  store %struct.property* %75, %struct.property** %4, align 8
  br label %20

76:                                               ; preds = %69, %46, %20
  br label %77

77:                                               ; preds = %76, %15
  %78 = call i32 (...) @dep_stack_remove()
  %79 = load %struct.symbol*, %struct.symbol** %3, align 8
  ret %struct.symbol* %79
}

declare dso_local i32 @dep_stack_insert(%struct.dep_stack*, %struct.symbol*) #1

declare dso_local %struct.symbol* @sym_check_expr_deps(i32*) #1

declare dso_local i64 @sym_is_choice(%struct.symbol*) #1

declare dso_local i32 @dep_stack_remove(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
