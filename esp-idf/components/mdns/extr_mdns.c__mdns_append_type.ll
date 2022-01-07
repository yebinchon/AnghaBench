; ModuleID = '/home/carl/AnghaBench/esp-idf/components/mdns/extr_mdns.c__mdns_append_type.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/mdns/extr_mdns.c__mdns_append_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MDNS_MAX_PACKET_SIZE = common dso_local global i64 0, align 8
@MDNS_CLASS_IN = common dso_local global i64 0, align 8
@MDNS_CLASS_IN_FLUSH_CACHE = common dso_local global i64 0, align 8
@MDNS_ANSWER_PTR = common dso_local global i64 0, align 8
@MDNS_TYPE_PTR = common dso_local global i64 0, align 8
@MDNS_ANSWER_TXT = common dso_local global i64 0, align 8
@MDNS_TYPE_TXT = common dso_local global i64 0, align 8
@MDNS_ANSWER_SRV = common dso_local global i64 0, align 8
@MDNS_TYPE_SRV = common dso_local global i64 0, align 8
@MDNS_ANSWER_A = common dso_local global i64 0, align 8
@MDNS_TYPE_A = common dso_local global i64 0, align 8
@MDNS_ANSWER_AAAA = common dso_local global i64 0, align 8
@MDNS_TYPE_AAAA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64*, i64*, i64, i32, i32)* @_mdns_append_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @_mdns_append_type(i64* %0, i64* %1, i64 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store i64* %0, i64** %7, align 8
  store i64* %1, i64** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %13 = load i64*, i64** %8, align 8
  %14 = load i64, i64* %13, align 8
  %15 = add nsw i64 %14, 10
  %16 = load i64, i64* @MDNS_MAX_PACKET_SIZE, align 8
  %17 = icmp sge i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %5
  store i64 0, i64* %6, align 8
  br label %103

19:                                               ; preds = %5
  %20 = load i64, i64* @MDNS_CLASS_IN, align 8
  store i64 %20, i64* %12, align 8
  %21 = load i32, i32* %10, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = load i64, i64* @MDNS_CLASS_IN_FLUSH_CACHE, align 8
  store i64 %24, i64* %12, align 8
  br label %25

25:                                               ; preds = %23, %19
  %26 = load i64, i64* %9, align 8
  %27 = load i64, i64* @MDNS_ANSWER_PTR, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %38

29:                                               ; preds = %25
  %30 = load i64*, i64** %7, align 8
  %31 = load i64*, i64** %8, align 8
  %32 = load i64, i64* @MDNS_TYPE_PTR, align 8
  %33 = call i32 @_mdns_append_u16(i64* %30, i64* %31, i64 %32)
  %34 = load i64*, i64** %7, align 8
  %35 = load i64*, i64** %8, align 8
  %36 = load i64, i64* %12, align 8
  %37 = call i32 @_mdns_append_u16(i64* %34, i64* %35, i64 %36)
  br label %95

38:                                               ; preds = %25
  %39 = load i64, i64* %9, align 8
  %40 = load i64, i64* @MDNS_ANSWER_TXT, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %51

42:                                               ; preds = %38
  %43 = load i64*, i64** %7, align 8
  %44 = load i64*, i64** %8, align 8
  %45 = load i64, i64* @MDNS_TYPE_TXT, align 8
  %46 = call i32 @_mdns_append_u16(i64* %43, i64* %44, i64 %45)
  %47 = load i64*, i64** %7, align 8
  %48 = load i64*, i64** %8, align 8
  %49 = load i64, i64* %12, align 8
  %50 = call i32 @_mdns_append_u16(i64* %47, i64* %48, i64 %49)
  br label %94

51:                                               ; preds = %38
  %52 = load i64, i64* %9, align 8
  %53 = load i64, i64* @MDNS_ANSWER_SRV, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %64

55:                                               ; preds = %51
  %56 = load i64*, i64** %7, align 8
  %57 = load i64*, i64** %8, align 8
  %58 = load i64, i64* @MDNS_TYPE_SRV, align 8
  %59 = call i32 @_mdns_append_u16(i64* %56, i64* %57, i64 %58)
  %60 = load i64*, i64** %7, align 8
  %61 = load i64*, i64** %8, align 8
  %62 = load i64, i64* %12, align 8
  %63 = call i32 @_mdns_append_u16(i64* %60, i64* %61, i64 %62)
  br label %93

64:                                               ; preds = %51
  %65 = load i64, i64* %9, align 8
  %66 = load i64, i64* @MDNS_ANSWER_A, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %77

68:                                               ; preds = %64
  %69 = load i64*, i64** %7, align 8
  %70 = load i64*, i64** %8, align 8
  %71 = load i64, i64* @MDNS_TYPE_A, align 8
  %72 = call i32 @_mdns_append_u16(i64* %69, i64* %70, i64 %71)
  %73 = load i64*, i64** %7, align 8
  %74 = load i64*, i64** %8, align 8
  %75 = load i64, i64* %12, align 8
  %76 = call i32 @_mdns_append_u16(i64* %73, i64* %74, i64 %75)
  br label %92

77:                                               ; preds = %64
  %78 = load i64, i64* %9, align 8
  %79 = load i64, i64* @MDNS_ANSWER_AAAA, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %90

81:                                               ; preds = %77
  %82 = load i64*, i64** %7, align 8
  %83 = load i64*, i64** %8, align 8
  %84 = load i64, i64* @MDNS_TYPE_AAAA, align 8
  %85 = call i32 @_mdns_append_u16(i64* %82, i64* %83, i64 %84)
  %86 = load i64*, i64** %7, align 8
  %87 = load i64*, i64** %8, align 8
  %88 = load i64, i64* %12, align 8
  %89 = call i32 @_mdns_append_u16(i64* %86, i64* %87, i64 %88)
  br label %91

90:                                               ; preds = %77
  store i64 0, i64* %6, align 8
  br label %103

91:                                               ; preds = %81
  br label %92

92:                                               ; preds = %91, %68
  br label %93

93:                                               ; preds = %92, %55
  br label %94

94:                                               ; preds = %93, %42
  br label %95

95:                                               ; preds = %94, %29
  %96 = load i64*, i64** %7, align 8
  %97 = load i64*, i64** %8, align 8
  %98 = load i32, i32* %11, align 4
  %99 = call i32 @_mdns_append_u32(i64* %96, i64* %97, i32 %98)
  %100 = load i64*, i64** %7, align 8
  %101 = load i64*, i64** %8, align 8
  %102 = call i32 @_mdns_append_u16(i64* %100, i64* %101, i64 0)
  store i64 10, i64* %6, align 8
  br label %103

103:                                              ; preds = %95, %90, %18
  %104 = load i64, i64* %6, align 8
  ret i64 %104
}

declare dso_local i32 @_mdns_append_u16(i64*, i64*, i64) #1

declare dso_local i32 @_mdns_append_u32(i64*, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
