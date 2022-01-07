; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/tools/extr_pngfix.c_read_byte.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/tools/extr_pngfix.c_read_byte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32, i64, i32, i32 }

@EOF = common dso_local global i32 0, align 4
@INTERNAL_ERROR = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i64 0, align 8
@UNEXPECTED_ERROR_CODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"file read\00", align 1
@errno = common dso_local global i64 0, align 8
@EDOM = common dso_local global i64 0, align 8
@TRUNCATED = common dso_local global i32 0, align 4
@EINTR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*)* @read_byte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_byte(%struct.file* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.file*, align 8
  %4 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %3, align 8
  %5 = load %struct.file*, %struct.file** %3, align 8
  %6 = getelementptr inbounds %struct.file, %struct.file* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 8
  %8 = call i32 @getc(i32 %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp sge i32 %9, 0
  br i1 %10, label %11, label %20

11:                                               ; preds = %1
  %12 = load i32, i32* %4, align 4
  %13 = icmp sle i32 %12, 255
  br i1 %13, label %14, label %20

14:                                               ; preds = %11
  %15 = load %struct.file*, %struct.file** %3, align 8
  %16 = getelementptr inbounds %struct.file, %struct.file* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %16, align 4
  %19 = load i32, i32* %4, align 4
  store i32 %19, i32* %2, align 4
  br label %69

20:                                               ; preds = %11, %1
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @EOF, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %24, label %36

24:                                               ; preds = %20
  %25 = load i32, i32* @INTERNAL_ERROR, align 4
  %26 = load %struct.file*, %struct.file** %3, align 8
  %27 = getelementptr inbounds %struct.file, %struct.file* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = or i32 %28, %25
  store i32 %29, i32* %27, align 8
  %30 = load i64, i64* @ERANGE, align 8
  %31 = load %struct.file*, %struct.file** %3, align 8
  %32 = getelementptr inbounds %struct.file, %struct.file* %31, i32 0, i32 1
  store i64 %30, i64* %32, align 8
  %33 = load %struct.file*, %struct.file** %3, align 8
  %34 = load i32, i32* @UNEXPECTED_ERROR_CODE, align 4
  %35 = call i32 @emit_error(%struct.file* %33, i32 %34, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  br label %61

36:                                               ; preds = %20
  %37 = load %struct.file*, %struct.file** %3, align 8
  %38 = getelementptr inbounds %struct.file, %struct.file* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = call i64 @ferror(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %36
  %43 = load i64, i64* @errno, align 8
  %44 = load %struct.file*, %struct.file** %3, align 8
  %45 = getelementptr inbounds %struct.file, %struct.file* %44, i32 0, i32 1
  store i64 %43, i64* %45, align 8
  br label %60

46:                                               ; preds = %36
  %47 = load %struct.file*, %struct.file** %3, align 8
  %48 = getelementptr inbounds %struct.file, %struct.file* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = call i64 @feof(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %46
  %53 = load %struct.file*, %struct.file** %3, align 8
  %54 = getelementptr inbounds %struct.file, %struct.file* %53, i32 0, i32 1
  store i64 0, i64* %54, align 8
  br label %59

55:                                               ; preds = %46
  %56 = load i64, i64* @EDOM, align 8
  %57 = load %struct.file*, %struct.file** %3, align 8
  %58 = getelementptr inbounds %struct.file, %struct.file* %57, i32 0, i32 1
  store i64 %56, i64* %58, align 8
  br label %59

59:                                               ; preds = %55, %52
  br label %60

60:                                               ; preds = %59, %42
  br label %61

61:                                               ; preds = %60, %24
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* @TRUNCATED, align 4
  %64 = load %struct.file*, %struct.file** %3, align 8
  %65 = getelementptr inbounds %struct.file, %struct.file* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = or i32 %66, %63
  store i32 %67, i32* %65, align 8
  %68 = load i32, i32* @EOF, align 4
  store i32 %68, i32* %2, align 4
  br label %69

69:                                               ; preds = %62, %14
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

declare dso_local i32 @getc(i32) #1

declare dso_local i32 @emit_error(%struct.file*, i32, i8*) #1

declare dso_local i64 @ferror(i32) #1

declare dso_local i64 @feof(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
