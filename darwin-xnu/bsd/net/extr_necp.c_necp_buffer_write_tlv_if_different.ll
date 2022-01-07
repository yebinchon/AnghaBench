; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_necp.c_necp_buffer_write_tlv_if_different.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_necp.c_necp_buffer_write_tlv_if_different.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64* @necp_buffer_write_tlv_if_different(i64* %0, i64 %1, i32 %2, i8* %3, i32* %4, i64* %5, i32 %6) #0 {
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64*, align 8
  store i64* %0, i64** %9, align 8
  store i64 %1, i64* %10, align 8
  store i32 %2, i32* %11, align 4
  store i8* %3, i8** %12, align 8
  store i32* %4, i32** %13, align 8
  store i64* %5, i64** %14, align 8
  store i32 %6, i32* %15, align 4
  %17 = load i64*, i64** %9, align 8
  %18 = load i64, i64* %10, align 8
  %19 = load i32, i32* %11, align 4
  %20 = load i64*, i64** %14, align 8
  %21 = load i32, i32* %15, align 4
  %22 = call i32 @necp_buffer_write_tlv_validate(i64* %17, i64 %18, i32 %19, i64* %20, i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %7
  store i64* null, i64** %8, align 8
  br label %92

25:                                               ; preds = %7
  %26 = load i64*, i64** %9, align 8
  %27 = getelementptr inbounds i64, i64* %26, i64 8
  %28 = getelementptr inbounds i64, i64* %27, i64 4
  %29 = load i32, i32* %11, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i64, i64* %28, i64 %30
  store i64* %31, i64** %16, align 8
  %32 = load i32*, i32** %13, align 8
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %40, label %35

35:                                               ; preds = %25
  %36 = load i64*, i64** %9, align 8
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* %10, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %35, %25
  %41 = load i64, i64* %10, align 8
  %42 = load i64*, i64** %9, align 8
  store i64 %41, i64* %42, align 8
  %43 = load i32, i32* @TRUE, align 4
  %44 = load i32*, i32** %13, align 8
  store i32 %43, i32* %44, align 4
  br label %45

45:                                               ; preds = %40, %35
  %46 = load i32*, i32** %13, align 8
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %57, label %49

49:                                               ; preds = %45
  %50 = load i64*, i64** %9, align 8
  %51 = getelementptr inbounds i64, i64* %50, i64 8
  %52 = bitcast i64* %51 to i8*
  %53 = bitcast i8* %52 to i32*
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %11, align 4
  %56 = icmp ne i32 %54, %55
  br i1 %56, label %57, label %65

57:                                               ; preds = %49, %45
  %58 = load i32, i32* %11, align 4
  %59 = load i64*, i64** %9, align 8
  %60 = getelementptr inbounds i64, i64* %59, i64 8
  %61 = bitcast i64* %60 to i8*
  %62 = bitcast i8* %61 to i32*
  store i32 %58, i32* %62, align 4
  %63 = load i32, i32* @TRUE, align 4
  %64 = load i32*, i32** %13, align 8
  store i32 %63, i32* %64, align 4
  br label %65

65:                                               ; preds = %57, %49
  %66 = load i32, i32* %11, align 4
  %67 = icmp sgt i32 %66, 0
  br i1 %67, label %68, label %90

68:                                               ; preds = %65
  %69 = load i32*, i32** %13, align 8
  %70 = load i32, i32* %69, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %80, label %72

72:                                               ; preds = %68
  %73 = load i64*, i64** %9, align 8
  %74 = getelementptr inbounds i64, i64* %73, i64 8
  %75 = getelementptr inbounds i64, i64* %74, i64 4
  %76 = load i8*, i8** %12, align 8
  %77 = load i32, i32* %11, align 4
  %78 = call i64 @memcmp(i64* %75, i8* %76, i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %89

80:                                               ; preds = %72, %68
  %81 = load i64*, i64** %9, align 8
  %82 = getelementptr inbounds i64, i64* %81, i64 8
  %83 = getelementptr inbounds i64, i64* %82, i64 4
  %84 = load i8*, i8** %12, align 8
  %85 = load i32, i32* %11, align 4
  %86 = call i32 @memcpy(i64* %83, i8* %84, i32 %85)
  %87 = load i32, i32* @TRUE, align 4
  %88 = load i32*, i32** %13, align 8
  store i32 %87, i32* %88, align 4
  br label %89

89:                                               ; preds = %80, %72
  br label %90

90:                                               ; preds = %89, %65
  %91 = load i64*, i64** %16, align 8
  store i64* %91, i64** %8, align 8
  br label %92

92:                                               ; preds = %90, %24
  %93 = load i64*, i64** %8, align 8
  ret i64* %93
}

declare dso_local i32 @necp_buffer_write_tlv_validate(i64*, i64, i32, i64*, i32) #1

declare dso_local i64 @memcmp(i64*, i8*, i32) #1

declare dso_local i32 @memcpy(i64*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
