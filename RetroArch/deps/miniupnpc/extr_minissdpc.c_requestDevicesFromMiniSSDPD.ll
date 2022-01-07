; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/miniupnpc/extr_minissdpc.c_requestDevicesFromMiniSSDPD.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/miniupnpc/extr_minissdpc.c_requestDevicesFromMiniSSDPD.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"ssdp:all\00", align 1
@MINISSDPC_INVALID_INPUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"minissdpc.c: write()\00", align 1
@MINISSDPC_SOCKET_ERROR = common dso_local global i32 0, align 4
@MINISSDPC_SUCCESS = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @requestDevicesFromMiniSSDPD(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca [256 x i8], align 16
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = call i64 @strlen(i8* %10)
  %12 = trunc i64 %11 to i32
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* %9, align 4
  %14 = icmp eq i32 %13, 8
  br i1 %14, label %15, label %21

15:                                               ; preds = %2
  %16 = load i8*, i8** %5, align 8
  %17 = call i64 @memcmp(i8* %16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 8)
  %18 = icmp eq i64 0, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  store i8 3, i8* %20, align 16
  br label %23

21:                                               ; preds = %15, %2
  %22 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  store i8 1, i8* %22, align 16
  br label %23

23:                                               ; preds = %21, %19
  %24 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %25 = getelementptr inbounds i8, i8* %24, i64 1
  store i8* %25, i8** %7, align 8
  %26 = load i32, i32* %9, align 4
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = load i8*, i8** %7, align 8
  %29 = call i32 @CODELENGTH(i32 %27, i8* %28)
  %30 = load i8*, i8** %7, align 8
  %31 = load i32, i32* %9, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds i8, i8* %30, i64 %32
  %34 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %35 = getelementptr inbounds i8, i8* %34, i64 256
  %36 = icmp ugt i8* %33, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %23
  %38 = load i32, i32* @MINISSDPC_INVALID_INPUT, align 4
  store i32 %38, i32* %3, align 4
  br label %63

39:                                               ; preds = %23
  %40 = load i8*, i8** %7, align 8
  %41 = load i8*, i8** %5, align 8
  %42 = load i32, i32* %9, align 4
  %43 = call i32 @memcpy(i8* %40, i8* %41, i32 %42)
  %44 = load i32, i32* %9, align 4
  %45 = load i8*, i8** %7, align 8
  %46 = zext i32 %44 to i64
  %47 = getelementptr inbounds i8, i8* %45, i64 %46
  store i8* %47, i8** %7, align 8
  %48 = load i32, i32* %4, align 4
  %49 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %50 = load i8*, i8** %7, align 8
  %51 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %52 = ptrtoint i8* %50 to i64
  %53 = ptrtoint i8* %51 to i64
  %54 = sub i64 %52, %53
  %55 = trunc i64 %54 to i32
  %56 = call i64 @write(i32 %48, i8* %49, i32 %55)
  %57 = icmp slt i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %39
  %59 = call i32 @perror(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %60 = load i32, i32* @MINISSDPC_SOCKET_ERROR, align 4
  store i32 %60, i32* %3, align 4
  br label %63

61:                                               ; preds = %39
  %62 = load i32, i32* @MINISSDPC_SUCCESS, align 4
  store i32 %62, i32* %3, align 4
  br label %63

63:                                               ; preds = %61, %58, %37
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @CODELENGTH(i32, i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i64 @write(i32, i8*, i32) #1

declare dso_local i32 @perror(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
