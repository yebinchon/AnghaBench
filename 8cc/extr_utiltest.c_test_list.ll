; ModuleID = '/home/carl/AnghaBench/8cc/extr_utiltest.c_test_list.c'
source_filename = "/home/carl/AnghaBench/8cc/extr_utiltest.c_test_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_list() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = call i32* (...) @make_vector()
  store i32* %6, i32** %1, align 8
  %7 = load i32*, i32** %1, align 8
  %8 = call i64 @vec_len(i32* %7)
  %9 = call i32 @assert_int(i32 0, i64 %8)
  %10 = load i32*, i32** %1, align 8
  %11 = call i32 @vec_push(i32* %10, i8* inttoptr (i64 1 to i8*))
  %12 = load i32*, i32** %1, align 8
  %13 = call i64 @vec_len(i32* %12)
  %14 = call i32 @assert_int(i32 1, i64 %13)
  %15 = load i32*, i32** %1, align 8
  %16 = call i32 @vec_push(i32* %15, i8* inttoptr (i64 2 to i8*))
  %17 = load i32*, i32** %1, align 8
  %18 = call i64 @vec_len(i32* %17)
  %19 = call i32 @assert_int(i32 2, i64 %18)
  %20 = load i32*, i32** %1, align 8
  %21 = call i32* @vec_copy(i32* %20)
  store i32* %21, i32** %2, align 8
  %22 = load i32*, i32** %2, align 8
  %23 = call i64 @vec_len(i32* %22)
  %24 = call i32 @assert_int(i32 2, i64 %23)
  %25 = load i32*, i32** %2, align 8
  %26 = call i64 @vec_get(i32* %25, i32 0)
  %27 = call i32 @assert_int(i32 1, i64 %26)
  %28 = load i32*, i32** %2, align 8
  %29 = call i64 @vec_get(i32* %28, i32 1)
  %30 = call i32 @assert_int(i32 2, i64 %29)
  %31 = load i32*, i32** %1, align 8
  %32 = call i32* @vec_reverse(i32* %31)
  store i32* %32, i32** %3, align 8
  %33 = load i32*, i32** %3, align 8
  %34 = call i64 @vec_len(i32* %33)
  %35 = call i32 @assert_int(i32 2, i64 %34)
  %36 = load i32*, i32** %3, align 8
  %37 = call i64 @vec_pop(i32* %36)
  %38 = call i32 @assert_int(i32 1, i64 %37)
  %39 = load i32*, i32** %3, align 8
  %40 = call i64 @vec_len(i32* %39)
  %41 = call i32 @assert_int(i32 1, i64 %40)
  %42 = load i32*, i32** %3, align 8
  %43 = call i64 @vec_pop(i32* %42)
  %44 = call i32 @assert_int(i32 2, i64 %43)
  %45 = load i32*, i32** %3, align 8
  %46 = call i64 @vec_len(i32* %45)
  %47 = call i32 @assert_int(i32 0, i64 %46)
  %48 = call i32* (...) @make_vector()
  store i32* %48, i32** %4, align 8
  %49 = load i32*, i32** %4, align 8
  %50 = call i32 @vec_push(i32* %49, i8* inttoptr (i64 1 to i8*))
  %51 = load i32*, i32** %4, align 8
  %52 = call i64 @vec_head(i32* %51)
  %53 = call i32 @assert_int(i32 1, i64 %52)
  %54 = load i32*, i32** %4, align 8
  %55 = call i64 @vec_tail(i32* %54)
  %56 = call i32 @assert_int(i32 1, i64 %55)
  %57 = load i32*, i32** %4, align 8
  %58 = call i32 @vec_push(i32* %57, i8* inttoptr (i64 2 to i8*))
  %59 = load i32*, i32** %4, align 8
  %60 = call i64 @vec_head(i32* %59)
  %61 = call i32 @assert_int(i32 1, i64 %60)
  %62 = load i32*, i32** %4, align 8
  %63 = call i64 @vec_tail(i32* %62)
  %64 = call i32 @assert_int(i32 2, i64 %63)
  %65 = call i32* (...) @make_vector()
  store i32* %65, i32** %5, align 8
  %66 = load i32*, i32** %5, align 8
  %67 = call i32 @vec_push(i32* %66, i8* inttoptr (i64 1 to i8*))
  %68 = load i32*, i32** %5, align 8
  %69 = call i32 @vec_push(i32* %68, i8* inttoptr (i64 2 to i8*))
  %70 = load i32*, i32** %5, align 8
  %71 = call i64 @vec_get(i32* %70, i32 0)
  %72 = call i32 @assert_int(i32 1, i64 %71)
  %73 = load i32*, i32** %5, align 8
  %74 = call i64 @vec_get(i32* %73, i32 1)
  %75 = call i32 @assert_int(i32 2, i64 %74)
  ret void
}

declare dso_local i32* @make_vector(...) #1

declare dso_local i32 @assert_int(i32, i64) #1

declare dso_local i64 @vec_len(i32*) #1

declare dso_local i32 @vec_push(i32*, i8*) #1

declare dso_local i32* @vec_copy(i32*) #1

declare dso_local i64 @vec_get(i32*, i32) #1

declare dso_local i32* @vec_reverse(i32*) #1

declare dso_local i64 @vec_pop(i32*) #1

declare dso_local i64 @vec_head(i32*) #1

declare dso_local i64 @vec_tail(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
