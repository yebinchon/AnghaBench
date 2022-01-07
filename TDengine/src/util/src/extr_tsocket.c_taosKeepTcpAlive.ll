; ModuleID = '/home/carl/AnghaBench/TDengine/src/util/src/extr_tsocket.c_taosKeepTcpAlive.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/util/src/extr_tsocket.c_taosKeepTcpAlive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_KEEPALIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"fd:%d setsockopt SO_KEEPALIVE failed: %d (%s)\00", align 1
@errno = common dso_local global i32 0, align 4
@SOL_TCP = common dso_local global i32 0, align 4
@TCP_KEEPCNT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"fd:%d setsockopt SO_KEEPCNT failed: %d (%s)\00", align 1
@TCP_KEEPIDLE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [45 x i8] c"fd:%d setsockopt SO_KEEPIDLE failed: %d (%s)\00", align 1
@TCP_KEEPINTVL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [46 x i8] c"fd:%d setsockopt SO_KEEPINTVL failed: %d (%s)\00", align 1
@IPPROTO_TCP = common dso_local global i32 0, align 4
@TCP_NODELAY = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [44 x i8] c"fd:%d setsockopt TCP_NODELAY failed %d (%s)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @taosKeepTcpAlive(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 1, i32* %4, align 4
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @SOL_SOCKET, align 4
  %11 = load i32, i32* @SO_KEEPALIVE, align 4
  %12 = bitcast i32* %4 to i8*
  %13 = call i64 @taosSetSockOpt(i32 %9, i32 %10, i32 %11, i8* %12, i32 4)
  %14 = icmp slt i64 %13, 0
  br i1 %14, label %15, label %23

15:                                               ; preds = %1
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* @errno, align 4
  %18 = load i32, i32* @errno, align 4
  %19 = call i32 @strerror(i32 %18)
  %20 = call i32 @pError(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %17, i32 %19)
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @close(i32 %21)
  store i32 -1, i32* %2, align 4
  br label %84

23:                                               ; preds = %1
  store i32 3, i32* %5, align 4
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* @SOL_TCP, align 4
  %26 = load i32, i32* @TCP_KEEPCNT, align 4
  %27 = bitcast i32* %5 to i8*
  %28 = call i64 @taosSetSockOpt(i32 %24, i32 %25, i32 %26, i8* %27, i32 4)
  %29 = icmp slt i64 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %23
  %31 = load i32, i32* %3, align 4
  %32 = load i32, i32* @errno, align 4
  %33 = load i32, i32* @errno, align 4
  %34 = call i32 @strerror(i32 %33)
  %35 = call i32 @pError(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %31, i32 %32, i32 %34)
  %36 = load i32, i32* %3, align 4
  %37 = call i32 @close(i32 %36)
  store i32 -1, i32* %2, align 4
  br label %84

38:                                               ; preds = %23
  store i32 10, i32* %6, align 4
  %39 = load i32, i32* %3, align 4
  %40 = load i32, i32* @SOL_TCP, align 4
  %41 = load i32, i32* @TCP_KEEPIDLE, align 4
  %42 = bitcast i32* %6 to i8*
  %43 = call i64 @taosSetSockOpt(i32 %39, i32 %40, i32 %41, i8* %42, i32 4)
  %44 = icmp slt i64 %43, 0
  br i1 %44, label %45, label %53

45:                                               ; preds = %38
  %46 = load i32, i32* %3, align 4
  %47 = load i32, i32* @errno, align 4
  %48 = load i32, i32* @errno, align 4
  %49 = call i32 @strerror(i32 %48)
  %50 = call i32 @pError(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i32 %46, i32 %47, i32 %49)
  %51 = load i32, i32* %3, align 4
  %52 = call i32 @close(i32 %51)
  store i32 -1, i32* %2, align 4
  br label %84

53:                                               ; preds = %38
  store i32 3, i32* %7, align 4
  %54 = load i32, i32* %3, align 4
  %55 = load i32, i32* @SOL_TCP, align 4
  %56 = load i32, i32* @TCP_KEEPINTVL, align 4
  %57 = bitcast i32* %7 to i8*
  %58 = call i64 @taosSetSockOpt(i32 %54, i32 %55, i32 %56, i8* %57, i32 4)
  %59 = icmp slt i64 %58, 0
  br i1 %59, label %60, label %68

60:                                               ; preds = %53
  %61 = load i32, i32* %3, align 4
  %62 = load i32, i32* @errno, align 4
  %63 = load i32, i32* @errno, align 4
  %64 = call i32 @strerror(i32 %63)
  %65 = call i32 @pError(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0), i32 %61, i32 %62, i32 %64)
  %66 = load i32, i32* %3, align 4
  %67 = call i32 @close(i32 %66)
  store i32 -1, i32* %2, align 4
  br label %84

68:                                               ; preds = %53
  store i32 1, i32* %8, align 4
  %69 = load i32, i32* %3, align 4
  %70 = load i32, i32* @IPPROTO_TCP, align 4
  %71 = load i32, i32* @TCP_NODELAY, align 4
  %72 = bitcast i32* %8 to i8*
  %73 = call i64 @taosSetSockOpt(i32 %69, i32 %70, i32 %71, i8* %72, i32 4)
  %74 = icmp slt i64 %73, 0
  br i1 %74, label %75, label %83

75:                                               ; preds = %68
  %76 = load i32, i32* %3, align 4
  %77 = load i32, i32* @errno, align 4
  %78 = load i32, i32* @errno, align 4
  %79 = call i32 @strerror(i32 %78)
  %80 = call i32 @pError(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0), i32 %76, i32 %77, i32 %79)
  %81 = load i32, i32* %3, align 4
  %82 = call i32 @close(i32 %81)
  store i32 -1, i32* %2, align 4
  br label %84

83:                                               ; preds = %68
  store i32 0, i32* %2, align 4
  br label %84

84:                                               ; preds = %83, %75, %60, %45, %30, %15
  %85 = load i32, i32* %2, align 4
  ret i32 %85
}

declare dso_local i64 @taosSetSockOpt(i32, i32, i32, i8*, i32) #1

declare dso_local i32 @pError(i8*, i32, i32, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
