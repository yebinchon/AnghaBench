; ModuleID = '/home/carl/AnghaBench/Cello/benchmarks/ext/extr_regexp9.c_popand.c'
source_filename = "/home/carl/AnghaBench/Cello/benchmarks/ext/extr_regexp9.c_popand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@andp = common dso_local global i32* null, align 8
@andstack = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [21 x i8] c"missing operand for \00", align 1
@NOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32)* @popand to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @popand(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32*, i32** @andp, align 8
  %5 = load i32*, i32** @andstack, align 8
  %6 = getelementptr inbounds i32, i32* %5, i64 0
  %7 = icmp ule i32* %4, %6
  br i1 %7, label %8, label %16

8:                                                ; preds = %1
  %9 = load i32, i32* %2, align 4
  %10 = call i32 @regerr2(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %9)
  %11 = load i32, i32* @NOP, align 4
  %12 = call i32* @newinst(i32 %11)
  store i32* %12, i32** %3, align 8
  %13 = load i32*, i32** %3, align 8
  %14 = load i32*, i32** %3, align 8
  %15 = call i32 @pushand(i32* %13, i32* %14)
  br label %16

16:                                               ; preds = %8, %1
  %17 = load i32*, i32** @andp, align 8
  %18 = getelementptr inbounds i32, i32* %17, i32 -1
  store i32* %18, i32** @andp, align 8
  ret i32* %18
}

declare dso_local i32 @regerr2(i8*, i32) #1

declare dso_local i32* @newinst(i32) #1

declare dso_local i32 @pushand(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
