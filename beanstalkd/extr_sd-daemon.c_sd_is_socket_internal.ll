; ModuleID = '/home/carl/AnghaBench/beanstalkd/extr_sd-daemon.c_sd_is_socket_internal.c'
source_filename = "/home/carl/AnghaBench/beanstalkd/extr_sd-daemon.c_sd_is_socket_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_TYPE = common dso_local global i32 0, align 4
@SO_ACCEPTCONN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @sd_is_socket_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sd_is_socket_internal(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.stat, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* %6, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %15, %3
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %91

21:                                               ; preds = %15
  %22 = load i32, i32* %5, align 4
  %23 = call i64 @fstat(i32 %22, %struct.stat* %8)
  %24 = icmp slt i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = load i32, i32* @errno, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %91

28:                                               ; preds = %21
  %29 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @S_ISSOCK(i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %28
  store i32 0, i32* %4, align 4
  br label %91

34:                                               ; preds = %28
  %35 = load i32, i32* %6, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %59

37:                                               ; preds = %34
  store i32 0, i32* %9, align 4
  store i32 4, i32* %10, align 4
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @SOL_SOCKET, align 4
  %40 = load i32, i32* @SO_TYPE, align 4
  %41 = call i64 @getsockopt(i32 %38, i32 %39, i32 %40, i32* %9, i32* %10)
  %42 = icmp slt i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %37
  %44 = load i32, i32* @errno, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %4, align 4
  br label %91

46:                                               ; preds = %37
  %47 = load i32, i32* %10, align 4
  %48 = sext i32 %47 to i64
  %49 = icmp ne i64 %48, 4
  br i1 %49, label %50, label %53

50:                                               ; preds = %46
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %4, align 4
  br label %91

53:                                               ; preds = %46
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* %6, align 4
  %56 = icmp ne i32 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %53
  store i32 0, i32* %4, align 4
  br label %91

58:                                               ; preds = %53
  br label %59

59:                                               ; preds = %58, %34
  %60 = load i32, i32* %7, align 4
  %61 = icmp sge i32 %60, 0
  br i1 %61, label %62, label %90

62:                                               ; preds = %59
  store i32 0, i32* %11, align 4
  store i32 4, i32* %12, align 4
  %63 = load i32, i32* %5, align 4
  %64 = load i32, i32* @SOL_SOCKET, align 4
  %65 = load i32, i32* @SO_ACCEPTCONN, align 4
  %66 = call i64 @getsockopt(i32 %63, i32 %64, i32 %65, i32* %11, i32* %12)
  %67 = icmp slt i64 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %62
  %69 = load i32, i32* @errno, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %4, align 4
  br label %91

71:                                               ; preds = %62
  %72 = load i32, i32* %12, align 4
  %73 = sext i32 %72 to i64
  %74 = icmp ne i64 %73, 4
  br i1 %74, label %75, label %78

75:                                               ; preds = %71
  %76 = load i32, i32* @EINVAL, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %4, align 4
  br label %91

78:                                               ; preds = %71
  %79 = load i32, i32* %11, align 4
  %80 = icmp ne i32 %79, 0
  %81 = xor i1 %80, true
  %82 = zext i1 %81 to i32
  %83 = load i32, i32* %7, align 4
  %84 = icmp ne i32 %83, 0
  %85 = xor i1 %84, true
  %86 = zext i1 %85 to i32
  %87 = icmp ne i32 %82, %86
  br i1 %87, label %88, label %89

88:                                               ; preds = %78
  store i32 0, i32* %4, align 4
  br label %91

89:                                               ; preds = %78
  br label %90

90:                                               ; preds = %89, %59
  store i32 1, i32* %4, align 4
  br label %91

91:                                               ; preds = %90, %88, %75, %68, %57, %50, %43, %33, %25, %18
  %92 = load i32, i32* %4, align 4
  ret i32 %92
}

declare dso_local i64 @fstat(i32, %struct.stat*) #1

declare dso_local i32 @S_ISSOCK(i32) #1

declare dso_local i64 @getsockopt(i32, i32, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
