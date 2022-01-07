; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/libtests/extr_pngvalid.c_make_errors.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/libtests/extr_pngvalid.c_make_errors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@PNG_INTERLACE_NONE = common dso_local global i32 0, align 4
@INTERLACE_LAST = common dso_local global i32 0, align 4
@FILE_NAME_SIZE = common dso_local global i32 0, align 4
@do_own_interlace = common dso_local global i32 0, align 4
@error_test = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32, i32, i32)* @make_errors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @make_errors(%struct.TYPE_4__* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  br label %15

15:                                               ; preds = %68, %4
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* %9, align 4
  %18 = icmp sle i32 %16, %17
  br i1 %18, label %19, label %71

19:                                               ; preds = %15
  %20 = load i32, i32* @PNG_INTERLACE_NONE, align 4
  store i32 %20, i32* %10, align 4
  br label %21

21:                                               ; preds = %64, %19
  %22 = load i32, i32* %10, align 4
  %23 = load i32, i32* @INTERLACE_LAST, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %67

25:                                               ; preds = %21
  %26 = load i32, i32* @FILE_NAME_SIZE, align 4
  %27 = zext i32 %26 to i64
  %28 = call i8* @llvm.stacksave()
  store i8* %28, i8** %12, align 8
  %29 = alloca i8, i64 %27, align 16
  store i64 %27, i64* %13, align 8
  %30 = trunc i64 %27 to i32
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* %8, align 4
  %33 = shl i32 1, %32
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* @do_own_interlace, align 4
  %36 = call i32 @standard_name(i8* %29, i32 %30, i32 0, i32 %31, i32 %33, i32 0, i32 %34, i32 0, i32 0, i32 %35)
  store i32 0, i32* %11, align 4
  br label %37

37:                                               ; preds = %56, %25
  %38 = load i32, i32* %11, align 4
  %39 = load i32, i32* @error_test, align 4
  %40 = call i32 @ARRAY_SIZE(i32 %39)
  %41 = icmp ult i32 %38, %40
  br i1 %41, label %42, label %59

42:                                               ; preds = %37
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @DEPTH(i32 %46)
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* %11, align 4
  %50 = call i32 @make_error(i32* %44, i32 %45, i32 %47, i32 %48, i32 %49, i8* %29)
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %52 = call i64 @fail(%struct.TYPE_4__* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %42
  store i32 0, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %60

55:                                               ; preds = %42
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %11, align 4
  %58 = add i32 %57, 1
  store i32 %58, i32* %11, align 4
  br label %37

59:                                               ; preds = %37
  store i32 0, i32* %14, align 4
  br label %60

60:                                               ; preds = %59, %54
  %61 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %61)
  %62 = load i32, i32* %14, align 4
  switch i32 %62, label %74 [
    i32 0, label %63
    i32 1, label %72
  ]

63:                                               ; preds = %60
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %10, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %10, align 4
  br label %21

67:                                               ; preds = %21
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %8, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %8, align 4
  br label %15

71:                                               ; preds = %15
  store i32 1, i32* %5, align 4
  br label %72

72:                                               ; preds = %71, %60
  %73 = load i32, i32* %5, align 4
  ret i32 %73

74:                                               ; preds = %60
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @standard_name(i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @ARRAY_SIZE(i32) #2

declare dso_local i32 @make_error(i32*, i32, i32, i32, i32, i8*) #2

declare dso_local i32 @DEPTH(i32) #2

declare dso_local i64 @fail(%struct.TYPE_4__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
