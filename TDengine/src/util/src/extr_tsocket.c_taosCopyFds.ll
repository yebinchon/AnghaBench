; ModuleID = '/home/carl/AnghaBench/TDengine/src/util/src/extr_tsocket.c_taosCopyFds.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/util/src/extr_tsocket.c_taosCopyFds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@COPY_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [64 x i8] c"read error, readLen:%d retLen:%d len:%ld leftLen:%ld, reason:%s\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [66 x i8] c"copy error, readLen:%d writeLen:%d len:%ld leftLen:%ld, reason:%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @taosCopyFds(i32 %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %15 = load i32, i32* @COPY_SIZE, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %11, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %12, align 8
  %19 = load i64, i64* %7, align 8
  store i64 %19, i64* %8, align 8
  br label %20

20:                                               ; preds = %63, %3
  %21 = load i64, i64* %8, align 8
  %22 = icmp sgt i64 %21, 0
  br i1 %22, label %23, label %68

23:                                               ; preds = %20
  %24 = load i64, i64* %8, align 8
  %25 = load i32, i32* @COPY_SIZE, align 4
  %26 = sext i32 %25 to i64
  %27 = icmp slt i64 %24, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = load i64, i64* %8, align 8
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %9, align 4
  br label %33

31:                                               ; preds = %23
  %32 = load i32, i32* @COPY_SIZE, align 4
  store i32 %32, i32* %9, align 4
  br label %33

33:                                               ; preds = %31, %28
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* %9, align 4
  %36 = call i32 @taosReadMsg(i32 %34, i8* %18, i32 %35)
  store i32 %36, i32* %13, align 4
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* %13, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %40, label %48

40:                                               ; preds = %33
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* %13, align 4
  %43 = load i64, i64* %7, align 8
  %44 = load i64, i64* %8, align 8
  %45 = load i32, i32* @errno, align 4
  %46 = call i32 @strerror(i32 %45)
  %47 = call i32 @pError(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), i32 %41, i32 %42, i64 %43, i64 %44, i32 %46)
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %69

48:                                               ; preds = %33
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* %9, align 4
  %51 = call i32 @taosWriteMsg(i32 %49, i8* %18, i32 %50)
  store i32 %51, i32* %10, align 4
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* %10, align 4
  %54 = icmp ne i32 %52, %53
  br i1 %54, label %55, label %63

55:                                               ; preds = %48
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* %10, align 4
  %58 = load i64, i64* %7, align 8
  %59 = load i64, i64* %8, align 8
  %60 = load i32, i32* @errno, align 4
  %61 = call i32 @strerror(i32 %60)
  %62 = call i32 @pError(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.1, i64 0, i64 0), i32 %56, i32 %57, i64 %58, i64 %59, i32 %61)
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %69

63:                                               ; preds = %48
  %64 = load i32, i32* %9, align 4
  %65 = sext i32 %64 to i64
  %66 = load i64, i64* %8, align 8
  %67 = sub nsw i64 %66, %65
  store i64 %67, i64* %8, align 8
  br label %20

68:                                               ; preds = %20
  store i32 0, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %69

69:                                               ; preds = %68, %55, %40
  %70 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %70)
  %71 = load i32, i32* %4, align 4
  ret i32 %71
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @taosReadMsg(i32, i8*, i32) #2

declare dso_local i32 @pError(i8*, i32, i32, i64, i64, i32) #2

declare dso_local i32 @strerror(i32) #2

declare dso_local i32 @taosWriteMsg(i32, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
