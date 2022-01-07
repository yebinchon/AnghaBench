; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/btc/core/extr_btc_config.c_btc_config_get_bin.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/btc/core/extr_btc_config.c_btc_config_get_bin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@config = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [5 x i8] c"%02x\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btc_config_get_bin(i8* %0, i8* %1, i64* %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64* %2, i64** %8, align 8
  store i64* %3, i64** %9, align 8
  %14 = load i32*, i32** @config, align 8
  %15 = icmp ne i32* %14, null
  %16 = zext i1 %15 to i32
  %17 = call i32 @assert(i32 %16)
  %18 = load i8*, i8** %6, align 8
  %19 = icmp ne i8* %18, null
  %20 = zext i1 %19 to i32
  %21 = call i32 @assert(i32 %20)
  %22 = load i8*, i8** %7, align 8
  %23 = icmp ne i8* %22, null
  %24 = zext i1 %23 to i32
  %25 = call i32 @assert(i32 %24)
  %26 = load i64*, i64** %8, align 8
  %27 = icmp ne i64* %26, null
  %28 = zext i1 %27 to i32
  %29 = call i32 @assert(i32 %28)
  %30 = load i64*, i64** %9, align 8
  %31 = icmp ne i64* %30, null
  %32 = zext i1 %31 to i32
  %33 = call i32 @assert(i32 %32)
  %34 = load i32*, i32** @config, align 8
  %35 = load i8*, i8** %6, align 8
  %36 = load i8*, i8** %7, align 8
  %37 = call i8* @config_get_string(i32* %34, i8* %35, i8* %36, i32* null)
  store i8* %37, i8** %10, align 8
  %38 = load i8*, i8** %10, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %93

41:                                               ; preds = %4
  %42 = load i8*, i8** %10, align 8
  %43 = call i64 @strlen(i8* %42)
  store i64 %43, i64* %11, align 8
  %44 = load i64, i64* %11, align 8
  %45 = urem i64 %44, 2
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %53, label %47

47:                                               ; preds = %41
  %48 = load i64*, i64** %9, align 8
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* %11, align 8
  %51 = udiv i64 %50, 2
  %52 = icmp ult i64 %49, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %47, %41
  store i32 0, i32* %5, align 4
  br label %93

54:                                               ; preds = %47
  store i64 0, i64* %12, align 8
  br label %55

55:                                               ; preds = %68, %54
  %56 = load i64, i64* %12, align 8
  %57 = load i64, i64* %11, align 8
  %58 = icmp ult i64 %56, %57
  br i1 %58, label %59, label %71

59:                                               ; preds = %55
  %60 = load i8*, i8** %10, align 8
  %61 = load i64, i64* %12, align 8
  %62 = getelementptr inbounds i8, i8* %60, i64 %61
  %63 = load i8, i8* %62, align 1
  %64 = call i32 @isxdigit(i8 zeroext %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %59
  store i32 0, i32* %5, align 4
  br label %93

67:                                               ; preds = %59
  br label %68

68:                                               ; preds = %67
  %69 = load i64, i64* %12, align 8
  %70 = add i64 %69, 1
  store i64 %70, i64* %12, align 8
  br label %55

71:                                               ; preds = %55
  %72 = load i64*, i64** %9, align 8
  store i64 0, i64* %72, align 8
  br label %73

73:                                               ; preds = %86, %71
  %74 = load i8*, i8** %10, align 8
  %75 = load i8, i8* %74, align 1
  %76 = icmp ne i8 %75, 0
  br i1 %76, label %77, label %92

77:                                               ; preds = %73
  %78 = load i8*, i8** %10, align 8
  %79 = call i32 @sscanf(i8* %78, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* %13)
  %80 = load i32, i32* %13, align 4
  %81 = zext i32 %80 to i64
  %82 = load i64*, i64** %8, align 8
  %83 = load i64*, i64** %9, align 8
  %84 = load i64, i64* %83, align 8
  %85 = getelementptr inbounds i64, i64* %82, i64 %84
  store i64 %81, i64* %85, align 8
  br label %86

86:                                               ; preds = %77
  %87 = load i8*, i8** %10, align 8
  %88 = getelementptr inbounds i8, i8* %87, i64 2
  store i8* %88, i8** %10, align 8
  %89 = load i64*, i64** %9, align 8
  %90 = load i64, i64* %89, align 8
  %91 = add i64 %90, 1
  store i64 %91, i64* %89, align 8
  br label %73

92:                                               ; preds = %73
  store i32 1, i32* %5, align 4
  br label %93

93:                                               ; preds = %92, %66, %53, %40
  %94 = load i32, i32* %5, align 4
  ret i32 %94
}

declare dso_local i32 @assert(i32) #1

declare dso_local i8* @config_get_string(i32*, i8*, i8*, i32*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @isxdigit(i8 zeroext) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
