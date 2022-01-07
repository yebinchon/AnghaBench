; ModuleID = '/home/carl/AnghaBench/8cc/extr_cpp.c_read_constexpr.c'
source_filename = "/home/carl/AnghaBench/8cc/extr_cpp.c_read_constexpr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }

@TEOF = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"stray token: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @read_constexpr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_constexpr() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = call i32 (...) @read_intexpr_line()
  %4 = call i32 @vec_reverse(i32 %3)
  %5 = call i32 @token_buffer_stash(i32 %4)
  %6 = call i32* (...) @read_expr()
  store i32* %6, i32** %1, align 8
  %7 = call %struct.TYPE_5__* (...) @lex()
  store %struct.TYPE_5__* %7, %struct.TYPE_5__** %2, align 8
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @TEOF, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %18

13:                                               ; preds = %0
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %16 = call i32 @tok2s(%struct.TYPE_5__* %15)
  %17 = call i32 @errort(%struct.TYPE_5__* %14, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %16)
  br label %18

18:                                               ; preds = %13, %0
  %19 = call i32 (...) @token_buffer_unstash()
  %20 = load i32*, i32** %1, align 8
  %21 = call i32 @eval_intexpr(i32* %20, i32* null)
  ret i32 %21
}

declare dso_local i32 @token_buffer_stash(i32) #1

declare dso_local i32 @vec_reverse(i32) #1

declare dso_local i32 @read_intexpr_line(...) #1

declare dso_local i32* @read_expr(...) #1

declare dso_local %struct.TYPE_5__* @lex(...) #1

declare dso_local i32 @errort(%struct.TYPE_5__*, i8*, i32) #1

declare dso_local i32 @tok2s(%struct.TYPE_5__*) #1

declare dso_local i32 @token_buffer_unstash(...) #1

declare dso_local i32 @eval_intexpr(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
