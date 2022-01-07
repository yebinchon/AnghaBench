; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_newsysctl.c_sysctl_io_string.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_newsysctl.c_sysctl_io_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sysctl_req = type { i32, i64, i32, i64 }

@EPERM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sysctl_io_string(%struct.sysctl_req* %0, i8* %1, i64 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.sysctl_req*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8, align 1
  store %struct.sysctl_req* %0, %struct.sysctl_req** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %14 = load i32*, i32** %11, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %5
  %17 = load i32*, i32** %11, align 8
  store i32 0, i32* %17, align 4
  br label %18

18:                                               ; preds = %16, %5
  %19 = load i32, i32* %10, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %53

21:                                               ; preds = %18
  %22 = load %struct.sysctl_req*, %struct.sysctl_req** %7, align 8
  %23 = getelementptr inbounds %struct.sysctl_req, %struct.sysctl_req* %22, i32 0, i32 3
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %53

26:                                               ; preds = %21
  %27 = load %struct.sysctl_req*, %struct.sysctl_req** %7, align 8
  %28 = getelementptr inbounds %struct.sysctl_req, %struct.sysctl_req* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %53

31:                                               ; preds = %26
  %32 = load %struct.sysctl_req*, %struct.sysctl_req** %7, align 8
  %33 = getelementptr inbounds %struct.sysctl_req, %struct.sysctl_req* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i8*, i8** %8, align 8
  %36 = call i32 @strlen(i8* %35)
  %37 = add nsw i32 %36, 1
  %38 = icmp slt i32 %34, %37
  br i1 %38, label %39, label %53

39:                                               ; preds = %31
  %40 = load %struct.sysctl_req*, %struct.sysctl_req** %7, align 8
  %41 = load i8*, i8** %8, align 8
  %42 = load %struct.sysctl_req*, %struct.sysctl_req** %7, align 8
  %43 = getelementptr inbounds %struct.sysctl_req, %struct.sysctl_req* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = sub nsw i32 %44, 1
  %46 = call i32 @SYSCTL_OUT(%struct.sysctl_req* %40, i8* %41, i32 %45)
  store i32 %46, i32* %12, align 4
  %47 = load i32, i32* %12, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %39
  store i8 0, i8* %13, align 1
  %50 = load %struct.sysctl_req*, %struct.sysctl_req** %7, align 8
  %51 = call i32 @SYSCTL_OUT(%struct.sysctl_req* %50, i8* %13, i32 1)
  store i32 %51, i32* %12, align 4
  br label %52

52:                                               ; preds = %49, %39
  br label %60

53:                                               ; preds = %31, %26, %21, %18
  %54 = load %struct.sysctl_req*, %struct.sysctl_req** %7, align 8
  %55 = load i8*, i8** %8, align 8
  %56 = load i8*, i8** %8, align 8
  %57 = call i32 @strlen(i8* %56)
  %58 = add nsw i32 %57, 1
  %59 = call i32 @SYSCTL_OUT(%struct.sysctl_req* %54, i8* %55, i32 %58)
  store i32 %59, i32* %12, align 4
  br label %60

60:                                               ; preds = %53, %52
  %61 = load i32, i32* %12, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %68, label %63

63:                                               ; preds = %60
  %64 = load %struct.sysctl_req*, %struct.sysctl_req** %7, align 8
  %65 = getelementptr inbounds %struct.sysctl_req, %struct.sysctl_req* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %70, label %68

68:                                               ; preds = %63, %60
  %69 = load i32, i32* %12, align 4
  store i32 %69, i32* %6, align 4
  br label %104

70:                                               ; preds = %63
  %71 = load i64, i64* %9, align 8
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %70
  %74 = load i32, i32* @EPERM, align 4
  store i32 %74, i32* %6, align 4
  br label %104

75:                                               ; preds = %70
  %76 = load %struct.sysctl_req*, %struct.sysctl_req** %7, align 8
  %77 = getelementptr inbounds %struct.sysctl_req, %struct.sysctl_req* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* %9, align 8
  %80 = icmp uge i64 %78, %79
  br i1 %80, label %81, label %83

81:                                               ; preds = %75
  %82 = load i32, i32* @EINVAL, align 4
  store i32 %82, i32* %6, align 4
  br label %104

83:                                               ; preds = %75
  %84 = load %struct.sysctl_req*, %struct.sysctl_req** %7, align 8
  %85 = load i8*, i8** %8, align 8
  %86 = load %struct.sysctl_req*, %struct.sysctl_req** %7, align 8
  %87 = getelementptr inbounds %struct.sysctl_req, %struct.sysctl_req* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = call i32 @SYSCTL_IN(%struct.sysctl_req* %84, i8* %85, i64 %88)
  store i32 %89, i32* %12, align 4
  %90 = load i8*, i8** %8, align 8
  %91 = load %struct.sysctl_req*, %struct.sysctl_req** %7, align 8
  %92 = getelementptr inbounds %struct.sysctl_req, %struct.sysctl_req* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = getelementptr inbounds i8, i8* %90, i64 %93
  store i8 0, i8* %94, align 1
  %95 = load i32, i32* %12, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %102, label %97

97:                                               ; preds = %83
  %98 = load i32*, i32** %11, align 8
  %99 = icmp ne i32* %98, null
  br i1 %99, label %100, label %102

100:                                              ; preds = %97
  %101 = load i32*, i32** %11, align 8
  store i32 1, i32* %101, align 4
  br label %102

102:                                              ; preds = %100, %97, %83
  %103 = load i32, i32* %12, align 4
  store i32 %103, i32* %6, align 4
  br label %104

104:                                              ; preds = %102, %81, %73, %68
  %105 = load i32, i32* %6, align 4
  ret i32 %105
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @SYSCTL_OUT(%struct.sysctl_req*, i8*, i32) #1

declare dso_local i32 @SYSCTL_IN(%struct.sysctl_req*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
