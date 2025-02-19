; ModuleID = '/home/carl/AnghaBench/TDengine/src/modules/http/src/extr_httpJson.c_httpWriteBufByFd.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/modules/http/src/extr_httpJson.c_httpWriteBufByFd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.HttpContext = type { i32, i32 }

@MSG_NOSIGNAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"context:%p, fd:%d, ip:%s, socket write errno:%d, times:%d\00", align 1
@errno = common dso_local global i32 0, align 4
@HTTP_WRITE_RETRY_TIMES = common dso_local global i32 0, align 4
@HTTP_WRITE_WAIT_TIME_MS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [72 x i8] c"context:%p, fd:%d, ip:%s, socket write errno:%d, connect already closed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @httpWriteBufByFd(%struct.HttpContext* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.HttpContext*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.HttpContext* %0, %struct.HttpContext** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %11

11:                                               ; preds = %74, %3
  %12 = load %struct.HttpContext*, %struct.HttpContext** %5, align 8
  %13 = getelementptr inbounds %struct.HttpContext, %struct.HttpContext* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp sgt i32 %14, 2
  br i1 %15, label %16, label %31

16:                                               ; preds = %11
  %17 = load %struct.HttpContext*, %struct.HttpContext** %5, align 8
  %18 = getelementptr inbounds %struct.HttpContext, %struct.HttpContext* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i8*, i8** %6, align 8
  %21 = load i32, i32* %10, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i8, i8* %20, i64 %22
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* %10, align 4
  %26 = sub nsw i32 %24, %25
  %27 = sext i32 %26 to i64
  %28 = load i32, i32* @MSG_NOSIGNAL, align 4
  %29 = call i64 @send(i32 %19, i8* %23, i64 %27, i32 %28)
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %8, align 4
  br label %33

31:                                               ; preds = %11
  %32 = load i32, i32* %7, align 4
  store i32 %32, i32* %4, align 4
  br label %80

33:                                               ; preds = %16
  %34 = load i32, i32* %8, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %55

36:                                               ; preds = %33
  %37 = load %struct.HttpContext*, %struct.HttpContext** %5, align 8
  %38 = load %struct.HttpContext*, %struct.HttpContext** %5, align 8
  %39 = getelementptr inbounds %struct.HttpContext, %struct.HttpContext* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.HttpContext*, %struct.HttpContext** %5, align 8
  %42 = getelementptr inbounds %struct.HttpContext, %struct.HttpContext* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @errno, align 4
  %45 = load i32, i32* %9, align 4
  %46 = call i32 (i8*, %struct.HttpContext*, i32, i32, i32, ...) @httpTrace(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), %struct.HttpContext* %37, i32 %40, i32 %43, i32 %44, i32 %45)
  %47 = load i32, i32* %9, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* @HTTP_WRITE_RETRY_TIMES, align 4
  %50 = icmp sgt i32 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %36
  br label %78

52:                                               ; preds = %36
  %53 = load i32, i32* @HTTP_WRITE_WAIT_TIME_MS, align 4
  %54 = call i32 @taosMsleep(i32 %53)
  br label %74

55:                                               ; preds = %33
  %56 = load i32, i32* %8, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %68

58:                                               ; preds = %55
  %59 = load %struct.HttpContext*, %struct.HttpContext** %5, align 8
  %60 = load %struct.HttpContext*, %struct.HttpContext** %5, align 8
  %61 = getelementptr inbounds %struct.HttpContext, %struct.HttpContext* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.HttpContext*, %struct.HttpContext** %5, align 8
  %64 = getelementptr inbounds %struct.HttpContext, %struct.HttpContext* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @errno, align 4
  %67 = call i32 (i8*, %struct.HttpContext*, i32, i32, i32, ...) @httpTrace(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.1, i64 0, i64 0), %struct.HttpContext* %59, i32 %62, i32 %65, i32 %66)
  br label %78

68:                                               ; preds = %55
  store i32 0, i32* %9, align 4
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* %10, align 4
  %71 = add nsw i32 %70, %69
  store i32 %71, i32* %10, align 4
  br label %72

72:                                               ; preds = %68
  br label %73

73:                                               ; preds = %72
  br label %74

74:                                               ; preds = %73, %52
  %75 = load i32, i32* %10, align 4
  %76 = load i32, i32* %7, align 4
  %77 = icmp slt i32 %75, %76
  br i1 %77, label %11, label %78

78:                                               ; preds = %74, %58, %51
  %79 = load i32, i32* %10, align 4
  store i32 %79, i32* %4, align 4
  br label %80

80:                                               ; preds = %78, %31
  %81 = load i32, i32* %4, align 4
  ret i32 %81
}

declare dso_local i64 @send(i32, i8*, i64, i32) #1

declare dso_local i32 @httpTrace(i8*, %struct.HttpContext*, i32, i32, i32, ...) #1

declare dso_local i32 @taosMsleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
