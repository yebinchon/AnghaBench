; ModuleID = '/home/carl/AnghaBench/TDengine/tests/examples/c/extr_subscribe.c_main.c'
source_filename = "/home/carl/AnghaBench/TDengine/tests/examples/c/extr_subscribe.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [41 x i8] c"usage: %s server-ip db-name table-name \0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"root\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"taosdata\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"failed to connet to db:%s\0A\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"start to retrieve data\0A\00", align 1
@.str.5 = private unnamed_addr constant [54 x i8] c"please use other taos client, insert rows into %s.%s\0A\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca [64 x i8], align 16
  %9 = alloca [64 x i8], align 16
  %10 = alloca [256 x i8], align 16
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %13 = load i32, i32* %4, align 4
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %15, label %21

15:                                               ; preds = %2
  %16 = load i8**, i8*** %5, align 8
  %17 = getelementptr inbounds i8*, i8** %16, i64 0
  %18 = load i8*, i8** %17, align 8
  %19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i8* %18)
  %20 = call i32 @exit(i32 0) #3
  unreachable

21:                                               ; preds = %2
  %22 = load i32, i32* %4, align 4
  %23 = icmp sge i32 %22, 2
  br i1 %23, label %24, label %30

24:                                               ; preds = %21
  %25 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %26 = load i8**, i8*** %5, align 8
  %27 = getelementptr inbounds i8*, i8** %26, i64 2
  %28 = load i8*, i8** %27, align 8
  %29 = call i32 @strcpy(i8* %25, i8* %28)
  br label %30

30:                                               ; preds = %24, %21
  %31 = load i32, i32* %4, align 4
  %32 = icmp sge i32 %31, 3
  br i1 %32, label %33, label %39

33:                                               ; preds = %30
  %34 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0
  %35 = load i8**, i8*** %5, align 8
  %36 = getelementptr inbounds i8*, i8** %35, i64 3
  %37 = load i8*, i8** %36, align 8
  %38 = call i32 @strcpy(i8* %34, i8* %37)
  br label %39

39:                                               ; preds = %33, %30
  %40 = load i8**, i8*** %5, align 8
  %41 = getelementptr inbounds i8*, i8** %40, i64 1
  %42 = load i8*, i8** %41, align 8
  %43 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %44 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0
  %45 = call i32* @taos_subscribe(i8* %42, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* %43, i8* %44, i32 0, i32 1000)
  store i32* %45, i32** %6, align 8
  %46 = load i32*, i32** %6, align 8
  %47 = icmp eq i32* %46, null
  br i1 %47, label %48, label %52

48:                                               ; preds = %39
  %49 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %50 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i8* %49)
  %51 = call i32 @exit(i32 1) #3
  unreachable

52:                                               ; preds = %39
  %53 = load i32*, i32** %6, align 8
  %54 = call i32* @taos_fetch_subfields(i32* %53)
  store i32* %54, i32** %11, align 8
  %55 = load i32*, i32** %6, align 8
  %56 = call i32 @taos_subfields_count(i32* %55)
  store i32 %56, i32* %12, align 4
  %57 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  %58 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %59 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0
  %60 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.5, i64 0, i64 0), i8* %58, i8* %59)
  br label %61

61:                                               ; preds = %52, %67
  %62 = load i32*, i32** %6, align 8
  %63 = call i32* @taos_consume(i32* %62)
  store i32* %63, i32** %7, align 8
  %64 = load i32*, i32** %7, align 8
  %65 = icmp eq i32* %64, null
  br i1 %65, label %66, label %67

66:                                               ; preds = %61
  br label %75

67:                                               ; preds = %61
  %68 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %69 = load i32*, i32** %7, align 8
  %70 = load i32*, i32** %11, align 8
  %71 = load i32, i32* %12, align 4
  %72 = call i32 @taos_print_row(i8* %68, i32* %69, i32* %70, i32 %71)
  %73 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %74 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8* %73)
  br label %61

75:                                               ; preds = %66
  %76 = load i32*, i32** %6, align 8
  %77 = call i32 @taos_unsubscribe(i32* %76)
  ret i32 0
}

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32* @taos_subscribe(i8*, i8*, i8*, i8*, i8*, i32, i32) #1

declare dso_local i32* @taos_fetch_subfields(i32*) #1

declare dso_local i32 @taos_subfields_count(i32*) #1

declare dso_local i32* @taos_consume(i32*) #1

declare dso_local i32 @taos_print_row(i8*, i32*, i32*, i32) #1

declare dso_local i32 @taos_unsubscribe(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
