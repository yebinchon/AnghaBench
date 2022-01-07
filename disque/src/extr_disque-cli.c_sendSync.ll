; ModuleID = '/home/carl/AnghaBench/disque/src/extr_disque-cli.c_sendSync.c'
source_filename = "/home/carl/AnghaBench/disque/src/extr_disque-cli.c_sendSync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"SYNC\0D\0A\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Error writing to master\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"Error reading bulk length while SYNCing\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"SYNC with master failed: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @sendSync(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca [4096 x i8], align 16
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = call i32 @write(i32 %6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 6)
  %8 = icmp ne i32 %7, 6
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = load i32, i32* @stderr, align 4
  %11 = call i32 @fprintf(i32 %10, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %12 = call i32 @exit(i32 1) #3
  unreachable

13:                                               ; preds = %1
  %14 = getelementptr inbounds [4096 x i8], [4096 x i8]* %3, i64 0, i64 0
  store i8* %14, i8** %4, align 8
  br label %15

15:                                               ; preds = %13, %43
  %16 = load i32, i32* %2, align 4
  %17 = load i8*, i8** %4, align 8
  %18 = call i64 @read(i32 %16, i8* %17, i32 1)
  store i64 %18, i64* %5, align 8
  %19 = load i64, i64* %5, align 8
  %20 = icmp sle i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %15
  %22 = load i32, i32* @stderr, align 4
  %23 = call i32 @fprintf(i32 %22, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  %24 = call i32 @exit(i32 1) #3
  unreachable

25:                                               ; preds = %15
  %26 = load i8*, i8** %4, align 8
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp eq i32 %28, 10
  br i1 %29, label %30, label %35

30:                                               ; preds = %25
  %31 = load i8*, i8** %4, align 8
  %32 = getelementptr inbounds [4096 x i8], [4096 x i8]* %3, i64 0, i64 0
  %33 = icmp ne i8* %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  br label %44

35:                                               ; preds = %30, %25
  %36 = load i8*, i8** %4, align 8
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp ne i32 %38, 10
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  %41 = load i8*, i8** %4, align 8
  %42 = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %42, i8** %4, align 8
  br label %43

43:                                               ; preds = %40, %35
  br label %15

44:                                               ; preds = %34
  %45 = load i8*, i8** %4, align 8
  store i8 0, i8* %45, align 1
  %46 = getelementptr inbounds [4096 x i8], [4096 x i8]* %3, i64 0, i64 0
  %47 = load i8, i8* %46, align 16
  %48 = sext i8 %47 to i32
  %49 = icmp eq i32 %48, 45
  br i1 %49, label %50, label %54

50:                                               ; preds = %44
  %51 = getelementptr inbounds [4096 x i8], [4096 x i8]* %3, i64 0, i64 0
  %52 = call i32 @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i8* %51)
  %53 = call i32 @exit(i32 1) #3
  unreachable

54:                                               ; preds = %44
  %55 = getelementptr inbounds [4096 x i8], [4096 x i8]* %3, i64 0, i64 0
  %56 = getelementptr inbounds i8, i8* %55, i64 1
  %57 = call i64 @strtoull(i8* %56, i32* null, i32 10)
  ret i64 %57
}

declare dso_local i32 @write(i32, i8*, i32) #1

declare dso_local i32 @fprintf(i32, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i64 @read(i32, i8*, i32) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i64 @strtoull(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
