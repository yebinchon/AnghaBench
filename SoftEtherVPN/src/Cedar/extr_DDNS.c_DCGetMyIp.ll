; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_DDNS.c_DCGetMyIp.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_DDNS.c_DCGetMyIp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ERR_INTERNAL_ERROR = common dso_local global i64 0, align 8
@ERR_NO_ERROR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @DCGetMyIp(i32* %0, i32 %1, i8* %2, i64 %3, i8* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  store i8* %4, i8** %10, align 8
  %13 = load i64, i64* @ERR_INTERNAL_ERROR, align 8
  store i64 %13, i64* %11, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = load i32, i32* %7, align 4
  %16 = load i8*, i8** %8, align 8
  %17 = load i64, i64* %9, align 8
  %18 = load i8*, i8** %10, align 8
  %19 = call i64 @DCGetMyIpMain(i32* %14, i32 %15, i8* %16, i64 %17, i32 0, i8* %18)
  store i64 %19, i64* %11, align 8
  %20 = load i64, i64* %11, align 8
  %21 = load i64, i64* @ERR_NO_ERROR, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %46

23:                                               ; preds = %5
  %24 = load i8*, i8** %8, align 8
  %25 = call i64 @StrToIP(i32* %12, i8* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %45

27:                                               ; preds = %23
  %28 = load i32, i32* %7, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %27
  %31 = call i64 @IsIP4(i32* %12)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %30
  %34 = call i32 @SetCurrentGlobalIP(i32* %12, i32 0)
  br label %44

35:                                               ; preds = %30, %27
  %36 = load i32, i32* %7, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %35
  %39 = call i64 @IsIP6(i32* %12)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %38
  %42 = call i32 @SetCurrentGlobalIP(i32* %12, i32 1)
  br label %43

43:                                               ; preds = %41, %38, %35
  br label %44

44:                                               ; preds = %43, %33
  br label %45

45:                                               ; preds = %44, %23
  br label %46

46:                                               ; preds = %45, %5
  %47 = load i64, i64* %11, align 8
  ret i64 %47
}

declare dso_local i64 @DCGetMyIpMain(i32*, i32, i8*, i64, i32, i8*) #1

declare dso_local i64 @StrToIP(i32*, i8*) #1

declare dso_local i64 @IsIP4(i32*) #1

declare dso_local i32 @SetCurrentGlobalIP(i32*, i32) #1

declare dso_local i64 @IsIP6(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
