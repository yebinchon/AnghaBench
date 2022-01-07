; ModuleID = '/home/carl/AnghaBench/RetroArch/input/drivers/extr_cocoa_input.c_cocoa_input_find_any_button.c'
source_filename = "/home/carl/AnghaBench/RetroArch/input/drivers/extr_cocoa_input.c_cocoa_input_find_any_button.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32 (i32, i32*)*, i32 (...)* }
%struct.TYPE_5__ = type { i32 (i32, i32*)*, i32 (...)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cocoa_input_find_any_button(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 -1, i32* %4, align 4
  %8 = call i64 (...) @input_driver_get_data()
  %9 = inttoptr i64 %8 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %9, %struct.TYPE_7__** %5, align 8
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %11 = icmp ne %struct.TYPE_7__* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %90

13:                                               ; preds = %1
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = icmp ne %struct.TYPE_5__* %16, null
  br i1 %17, label %18, label %43

18:                                               ; preds = %13
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 1
  %23 = load i32 (...)*, i32 (...)** %22, align 8
  %24 = call i32 (...) %23()
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i32 (i32, i32*)*, i32 (i32, i32*)** %28, align 8
  %30 = icmp ne i32 (i32, i32*)* %29, null
  br i1 %30, label %31, label %42

31:                                               ; preds = %18
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i32 (i32, i32*)*, i32 (i32, i32*)** %35, align 8
  %37 = load i32, i32* %3, align 4
  %38 = call i32 %36(i32 %37, i32* %6)
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %40 = load i32, i32* %3, align 4
  %41 = call i32 @cocoa_input_find_any_button_ret(%struct.TYPE_7__* %39, i32* %6, i32 %40)
  store i32 %41, i32* %4, align 4
  br label %42

42:                                               ; preds = %31, %18
  br label %43

43:                                               ; preds = %42, %13
  %44 = load i32, i32* %4, align 4
  %45 = icmp ne i32 %44, -1
  br i1 %45, label %46, label %48

46:                                               ; preds = %43
  %47 = load i32, i32* %4, align 4
  store i32 %47, i32* %2, align 4
  br label %90

48:                                               ; preds = %43
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %50, align 8
  %52 = icmp ne %struct.TYPE_6__* %51, null
  br i1 %52, label %53, label %84

53:                                               ; preds = %48
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 1
  %58 = load i32 (...)*, i32 (...)** %57, align 8
  %59 = call i32 (...) %58()
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load i32 (i32, i32*)*, i32 (i32, i32*)** %63, align 8
  %65 = icmp ne i32 (i32, i32*)* %64, null
  br i1 %65, label %66, label %83

66:                                               ; preds = %53
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 1
  %71 = load i32 (...)*, i32 (...)** %70, align 8
  %72 = call i32 (...) %71()
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  %77 = load i32 (i32, i32*)*, i32 (i32, i32*)** %76, align 8
  %78 = load i32, i32* %3, align 4
  %79 = call i32 %77(i32 %78, i32* %7)
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %81 = load i32, i32* %3, align 4
  %82 = call i32 @cocoa_input_find_any_button_ret(%struct.TYPE_7__* %80, i32* %7, i32 %81)
  store i32 %82, i32* %4, align 4
  br label %83

83:                                               ; preds = %66, %53
  br label %84

84:                                               ; preds = %83, %48
  %85 = load i32, i32* %4, align 4
  %86 = icmp ne i32 %85, -1
  br i1 %86, label %87, label %89

87:                                               ; preds = %84
  %88 = load i32, i32* %4, align 4
  store i32 %88, i32* %2, align 4
  br label %90

89:                                               ; preds = %84
  store i32 -1, i32* %2, align 4
  br label %90

90:                                               ; preds = %89, %87, %46, %12
  %91 = load i32, i32* %2, align 4
  ret i32 %91
}

declare dso_local i64 @input_driver_get_data(...) #1

declare dso_local i32 @cocoa_input_find_any_button_ret(%struct.TYPE_7__*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
