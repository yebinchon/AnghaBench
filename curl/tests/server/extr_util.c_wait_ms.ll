; ModuleID = '/home/carl/AnghaBench/curl/tests/server/extr_util.c_wait_ms.c'
source_filename = "/home/carl/AnghaBench/curl/tests/server/extr_util.c_wait_ms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wait_ms(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.timeval, align 4
  %5 = alloca %struct.timeval, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.timeval, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.timeval, align 4
  store i32 %0, i32* %3, align 4
  store i32 0, i32* %7, align 4
  %11 = load i32, i32* %3, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %70

14:                                               ; preds = %1
  %15 = load i32, i32* %3, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %14
  %18 = load i32, i32* @EINVAL, align 4
  store i32 %18, i32* @errno, align 4
  store i32 -1, i32* %2, align 4
  br label %70

19:                                               ; preds = %14
  %20 = load i32, i32* %3, align 4
  store i32 %20, i32* %6, align 4
  %21 = call i64 (...) @tvnow()
  %22 = bitcast %struct.timeval* %8 to i64*
  store i64 %21, i64* %22, align 4
  %23 = bitcast %struct.timeval* %5 to i8*
  %24 = bitcast %struct.timeval* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %23, i8* align 4 %24, i64 8, i1 false)
  br label %25

25:                                               ; preds = %61, %19
  %26 = load i32, i32* %6, align 4
  %27 = sdiv i32 %26, 1000
  %28 = getelementptr inbounds %struct.timeval, %struct.timeval* %4, i32 0, i32 0
  store i32 %27, i32* %28, align 4
  %29 = load i32, i32* %6, align 4
  %30 = srem i32 %29, 1000
  %31 = mul nsw i32 %30, 1000
  %32 = getelementptr inbounds %struct.timeval, %struct.timeval* %4, i32 0, i32 1
  store i32 %31, i32* %32, align 4
  %33 = call i32 @select(i32 0, i32* null, i32* null, i32* null, %struct.timeval* %4)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp ne i32 %34, -1
  br i1 %35, label %36, label %37

36:                                               ; preds = %25
  br label %64

37:                                               ; preds = %25
  %38 = load i32, i32* @errno, align 4
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %9, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %37
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* @EINTR, align 4
  %44 = icmp ne i32 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %41
  br label %64

46:                                               ; preds = %41, %37
  %47 = load i32, i32* %3, align 4
  %48 = call i64 (...) @tvnow()
  %49 = bitcast %struct.timeval* %10 to i64*
  store i64 %48, i64* %49, align 4
  %50 = bitcast %struct.timeval* %10 to i64*
  %51 = load i64, i64* %50, align 4
  %52 = bitcast %struct.timeval* %5 to i64*
  %53 = load i64, i64* %52, align 4
  %54 = call i64 @timediff(i64 %51, i64 %53)
  %55 = trunc i64 %54 to i32
  %56 = sub nsw i32 %47, %55
  store i32 %56, i32* %6, align 4
  %57 = load i32, i32* %6, align 4
  %58 = icmp sle i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %46
  br label %64

60:                                               ; preds = %46
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %7, align 4
  %63 = icmp eq i32 %62, -1
  br i1 %63, label %25, label %64

64:                                               ; preds = %61, %59, %45, %36
  %65 = load i32, i32* %7, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %64
  store i32 -1, i32* %7, align 4
  br label %68

68:                                               ; preds = %67, %64
  %69 = load i32, i32* %7, align 4
  store i32 %69, i32* %2, align 4
  br label %70

70:                                               ; preds = %68, %17, %13
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

declare dso_local i64 @tvnow(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @select(i32, i32*, i32*, i32*, %struct.timeval*) #1

declare dso_local i64 @timediff(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
