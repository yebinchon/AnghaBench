; ModuleID = '/home/carl/AnghaBench/disque/src/extr_anet.c_anetKeepAlive.c'
source_filename = "/home/carl/AnghaBench/disque/src/extr_anet.c_anetKeepAlive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_KEEPALIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"setsockopt SO_KEEPALIVE: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@ANET_ERR = common dso_local global i32 0, align 4
@IPPROTO_TCP = common dso_local global i32 0, align 4
@TCP_KEEPIDLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"setsockopt TCP_KEEPIDLE: %s\0A\00", align 1
@TCP_KEEPINTVL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"setsockopt TCP_KEEPINTVL: %s\0A\00", align 1
@TCP_KEEPCNT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"setsockopt TCP_KEEPCNT: %s\0A\00", align 1
@ANET_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @anetKeepAlive(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 1, i32* %8, align 4
  %9 = load i32, i32* %6, align 4
  %10 = load i32, i32* @SOL_SOCKET, align 4
  %11 = load i32, i32* @SO_KEEPALIVE, align 4
  %12 = call i32 @setsockopt(i32 %9, i32 %10, i32 %11, i32* %8, i32 4)
  %13 = icmp eq i32 %12, -1
  br i1 %13, label %14, label %20

14:                                               ; preds = %3
  %15 = load i8*, i8** %5, align 8
  %16 = load i32, i32* @errno, align 4
  %17 = call i32 @strerror(i32 %16)
  %18 = call i32 @anetSetError(i8* %15, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load i32, i32* @ANET_ERR, align 4
  store i32 %19, i32* %4, align 4
  br label %65

20:                                               ; preds = %3
  %21 = load i32, i32* %7, align 4
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @IPPROTO_TCP, align 4
  %24 = load i32, i32* @TCP_KEEPIDLE, align 4
  %25 = call i32 @setsockopt(i32 %22, i32 %23, i32 %24, i32* %8, i32 4)
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %20
  %28 = load i8*, i8** %5, align 8
  %29 = load i32, i32* @errno, align 4
  %30 = call i32 @strerror(i32 %29)
  %31 = call i32 @anetSetError(i8* %28, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %30)
  %32 = load i32, i32* @ANET_ERR, align 4
  store i32 %32, i32* %4, align 4
  br label %65

33:                                               ; preds = %20
  %34 = load i32, i32* %7, align 4
  %35 = sdiv i32 %34, 3
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  store i32 1, i32* %8, align 4
  br label %39

39:                                               ; preds = %38, %33
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* @IPPROTO_TCP, align 4
  %42 = load i32, i32* @TCP_KEEPINTVL, align 4
  %43 = call i32 @setsockopt(i32 %40, i32 %41, i32 %42, i32* %8, i32 4)
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %39
  %46 = load i8*, i8** %5, align 8
  %47 = load i32, i32* @errno, align 4
  %48 = call i32 @strerror(i32 %47)
  %49 = call i32 @anetSetError(i8* %46, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %48)
  %50 = load i32, i32* @ANET_ERR, align 4
  store i32 %50, i32* %4, align 4
  br label %65

51:                                               ; preds = %39
  store i32 3, i32* %8, align 4
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* @IPPROTO_TCP, align 4
  %54 = load i32, i32* @TCP_KEEPCNT, align 4
  %55 = call i32 @setsockopt(i32 %52, i32 %53, i32 %54, i32* %8, i32 4)
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %51
  %58 = load i8*, i8** %5, align 8
  %59 = load i32, i32* @errno, align 4
  %60 = call i32 @strerror(i32 %59)
  %61 = call i32 @anetSetError(i8* %58, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %60)
  %62 = load i32, i32* @ANET_ERR, align 4
  store i32 %62, i32* %4, align 4
  br label %65

63:                                               ; preds = %51
  %64 = load i32, i32* @ANET_OK, align 4
  store i32 %64, i32* %4, align 4
  br label %65

65:                                               ; preds = %63, %57, %45, %27, %14
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

declare dso_local i32 @setsockopt(i32, i32, i32, i32*, i32) #1

declare dso_local i32 @anetSetError(i8*, i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
