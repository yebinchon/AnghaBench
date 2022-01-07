; ModuleID = '/home/carl/AnghaBench/8cc/extr_cpp.c_read_from_string.c'
source_filename = "/home/carl/AnghaBench/8cc/extr_cpp.c_read_from_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @read_from_string(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = call i32 @make_file_string(i8* %5)
  %7 = call i32 @stream_stash(i32 %6)
  %8 = call i32* (...) @read_toplevels()
  store i32* %8, i32** %3, align 8
  store i32 0, i32* %4, align 4
  br label %9

9:                                                ; preds = %19, %1
  %10 = load i32, i32* %4, align 4
  %11 = load i32*, i32** %3, align 8
  %12 = call i32 @vec_len(i32* %11)
  %13 = icmp slt i32 %10, %12
  br i1 %13, label %14, label %22

14:                                               ; preds = %9
  %15 = load i32*, i32** %3, align 8
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @vec_get(i32* %15, i32 %16)
  %18 = call i32 @emit_toplevel(i32 %17)
  br label %19

19:                                               ; preds = %14
  %20 = load i32, i32* %4, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %4, align 4
  br label %9

22:                                               ; preds = %9
  %23 = call i32 (...) @stream_unstash()
  ret void
}

declare dso_local i32 @stream_stash(i32) #1

declare dso_local i32 @make_file_string(i8*) #1

declare dso_local i32* @read_toplevels(...) #1

declare dso_local i32 @vec_len(i32*) #1

declare dso_local i32 @emit_toplevel(i32) #1

declare dso_local i32 @vec_get(i32*, i32) #1

declare dso_local i32 @stream_unstash(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
