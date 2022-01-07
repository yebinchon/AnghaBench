; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/lcc/tst/extr_yacc.c_yylex.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/lcc/tst/extr_yacc.c_yylex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ID = common dso_local global i32 0, align 4
@CON = common dso_local global i32 0, align 4
@yytext = common dso_local global i32* null, align 8
@yyout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"bad switch yylook %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @yylex() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  br label %3

3:                                                ; preds = %28, %0
  %4 = call i32 (...) @yylook()
  store i32 %4, i32* %2, align 4
  %5 = icmp sge i32 %4, 0
  br i1 %5, label %6, label %29

6:                                                ; preds = %3
  br label %7

7:                                                ; preds = %6
  %8 = load i32, i32* %2, align 4
  switch i32 %8, label %24 [
    i32 0, label %9
    i32 1, label %14
    i32 2, label %16
    i32 3, label %18
    i32 4, label %19
    i32 -1, label %23
  ]

9:                                                ; preds = %7
  %10 = call i32 (...) @yywrap()
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %9
  store i32 0, i32* %1, align 4
  br label %30

13:                                               ; preds = %9
  br label %28

14:                                               ; preds = %7
  %15 = load i32, i32* @ID, align 4
  store i32 %15, i32* %1, align 4
  br label %30

16:                                               ; preds = %7
  %17 = load i32, i32* @CON, align 4
  store i32 %17, i32* %1, align 4
  br label %30

18:                                               ; preds = %7
  br label %28

19:                                               ; preds = %7
  %20 = load i32*, i32** @yytext, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %1, align 4
  br label %30

23:                                               ; preds = %7
  br label %28

24:                                               ; preds = %7
  %25 = load i32, i32* @yyout, align 4
  %26 = load i32, i32* %2, align 4
  %27 = call i32 @fprintf(i32 %25, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %26)
  br label %28

28:                                               ; preds = %24, %23, %18, %13
  br label %3

29:                                               ; preds = %3
  store i32 0, i32* %1, align 4
  br label %30

30:                                               ; preds = %29, %19, %16, %14, %12
  %31 = load i32, i32* %1, align 4
  ret i32 %31
}

declare dso_local i32 @yylook(...) #1

declare dso_local i32 @yywrap(...) #1

declare dso_local i32 @fprintf(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
