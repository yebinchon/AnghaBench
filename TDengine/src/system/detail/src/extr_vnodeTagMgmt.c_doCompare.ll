; ModuleID = '/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_vnodeTagMgmt.c_doCompare.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_vnodeTagMgmt.c_doCompare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TSDB_NCHAR_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @doCompare(i8* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* %8, align 4
  switch i32 %12, label %67 [
    i32 131, label %13
    i32 133, label %19
    i32 132, label %25
    i32 135, label %31
    i32 129, label %37
    i32 128, label %43
    i32 134, label %43
    i32 130, label %49
  ]

13:                                               ; preds = %4
  %14 = load i8*, i8** %6, align 8
  %15 = call i32 @GET_INT32_VAL(i8* %14)
  %16 = load i8*, i8** %7, align 8
  %17 = call i32 @GET_INT32_VAL(i8* %16)
  %18 = call i32 @DEFAULT_COMP(i32 %15, i32 %17)
  br label %19

19:                                               ; preds = %4, %13
  %20 = load i8*, i8** %6, align 8
  %21 = call i32 @GET_DOUBLE_VAL(i8* %20)
  %22 = load i8*, i8** %7, align 8
  %23 = call i32 @GET_DOUBLE_VAL(i8* %22)
  %24 = call i32 @DEFAULT_COMP(i32 %21, i32 %23)
  br label %25

25:                                               ; preds = %4, %19
  %26 = load i8*, i8** %6, align 8
  %27 = call i32 @GET_FLOAT_VAL(i8* %26)
  %28 = load i8*, i8** %7, align 8
  %29 = call i32 @GET_FLOAT_VAL(i8* %28)
  %30 = call i32 @DEFAULT_COMP(i32 %27, i32 %29)
  br label %31

31:                                               ; preds = %4, %25
  %32 = load i8*, i8** %6, align 8
  %33 = call i32 @GET_INT64_VAL(i8* %32)
  %34 = load i8*, i8** %7, align 8
  %35 = call i32 @GET_INT64_VAL(i8* %34)
  %36 = call i32 @DEFAULT_COMP(i32 %33, i32 %35)
  br label %37

37:                                               ; preds = %4, %31
  %38 = load i8*, i8** %6, align 8
  %39 = call i32 @GET_INT16_VAL(i8* %38)
  %40 = load i8*, i8** %7, align 8
  %41 = call i32 @GET_INT16_VAL(i8* %40)
  %42 = call i32 @DEFAULT_COMP(i32 %39, i32 %41)
  br label %43

43:                                               ; preds = %4, %4, %37
  %44 = load i8*, i8** %6, align 8
  %45 = call i32 @GET_INT8_VAL(i8* %44)
  %46 = load i8*, i8** %7, align 8
  %47 = call i32 @GET_INT8_VAL(i8* %46)
  %48 = call i32 @DEFAULT_COMP(i32 %45, i32 %47)
  br label %49

49:                                               ; preds = %4, %43
  %50 = load i8*, i8** %6, align 8
  %51 = bitcast i8* %50 to i32*
  %52 = load i8*, i8** %7, align 8
  %53 = bitcast i8* %52 to i32*
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* @TSDB_NCHAR_SIZE, align 4
  %56 = sdiv i32 %54, %55
  %57 = call i32 @wcsncmp(i32* %51, i32* %53, i32 %56)
  store i32 %57, i32* %10, align 4
  %58 = load i32, i32* %10, align 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %49
  %61 = load i32, i32* %10, align 4
  store i32 %61, i32* %5, align 4
  br label %82

62:                                               ; preds = %49
  %63 = load i32, i32* %10, align 4
  %64 = icmp slt i32 %63, 0
  %65 = zext i1 %64 to i64
  %66 = select i1 %64, i32 -1, i32 1
  store i32 %66, i32* %5, align 4
  br label %82

67:                                               ; preds = %4
  %68 = load i8*, i8** %6, align 8
  %69 = load i8*, i8** %7, align 8
  %70 = load i32, i32* %9, align 4
  %71 = sext i32 %70 to i64
  %72 = call i32 @strncmp(i8* %68, i8* %69, i64 %71)
  store i32 %72, i32* %11, align 4
  %73 = load i32, i32* %11, align 4
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %67
  %76 = load i32, i32* %11, align 4
  store i32 %76, i32* %5, align 4
  br label %82

77:                                               ; preds = %67
  %78 = load i32, i32* %11, align 4
  %79 = icmp slt i32 %78, 0
  %80 = zext i1 %79 to i64
  %81 = select i1 %79, i32 -1, i32 1
  store i32 %81, i32* %5, align 4
  br label %82

82:                                               ; preds = %77, %75, %62, %60
  %83 = load i32, i32* %5, align 4
  ret i32 %83
}

declare dso_local i32 @DEFAULT_COMP(i32, i32) #1

declare dso_local i32 @GET_INT32_VAL(i8*) #1

declare dso_local i32 @GET_DOUBLE_VAL(i8*) #1

declare dso_local i32 @GET_FLOAT_VAL(i8*) #1

declare dso_local i32 @GET_INT64_VAL(i8*) #1

declare dso_local i32 @GET_INT16_VAL(i8*) #1

declare dso_local i32 @GET_INT8_VAL(i8*) #1

declare dso_local i32 @wcsncmp(i32*, i32*, i32) #1

declare dso_local i32 @strncmp(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
