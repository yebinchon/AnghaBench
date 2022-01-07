; ModuleID = '/home/carl/AnghaBench/8cc/extr_parse.c_read_stmt.c'
source_filename = "/home/carl/AnghaBench/8cc/extr_parse.c_read_stmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i32 }

@TKEYWORD = common dso_local global i64 0, align 8
@TIDENT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* ()* @read_stmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @read_stmt() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca i32*, align 8
  %4 = call %struct.TYPE_9__* (...) @get()
  store %struct.TYPE_9__* %4, %struct.TYPE_9__** %2, align 8
  %5 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @TKEYWORD, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %43

10:                                               ; preds = %0
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  switch i32 %13, label %42 [
    i32 123, label %14
    i32 131, label %16
    i32 133, label %18
    i32 128, label %20
    i32 134, label %22
    i32 130, label %24
    i32 129, label %26
    i32 137, label %28
    i32 135, label %31
    i32 138, label %34
    i32 136, label %37
    i32 132, label %40
  ]

14:                                               ; preds = %10
  %15 = call i32* (...) @read_compound_stmt()
  store i32* %15, i32** %1, align 8
  br label %61

16:                                               ; preds = %10
  %17 = call i32* (...) @read_if_stmt()
  store i32* %17, i32** %1, align 8
  br label %61

18:                                               ; preds = %10
  %19 = call i32* (...) @read_for_stmt()
  store i32* %19, i32** %1, align 8
  br label %61

20:                                               ; preds = %10
  %21 = call i32* (...) @read_while_stmt()
  store i32* %21, i32** %1, align 8
  br label %61

22:                                               ; preds = %10
  %23 = call i32* (...) @read_do_stmt()
  store i32* %23, i32** %1, align 8
  br label %61

24:                                               ; preds = %10
  %25 = call i32* (...) @read_return_stmt()
  store i32* %25, i32** %1, align 8
  br label %61

26:                                               ; preds = %10
  %27 = call i32* (...) @read_switch_stmt()
  store i32* %27, i32** %1, align 8
  br label %61

28:                                               ; preds = %10
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %30 = call i32* @read_case_label(%struct.TYPE_9__* %29)
  store i32* %30, i32** %1, align 8
  br label %61

31:                                               ; preds = %10
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %33 = call i32* @read_default_label(%struct.TYPE_9__* %32)
  store i32* %33, i32** %1, align 8
  br label %61

34:                                               ; preds = %10
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %36 = call i32* @read_break_stmt(%struct.TYPE_9__* %35)
  store i32* %36, i32** %1, align 8
  br label %61

37:                                               ; preds = %10
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %39 = call i32* @read_continue_stmt(%struct.TYPE_9__* %38)
  store i32* %39, i32** %1, align 8
  br label %61

40:                                               ; preds = %10
  %41 = call i32* (...) @read_goto_stmt()
  store i32* %41, i32** %1, align 8
  br label %61

42:                                               ; preds = %10
  br label %43

43:                                               ; preds = %42, %0
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @TIDENT, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %55

49:                                               ; preds = %43
  %50 = call i64 @next_token(i8 signext 58)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %49
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %54 = call i32* @read_label(%struct.TYPE_9__* %53)
  store i32* %54, i32** %1, align 8
  br label %61

55:                                               ; preds = %49, %43
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %57 = call i32 @unget_token(%struct.TYPE_9__* %56)
  %58 = call i32* (...) @read_expr_opt()
  store i32* %58, i32** %3, align 8
  %59 = call i32 @expect(i8 signext 59)
  %60 = load i32*, i32** %3, align 8
  store i32* %60, i32** %1, align 8
  br label %61

61:                                               ; preds = %55, %52, %40, %37, %34, %31, %28, %26, %24, %22, %20, %18, %16, %14
  %62 = load i32*, i32** %1, align 8
  ret i32* %62
}

declare dso_local %struct.TYPE_9__* @get(...) #1

declare dso_local i32* @read_compound_stmt(...) #1

declare dso_local i32* @read_if_stmt(...) #1

declare dso_local i32* @read_for_stmt(...) #1

declare dso_local i32* @read_while_stmt(...) #1

declare dso_local i32* @read_do_stmt(...) #1

declare dso_local i32* @read_return_stmt(...) #1

declare dso_local i32* @read_switch_stmt(...) #1

declare dso_local i32* @read_case_label(%struct.TYPE_9__*) #1

declare dso_local i32* @read_default_label(%struct.TYPE_9__*) #1

declare dso_local i32* @read_break_stmt(%struct.TYPE_9__*) #1

declare dso_local i32* @read_continue_stmt(%struct.TYPE_9__*) #1

declare dso_local i32* @read_goto_stmt(...) #1

declare dso_local i64 @next_token(i8 signext) #1

declare dso_local i32* @read_label(%struct.TYPE_9__*) #1

declare dso_local i32 @unget_token(%struct.TYPE_9__*) #1

declare dso_local i32* @read_expr_opt(...) #1

declare dso_local i32 @expect(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
