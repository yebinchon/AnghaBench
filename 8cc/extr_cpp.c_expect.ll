; ModuleID = '/home/carl/AnghaBench/8cc/extr_cpp.c_expect.c'
source_filename = "/home/carl/AnghaBench/8cc/extr_cpp.c_expect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [24 x i8] c"%c expected, but got %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8)* @expect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @expect(i8 signext %0) #0 {
  %2 = alloca i8, align 1
  %3 = alloca i32*, align 8
  store i8 %0, i8* %2, align 1
  %4 = call i32* (...) @lex()
  store i32* %4, i32** %3, align 8
  %5 = load i32*, i32** %3, align 8
  %6 = load i8, i8* %2, align 1
  %7 = call i32 @is_keyword(i32* %5, i8 signext %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %15, label %9

9:                                                ; preds = %1
  %10 = load i32*, i32** %3, align 8
  %11 = load i8, i8* %2, align 1
  %12 = load i32*, i32** %3, align 8
  %13 = call i32 @tok2s(i32* %12)
  %14 = call i32 @errort(i32* %10, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8 signext %11, i32 %13)
  br label %15

15:                                               ; preds = %9, %1
  ret void
}

declare dso_local i32* @lex(...) #1

declare dso_local i32 @is_keyword(i32*, i8 signext) #1

declare dso_local i32 @errort(i32*, i8*, i8 signext, i32) #1

declare dso_local i32 @tok2s(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
