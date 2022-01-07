; ModuleID = '/home/carl/AnghaBench/TDengine/src/kit/taosdump/extr_taosdump.c_taosCheckParam.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/kit/taosdump/extr_taosdump.c_taosCheckParam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arguments = type { i64, i64, i64, i32*, i64, i32, i64, i64 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"conflict option --all-databases and --databases\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"start time is larger than end time\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"taosdump requires parameters\0A\00", align 1
@DEFAULT_DUMP_FILE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [43 x i8] c"duplicate parameter input and output file\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"invalid option in dump out\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @taosCheckParam(%struct.arguments* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.arguments*, align 8
  store %struct.arguments* %0, %struct.arguments** %3, align 8
  %4 = load %struct.arguments*, %struct.arguments** %3, align 8
  %5 = getelementptr inbounds %struct.arguments, %struct.arguments* %4, i32 0, i32 6
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %16

8:                                                ; preds = %1
  %9 = load %struct.arguments*, %struct.arguments** %3, align 8
  %10 = getelementptr inbounds %struct.arguments, %struct.arguments* %9, i32 0, i32 7
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %8
  %14 = load i32, i32* @stderr, align 4
  %15 = call i32 @fprintf(i32 %14, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %75

16:                                               ; preds = %8, %1
  %17 = load %struct.arguments*, %struct.arguments** %3, align 8
  %18 = getelementptr inbounds %struct.arguments, %struct.arguments* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.arguments*, %struct.arguments** %3, align 8
  %21 = getelementptr inbounds %struct.arguments, %struct.arguments* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp sgt i64 %19, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %16
  %25 = load i32, i32* @stderr, align 4
  %26 = call i32 @fprintf(i32 %25, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %75

27:                                               ; preds = %16
  %28 = load %struct.arguments*, %struct.arguments** %3, align 8
  %29 = getelementptr inbounds %struct.arguments, %struct.arguments* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %46

32:                                               ; preds = %27
  %33 = load %struct.arguments*, %struct.arguments** %3, align 8
  %34 = getelementptr inbounds %struct.arguments, %struct.arguments* %33, i32 0, i32 6
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %45, label %37

37:                                               ; preds = %32
  %38 = load %struct.arguments*, %struct.arguments** %3, align 8
  %39 = getelementptr inbounds %struct.arguments, %struct.arguments* %38, i32 0, i32 4
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %37
  %43 = load i32, i32* @stderr, align 4
  %44 = call i32 @fprintf(i32 %43, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %75

45:                                               ; preds = %37, %32
  br label %46

46:                                               ; preds = %45, %27
  %47 = load %struct.arguments*, %struct.arguments** %3, align 8
  %48 = getelementptr inbounds %struct.arguments, %struct.arguments* %47, i32 0, i32 4
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %61

51:                                               ; preds = %46
  %52 = load %struct.arguments*, %struct.arguments** %3, align 8
  %53 = getelementptr inbounds %struct.arguments, %struct.arguments* %52, i32 0, i32 5
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @DEFAULT_DUMP_FILE, align 4
  %56 = call i64 @strcmp(i32 %54, i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %51
  %59 = load i32, i32* @stderr, align 4
  %60 = call i32 @fprintf(i32 %59, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %75

61:                                               ; preds = %51, %46
  %62 = load %struct.arguments*, %struct.arguments** %3, align 8
  %63 = getelementptr inbounds %struct.arguments, %struct.arguments* %62, i32 0, i32 4
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %74, label %66

66:                                               ; preds = %61
  %67 = load %struct.arguments*, %struct.arguments** %3, align 8
  %68 = getelementptr inbounds %struct.arguments, %struct.arguments* %67, i32 0, i32 3
  %69 = load i32*, i32** %68, align 8
  %70 = icmp ne i32* %69, null
  br i1 %70, label %71, label %74

71:                                               ; preds = %66
  %72 = load i32, i32* @stderr, align 4
  %73 = call i32 @fprintf(i32 %72, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %75

74:                                               ; preds = %66, %61
  store i32 0, i32* %2, align 4
  br label %75

75:                                               ; preds = %74, %71, %58, %42, %24, %13
  %76 = load i32, i32* %2, align 4
  ret i32 %76
}

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i64 @strcmp(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
