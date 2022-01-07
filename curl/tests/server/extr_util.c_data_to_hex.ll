; ModuleID = '/home/carl/AnghaBench/curl/tests/server/extr_util.c_data_to_hex.c'
source_filename = "/home/carl/AnghaBench/curl/tests/server/extr_util.c_data_to_hex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@data_to_hex.buf = internal global [768 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [7 x i8] c"%%%02x\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @data_to_hex(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  store i8* getelementptr inbounds ([768 x i8], [768 x i8]* @data_to_hex.buf, i64 0, i64 0), i8** %6, align 8
  %8 = load i8*, i8** %3, align 8
  store i8* %8, i8** %7, align 8
  %9 = load i64, i64* %4, align 8
  %10 = icmp ugt i64 %9, 255
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i64 255, i64* %4, align 8
  br label %12

12:                                               ; preds = %11, %2
  store i64 0, i64* %5, align 8
  br label %13

13:                                               ; preds = %47, %12
  %14 = load i64, i64* %5, align 8
  %15 = load i64, i64* %4, align 8
  %16 = icmp ult i64 %14, %15
  br i1 %16, label %17, label %50

17:                                               ; preds = %13
  %18 = load i8*, i8** %3, align 8
  %19 = load i64, i64* %5, align 8
  %20 = getelementptr inbounds i8, i8* %18, i64 %19
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp sge i32 %22, 32
  br i1 %23, label %24, label %37

24:                                               ; preds = %17
  %25 = load i8*, i8** %3, align 8
  %26 = load i64, i64* %5, align 8
  %27 = getelementptr inbounds i8, i8* %25, i64 %26
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp slt i32 %29, 127
  br i1 %30, label %31, label %37

31:                                               ; preds = %24
  %32 = load i8*, i8** %7, align 8
  %33 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %33, i8** %7, align 8
  %34 = load i8, i8* %32, align 1
  %35 = load i8*, i8** %6, align 8
  %36 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %36, i8** %6, align 8
  store i8 %34, i8* %35, align 1
  br label %46

37:                                               ; preds = %24, %17
  %38 = load i8*, i8** %6, align 8
  %39 = load i8*, i8** %7, align 8
  %40 = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %40, i8** %7, align 8
  %41 = load i8, i8* %39, align 1
  %42 = sext i8 %41 to i32
  %43 = call i32 @msnprintf(i8* %38, i32 4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %42)
  %44 = load i8*, i8** %6, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 3
  store i8* %45, i8** %6, align 8
  br label %46

46:                                               ; preds = %37, %31
  br label %47

47:                                               ; preds = %46
  %48 = load i64, i64* %5, align 8
  %49 = add i64 %48, 1
  store i64 %49, i64* %5, align 8
  br label %13

50:                                               ; preds = %13
  %51 = load i8*, i8** %6, align 8
  store i8 0, i8* %51, align 1
  ret i8* getelementptr inbounds ([768 x i8], [768 x i8]* @data_to_hex.buf, i64 0, i64 0)
}

declare dso_local i32 @msnprintf(i8*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
