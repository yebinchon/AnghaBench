; ModuleID = '/home/carl/AnghaBench/8cc/extr_lex.c_lex.c'
source_filename = "/home/carl/AnghaBench/8cc/extr_lex.c_lex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i32, i32 }
%struct.TYPE_8__ = type { i32 }

@buffers = common dso_local global i32* null, align 8
@eof_token = common dso_local global %struct.TYPE_7__* null, align 8
@TSPACE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_7__* @lex() #0 {
  %1 = alloca %struct.TYPE_7__*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = load i32*, i32** @buffers, align 8
  %6 = call i32* @vec_tail(i32* %5)
  store i32* %6, i32** %2, align 8
  %7 = load i32*, i32** %2, align 8
  %8 = call i32 @vec_len(i32* %7)
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %0
  %11 = load i32*, i32** %2, align 8
  %12 = call %struct.TYPE_7__* @vec_pop(i32* %11)
  store %struct.TYPE_7__* %12, %struct.TYPE_7__** %1, align 8
  br label %41

13:                                               ; preds = %0
  %14 = load i32*, i32** @buffers, align 8
  %15 = call i32 @vec_len(i32* %14)
  %16 = icmp sgt i32 %15, 1
  br i1 %16, label %17, label %19

17:                                               ; preds = %13
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** @eof_token, align 8
  store %struct.TYPE_7__* %18, %struct.TYPE_7__** %1, align 8
  br label %41

19:                                               ; preds = %13
  %20 = call %struct.TYPE_8__* (...) @current_file()
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp eq i32 %22, 1
  %24 = zext i1 %23 to i32
  store i32 %24, i32* %3, align 4
  %25 = call %struct.TYPE_7__* (...) @do_read_token()
  store %struct.TYPE_7__* %25, %struct.TYPE_7__** %4, align 8
  br label %26

26:                                               ; preds = %32, %19
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @TSPACE, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %26
  %33 = call %struct.TYPE_7__* (...) @do_read_token()
  store %struct.TYPE_7__* %33, %struct.TYPE_7__** %4, align 8
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 1
  store i32 1, i32* %35, align 8
  br label %26

36:                                               ; preds = %26
  %37 = load i32, i32* %3, align 4
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 4
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  store %struct.TYPE_7__* %40, %struct.TYPE_7__** %1, align 8
  br label %41

41:                                               ; preds = %36, %17, %10
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  ret %struct.TYPE_7__* %42
}

declare dso_local i32* @vec_tail(i32*) #1

declare dso_local i32 @vec_len(i32*) #1

declare dso_local %struct.TYPE_7__* @vec_pop(i32*) #1

declare dso_local %struct.TYPE_8__* @current_file(...) #1

declare dso_local %struct.TYPE_7__* @do_read_token(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
