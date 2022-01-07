; ModuleID = '/home/carl/AnghaBench/8cc/extr_cpp.c_hashhash_check.c'
source_filename = "/home/carl/AnghaBench/8cc/extr_cpp.c_hashhash_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@KHASHHASH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"'##' cannot appear at start of macro expansion\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"'##' cannot appear at end of macro expansion\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @hashhash_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hashhash_check(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i32*, i32** %2, align 8
  %4 = call i64 @vec_len(i32* %3)
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  br label %27

7:                                                ; preds = %1
  %8 = load i32*, i32** %2, align 8
  %9 = call i32 @vec_head(i32* %8)
  %10 = load i32, i32* @KHASHHASH, align 4
  %11 = call i64 @is_keyword(i32 %9, i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %7
  %14 = load i32*, i32** %2, align 8
  %15 = call i32 @vec_head(i32* %14)
  %16 = call i32 @errort(i32 %15, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  br label %17

17:                                               ; preds = %13, %7
  %18 = load i32*, i32** %2, align 8
  %19 = call i32 @vec_tail(i32* %18)
  %20 = load i32, i32* @KHASHHASH, align 4
  %21 = call i64 @is_keyword(i32 %19, i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %17
  %24 = load i32*, i32** %2, align 8
  %25 = call i32 @vec_tail(i32* %24)
  %26 = call i32 @errort(i32 %25, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  br label %27

27:                                               ; preds = %6, %23, %17
  ret void
}

declare dso_local i64 @vec_len(i32*) #1

declare dso_local i64 @is_keyword(i32, i32) #1

declare dso_local i32 @vec_head(i32*) #1

declare dso_local i32 @errort(i32, i8*) #1

declare dso_local i32 @vec_tail(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
