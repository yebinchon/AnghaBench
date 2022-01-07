; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_socket.c_sooptcopyin_timeval.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_socket.c_sooptcopyin_timeval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockopt = type { i64, i32, i32 }
%struct.timeval = type { i64, i32 }
%struct.user64_timeval = type { i64, i32 }
%struct.user32_timeval = type { i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@kernproc = common dso_local global i64 0, align 8
@caddr_t = common dso_local global i32 0, align 4
@LONG_MAX = common dso_local global i64 0, align 8
@EDOM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sockopt*, %struct.timeval*)* @sooptcopyin_timeval to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sooptcopyin_timeval(%struct.sockopt* %0, %struct.timeval* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sockopt*, align 8
  %5 = alloca %struct.timeval*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.user64_timeval, align 8
  %8 = alloca %struct.user32_timeval, align 8
  store %struct.sockopt* %0, %struct.sockopt** %4, align 8
  store %struct.timeval* %1, %struct.timeval** %5, align 8
  %9 = load %struct.sockopt*, %struct.sockopt** %4, align 8
  %10 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = call i64 @proc_is64bit(i64 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %75

14:                                               ; preds = %2
  %15 = load %struct.sockopt*, %struct.sockopt** %4, align 8
  %16 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = sext i32 %17 to i64
  %19 = icmp ult i64 %18, 16
  br i1 %19, label %20, label %22

20:                                               ; preds = %14
  %21 = load i32, i32* @EINVAL, align 4
  store i32 %21, i32* %3, align 4
  br label %120

22:                                               ; preds = %14
  %23 = load %struct.sockopt*, %struct.sockopt** %4, align 8
  %24 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %23, i32 0, i32 1
  store i32 16, i32* %24, align 8
  %25 = load %struct.sockopt*, %struct.sockopt** %4, align 8
  %26 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @kernproc, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %40

30:                                               ; preds = %22
  %31 = load %struct.sockopt*, %struct.sockopt** %4, align 8
  %32 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @copyin(i32 %33, %struct.user64_timeval* %7, i32 16)
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %30
  %38 = load i32, i32* %6, align 4
  store i32 %38, i32* %3, align 4
  br label %120

39:                                               ; preds = %30
  br label %47

40:                                               ; preds = %22
  %41 = load i32, i32* @caddr_t, align 4
  %42 = load %struct.sockopt*, %struct.sockopt** %4, align 8
  %43 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @CAST_DOWN(i32 %41, i32 %44)
  %46 = call i32 @bcopy(i32 %45, %struct.user64_timeval* %7, i32 16)
  br label %47

47:                                               ; preds = %40, %39
  %48 = getelementptr inbounds %struct.user64_timeval, %struct.user64_timeval* %7, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp slt i64 %49, 0
  br i1 %50, label %64, label %51

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.user64_timeval, %struct.user64_timeval* %7, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @LONG_MAX, align 8
  %55 = icmp sgt i64 %53, %54
  br i1 %55, label %64, label %56

56:                                               ; preds = %51
  %57 = getelementptr inbounds %struct.user64_timeval, %struct.user64_timeval* %7, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %64, label %60

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct.user64_timeval, %struct.user64_timeval* %7, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = icmp sge i32 %62, 1000000
  br i1 %63, label %64, label %66

64:                                               ; preds = %60, %56, %51, %47
  %65 = load i32, i32* @EDOM, align 4
  store i32 %65, i32* %3, align 4
  br label %120

66:                                               ; preds = %60
  %67 = getelementptr inbounds %struct.user64_timeval, %struct.user64_timeval* %7, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.timeval*, %struct.timeval** %5, align 8
  %70 = getelementptr inbounds %struct.timeval, %struct.timeval* %69, i32 0, i32 0
  store i64 %68, i64* %70, align 8
  %71 = getelementptr inbounds %struct.user64_timeval, %struct.user64_timeval* %7, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.timeval*, %struct.timeval** %5, align 8
  %74 = getelementptr inbounds %struct.timeval, %struct.timeval* %73, i32 0, i32 1
  store i32 %72, i32* %74, align 8
  br label %119

75:                                               ; preds = %2
  %76 = load %struct.sockopt*, %struct.sockopt** %4, align 8
  %77 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = sext i32 %78 to i64
  %80 = icmp ult i64 %79, 16
  br i1 %80, label %81, label %83

81:                                               ; preds = %75
  %82 = load i32, i32* @EINVAL, align 4
  store i32 %82, i32* %3, align 4
  br label %120

83:                                               ; preds = %75
  %84 = load %struct.sockopt*, %struct.sockopt** %4, align 8
  %85 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %84, i32 0, i32 1
  store i32 16, i32* %85, align 8
  %86 = load %struct.sockopt*, %struct.sockopt** %4, align 8
  %87 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @kernproc, align 8
  %90 = icmp ne i64 %88, %89
  br i1 %90, label %91, label %102

91:                                               ; preds = %83
  %92 = load %struct.sockopt*, %struct.sockopt** %4, align 8
  %93 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = bitcast %struct.user32_timeval* %8 to %struct.user64_timeval*
  %96 = call i32 @copyin(i32 %94, %struct.user64_timeval* %95, i32 16)
  store i32 %96, i32* %6, align 4
  %97 = load i32, i32* %6, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %91
  %100 = load i32, i32* %6, align 4
  store i32 %100, i32* %3, align 4
  br label %120

101:                                              ; preds = %91
  br label %110

102:                                              ; preds = %83
  %103 = load i32, i32* @caddr_t, align 4
  %104 = load %struct.sockopt*, %struct.sockopt** %4, align 8
  %105 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @CAST_DOWN(i32 %103, i32 %106)
  %108 = bitcast %struct.user32_timeval* %8 to %struct.user64_timeval*
  %109 = call i32 @bcopy(i32 %107, %struct.user64_timeval* %108, i32 16)
  br label %110

110:                                              ; preds = %102, %101
  %111 = getelementptr inbounds %struct.user32_timeval, %struct.user32_timeval* %8, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load %struct.timeval*, %struct.timeval** %5, align 8
  %114 = getelementptr inbounds %struct.timeval, %struct.timeval* %113, i32 0, i32 0
  store i64 %112, i64* %114, align 8
  %115 = getelementptr inbounds %struct.user32_timeval, %struct.user32_timeval* %8, i32 0, i32 1
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.timeval*, %struct.timeval** %5, align 8
  %118 = getelementptr inbounds %struct.timeval, %struct.timeval* %117, i32 0, i32 1
  store i32 %116, i32* %118, align 8
  br label %119

119:                                              ; preds = %110, %66
  store i32 0, i32* %3, align 4
  br label %120

120:                                              ; preds = %119, %99, %81, %64, %37, %20
  %121 = load i32, i32* %3, align 4
  ret i32 %121
}

declare dso_local i64 @proc_is64bit(i64) #1

declare dso_local i32 @copyin(i32, %struct.user64_timeval*, i32) #1

declare dso_local i32 @bcopy(i32, %struct.user64_timeval*, i32) #1

declare dso_local i32 @CAST_DOWN(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
