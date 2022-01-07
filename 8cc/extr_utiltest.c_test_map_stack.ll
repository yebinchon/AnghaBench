; ModuleID = '/home/carl/AnghaBench/8cc/extr_utiltest.c_test_map_stack.c'
source_filename = "/home/carl/AnghaBench/8cc/extr_utiltest.c_test_map_stack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"y\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_map_stack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_map_stack() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = call i32* (...) @make_map()
  store i32* %3, i32** %1, align 8
  %4 = load i32*, i32** %1, align 8
  %5 = call i32 @map_put(i32* %4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8* inttoptr (i64 1 to i8*))
  %6 = load i32*, i32** %1, align 8
  %7 = call i32 @map_put(i32* %6, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* inttoptr (i64 2 to i8*))
  %8 = load i32*, i32** %1, align 8
  %9 = call i64 @map_get(i32* %8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %10 = trunc i64 %9 to i32
  %11 = call i32 @assert_int(i32 1, i32 %10)
  %12 = load i32*, i32** %1, align 8
  %13 = call i32* @make_map_parent(i32* %12)
  store i32* %13, i32** %2, align 8
  %14 = load i32*, i32** %2, align 8
  %15 = call i64 @map_get(i32* %14, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %16 = trunc i64 %15 to i32
  %17 = call i32 @assert_int(i32 1, i32 %16)
  %18 = load i32*, i32** %2, align 8
  %19 = call i32 @map_put(i32* %18, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8* inttoptr (i64 3 to i8*))
  %20 = load i32*, i32** %2, align 8
  %21 = call i64 @map_get(i32* %20, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %22 = trunc i64 %21 to i32
  %23 = call i32 @assert_int(i32 3, i32 %22)
  %24 = load i32*, i32** %1, align 8
  %25 = call i64 @map_get(i32* %24, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %26 = trunc i64 %25 to i32
  %27 = call i32 @assert_int(i32 1, i32 %26)
  ret void
}

declare dso_local i32* @make_map(...) #1

declare dso_local i32 @map_put(i32*, i8*, i8*) #1

declare dso_local i32 @assert_int(i32, i32) #1

declare dso_local i64 @map_get(i32*, i8*) #1

declare dso_local i32* @make_map_parent(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
