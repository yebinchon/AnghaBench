; ModuleID = '/home/carl/AnghaBench/8cc/extr_parse.c_read_int_suffix.c'
source_filename = "/home/carl/AnghaBench/8cc/extr_parse.c_read_int_suffix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"u\00", align 1
@type_uint = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"l\00", align 1
@type_long = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [3 x i8] c"ul\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"lu\00", align 1
@type_ulong = common dso_local global i32* null, align 8
@.str.4 = private unnamed_addr constant [3 x i8] c"ll\00", align 1
@type_llong = common dso_local global i32* null, align 8
@.str.5 = private unnamed_addr constant [4 x i8] c"ull\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"llu\00", align 1
@type_ullong = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*)* @read_int_suffix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @read_int_suffix(i8* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %4 = load i8*, i8** %3, align 8
  %5 = call i32 @strcasecmp(i8* %4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = load i32*, i32** @type_uint, align 8
  store i32* %8, i32** %2, align 8
  br label %42

9:                                                ; preds = %1
  %10 = load i8*, i8** %3, align 8
  %11 = call i32 @strcasecmp(i8* %10, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %9
  %14 = load i32*, i32** @type_long, align 8
  store i32* %14, i32** %2, align 8
  br label %42

15:                                               ; preds = %9
  %16 = load i8*, i8** %3, align 8
  %17 = call i32 @strcasecmp(i8* %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %15
  %20 = load i8*, i8** %3, align 8
  %21 = call i32 @strcasecmp(i8* %20, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %19, %15
  %24 = load i32*, i32** @type_ulong, align 8
  store i32* %24, i32** %2, align 8
  br label %42

25:                                               ; preds = %19
  %26 = load i8*, i8** %3, align 8
  %27 = call i32 @strcasecmp(i8* %26, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %25
  %30 = load i32*, i32** @type_llong, align 8
  store i32* %30, i32** %2, align 8
  br label %42

31:                                               ; preds = %25
  %32 = load i8*, i8** %3, align 8
  %33 = call i32 @strcasecmp(i8* %32, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %31
  %36 = load i8*, i8** %3, align 8
  %37 = call i32 @strcasecmp(i8* %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %35, %31
  %40 = load i32*, i32** @type_ullong, align 8
  store i32* %40, i32** %2, align 8
  br label %42

41:                                               ; preds = %35
  store i32* null, i32** %2, align 8
  br label %42

42:                                               ; preds = %41, %39, %29, %23, %13, %7
  %43 = load i32*, i32** %2, align 8
  ret i32* %43
}

declare dso_local i32 @strcasecmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
