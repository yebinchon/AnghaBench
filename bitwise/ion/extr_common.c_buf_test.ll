; ModuleID = '/home/carl/AnghaBench/bitwise/ion/extr_common.c_buf_test.c'
source_filename = "/home/carl/AnghaBench/bitwise/ion/extr_common.c_buf_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"One: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"One: 1\0A\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"Hex: 0x%x\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"One: 1\0AHex: 0x12345678\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @buf_test() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  store i32* null, i32** %1, align 8
  %6 = load i32*, i32** %1, align 8
  %7 = call i64 @buf_len(i32* %6)
  %8 = icmp eq i64 %7, 0
  %9 = zext i1 %8 to i32
  %10 = call i32 @assert(i32 %9)
  store i32 1024, i32* %2, align 4
  store i32 0, i32* %3, align 4
  br label %11

11:                                               ; preds = %19, %0
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* %2, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %22

15:                                               ; preds = %11
  %16 = load i32*, i32** %1, align 8
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @buf_push(i32* %16, i32 %17)
  br label %19

19:                                               ; preds = %15
  %20 = load i32, i32* %3, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %3, align 4
  br label %11

22:                                               ; preds = %11
  %23 = load i32*, i32** %1, align 8
  %24 = call i64 @buf_len(i32* %23)
  %25 = load i32, i32* %2, align 4
  %26 = sext i32 %25 to i64
  %27 = icmp eq i64 %24, %26
  %28 = zext i1 %27 to i32
  %29 = call i32 @assert(i32 %28)
  store i64 0, i64* %4, align 8
  br label %30

30:                                               ; preds = %45, %22
  %31 = load i64, i64* %4, align 8
  %32 = load i32*, i32** %1, align 8
  %33 = call i64 @buf_len(i32* %32)
  %34 = icmp ult i64 %31, %33
  br i1 %34, label %35, label %48

35:                                               ; preds = %30
  %36 = load i32*, i32** %1, align 8
  %37 = load i64, i64* %4, align 8
  %38 = getelementptr inbounds i32, i32* %36, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = sext i32 %39 to i64
  %41 = load i64, i64* %4, align 8
  %42 = icmp eq i64 %40, %41
  %43 = zext i1 %42 to i32
  %44 = call i32 @assert(i32 %43)
  br label %45

45:                                               ; preds = %35
  %46 = load i64, i64* %4, align 8
  %47 = add i64 %46, 1
  store i64 %47, i64* %4, align 8
  br label %30

48:                                               ; preds = %30
  %49 = load i32*, i32** %1, align 8
  %50 = call i32 @buf_free(i32* %49)
  %51 = load i32*, i32** %1, align 8
  %52 = icmp eq i32* %51, null
  %53 = zext i1 %52 to i32
  %54 = call i32 @assert(i32 %53)
  %55 = load i32*, i32** %1, align 8
  %56 = call i64 @buf_len(i32* %55)
  %57 = icmp eq i64 %56, 0
  %58 = zext i1 %57 to i32
  %59 = call i32 @assert(i32 %58)
  store i8* null, i8** %5, align 8
  %60 = load i8*, i8** %5, align 8
  %61 = call i32 @buf_printf(i8* %60, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 1)
  %62 = load i8*, i8** %5, align 8
  %63 = call i64 @strcmp(i8* %62, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %64 = icmp eq i64 %63, 0
  %65 = zext i1 %64 to i32
  %66 = call i32 @assert(i32 %65)
  %67 = load i8*, i8** %5, align 8
  %68 = call i32 @buf_printf(i8* %67, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 305419896)
  %69 = load i8*, i8** %5, align 8
  %70 = call i64 @strcmp(i8* %69, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  %71 = icmp eq i64 %70, 0
  %72 = zext i1 %71 to i32
  %73 = call i32 @assert(i32 %72)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @buf_len(i32*) #1

declare dso_local i32 @buf_push(i32*, i32) #1

declare dso_local i32 @buf_free(i32*) #1

declare dso_local i32 @buf_printf(i8*, i8*, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
