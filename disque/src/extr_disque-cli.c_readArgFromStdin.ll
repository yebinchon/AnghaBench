; ModuleID = '/home/carl/AnghaBench/disque/src/extr_disque-cli.c_readArgFromStdin.c'
source_filename = "/home/carl/AnghaBench/disque/src/extr_disque-cli.c_readArgFromStdin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stdin = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Reading from standard input\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @readArgFromStdin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @readArgFromStdin() #0 {
  %1 = alloca [1024 x i8], align 16
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = call i32 (...) @sdsempty()
  store i32 %4, i32* %2, align 4
  br label %5

5:                                                ; preds = %0, %20
  %6 = load i32, i32* @stdin, align 4
  %7 = call i32 @fileno(i32 %6)
  %8 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i64 0, i64 0
  %9 = call i32 @read(i32 %7, i8* %8, i32 1024)
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %5
  br label %25

13:                                               ; preds = %5
  %14 = load i32, i32* %3, align 4
  %15 = icmp eq i32 %14, -1
  br i1 %15, label %16, label %19

16:                                               ; preds = %13
  %17 = call i32 @perror(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %18 = call i32 @exit(i32 1) #3
  unreachable

19:                                               ; preds = %13
  br label %20

20:                                               ; preds = %19
  %21 = load i32, i32* %2, align 4
  %22 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i64 0, i64 0
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @sdscatlen(i32 %21, i8* %22, i32 %23)
  store i32 %24, i32* %2, align 4
  br label %5

25:                                               ; preds = %12
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

declare dso_local i32 @sdsempty(...) #1

declare dso_local i32 @read(i32, i8*, i32) #1

declare dso_local i32 @fileno(i32) #1

declare dso_local i32 @perror(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @sdscatlen(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
