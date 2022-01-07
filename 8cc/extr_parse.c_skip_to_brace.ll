; ModuleID = '/home/carl/AnghaBench/8cc/extr_parse.c_skip_to_brace.c'
source_filename = "/home/carl/AnghaBench/8cc/extr_parse.c_skip_to_brace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [26 x i8] c"excessive initializer: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @skip_to_brace to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @skip_to_brace() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  br label %3

3:                                                ; preds = %19, %0
  %4 = call i64 @next_token(i8 signext 125)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %3
  br label %25

7:                                                ; preds = %3
  %8 = call i64 @next_token(i8 signext 46)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %7
  %11 = call i32 (...) @get()
  %12 = call i32 @expect(i8 signext 61)
  br label %13

13:                                               ; preds = %10, %7
  %14 = call i32* (...) @peek()
  store i32* %14, i32** %1, align 8
  %15 = call i32* (...) @read_assignment_expr()
  store i32* %15, i32** %2, align 8
  %16 = load i32*, i32** %2, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %13
  br label %25

19:                                               ; preds = %13
  %20 = load i32*, i32** %1, align 8
  %21 = load i32*, i32** %2, align 8
  %22 = call i32 @node2s(i32* %21)
  %23 = call i32 @warnt(i32* %20, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = call i32 (...) @maybe_skip_comma()
  br label %3

25:                                               ; preds = %18, %6
  ret void
}

declare dso_local i64 @next_token(i8 signext) #1

declare dso_local i32 @get(...) #1

declare dso_local i32 @expect(i8 signext) #1

declare dso_local i32* @peek(...) #1

declare dso_local i32* @read_assignment_expr(...) #1

declare dso_local i32 @warnt(i32*, i8*, i32) #1

declare dso_local i32 @node2s(i32*) #1

declare dso_local i32 @maybe_skip_comma(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
