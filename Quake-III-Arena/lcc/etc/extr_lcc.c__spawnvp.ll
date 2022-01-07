; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/lcc/etc/extr_lcc.c__spawnvp.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/lcc/etc/extr_lcc.c__spawnvp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"%s: no more processes\0A\00", align 1
@progname = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1
@stdout = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"%s: fatal error in %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i8**)* @_spawnvp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_spawnvp(i32 %0, i8* %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i8** %2, i8*** %7, align 8
  %11 = call i32 (...) @fork()
  store i32 %11, i32* %8, align 4
  switch i32 %11, label %28 [
    i32 -1, label %12
    i32 0, label %16
  ]

12:                                               ; preds = %3
  %13 = load i32, i32* @stderr, align 4
  %14 = load i8*, i8** @progname, align 8
  %15 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %13, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* %14)
  store i32 100, i32* %4, align 4
  br label %58

16:                                               ; preds = %3
  %17 = load i8*, i8** %6, align 8
  %18 = load i8**, i8*** %7, align 8
  %19 = call i32 @execvp(i8* %17, i8** %18)
  %20 = load i32, i32* @stderr, align 4
  %21 = load i8*, i8** @progname, align 8
  %22 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %20, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %21)
  %23 = load i8*, i8** %6, align 8
  %24 = call i32 @perror(i8* %23)
  %25 = load i32, i32* @stdout, align 4
  %26 = call i32 @fflush(i32 %25)
  %27 = call i32 @exit(i32 100) #3
  unreachable

28:                                               ; preds = %3
  br label %29

29:                                               ; preds = %38, %28
  %30 = call i32 @wait(i32* %10)
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp ne i32 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %29
  %34 = load i32, i32* %9, align 4
  %35 = icmp ne i32 %34, -1
  br label %36

36:                                               ; preds = %33, %29
  %37 = phi i1 [ false, %29 ], [ %35, %33 ]
  br i1 %37, label %38, label %39

38:                                               ; preds = %36
  br label %29

39:                                               ; preds = %36
  %40 = load i32, i32* %9, align 4
  %41 = icmp eq i32 %40, -1
  br i1 %41, label %42, label %43

42:                                               ; preds = %39
  store i32 -1, i32* %10, align 4
  br label %43

43:                                               ; preds = %42, %39
  %44 = load i32, i32* %10, align 4
  %45 = and i32 %44, 255
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %43
  %48 = load i32, i32* @stderr, align 4
  %49 = load i8*, i8** @progname, align 8
  %50 = load i8*, i8** %6, align 8
  %51 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %48, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i8* %49, i8* %50)
  %52 = load i32, i32* %10, align 4
  %53 = or i32 %52, 256
  store i32 %53, i32* %10, align 4
  br label %54

54:                                               ; preds = %47, %43
  %55 = load i32, i32* %10, align 4
  %56 = ashr i32 %55, 8
  %57 = and i32 %56, 255
  store i32 %57, i32* %4, align 4
  br label %58

58:                                               ; preds = %54, %12
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

declare dso_local i32 @fork(...) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, ...) #1

declare dso_local i32 @execvp(i8*, i8**) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @fflush(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @wait(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
