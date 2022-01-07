; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/aosdk/extr_ssf.c_load_ssf.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/aosdk/extr_ssf.c_load_ssf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i32* }

@.str = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@SEEK_END = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@AO_SUCCESS = common dso_local global i32 0, align 4
@ssf_info = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @load_ssf(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %14 = load i8*, i8** %5, align 8
  %15 = call i32* @fopen(i8* %14, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32* %15, i32** %9, align 8
  store i64 0, i64* %13, align 8
  %16 = load i32*, i32** %9, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %101

19:                                               ; preds = %3
  %20 = load i32*, i32** %9, align 8
  %21 = load i32, i32* @SEEK_END, align 4
  %22 = call i32 @fseek(i32* %20, i32 0, i32 %21)
  %23 = load i32*, i32** %9, align 8
  %24 = call i64 @ftell(i32* %23)
  store i64 %24, i64* %8, align 8
  %25 = load i32*, i32** %9, align 8
  %26 = load i32, i32* @SEEK_SET, align 4
  %27 = call i32 @fseek(i32* %25, i32 0, i32 %26)
  %28 = load i64, i64* %8, align 8
  %29 = call i64 @malloc(i64 %28)
  %30 = inttoptr i64 %29 to i8*
  store i8* %30, i8** %10, align 8
  %31 = load i8*, i8** %10, align 8
  %32 = icmp eq i8* %31, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %19
  %34 = load i32*, i32** %9, align 8
  %35 = call i32 @fclose(i32* %34)
  store i32 0, i32* %4, align 4
  br label %101

36:                                               ; preds = %19
  %37 = load i8*, i8** %10, align 8
  %38 = load i64, i64* %8, align 8
  %39 = load i32*, i32** %9, align 8
  %40 = call i64 @fread(i8* %37, i32 1, i64 %38, i32* %39)
  store i64 %40, i64* %13, align 8
  %41 = load i32*, i32** %9, align 8
  %42 = call i32 @fclose(i32* %41)
  %43 = load i8*, i8** %10, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 0
  %45 = load i8, i8* %44, align 1
  %46 = zext i8 %45 to i32
  %47 = icmp ne i32 %46, 80
  br i1 %47, label %66, label %48

48:                                               ; preds = %36
  %49 = load i8*, i8** %10, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 1
  %51 = load i8, i8* %50, align 1
  %52 = zext i8 %51 to i32
  %53 = icmp ne i32 %52, 83
  br i1 %53, label %66, label %54

54:                                               ; preds = %48
  %55 = load i8*, i8** %10, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 2
  %57 = load i8, i8* %56, align 1
  %58 = zext i8 %57 to i32
  %59 = icmp ne i32 %58, 70
  br i1 %59, label %66, label %60

60:                                               ; preds = %54
  %61 = load i8*, i8** %10, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 3
  %63 = load i8, i8* %62, align 1
  %64 = zext i8 %63 to i32
  %65 = icmp ne i32 %64, 17
  br i1 %65, label %66, label %67

66:                                               ; preds = %60, %54, %48, %36
  store i32 0, i32* %4, align 4
  br label %101

67:                                               ; preds = %60
  %68 = load i8*, i8** %10, align 8
  %69 = load i64, i64* %8, align 8
  %70 = load i32, i32* %6, align 4
  %71 = load i32, i32* %7, align 4
  %72 = call i32 @ssf_start(i8* %68, i64 %69, i32 %70, i32 %71)
  store i32 %72, i32* %11, align 4
  %73 = load i32, i32* @AO_SUCCESS, align 4
  %74 = icmp ne i32 %72, %73
  br i1 %74, label %75, label %79

75:                                               ; preds = %67
  %76 = load i8*, i8** %10, align 8
  %77 = call i32 @free(i8* %76)
  %78 = load i32, i32* %11, align 4
  store i32 %78, i32* %4, align 4
  br label %101

79:                                               ; preds = %67
  %80 = call i32 @ssf_fill_info(%struct.TYPE_3__* @ssf_info)
  store i32 0, i32* %12, align 4
  br label %81

81:                                               ; preds = %97, %79
  %82 = load i32, i32* %12, align 4
  %83 = icmp slt i32 %82, 9
  br i1 %83, label %84, label %100

84:                                               ; preds = %81
  %85 = load i32*, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @ssf_info, i32 0, i32 1), align 8
  %86 = load i32, i32* %12, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @upper_case(i32 %89)
  %91 = load i32*, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @ssf_info, i32 0, i32 0), align 8
  %92 = load i32, i32* %12, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %91, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @upper_case(i32 %95)
  br label %97

97:                                               ; preds = %84
  %98 = load i32, i32* %12, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %12, align 4
  br label %81

100:                                              ; preds = %81
  store i32 1, i32* %4, align 4
  br label %101

101:                                              ; preds = %100, %75, %66, %33, %18
  %102 = load i32, i32* %4, align 4
  ret i32 %102
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @fseek(i32*, i32, i32) #1

declare dso_local i64 @ftell(i32*) #1

declare dso_local i64 @malloc(i64) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i64 @fread(i8*, i32, i64, i32*) #1

declare dso_local i32 @ssf_start(i8*, i64, i32, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @ssf_fill_info(%struct.TYPE_3__*) #1

declare dso_local i32 @upper_case(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
