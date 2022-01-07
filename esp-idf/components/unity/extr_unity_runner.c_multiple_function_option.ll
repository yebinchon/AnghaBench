; ModuleID = '/home/carl/AnghaBench/esp-idf/components/unity/extr_unity_runner.c_multiple_function_option.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/unity/extr_unity_runner.c_multiple_function_option.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32* }

@.str = private unnamed_addr constant [47 x i8] c"Invalid selection, your should input number 1-\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*)* @multiple_function_option to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @multiple_function_option(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca [256 x i8], align 16
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %5 = bitcast [256 x i8]* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %5, i8 0, i64 256, i1 false)
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %7 = call i32 @print_multiple_function_test_menu(%struct.TYPE_4__* %6)
  br label %8

8:                                                ; preds = %21, %1
  %9 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0
  %10 = call i64 @strlen(i8* %9)
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %22

12:                                               ; preds = %8
  %13 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0
  %14 = call i32 @unity_gets(i8* %13, i32 256)
  %15 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0
  %16 = call i64 @strlen(i8* %15)
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %12
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %20 = call i32 @print_multiple_function_test_menu(%struct.TYPE_4__* %19)
  br label %21

21:                                               ; preds = %18, %12
  br label %8

22:                                               ; preds = %8
  %23 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0
  %24 = call i32 @atoi(i8* %23)
  %25 = sub nsw i32 %24, 1
  store i32 %25, i32* %3, align 4
  %26 = load i32, i32* %3, align 4
  %27 = icmp sge i32 %26, 0
  br i1 %27, label %28, label %49

28:                                               ; preds = %22
  %29 = load i32, i32* %3, align 4
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp slt i32 %29, %32
  br i1 %33, label %34, label %49

34:                                               ; preds = %28
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 3
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %3, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @unity_default_test_run(i32 %41, i32 %44, i32 %47)
  br label %56

49:                                               ; preds = %28, %22
  %50 = call i32 @UnityPrint(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @UnityPrintNumber(i32 %53)
  %55 = call i32 (...) @UNITY_PRINT_EOL()
  br label %56

56:                                               ; preds = %49, %34
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @print_multiple_function_test_menu(%struct.TYPE_4__*) #2

declare dso_local i64 @strlen(i8*) #2

declare dso_local i32 @unity_gets(i8*, i32) #2

declare dso_local i32 @atoi(i8*) #2

declare dso_local i32 @unity_default_test_run(i32, i32, i32) #2

declare dso_local i32 @UnityPrint(i8*) #2

declare dso_local i32 @UnityPrintNumber(i32) #2

declare dso_local i32 @UNITY_PRINT_EOL(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
