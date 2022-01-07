; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_necp.c_necp_buffer_find_tlv.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_necp.c_necp_buffer_find_tlv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TRUE = common dso_local global i64 0, align 8
@NECP_TLV_NIL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @necp_buffer_find_tlv(i64* %0, i64 %1, i32 %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store i64* %0, i64** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %16 = load i32, i32* %9, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %5
  store i32 -1, i32* %6, align 4
  br label %75

19:                                               ; preds = %5
  %20 = load i32, i32* %9, align 4
  store i32 %20, i32* %12, align 4
  br label %21

21:                                               ; preds = %73, %19
  %22 = load i64, i64* @TRUE, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %75

24:                                               ; preds = %21
  %25 = load i32, i32* %12, align 4
  %26 = sext i32 %25 to i64
  %27 = add i64 %26, 8
  %28 = add i64 %27, 8
  %29 = load i64, i64* %8, align 8
  %30 = icmp ugt i64 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %24
  store i32 -1, i32* %6, align 4
  br label %75

32:                                               ; preds = %24
  %33 = load i32, i32* %11, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %32
  %36 = load i64*, i64** %7, align 8
  %37 = load i32, i32* %12, align 4
  %38 = call i64 @necp_buffer_get_tlv_type(i64* %36, i32 %37)
  store i64 %38, i64* %15, align 8
  br label %41

39:                                               ; preds = %32
  store i32 0, i32* %11, align 4
  %40 = load i64, i64* @NECP_TLV_NIL, align 8
  store i64 %40, i64* %15, align 8
  br label %41

41:                                               ; preds = %39, %35
  %42 = load i64*, i64** %7, align 8
  %43 = load i32, i32* %12, align 4
  %44 = call i64 @necp_buffer_get_tlv_length(i64* %42, i32 %43)
  store i64 %44, i64* %14, align 8
  %45 = load i64, i64* %14, align 8
  %46 = load i64, i64* %8, align 8
  %47 = load i32, i32* %12, align 4
  %48 = sext i32 %47 to i64
  %49 = add i64 %48, 8
  %50 = add i64 %49, 8
  %51 = sub i64 %46, %50
  %52 = icmp ugt i64 %45, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %41
  store i32 -1, i32* %6, align 4
  br label %75

54:                                               ; preds = %41
  %55 = load i32, i32* %12, align 4
  %56 = sext i32 %55 to i64
  %57 = add i64 %56, 8
  %58 = add i64 %57, 8
  %59 = load i64, i64* %14, align 8
  %60 = add i64 %58, %59
  %61 = trunc i64 %60 to i32
  store i32 %61, i32* %13, align 4
  %62 = load i64, i64* %15, align 8
  %63 = load i64, i64* %10, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %73

65:                                               ; preds = %54
  %66 = load i32, i32* %13, align 4
  %67 = sext i32 %66 to i64
  %68 = load i64, i64* %8, align 8
  %69 = icmp sle i64 %67, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %65
  %71 = load i32, i32* %12, align 4
  store i32 %71, i32* %6, align 4
  br label %75

72:                                               ; preds = %65
  store i32 -1, i32* %6, align 4
  br label %75

73:                                               ; preds = %54
  %74 = load i32, i32* %13, align 4
  store i32 %74, i32* %12, align 4
  br label %21

75:                                               ; preds = %18, %31, %53, %70, %72, %21
  %76 = load i32, i32* %6, align 4
  ret i32 %76
}

declare dso_local i64 @necp_buffer_get_tlv_type(i64*, i32) #1

declare dso_local i64 @necp_buffer_get_tlv_length(i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
