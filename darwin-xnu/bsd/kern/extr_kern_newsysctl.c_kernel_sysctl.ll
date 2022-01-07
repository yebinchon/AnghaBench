; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_newsysctl.c_kernel_sysctl.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_newsysctl.c_kernel_sysctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc = type { i32 }
%struct.sysctl_req = type { i64, i64, i32, i64, i32, i32, i8*, i8*, %struct.proc* }

@sysctl_old_kernel = common dso_local global i32 0, align 4
@sysctl_new_kernel = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kernel_sysctl(%struct.proc* %0, i32* %1, i32 %2, i8* %3, i64* %4, i8* %5, i64 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.proc*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.sysctl_req, align 8
  store %struct.proc* %0, %struct.proc** %9, align 8
  store i32* %1, i32** %10, align 8
  store i32 %2, i32* %11, align 4
  store i8* %3, i8** %12, align 8
  store i64* %4, i64** %13, align 8
  store i8* %5, i8** %14, align 8
  store i64 %6, i64* %15, align 8
  store i32 0, i32* %16, align 4
  %18 = call i32 @bzero(%struct.sysctl_req* %17, i32 64)
  %19 = load %struct.proc*, %struct.proc** %9, align 8
  %20 = getelementptr inbounds %struct.sysctl_req, %struct.sysctl_req* %17, i32 0, i32 8
  store %struct.proc* %19, %struct.proc** %20, align 8
  %21 = load i64*, i64** %13, align 8
  %22 = icmp ne i64* %21, null
  br i1 %22, label %23, label %27

23:                                               ; preds = %7
  %24 = load i64*, i64** %13, align 8
  %25 = load i64, i64* %24, align 8
  %26 = getelementptr inbounds %struct.sysctl_req, %struct.sysctl_req* %17, i32 0, i32 0
  store i64 %25, i64* %26, align 8
  br label %27

27:                                               ; preds = %23, %7
  %28 = load i8*, i8** %12, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %34

30:                                               ; preds = %27
  %31 = load i8*, i8** %12, align 8
  %32 = call i8* @CAST_USER_ADDR_T(i8* %31)
  %33 = getelementptr inbounds %struct.sysctl_req, %struct.sysctl_req* %17, i32 0, i32 7
  store i8* %32, i8** %33, align 8
  br label %34

34:                                               ; preds = %30, %27
  %35 = load i64, i64* %15, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %34
  %38 = load i64, i64* %15, align 8
  %39 = getelementptr inbounds %struct.sysctl_req, %struct.sysctl_req* %17, i32 0, i32 1
  store i64 %38, i64* %39, align 8
  %40 = load i8*, i8** %14, align 8
  %41 = call i8* @CAST_USER_ADDR_T(i8* %40)
  %42 = getelementptr inbounds %struct.sysctl_req, %struct.sysctl_req* %17, i32 0, i32 6
  store i8* %41, i8** %42, align 8
  br label %43

43:                                               ; preds = %37, %34
  %44 = load i32, i32* @sysctl_old_kernel, align 4
  %45 = getelementptr inbounds %struct.sysctl_req, %struct.sysctl_req* %17, i32 0, i32 5
  store i32 %44, i32* %45, align 4
  %46 = load i32, i32* @sysctl_new_kernel, align 4
  %47 = getelementptr inbounds %struct.sysctl_req, %struct.sysctl_req* %17, i32 0, i32 4
  store i32 %46, i32* %47, align 8
  %48 = getelementptr inbounds %struct.sysctl_req, %struct.sysctl_req* %17, i32 0, i32 2
  store i32 1, i32* %48, align 8
  %49 = load i32, i32* @TRUE, align 4
  %50 = load i32, i32* @FALSE, align 4
  %51 = load i32*, i32** %10, align 8
  %52 = load i32, i32* %11, align 4
  %53 = call i32 @sysctl_root(i32 %49, i32 %50, i32* null, i32 0, i32* %51, i32 %52, %struct.sysctl_req* %17)
  store i32 %53, i32* %16, align 4
  %54 = load i32, i32* %16, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %43
  %57 = load i32, i32* %16, align 4
  %58 = load i32, i32* @ENOMEM, align 4
  %59 = icmp ne i32 %57, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %56
  %61 = load i32, i32* %16, align 4
  store i32 %61, i32* %8, align 4
  br label %71

62:                                               ; preds = %56, %43
  %63 = load i64*, i64** %13, align 8
  %64 = icmp ne i64* %63, null
  br i1 %64, label %65, label %69

65:                                               ; preds = %62
  %66 = getelementptr inbounds %struct.sysctl_req, %struct.sysctl_req* %17, i32 0, i32 3
  %67 = load i64, i64* %66, align 8
  %68 = load i64*, i64** %13, align 8
  store i64 %67, i64* %68, align 8
  br label %69

69:                                               ; preds = %65, %62
  %70 = load i32, i32* %16, align 4
  store i32 %70, i32* %8, align 4
  br label %71

71:                                               ; preds = %69, %60
  %72 = load i32, i32* %8, align 4
  ret i32 %72
}

declare dso_local i32 @bzero(%struct.sysctl_req*, i32) #1

declare dso_local i8* @CAST_USER_ADDR_T(i8*) #1

declare dso_local i32 @sysctl_root(i32, i32, i32*, i32, i32*, i32, %struct.sysctl_req*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
