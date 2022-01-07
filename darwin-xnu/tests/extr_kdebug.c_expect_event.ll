; ModuleID = '/home/carl/AnghaBench/darwin-xnu/tests/extr_kdebug.c_expect_event.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/tests/extr_kdebug.c_expect_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_point = type { i32, i32 }

@KDBG_EVENTID_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"found %s event 0x%x\00", align 1
@T_QUIET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.trace_point*, i8*, i32*, i32*, i64)* @expect_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @expect_event(%struct.trace_point* %0, i8* %1, i32* %2, i32* %3, i64 %4) #0 {
  %6 = alloca %struct.trace_point*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.trace_point* %0, %struct.trace_point** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i64 %4, i64* %10, align 8
  %14 = load i32*, i32** %8, align 8
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i64 0, i64* %13, align 8
  br label %16

16:                                               ; preds = %38, %5
  %17 = load i64, i64* %13, align 8
  %18 = load i64, i64* %10, align 8
  %19 = icmp ult i64 %17, %18
  br i1 %19, label %20, label %41

20:                                               ; preds = %16
  %21 = load i32*, i32** %9, align 8
  %22 = load i64, i64* %13, align 8
  %23 = getelementptr inbounds i32, i32* %21, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.trace_point*, %struct.trace_point** %6, align 8
  %26 = getelementptr inbounds %struct.trace_point, %struct.trace_point* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @KDBG_EVENTID_MASK, align 4
  %29 = and i32 %27, %28
  %30 = icmp eq i32 %24, %29
  br i1 %30, label %31, label %37

31:                                               ; preds = %20
  %32 = load i8*, i8** %7, align 8
  %33 = load %struct.trace_point*, %struct.trace_point** %6, align 8
  %34 = getelementptr inbounds %struct.trace_point, %struct.trace_point* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @T_LOG(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* %32, i32 %35)
  store i32 1, i32* %12, align 4
  br label %37

37:                                               ; preds = %31, %20
  br label %38

38:                                               ; preds = %37
  %39 = load i64, i64* %13, align 8
  %40 = add i64 %39, 1
  store i64 %40, i64* %13, align 8
  br label %16

41:                                               ; preds = %16
  %42 = load i32, i32* %12, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %41
  br label %84

45:                                               ; preds = %41
  %46 = load i32*, i32** %8, align 8
  %47 = load i32, i32* %46, align 4
  %48 = add i32 %47, 1
  store i32 %48, i32* %46, align 4
  store i64 0, i64* %13, align 8
  br label %49

49:                                               ; preds = %65, %45
  %50 = load i64, i64* %13, align 8
  %51 = load i32, i32* %11, align 4
  %52 = zext i32 %51 to i64
  %53 = icmp ult i64 %50, %52
  br i1 %53, label %54, label %68

54:                                               ; preds = %49
  %55 = load i32, i32* @T_QUIET, align 4
  %56 = load %struct.trace_point*, %struct.trace_point** %6, align 8
  %57 = getelementptr inbounds %struct.trace_point, %struct.trace_point* %56, i32 0, i32 1
  %58 = bitcast i32* %57 to i64*
  %59 = load i64, i64* %13, align 8
  %60 = getelementptr inbounds i64, i64* %58, i64 %59
  %61 = load i64, i64* %60, align 4
  %62 = load i64, i64* %13, align 8
  %63 = add nsw i64 %62, 1
  %64 = call i32 @T_EXPECT_EQ(i64 %61, i64 %63, i32* null)
  br label %65

65:                                               ; preds = %54
  %66 = load i64, i64* %13, align 8
  %67 = add i64 %66, 1
  store i64 %67, i64* %13, align 8
  br label %49

68:                                               ; preds = %49
  br label %69

69:                                               ; preds = %81, %68
  %70 = load i64, i64* %13, align 8
  %71 = icmp ult i64 %70, 4
  br i1 %71, label %72, label %84

72:                                               ; preds = %69
  %73 = load i32, i32* @T_QUIET, align 4
  %74 = load %struct.trace_point*, %struct.trace_point** %6, align 8
  %75 = getelementptr inbounds %struct.trace_point, %struct.trace_point* %74, i32 0, i32 1
  %76 = bitcast i32* %75 to i64*
  %77 = load i64, i64* %13, align 8
  %78 = getelementptr inbounds i64, i64* %76, i64 %77
  %79 = load i64, i64* %78, align 4
  %80 = call i32 @T_EXPECT_EQ(i64 %79, i64 0, i32* null)
  br label %81

81:                                               ; preds = %72
  %82 = load i64, i64* %13, align 8
  %83 = add i64 %82, 1
  store i64 %83, i64* %13, align 8
  br label %69

84:                                               ; preds = %44, %69
  ret void
}

declare dso_local i32 @T_LOG(i8*, i8*, i32) #1

declare dso_local i32 @T_EXPECT_EQ(i64, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
