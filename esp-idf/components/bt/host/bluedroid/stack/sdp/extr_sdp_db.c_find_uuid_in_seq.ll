; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/sdp/extr_sdp_db.c_find_uuid_in_seq.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/sdp/extr_sdp_db.c_find_uuid_in_seq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i64 0, align 8
@UUID_DESC_TYPE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@DATA_ELE_SEQ_DESC_TYPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i32, i32*, i32, i32)* @find_uuid_in_seq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @find_uuid_in_seq(i32* %0, i32 %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %15 = load i32*, i32** %7, align 8
  %16 = load i32, i32* %8, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  store i32* %18, i32** %12, align 8
  %19 = load i32, i32* %11, align 4
  %20 = icmp sgt i32 %19, 3
  br i1 %20, label %21, label %23

21:                                               ; preds = %5
  %22 = load i64, i64* @FALSE, align 8
  store i64 %22, i64* %6, align 8
  br label %74

23:                                               ; preds = %5
  br label %24

24:                                               ; preds = %67, %23
  %25 = load i32*, i32** %7, align 8
  %26 = load i32*, i32** %12, align 8
  %27 = icmp ult i32* %25, %26
  br i1 %27, label %28, label %72

28:                                               ; preds = %24
  %29 = load i32*, i32** %7, align 8
  %30 = getelementptr inbounds i32, i32* %29, i32 1
  store i32* %30, i32** %7, align 8
  %31 = load i32, i32* %29, align 4
  store i32 %31, i32* %13, align 4
  %32 = load i32*, i32** %7, align 8
  %33 = load i32, i32* %13, align 4
  %34 = call i32* @sdpu_get_len_from_type(i32* %32, i32 %33, i32* %14)
  store i32* %34, i32** %7, align 8
  %35 = load i32, i32* %13, align 4
  %36 = ashr i32 %35, 3
  store i32 %36, i32* %13, align 4
  %37 = load i32, i32* %13, align 4
  %38 = load i32, i32* @UUID_DESC_TYPE, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %50

40:                                               ; preds = %28
  %41 = load i32*, i32** %7, align 8
  %42 = load i32, i32* %14, align 4
  %43 = load i32*, i32** %9, align 8
  %44 = load i32, i32* %10, align 4
  %45 = call i64 @sdpu_compare_uuid_arrays(i32* %41, i32 %42, i32* %43, i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %40
  %48 = load i64, i64* @TRUE, align 8
  store i64 %48, i64* %6, align 8
  br label %74

49:                                               ; preds = %40
  br label %67

50:                                               ; preds = %28
  %51 = load i32, i32* %13, align 4
  %52 = load i32, i32* @DATA_ELE_SEQ_DESC_TYPE, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %66

54:                                               ; preds = %50
  %55 = load i32*, i32** %7, align 8
  %56 = load i32, i32* %14, align 4
  %57 = load i32*, i32** %9, align 8
  %58 = load i32, i32* %10, align 4
  %59 = load i32, i32* %11, align 4
  %60 = add nsw i32 %59, 1
  %61 = call i64 @find_uuid_in_seq(i32* %55, i32 %56, i32* %57, i32 %58, i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %54
  %64 = load i64, i64* @TRUE, align 8
  store i64 %64, i64* %6, align 8
  br label %74

65:                                               ; preds = %54
  br label %66

66:                                               ; preds = %65, %50
  br label %67

67:                                               ; preds = %66, %49
  %68 = load i32*, i32** %7, align 8
  %69 = load i32, i32* %14, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  store i32* %71, i32** %7, align 8
  br label %24

72:                                               ; preds = %24
  %73 = load i64, i64* @FALSE, align 8
  store i64 %73, i64* %6, align 8
  br label %74

74:                                               ; preds = %72, %63, %47, %21
  %75 = load i64, i64* %6, align 8
  ret i64 %75
}

declare dso_local i32* @sdpu_get_len_from_type(i32*, i32, i32*) #1

declare dso_local i64 @sdpu_compare_uuid_arrays(i32*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
