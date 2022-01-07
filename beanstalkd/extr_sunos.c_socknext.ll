; ModuleID = '/home/carl/AnghaBench/beanstalkd/extr_sunos.c_socknext.c'
source_filename = "/home/carl/AnghaBench/beanstalkd/extr_sunos.c_socknext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.port_event = type { i32, i32* }
%struct.timespec = type { i32, i32 }

@portfd = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ETIME = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"port_getn\00", align 1
@POLLHUP = common dso_local global i32 0, align 4
@POLLIN = common dso_local global i32 0, align 4
@POLLOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @socknext(i32** %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.port_event, align 8
  %9 = alloca %struct.timespec, align 4
  store i32** %0, i32*** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 1, i32* %7, align 4
  %10 = load i32, i32* %5, align 4
  %11 = sdiv i32 %10, 1000000000
  %12 = getelementptr inbounds %struct.timespec, %struct.timespec* %9, i32 0, i32 0
  store i32 %11, i32* %12, align 4
  %13 = load i32, i32* %5, align 4
  %14 = srem i32 %13, 1000000000
  %15 = getelementptr inbounds %struct.timespec, %struct.timespec* %9, i32 0, i32 1
  store i32 %14, i32* %15, align 4
  %16 = load i32, i32* @portfd, align 4
  %17 = call i32 @port_getn(i32 %16, %struct.port_event* %8, i32 1, i32* %7, %struct.timespec* %9)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp eq i32 %18, -1
  br i1 %19, label %20, label %30

20:                                               ; preds = %2
  %21 = load i64, i64* @errno, align 8
  %22 = load i64, i64* @ETIME, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %30

24:                                               ; preds = %20
  %25 = load i64, i64* @errno, align 8
  %26 = load i64, i64* @EINTR, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = call i32 @twarn(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %73

30:                                               ; preds = %24, %20, %2
  %31 = load i32, i32* %6, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %72

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.port_event, %struct.port_event* %8, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = load i32**, i32*** %4, align 8
  store i32* %35, i32** %36, align 8
  %37 = getelementptr inbounds %struct.port_event, %struct.port_event* %8, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @POLLHUP, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %33
  store i32 104, i32* %3, align 4
  br label %73

43:                                               ; preds = %33
  %44 = getelementptr inbounds %struct.port_event, %struct.port_event* %8, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @POLLIN, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %43
  %50 = load i32**, i32*** %4, align 8
  %51 = load i32*, i32** %50, align 8
  %52 = call i32 @sockwant(i32* %51, i8 signext 114)
  %53 = icmp eq i32 %52, -1
  br i1 %53, label %54, label %55

54:                                               ; preds = %49
  store i32 -1, i32* %3, align 4
  br label %73

55:                                               ; preds = %49
  store i32 114, i32* %3, align 4
  br label %73

56:                                               ; preds = %43
  %57 = getelementptr inbounds %struct.port_event, %struct.port_event* %8, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @POLLOUT, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %69

62:                                               ; preds = %56
  %63 = load i32**, i32*** %4, align 8
  %64 = load i32*, i32** %63, align 8
  %65 = call i32 @sockwant(i32* %64, i8 signext 119)
  %66 = icmp eq i32 %65, -1
  br i1 %66, label %67, label %68

67:                                               ; preds = %62
  store i32 -1, i32* %3, align 4
  br label %73

68:                                               ; preds = %62
  store i32 119, i32* %3, align 4
  br label %73

69:                                               ; preds = %56
  br label %70

70:                                               ; preds = %69
  br label %71

71:                                               ; preds = %70
  br label %72

72:                                               ; preds = %71, %30
  store i32 0, i32* %3, align 4
  br label %73

73:                                               ; preds = %72, %68, %67, %55, %54, %42, %28
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local i32 @port_getn(i32, %struct.port_event*, i32, i32*, %struct.timespec*) #1

declare dso_local i32 @twarn(i8*) #1

declare dso_local i32 @sockwant(i32*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
