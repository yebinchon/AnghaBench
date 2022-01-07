; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/btc/core/extr_btc_config.c_btc_config_set_bin.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/btc/core/extr_btc_config.c_btc_config_set_bin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [17 x i8] c"0123456789abcdef\00", align 1
@config = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btc_config_set_bin(i8* %0, i8* %1, i32* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8** %10, align 8
  %13 = load i32*, i32** @config, align 8
  %14 = icmp ne i32* %13, null
  %15 = zext i1 %14 to i32
  %16 = call i32 @assert(i32 %15)
  %17 = load i8*, i8** %6, align 8
  %18 = icmp ne i8* %17, null
  %19 = zext i1 %18 to i32
  %20 = call i32 @assert(i32 %19)
  %21 = load i8*, i8** %7, align 8
  %22 = icmp ne i8* %21, null
  %23 = zext i1 %22 to i32
  %24 = call i32 @assert(i32 %23)
  %25 = load i64, i64* %9, align 8
  %26 = icmp ugt i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %4
  %28 = load i32*, i32** %8, align 8
  %29 = icmp ne i32* %28, null
  %30 = zext i1 %29 to i32
  %31 = call i32 @assert(i32 %30)
  br label %32

32:                                               ; preds = %27, %4
  %33 = load i64, i64* %9, align 8
  %34 = mul i64 %33, 2
  %35 = add i64 %34, 1
  %36 = call i64 @osi_calloc(i64 %35)
  %37 = inttoptr i64 %36 to i8*
  store i8* %37, i8** %11, align 8
  %38 = load i8*, i8** %11, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %32
  store i32 0, i32* %5, align 4
  br label %87

41:                                               ; preds = %32
  store i64 0, i64* %12, align 8
  br label %42

42:                                               ; preds = %76, %41
  %43 = load i64, i64* %12, align 8
  %44 = load i64, i64* %9, align 8
  %45 = icmp ult i64 %43, %44
  br i1 %45, label %46, label %79

46:                                               ; preds = %42
  %47 = load i8*, i8** %10, align 8
  %48 = load i32*, i32** %8, align 8
  %49 = load i64, i64* %12, align 8
  %50 = getelementptr inbounds i32, i32* %48, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = ashr i32 %51, 4
  %53 = and i32 %52, 15
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8, i8* %47, i64 %54
  %56 = load i8, i8* %55, align 1
  %57 = load i8*, i8** %11, align 8
  %58 = load i64, i64* %12, align 8
  %59 = mul i64 %58, 2
  %60 = add i64 %59, 0
  %61 = getelementptr inbounds i8, i8* %57, i64 %60
  store i8 %56, i8* %61, align 1
  %62 = load i8*, i8** %10, align 8
  %63 = load i32*, i32** %8, align 8
  %64 = load i64, i64* %12, align 8
  %65 = getelementptr inbounds i32, i32* %63, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = and i32 %66, 15
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8, i8* %62, i64 %68
  %70 = load i8, i8* %69, align 1
  %71 = load i8*, i8** %11, align 8
  %72 = load i64, i64* %12, align 8
  %73 = mul i64 %72, 2
  %74 = add i64 %73, 1
  %75 = getelementptr inbounds i8, i8* %71, i64 %74
  store i8 %70, i8* %75, align 1
  br label %76

76:                                               ; preds = %46
  %77 = load i64, i64* %12, align 8
  %78 = add i64 %77, 1
  store i64 %78, i64* %12, align 8
  br label %42

79:                                               ; preds = %42
  %80 = load i32*, i32** @config, align 8
  %81 = load i8*, i8** %6, align 8
  %82 = load i8*, i8** %7, align 8
  %83 = load i8*, i8** %11, align 8
  %84 = call i32 @config_set_string(i32* %80, i8* %81, i8* %82, i8* %83, i32 0)
  %85 = load i8*, i8** %11, align 8
  %86 = call i32 @osi_free(i8* %85)
  store i32 1, i32* %5, align 4
  br label %87

87:                                               ; preds = %79, %40
  %88 = load i32, i32* %5, align 4
  ret i32 %88
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @osi_calloc(i64) #1

declare dso_local i32 @config_set_string(i32*, i8*, i8*, i8*, i32) #1

declare dso_local i32 @osi_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
