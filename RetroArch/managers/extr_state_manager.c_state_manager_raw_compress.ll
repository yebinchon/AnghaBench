; ModuleID = '/home/carl/AnghaBench/RetroArch/managers/extr_state_manager.c_state_manager_raw_compress.c'
source_filename = "/home/carl/AnghaBench/RetroArch/managers/extr_state_manager.c_state_manager_raw_compress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@UINT16_MAX = common dso_local global i64 0, align 8
@UINT32_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i8*, i64, i8*)* @state_manager_raw_compress to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @state_manager_raw_compress(i8* %0, i8* %1, i64 %2, i8* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i8* %3, i8** %8, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = bitcast i8* %16 to i64*
  store i64* %17, i64** %9, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = bitcast i8* %18 to i64*
  store i64* %19, i64** %10, align 8
  %20 = load i8*, i8** %8, align 8
  %21 = bitcast i8* %20 to i64*
  store i64* %21, i64** %11, align 8
  %22 = load i64, i64* %7, align 8
  %23 = add i64 %22, 8
  %24 = sub i64 %23, 1
  %25 = udiv i64 %24, 8
  store i64 %25, i64* %12, align 8
  br label %26

26:                                               ; preds = %97, %56, %4
  %27 = load i64, i64* %12, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %110

29:                                               ; preds = %26
  %30 = load i64*, i64** %9, align 8
  %31 = load i64*, i64** %10, align 8
  %32 = call i64 @find_change(i64* %30, i64* %31)
  store i64 %32, i64* %15, align 8
  %33 = load i64, i64* %15, align 8
  %34 = load i64, i64* %12, align 8
  %35 = icmp uge i64 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %29
  br label %110

37:                                               ; preds = %29
  %38 = load i64, i64* %15, align 8
  %39 = load i64*, i64** %9, align 8
  %40 = getelementptr inbounds i64, i64* %39, i64 %38
  store i64* %40, i64** %9, align 8
  %41 = load i64, i64* %15, align 8
  %42 = load i64*, i64** %10, align 8
  %43 = getelementptr inbounds i64, i64* %42, i64 %41
  store i64* %43, i64** %10, align 8
  %44 = load i64, i64* %15, align 8
  %45 = load i64, i64* %12, align 8
  %46 = sub i64 %45, %44
  store i64 %46, i64* %12, align 8
  %47 = load i64, i64* %15, align 8
  %48 = load i64, i64* @UINT16_MAX, align 8
  %49 = icmp ugt i64 %47, %48
  br i1 %49, label %50, label %66

50:                                               ; preds = %37
  %51 = load i64, i64* %15, align 8
  %52 = load i64, i64* @UINT32_MAX, align 8
  %53 = icmp ugt i64 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %50
  %55 = load i64, i64* @UINT32_MAX, align 8
  store i64 %55, i64* %15, align 8
  br label %56

56:                                               ; preds = %54, %50
  %57 = load i64*, i64** %11, align 8
  %58 = getelementptr inbounds i64, i64* %57, i32 1
  store i64* %58, i64** %11, align 8
  store i64 0, i64* %57, align 8
  %59 = load i64, i64* %15, align 8
  %60 = load i64*, i64** %11, align 8
  %61 = getelementptr inbounds i64, i64* %60, i32 1
  store i64* %61, i64** %11, align 8
  store i64 %59, i64* %60, align 8
  %62 = load i64, i64* %15, align 8
  %63 = lshr i64 %62, 16
  %64 = load i64*, i64** %11, align 8
  %65 = getelementptr inbounds i64, i64* %64, i32 1
  store i64* %65, i64** %11, align 8
  store i64 %63, i64* %64, align 8
  br label %26

66:                                               ; preds = %37
  %67 = load i64*, i64** %9, align 8
  %68 = load i64*, i64** %10, align 8
  %69 = call i64 @find_same(i64* %67, i64* %68)
  store i64 %69, i64* %14, align 8
  %70 = load i64, i64* %14, align 8
  %71 = load i64, i64* @UINT16_MAX, align 8
  %72 = icmp ugt i64 %70, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %66
  %74 = load i64, i64* @UINT16_MAX, align 8
  store i64 %74, i64* %14, align 8
  br label %75

75:                                               ; preds = %73, %66
  %76 = load i64, i64* %14, align 8
  %77 = load i64*, i64** %11, align 8
  %78 = getelementptr inbounds i64, i64* %77, i32 1
  store i64* %78, i64** %11, align 8
  store i64 %76, i64* %77, align 8
  %79 = load i64, i64* %15, align 8
  %80 = load i64*, i64** %11, align 8
  %81 = getelementptr inbounds i64, i64* %80, i32 1
  store i64* %81, i64** %11, align 8
  store i64 %79, i64* %80, align 8
  store i64 0, i64* %13, align 8
  br label %82

82:                                               ; preds = %94, %75
  %83 = load i64, i64* %13, align 8
  %84 = load i64, i64* %14, align 8
  %85 = icmp ult i64 %83, %84
  br i1 %85, label %86, label %97

86:                                               ; preds = %82
  %87 = load i64*, i64** %9, align 8
  %88 = load i64, i64* %13, align 8
  %89 = getelementptr inbounds i64, i64* %87, i64 %88
  %90 = load i64, i64* %89, align 8
  %91 = load i64*, i64** %11, align 8
  %92 = load i64, i64* %13, align 8
  %93 = getelementptr inbounds i64, i64* %91, i64 %92
  store i64 %90, i64* %93, align 8
  br label %94

94:                                               ; preds = %86
  %95 = load i64, i64* %13, align 8
  %96 = add i64 %95, 1
  store i64 %96, i64* %13, align 8
  br label %82

97:                                               ; preds = %82
  %98 = load i64, i64* %14, align 8
  %99 = load i64*, i64** %9, align 8
  %100 = getelementptr inbounds i64, i64* %99, i64 %98
  store i64* %100, i64** %9, align 8
  %101 = load i64, i64* %14, align 8
  %102 = load i64*, i64** %10, align 8
  %103 = getelementptr inbounds i64, i64* %102, i64 %101
  store i64* %103, i64** %10, align 8
  %104 = load i64, i64* %14, align 8
  %105 = load i64, i64* %12, align 8
  %106 = sub i64 %105, %104
  store i64 %106, i64* %12, align 8
  %107 = load i64, i64* %14, align 8
  %108 = load i64*, i64** %11, align 8
  %109 = getelementptr inbounds i64, i64* %108, i64 %107
  store i64* %109, i64** %11, align 8
  br label %26

110:                                              ; preds = %36, %26
  %111 = load i64*, i64** %11, align 8
  %112 = getelementptr inbounds i64, i64* %111, i64 0
  store i64 0, i64* %112, align 8
  %113 = load i64*, i64** %11, align 8
  %114 = getelementptr inbounds i64, i64* %113, i64 1
  store i64 0, i64* %114, align 8
  %115 = load i64*, i64** %11, align 8
  %116 = getelementptr inbounds i64, i64* %115, i64 2
  store i64 0, i64* %116, align 8
  %117 = load i64*, i64** %11, align 8
  %118 = getelementptr inbounds i64, i64* %117, i64 3
  %119 = bitcast i64* %118 to i32*
  %120 = load i8*, i8** %8, align 8
  %121 = bitcast i8* %120 to i32*
  %122 = ptrtoint i32* %119 to i64
  %123 = ptrtoint i32* %121 to i64
  %124 = sub i64 %122, %123
  %125 = sdiv exact i64 %124, 4
  ret i64 %125
}

declare dso_local i64 @find_change(i64*, i64*) #1

declare dso_local i64 @find_same(i64*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
