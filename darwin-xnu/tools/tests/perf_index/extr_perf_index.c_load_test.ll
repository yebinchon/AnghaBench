; ModuleID = '/home/carl/AnghaBench/darwin-xnu/tools/tests/perf_index/extr_perf_index.c_load_test.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/tools/tests/perf_index/extr_perf_index.c_load_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 (i32, i64, i32, i8**)*, i32 (i32, i32, i64, i32, i8**)*, i32 (i32, i64)*, i8** }

@RTLD_NOW = common dso_local global i32 0, align 4
@RTLD_LOCAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"setup\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"execute\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"cleanup\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"error_str\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @load_test(i8* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = load i32, i32* @RTLD_NOW, align 4
  %10 = load i32, i32* @RTLD_LOCAL, align 4
  %11 = or i32 %9, %10
  %12 = call i8* @dlopen(i8* %8, i32 %11)
  store i8* %12, i8** %6, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %45

16:                                               ; preds = %2
  %17 = load i8*, i8** %6, align 8
  %18 = call i8* @dlsym(i8* %17, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i8* %18, i8** %7, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = bitcast i8* %19 to i32 (i32, i64, i32, i8**)*
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  store i32 (i32, i64, i32, i8**)* %20, i32 (i32, i64, i32, i8**)** %22, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = call i8* @dlsym(i8* %23, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  store i8* %24, i8** %7, align 8
  %25 = load i8*, i8** %7, align 8
  %26 = bitcast i8* %25 to i32 (i32, i32, i64, i32, i8**)*
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  store i32 (i32, i32, i64, i32, i8**)* %26, i32 (i32, i32, i64, i32, i8**)** %28, align 8
  %29 = load i8*, i8** %7, align 8
  %30 = icmp eq i8* %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %16
  store i32 -1, i32* %3, align 4
  br label %45

32:                                               ; preds = %16
  %33 = load i8*, i8** %6, align 8
  %34 = call i8* @dlsym(i8* %33, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  store i8* %34, i8** %7, align 8
  %35 = load i8*, i8** %7, align 8
  %36 = bitcast i8* %35 to i32 (i32, i64)*
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 2
  store i32 (i32, i64)* %36, i32 (i32, i64)** %38, align 8
  %39 = load i8*, i8** %6, align 8
  %40 = call i8* @dlsym(i8* %39, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  store i8* %40, i8** %7, align 8
  %41 = load i8*, i8** %7, align 8
  %42 = bitcast i8* %41 to i8**
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 3
  store i8** %42, i8*** %44, align 8
  store i32 0, i32* %3, align 4
  br label %45

45:                                               ; preds = %32, %31, %15
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i8* @dlopen(i8*, i32) #1

declare dso_local i8* @dlsym(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
