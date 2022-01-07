; ModuleID = '/home/carl/AnghaBench/curl/src/extr_tool_paramhlp.c_str2tls_max.c'
source_filename = "/home/carl/AnghaBench/curl/src/extr_tool_paramhlp.c_str2tls_max.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s_tls_max = type { i8*, i64 }

@str2tls_max.tls_max_array = internal constant [5 x %struct.s_tls_max] [%struct.s_tls_max { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i64 132 }, %struct.s_tls_max { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i64 131 }, %struct.s_tls_max { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i64 130 }, %struct.s_tls_max { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), i64 129 }, %struct.s_tls_max { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), i64 128 }], align 16
@.str = private unnamed_addr constant [8 x i8] c"default\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"1.0\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"1.1\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"1.2\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"1.3\00", align 1
@PARAM_REQUIRES_PARAMETER = common dso_local global i32 0, align 4
@PARAM_OK = common dso_local global i32 0, align 4
@PARAM_BAD_USE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @str2tls_max(i64* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i64* %0, i64** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 0, i64* %6, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = icmp ne i8* %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %2
  %10 = load i32, i32* @PARAM_REQUIRES_PARAMETER, align 4
  store i32 %10, i32* %3, align 4
  br label %36

11:                                               ; preds = %2
  store i64 0, i64* %6, align 8
  br label %12

12:                                               ; preds = %31, %11
  %13 = load i64, i64* %6, align 8
  %14 = icmp ult i64 %13, 5
  br i1 %14, label %15, label %34

15:                                               ; preds = %12
  %16 = load i8*, i8** %5, align 8
  %17 = load i64, i64* %6, align 8
  %18 = getelementptr inbounds [5 x %struct.s_tls_max], [5 x %struct.s_tls_max]* @str2tls_max.tls_max_array, i64 0, i64 %17
  %19 = getelementptr inbounds %struct.s_tls_max, %struct.s_tls_max* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 16
  %21 = call i32 @strcmp(i8* %16, i8* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %30, label %23

23:                                               ; preds = %15
  %24 = load i64, i64* %6, align 8
  %25 = getelementptr inbounds [5 x %struct.s_tls_max], [5 x %struct.s_tls_max]* @str2tls_max.tls_max_array, i64 0, i64 %24
  %26 = getelementptr inbounds %struct.s_tls_max, %struct.s_tls_max* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load i64*, i64** %4, align 8
  store i64 %27, i64* %28, align 8
  %29 = load i32, i32* @PARAM_OK, align 4
  store i32 %29, i32* %3, align 4
  br label %36

30:                                               ; preds = %15
  br label %31

31:                                               ; preds = %30
  %32 = load i64, i64* %6, align 8
  %33 = add i64 %32, 1
  store i64 %33, i64* %6, align 8
  br label %12

34:                                               ; preds = %12
  %35 = load i32, i32* @PARAM_BAD_USE, align 4
  store i32 %35, i32* %3, align 4
  br label %36

36:                                               ; preds = %34, %23, %9
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i32 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
