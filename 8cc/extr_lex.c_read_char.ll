; ModuleID = '/home/carl/AnghaBench/8cc/extr_lex.c_read_char.c'
source_filename = "/home/carl/AnghaBench/8cc/extr_lex.c_read_char.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pos = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"unterminated char\00", align 1
@ENC_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32)* @read_char to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @read_char(i32 %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = call i32 (...) @readc()
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp eq i32 %7, 92
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = call i32 (...) @read_escaped_char()
  br label %13

11:                                               ; preds = %1
  %12 = load i32, i32* %4, align 4
  br label %13

13:                                               ; preds = %11, %9
  %14 = phi i32 [ %10, %9 ], [ %12, %11 ]
  store i32 %14, i32* %5, align 4
  %15 = call i32 (...) @readc()
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 39
  br i1 %17, label %18, label %21

18:                                               ; preds = %13
  %19 = load i32, i32* @pos, align 4
  %20 = call i32 @errorp(i32 %19, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %21

21:                                               ; preds = %18, %13
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* @ENC_NONE, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %31

25:                                               ; preds = %21
  %26 = load i32, i32* %5, align 4
  %27 = trunc i32 %26 to i8
  %28 = sext i8 %27 to i32
  %29 = load i32, i32* %3, align 4
  %30 = call i32* @make_char(i32 %28, i32 %29)
  store i32* %30, i32** %2, align 8
  br label %35

31:                                               ; preds = %21
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* %3, align 4
  %34 = call i32* @make_char(i32 %32, i32 %33)
  store i32* %34, i32** %2, align 8
  br label %35

35:                                               ; preds = %31, %25
  %36 = load i32*, i32** %2, align 8
  ret i32* %36
}

declare dso_local i32 @readc(...) #1

declare dso_local i32 @read_escaped_char(...) #1

declare dso_local i32 @errorp(i32, i8*) #1

declare dso_local i32* @make_char(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
