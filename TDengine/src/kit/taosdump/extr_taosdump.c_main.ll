; ModuleID = '/home/carl/AnghaBench/TDengine/src/kit/taosdump/extr_taosdump.c_main.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/kit/taosdump/extr_taosdump.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arguments = type { i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32*, i32, i32, i32, i32*, i32, i32, i32, i32* }

@.str = private unnamed_addr constant [5 x i8] c"root\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"taosdata\00", align 1
@DEFAULT_DUMP_FILE = common dso_local global i32 0, align 4
@INT64_MAX = common dso_local global i32 0, align 4
@argp = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"ABORTED\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.arguments, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %7 = getelementptr inbounds %struct.arguments, %struct.arguments* %6, i32 0, i32 0
  store i8* null, i8** %7, align 8
  %8 = getelementptr inbounds %struct.arguments, %struct.arguments* %6, i32 0, i32 1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %8, align 8
  %9 = getelementptr inbounds %struct.arguments, %struct.arguments* %6, i32 0, i32 2
  store i32 ptrtoint ([9 x i8]* @.str.1 to i32), i32* %9, align 8
  %10 = getelementptr inbounds %struct.arguments, %struct.arguments* %6, i32 0, i32 3
  store i32 0, i32* %10, align 4
  %11 = getelementptr inbounds %struct.arguments, %struct.arguments* %6, i32 0, i32 4
  %12 = load i32, i32* @DEFAULT_DUMP_FILE, align 4
  store i32 %12, i32* %11, align 8
  %13 = getelementptr inbounds %struct.arguments, %struct.arguments* %6, i32 0, i32 5
  %14 = load i32, i32* @DEFAULT_DUMP_FILE, align 4
  store i32 %14, i32* %13, align 4
  %15 = getelementptr inbounds %struct.arguments, %struct.arguments* %6, i32 0, i32 6
  store i32 0, i32* %15, align 8
  %16 = getelementptr inbounds %struct.arguments, %struct.arguments* %6, i32 0, i32 7
  store i32 0, i32* %16, align 4
  %17 = getelementptr inbounds %struct.arguments, %struct.arguments* %6, i32 0, i32 8
  store i32 0, i32* %17, align 8
  %18 = getelementptr inbounds %struct.arguments, %struct.arguments* %6, i32 0, i32 9
  store i64 0, i64* %18, align 8
  %19 = getelementptr inbounds %struct.arguments, %struct.arguments* %6, i32 0, i32 10
  store i64 0, i64* %19, align 8
  %20 = getelementptr inbounds %struct.arguments, %struct.arguments* %6, i32 0, i32 11
  store i32 0, i32* %20, align 8
  %21 = getelementptr inbounds %struct.arguments, %struct.arguments* %6, i32 0, i32 12
  %22 = load i32, i32* @INT64_MAX, align 4
  %23 = sext i32 %22 to i64
  %24 = inttoptr i64 %23 to i32*
  store i32* %24, i32** %21, align 8
  %25 = getelementptr inbounds %struct.arguments, %struct.arguments* %6, i32 0, i32 13
  store i32 1, i32* %25, align 8
  %26 = getelementptr inbounds %struct.arguments, %struct.arguments* %6, i32 0, i32 14
  store i32 0, i32* %26, align 4
  %27 = getelementptr inbounds %struct.arguments, %struct.arguments* %6, i32 0, i32 15
  store i32 0, i32* %27, align 8
  %28 = getelementptr inbounds %struct.arguments, %struct.arguments* %6, i32 0, i32 16
  store i32* null, i32** %28, align 8
  %29 = getelementptr inbounds %struct.arguments, %struct.arguments* %6, i32 0, i32 17
  store i32 0, i32* %29, align 8
  %30 = getelementptr inbounds %struct.arguments, %struct.arguments* %6, i32 0, i32 18
  store i32 0, i32* %30, align 4
  %31 = getelementptr inbounds %struct.arguments, %struct.arguments* %6, i32 0, i32 19
  store i32 0, i32* %31, align 8
  %32 = getelementptr inbounds %struct.arguments, %struct.arguments* %6, i32 0, i32 20
  store i32* null, i32** %32, align 8
  %33 = load i32, i32* %4, align 4
  %34 = load i8**, i8*** %5, align 8
  %35 = call i32 @argp_parse(i32* @argp, i32 %33, i8** %34, i32 0, i32 0, %struct.arguments* %6)
  %36 = getelementptr inbounds %struct.arguments, %struct.arguments* %6, i32 0, i32 10
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %2
  %40 = call i32 @error(i32 10, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  br label %41

41:                                               ; preds = %39, %2
  %42 = call i64 @taosCheckParam(%struct.arguments* %6)
  %43 = icmp slt i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %41
  %45 = load i32, i32* @EXIT_FAILURE, align 4
  %46 = call i32 @exit(i32 %45) #3
  unreachable

47:                                               ; preds = %41
  %48 = getelementptr inbounds %struct.arguments, %struct.arguments* %6, i32 0, i32 9
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %47
  %52 = call i64 @taosDumpIn(%struct.arguments* %6)
  %53 = icmp slt i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %51
  store i32 -1, i32* %3, align 4
  br label %62

55:                                               ; preds = %51
  br label %61

56:                                               ; preds = %47
  %57 = call i64 @taosDumpOut(%struct.arguments* %6)
  %58 = icmp slt i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %56
  store i32 -1, i32* %3, align 4
  br label %62

60:                                               ; preds = %56
  br label %61

61:                                               ; preds = %60, %55
  store i32 0, i32* %3, align 4
  br label %62

62:                                               ; preds = %61, %59, %54
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i32 @argp_parse(i32*, i32, i8**, i32, i32, %struct.arguments*) #1

declare dso_local i32 @error(i32, i32, i8*) #1

declare dso_local i64 @taosCheckParam(%struct.arguments*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i64 @taosDumpIn(%struct.arguments*) #1

declare dso_local i64 @taosDumpOut(%struct.arguments*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
