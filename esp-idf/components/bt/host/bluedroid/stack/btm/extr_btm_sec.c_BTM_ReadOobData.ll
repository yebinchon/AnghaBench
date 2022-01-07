; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_sec.c_BTM_ReadOobData.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_sec.c_BTM_ReadOobData.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BTM_OOB_MANDATORY_SIZE = common dso_local global i64 0, align 8
@BTM_EIR_OOB_BD_ADDR_TYPE = common dso_local global i64 0, align 8
@BTM_OOB_BD_ADDR_SIZE = common dso_local global i64 0, align 8
@BD_ADDR_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64* @BTM_ReadOobData(i64* %0, i64 %1, i64* %2) #0 {
  %4 = alloca i64*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64, align 8
  store i64* %0, i64** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64* %2, i64** %6, align 8
  %13 = load i64*, i64** %4, align 8
  store i64* %13, i64** %7, align 8
  store i64* null, i64** %11, align 8
  store i64 0, i64* %12, align 8
  %14 = load i64*, i64** %4, align 8
  %15 = icmp ne i64* %14, null
  br i1 %15, label %16, label %75

16:                                               ; preds = %3
  %17 = load i64, i64* %8, align 8
  %18 = load i64*, i64** %7, align 8
  %19 = call i32 @STREAM_TO_UINT16(i64 %17, i64* %18)
  %20 = load i64, i64* %8, align 8
  %21 = load i64, i64* @BTM_OOB_MANDATORY_SIZE, align 8
  %22 = icmp sge i64 %20, %21
  br i1 %22, label %23, label %74

23:                                               ; preds = %16
  %24 = load i64, i64* @BTM_EIR_OOB_BD_ADDR_TYPE, align 8
  %25 = load i64, i64* %5, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = load i64*, i64** %7, align 8
  store i64* %28, i64** %11, align 8
  %29 = load i64, i64* @BTM_OOB_BD_ADDR_SIZE, align 8
  store i64 %29, i64* %12, align 8
  br label %73

30:                                               ; preds = %23
  %31 = load i32, i32* @BD_ADDR_LEN, align 4
  %32 = load i64*, i64** %7, align 8
  %33 = sext i32 %31 to i64
  %34 = getelementptr inbounds i64, i64* %32, i64 %33
  store i64* %34, i64** %7, align 8
  %35 = load i64, i64* @BTM_OOB_MANDATORY_SIZE, align 8
  %36 = load i64, i64* %8, align 8
  %37 = sub nsw i64 %36, %35
  store i64 %37, i64* %8, align 8
  br label %38

38:                                               ; preds = %71, %30
  %39 = load i64, i64* %8, align 8
  %40 = icmp sgt i64 %39, 0
  br i1 %40, label %41, label %72

41:                                               ; preds = %38
  %42 = load i64*, i64** %7, align 8
  %43 = getelementptr inbounds i64, i64* %42, i32 1
  store i64* %43, i64** %7, align 8
  %44 = load i64, i64* %42, align 8
  store i64 %44, i64* %9, align 8
  %45 = load i64*, i64** %7, align 8
  %46 = getelementptr inbounds i64, i64* %45, i32 1
  store i64* %46, i64** %7, align 8
  %47 = load i64, i64* %45, align 8
  store i64 %47, i64* %10, align 8
  %48 = load i64, i64* %5, align 8
  %49 = load i64, i64* %10, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %41
  %52 = load i64*, i64** %7, align 8
  store i64* %52, i64** %11, align 8
  %53 = load i64, i64* %9, align 8
  %54 = sub nsw i64 %53, 1
  store i64 %54, i64* %12, align 8
  br label %72

55:                                               ; preds = %41
  %56 = load i64, i64* %8, align 8
  %57 = load i64, i64* %9, align 8
  %58 = icmp sgt i64 %56, %57
  br i1 %58, label %59, label %70

59:                                               ; preds = %55
  %60 = load i64, i64* %9, align 8
  %61 = load i64, i64* %8, align 8
  %62 = sub nsw i64 %61, %60
  store i64 %62, i64* %8, align 8
  %63 = load i64, i64* %8, align 8
  %64 = add nsw i64 %63, -1
  store i64 %64, i64* %8, align 8
  %65 = load i64, i64* %9, align 8
  %66 = add nsw i64 %65, -1
  store i64 %66, i64* %9, align 8
  %67 = load i64, i64* %9, align 8
  %68 = load i64*, i64** %7, align 8
  %69 = getelementptr inbounds i64, i64* %68, i64 %67
  store i64* %69, i64** %7, align 8
  br label %71

70:                                               ; preds = %55
  store i64 0, i64* %8, align 8
  br label %71

71:                                               ; preds = %70, %59
  br label %38

72:                                               ; preds = %51, %38
  br label %73

73:                                               ; preds = %72, %27
  br label %74

74:                                               ; preds = %73, %16
  br label %75

75:                                               ; preds = %74, %3
  %76 = load i64*, i64** %6, align 8
  %77 = icmp ne i64* %76, null
  br i1 %77, label %78, label %81

78:                                               ; preds = %75
  %79 = load i64, i64* %12, align 8
  %80 = load i64*, i64** %6, align 8
  store i64 %79, i64* %80, align 8
  br label %81

81:                                               ; preds = %78, %75
  %82 = load i64*, i64** %11, align 8
  ret i64* %82
}

declare dso_local i32 @STREAM_TO_UINT16(i64, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
