; ModuleID = '/home/carl/AnghaBench/darwin-xnu/tests/extr_socket_bind_35243417.c_alloc_and_bind_ports.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/tests/extr_socket_bind_35243417.c_alloc_and_bind_ports.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@T_WITH_ERRNO = common dso_local global i32 0, align 4
@T_QUIET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"socket %d bind %d\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"number of successful binds %d (out of %d)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, i32)* @alloc_and_bind_ports to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alloc_and_bind_ports(i64 %0, i64 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 1, i32* %8, align 4
  %13 = load i64, i64* %4, align 8
  store i64 %13, i64* %9, align 8
  br label %14

14:                                               ; preds = %73, %3
  %15 = load i32, i32* %8, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %14
  %18 = load i64, i64* %9, align 8
  %19 = load i64, i64* %5, align 8
  %20 = icmp sle i64 %18, %19
  br label %21

21:                                               ; preds = %17, %14
  %22 = phi i1 [ false, %14 ], [ %20, %17 ]
  br i1 %22, label %23, label %76

23:                                               ; preds = %21
  store i32 -1, i32* %10, align 4
  store i32 -1, i32* %11, align 4
  %24 = call i32 (...) @sockv6_open()
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %10, align 4
  %26 = call i32 @sockv6_set_v6only(i32 %25)
  %27 = load i32, i32* %10, align 4
  %28 = load i64, i64* %9, align 8
  %29 = call i32 @sockv6_bind(i32 %27, i64 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %23
  br label %60

32:                                               ; preds = %23
  %33 = call i32 (...) @sockv6_open()
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* %11, align 4
  %35 = load i64, i64* %9, align 8
  %36 = call i32 @sockv6_bind(i32 %34, i64 %35)
  store i32 %36, i32* %12, align 4
  %37 = load i32, i32* @T_WITH_ERRNO, align 4
  %38 = load i32, i32* @T_QUIET, align 4
  %39 = load i32, i32* %12, align 4
  %40 = icmp ne i32 %39, 0
  %41 = zext i1 %40 to i32
  %42 = load i32, i32* %11, align 4
  %43 = load i64, i64* %9, align 8
  %44 = trunc i64 %43 to i32
  %45 = call i32 @T_ASSERT_TRUE(i32 %41, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %42, i32 %44)
  %46 = load i32, i32* %11, align 4
  %47 = load i64, i64* %9, align 8
  %48 = add nsw i64 %47, 1
  %49 = call i32 @sockv6_bind(i32 %46, i64 %48)
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %59

51:                                               ; preds = %32
  %52 = load i32, i32* %7, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %7, align 4
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* %6, align 4
  %56 = icmp sge i32 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %51
  br label %76

58:                                               ; preds = %51
  br label %59

59:                                               ; preds = %58, %32
  br label %60

60:                                               ; preds = %59, %31
  %61 = load i32, i32* %10, align 4
  %62 = icmp sge i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %60
  %64 = load i32, i32* %10, align 4
  %65 = call i32 @close(i32 %64)
  br label %66

66:                                               ; preds = %63, %60
  %67 = load i32, i32* %11, align 4
  %68 = icmp sge i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %66
  %70 = load i32, i32* %11, align 4
  %71 = call i32 @close(i32 %70)
  br label %72

72:                                               ; preds = %69, %66
  br label %73

73:                                               ; preds = %72
  %74 = load i64, i64* %9, align 8
  %75 = add nsw i64 %74, 1
  store i64 %75, i64* %9, align 8
  br label %14

76:                                               ; preds = %57, %21
  %77 = load i32, i32* %7, align 4
  %78 = load i32, i32* %6, align 4
  %79 = icmp eq i32 %77, %78
  %80 = zext i1 %79 to i32
  %81 = load i32, i32* %7, align 4
  %82 = load i32, i32* %6, align 4
  %83 = call i32 @T_ASSERT_TRUE(i32 %80, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %81, i32 %82)
  %84 = load i32, i32* %8, align 4
  ret i32 %84
}

declare dso_local i32 @sockv6_open(...) #1

declare dso_local i32 @sockv6_set_v6only(i32) #1

declare dso_local i32 @sockv6_bind(i32, i64) #1

declare dso_local i32 @T_ASSERT_TRUE(i32, i8*, i32, i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
