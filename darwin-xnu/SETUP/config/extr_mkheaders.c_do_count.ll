; ModuleID = '/home/carl/AnghaBench/darwin-xnu/SETUP/config/extr_mkheaders.c_do_count.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/SETUP/config/extr_mkheaders.c_do_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i64, i64, i64, i32, %struct.device* }

@dtab = common dso_local global %struct.device* null, align 8
@PSEUDO_DEVICE = common dso_local global i64 0, align 8
@UNKNOWN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @do_count(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.device*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %8, align 4
  %9 = load %struct.device*, %struct.device** @dtab, align 8
  store %struct.device* %9, %struct.device** %7, align 8
  br label %10

10:                                               ; preds = %48, %3
  %11 = load %struct.device*, %struct.device** %7, align 8
  %12 = icmp ne %struct.device* %11, null
  br i1 %12, label %13, label %52

13:                                               ; preds = %10
  %14 = load %struct.device*, %struct.device** %7, align 8
  %15 = getelementptr inbounds %struct.device, %struct.device* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 8
  %17 = load i8*, i8** %4, align 8
  %18 = call i64 @eq(i32 %16, i8* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %47

20:                                               ; preds = %13
  %21 = load %struct.device*, %struct.device** %7, align 8
  %22 = getelementptr inbounds %struct.device, %struct.device* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @PSEUDO_DEVICE, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %46

26:                                               ; preds = %20
  %27 = load %struct.device*, %struct.device** %7, align 8
  %28 = getelementptr inbounds %struct.device, %struct.device* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @UNKNOWN, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %26
  %33 = load %struct.device*, %struct.device** %7, align 8
  %34 = getelementptr inbounds %struct.device, %struct.device* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  br label %37

36:                                               ; preds = %26
  br label %37

37:                                               ; preds = %36, %32
  %38 = phi i64 [ %35, %32 ], [ 1, %36 ]
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %8, align 4
  %40 = load %struct.device*, %struct.device** %7, align 8
  %41 = getelementptr inbounds %struct.device, %struct.device* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %37
  store i8* null, i8** %4, align 8
  br label %45

45:                                               ; preds = %44, %37
  br label %52

46:                                               ; preds = %20
  br label %47

47:                                               ; preds = %46, %13
  br label %48

48:                                               ; preds = %47
  %49 = load %struct.device*, %struct.device** %7, align 8
  %50 = getelementptr inbounds %struct.device, %struct.device* %49, i32 0, i32 4
  %51 = load %struct.device*, %struct.device** %50, align 8
  store %struct.device* %51, %struct.device** %7, align 8
  br label %10

52:                                               ; preds = %45, %10
  %53 = load i8*, i8** %4, align 8
  %54 = load i8*, i8** %5, align 8
  %55 = load i32, i32* %8, align 4
  %56 = call i32 @do_header(i8* %53, i8* %54, i32 %55)
  ret void
}

declare dso_local i64 @eq(i32, i8*) #1

declare dso_local i32 @do_header(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
