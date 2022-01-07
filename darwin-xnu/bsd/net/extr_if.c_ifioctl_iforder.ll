; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if.c_ifioctl_iforder.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if.c_ifioctl_iforder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.if_order = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@if_index = common dso_local global i32 0, align 4
@USER_ADDR_NULL = common dso_local global i32 0, align 4
@M_NECP = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*)* @ifioctl_iforder to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ifioctl_iforder(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.if_order*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %6, align 4
  store i32* null, i32** %7, align 8
  %13 = load i32*, i32** %5, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* @EINVAL, align 4
  store i32 %16, i32* %3, align 4
  br label %141

17:                                               ; preds = %2
  %18 = load i32, i32* %4, align 4
  switch i32 %18, label %130 [
    i32 128, label %19
  ]

19:                                               ; preds = %17
  %20 = load i32*, i32** %5, align 8
  %21 = bitcast i32* %20 to i8*
  %22 = bitcast i8* %21 to %struct.if_order*
  store %struct.if_order* %22, %struct.if_order** %8, align 8
  %23 = load %struct.if_order*, %struct.if_order** %8, align 8
  %24 = getelementptr inbounds %struct.if_order, %struct.if_order* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @if_index, align 4
  %27 = icmp sgt i32 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %19
  %29 = load i32, i32* @EINVAL, align 4
  store i32 %29, i32* %6, align 4
  br label %132

30:                                               ; preds = %19
  %31 = load %struct.if_order*, %struct.if_order** %8, align 8
  %32 = getelementptr inbounds %struct.if_order, %struct.if_order* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = sext i32 %33 to i64
  %35 = mul i64 %34, 4
  store i64 %35, i64* %9, align 8
  %36 = load i64, i64* %9, align 8
  %37 = icmp ugt i64 %36, 0
  br i1 %37, label %38, label %123

38:                                               ; preds = %30
  %39 = load %struct.if_order*, %struct.if_order** %8, align 8
  %40 = getelementptr inbounds %struct.if_order, %struct.if_order* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @USER_ADDR_NULL, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %38
  %45 = load i32, i32* @EINVAL, align 4
  store i32 %45, i32* %6, align 4
  br label %132

46:                                               ; preds = %38
  %47 = load i64, i64* %9, align 8
  %48 = load i32, i32* @M_NECP, align 4
  %49 = load i32, i32* @M_WAITOK, align 4
  %50 = call i32* @_MALLOC(i64 %47, i32 %48, i32 %49)
  store i32* %50, i32** %7, align 8
  %51 = load i32*, i32** %7, align 8
  %52 = icmp eq i32* %51, null
  br i1 %52, label %53, label %55

53:                                               ; preds = %46
  %54 = load i32, i32* @ENOMEM, align 4
  store i32 %54, i32* %6, align 4
  br label %132

55:                                               ; preds = %46
  %56 = load %struct.if_order*, %struct.if_order** %8, align 8
  %57 = getelementptr inbounds %struct.if_order, %struct.if_order* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load i32*, i32** %7, align 8
  %60 = load i64, i64* %9, align 8
  %61 = call i32 @copyin(i32 %58, i32* %59, i64 %60)
  store i32 %61, i32* %6, align 4
  %62 = load i32, i32* %6, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %55
  br label %132

65:                                               ; preds = %55
  %66 = load i32, i32* @FALSE, align 4
  store i32 %66, i32* %10, align 4
  store i64 0, i64* %11, align 8
  br label %67

67:                                               ; preds = %115, %65
  %68 = load i64, i64* %11, align 8
  %69 = load %struct.if_order*, %struct.if_order** %8, align 8
  %70 = getelementptr inbounds %struct.if_order, %struct.if_order* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = sub nsw i32 %71, 1
  %73 = sext i32 %72 to i64
  %74 = icmp ult i64 %68, %73
  br i1 %74, label %75, label %79

75:                                               ; preds = %67
  %76 = load i32, i32* %10, align 4
  %77 = icmp ne i32 %76, 0
  %78 = xor i1 %77, true
  br label %79

79:                                               ; preds = %75, %67
  %80 = phi i1 [ false, %67 ], [ %78, %75 ]
  br i1 %80, label %81, label %118

81:                                               ; preds = %79
  %82 = load i64, i64* %11, align 8
  %83 = add i64 %82, 1
  store i64 %83, i64* %12, align 8
  br label %84

84:                                               ; preds = %111, %81
  %85 = load i64, i64* %12, align 8
  %86 = load %struct.if_order*, %struct.if_order** %8, align 8
  %87 = getelementptr inbounds %struct.if_order, %struct.if_order* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = sext i32 %88 to i64
  %90 = icmp ult i64 %85, %89
  br i1 %90, label %91, label %95

91:                                               ; preds = %84
  %92 = load i32, i32* %10, align 4
  %93 = icmp ne i32 %92, 0
  %94 = xor i1 %93, true
  br label %95

95:                                               ; preds = %91, %84
  %96 = phi i1 [ false, %84 ], [ %94, %91 ]
  br i1 %96, label %97, label %114

97:                                               ; preds = %95
  %98 = load i32*, i32** %7, align 8
  %99 = load i64, i64* %12, align 8
  %100 = getelementptr inbounds i32, i32* %98, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = load i32*, i32** %7, align 8
  %103 = load i64, i64* %11, align 8
  %104 = getelementptr inbounds i32, i32* %102, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = icmp eq i32 %101, %105
  br i1 %106, label %107, label %110

107:                                              ; preds = %97
  %108 = load i32, i32* @EINVAL, align 4
  store i32 %108, i32* %6, align 4
  %109 = load i32, i32* @TRUE, align 4
  store i32 %109, i32* %10, align 4
  br label %114

110:                                              ; preds = %97
  br label %111

111:                                              ; preds = %110
  %112 = load i64, i64* %12, align 8
  %113 = add i64 %112, 1
  store i64 %113, i64* %12, align 8
  br label %84

114:                                              ; preds = %107, %95
  br label %115

115:                                              ; preds = %114
  %116 = load i64, i64* %11, align 8
  %117 = add i64 %116, 1
  store i64 %117, i64* %11, align 8
  br label %67

118:                                              ; preds = %79
  %119 = load i32, i32* %10, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %118
  br label %132

122:                                              ; preds = %118
  br label %123

123:                                              ; preds = %122, %30
  %124 = load i32*, i32** %7, align 8
  %125 = load %struct.if_order*, %struct.if_order** %8, align 8
  %126 = getelementptr inbounds %struct.if_order, %struct.if_order* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = sext i32 %127 to i64
  %129 = call i32 @ifnet_reset_order(i32* %124, i64 %128)
  store i32 %129, i32* %6, align 4
  br label %132

130:                                              ; preds = %17
  %131 = call i32 @VERIFY(i32 0)
  br label %132

132:                                              ; preds = %130, %123, %121, %64, %53, %44, %28
  %133 = load i32*, i32** %7, align 8
  %134 = icmp ne i32* %133, null
  br i1 %134, label %135, label %139

135:                                              ; preds = %132
  %136 = load i32*, i32** %7, align 8
  %137 = load i32, i32* @M_NECP, align 4
  %138 = call i32 @_FREE(i32* %136, i32 %137)
  br label %139

139:                                              ; preds = %135, %132
  %140 = load i32, i32* %6, align 4
  store i32 %140, i32* %3, align 4
  br label %141

141:                                              ; preds = %139, %15
  %142 = load i32, i32* %3, align 4
  ret i32 %142
}

declare dso_local i32* @_MALLOC(i64, i32, i32) #1

declare dso_local i32 @copyin(i32, i32*, i64) #1

declare dso_local i32 @ifnet_reset_order(i32*, i64) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i32 @_FREE(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
