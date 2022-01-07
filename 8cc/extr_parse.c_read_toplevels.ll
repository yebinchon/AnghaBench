; ModuleID = '/home/carl/AnghaBench/8cc/extr_parse.c_read_toplevels.c'
source_filename = "/home/carl/AnghaBench/8cc/extr_parse.c_read_toplevels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@toplevels = common dso_local global i32* null, align 8
@TEOF = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @read_toplevels() #0 {
  %1 = call i32* (...) @make_vector()
  store i32* %1, i32** @toplevels, align 8
  br label %2

2:                                                ; preds = %20, %0
  %3 = call %struct.TYPE_2__* (...) @peek()
  %4 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @TEOF, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = load i32*, i32** @toplevels, align 8
  ret i32* %9

10:                                               ; preds = %2
  %11 = call i64 (...) @is_funcdef()
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %10
  %14 = load i32*, i32** @toplevels, align 8
  %15 = call i32 (...) @read_funcdef()
  %16 = call i32 @vec_push(i32* %14, i32 %15)
  br label %20

17:                                               ; preds = %10
  %18 = load i32*, i32** @toplevels, align 8
  %19 = call i32 @read_decl(i32* %18, i32 1)
  br label %20

20:                                               ; preds = %17, %13
  br label %2
}

declare dso_local i32* @make_vector(...) #1

declare dso_local %struct.TYPE_2__* @peek(...) #1

declare dso_local i64 @is_funcdef(...) #1

declare dso_local i32 @vec_push(i32*, i32) #1

declare dso_local i32 @read_funcdef(...) #1

declare dso_local i32 @read_decl(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
