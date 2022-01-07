; ModuleID = '/home/carl/AnghaBench/8cc/extr_cpp.c_expand_all.c'
source_filename = "/home/carl/AnghaBench/8cc/extr_cpp.c_expand_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }

@TEOF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, %struct.TYPE_6__*)* @expand_all to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @expand_all(i32* %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %4, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = call i32 @vec_reverse(i32* %7)
  %9 = call i32 @token_buffer_stash(i32 %8)
  %10 = call i32* (...) @make_vector()
  store i32* %10, i32** %5, align 8
  br label %11

11:                                               ; preds = %19, %2
  %12 = call %struct.TYPE_6__* (...) @read_expand()
  store %struct.TYPE_6__* %12, %struct.TYPE_6__** %6, align 8
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @TEOF, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %11
  br label %23

19:                                               ; preds = %11
  %20 = load i32*, i32** %5, align 8
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %22 = call i32 @vec_push(i32* %20, %struct.TYPE_6__* %21)
  br label %11

23:                                               ; preds = %18
  %24 = load i32*, i32** %5, align 8
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %26 = call i32 @propagate_space(i32* %24, %struct.TYPE_6__* %25)
  %27 = call i32 (...) @token_buffer_unstash()
  %28 = load i32*, i32** %5, align 8
  ret i32* %28
}

declare dso_local i32 @token_buffer_stash(i32) #1

declare dso_local i32 @vec_reverse(i32*) #1

declare dso_local i32* @make_vector(...) #1

declare dso_local %struct.TYPE_6__* @read_expand(...) #1

declare dso_local i32 @vec_push(i32*, %struct.TYPE_6__*) #1

declare dso_local i32 @propagate_space(i32*, %struct.TYPE_6__*) #1

declare dso_local i32 @token_buffer_unstash(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
