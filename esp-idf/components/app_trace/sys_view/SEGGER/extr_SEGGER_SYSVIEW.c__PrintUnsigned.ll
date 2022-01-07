; ModuleID = '/home/carl/AnghaBench/esp-idf/components/app_trace/sys_view/SEGGER/extr_SEGGER_SYSVIEW.c__PrintUnsigned.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/app_trace/sys_view/SEGGER/extr_SEGGER_SYSVIEW.c__PrintUnsigned.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_PrintUnsigned._aV2C = internal constant [16 x i8] c"0123456789ABCDEF", align 16
@FORMAT_FLAG_LEFT_JUSTIFY = common dso_local global i32 0, align 4
@FORMAT_FLAG_PAD_ZERO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32, i32, i32, i32)* @_PrintUnsigned to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_PrintUnsigned(i32* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8, align 1
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %18 = load i32, i32* %8, align 4
  store i32 %18, i32* %15, align 4
  store i32 1, i32* %14, align 4
  store i32 1, i32* %16, align 4
  br label %19

19:                                               ; preds = %23, %6
  %20 = load i32, i32* %15, align 4
  %21 = load i32, i32* %9, align 4
  %22 = icmp uge i32 %20, %21
  br i1 %22, label %23, label %29

23:                                               ; preds = %19
  %24 = load i32, i32* %15, align 4
  %25 = load i32, i32* %9, align 4
  %26 = udiv i32 %24, %25
  store i32 %26, i32* %15, align 4
  %27 = load i32, i32* %16, align 4
  %28 = add i32 %27, 1
  store i32 %28, i32* %16, align 4
  br label %19

29:                                               ; preds = %19
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* %16, align 4
  %32 = icmp ugt i32 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = load i32, i32* %10, align 4
  store i32 %34, i32* %16, align 4
  br label %35

35:                                               ; preds = %33, %29
  %36 = load i32, i32* %12, align 4
  %37 = load i32, i32* @FORMAT_FLAG_LEFT_JUSTIFY, align 4
  %38 = and i32 %36, %37
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %72

40:                                               ; preds = %35
  %41 = load i32, i32* %11, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %71

43:                                               ; preds = %40
  %44 = load i32, i32* %12, align 4
  %45 = load i32, i32* @FORMAT_FLAG_PAD_ZERO, align 4
  %46 = and i32 %44, %45
  %47 = load i32, i32* @FORMAT_FLAG_PAD_ZERO, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %43
  %50 = load i32, i32* %10, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %49
  store i8 48, i8* %17, align 1
  br label %54

53:                                               ; preds = %49, %43
  store i8 32, i8* %17, align 1
  br label %54

54:                                               ; preds = %53, %52
  br label %55

55:                                               ; preds = %64, %54
  %56 = load i32, i32* %11, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %55
  %59 = load i32, i32* %16, align 4
  %60 = load i32, i32* %11, align 4
  %61 = icmp ult i32 %59, %60
  br label %62

62:                                               ; preds = %58, %55
  %63 = phi i1 [ false, %55 ], [ %61, %58 ]
  br i1 %63, label %64, label %70

64:                                               ; preds = %62
  %65 = load i32, i32* %11, align 4
  %66 = add i32 %65, -1
  store i32 %66, i32* %11, align 4
  %67 = load i32*, i32** %7, align 8
  %68 = load i8, i8* %17, align 1
  %69 = call i32 @_StoreChar(i32* %67, i8 signext %68)
  br label %55

70:                                               ; preds = %62
  br label %71

71:                                               ; preds = %70, %40
  br label %72

72:                                               ; preds = %71, %35
  br label %73

73:                                               ; preds = %72, %88
  %74 = load i32, i32* %10, align 4
  %75 = icmp ugt i32 %74, 1
  br i1 %75, label %76, label %79

76:                                               ; preds = %73
  %77 = load i32, i32* %10, align 4
  %78 = add i32 %77, -1
  store i32 %78, i32* %10, align 4
  br label %88

79:                                               ; preds = %73
  %80 = load i32, i32* %8, align 4
  %81 = load i32, i32* %14, align 4
  %82 = udiv i32 %80, %81
  store i32 %82, i32* %13, align 4
  %83 = load i32, i32* %13, align 4
  %84 = load i32, i32* %9, align 4
  %85 = icmp ult i32 %83, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %79
  br label %92

87:                                               ; preds = %79
  br label %88

88:                                               ; preds = %87, %76
  %89 = load i32, i32* %9, align 4
  %90 = load i32, i32* %14, align 4
  %91 = mul i32 %90, %89
  store i32 %91, i32* %14, align 4
  br label %73

92:                                               ; preds = %86
  br label %93

93:                                               ; preds = %111, %92
  %94 = load i32, i32* %8, align 4
  %95 = load i32, i32* %14, align 4
  %96 = udiv i32 %94, %95
  store i32 %96, i32* %13, align 4
  %97 = load i32, i32* %13, align 4
  %98 = load i32, i32* %14, align 4
  %99 = mul i32 %97, %98
  %100 = load i32, i32* %8, align 4
  %101 = sub i32 %100, %99
  store i32 %101, i32* %8, align 4
  %102 = load i32*, i32** %7, align 8
  %103 = load i32, i32* %13, align 4
  %104 = zext i32 %103 to i64
  %105 = getelementptr inbounds [16 x i8], [16 x i8]* @_PrintUnsigned._aV2C, i64 0, i64 %104
  %106 = load i8, i8* %105, align 1
  %107 = call i32 @_StoreChar(i32* %102, i8 signext %106)
  %108 = load i32, i32* %9, align 4
  %109 = load i32, i32* %14, align 4
  %110 = udiv i32 %109, %108
  store i32 %110, i32* %14, align 4
  br label %111

111:                                              ; preds = %93
  %112 = load i32, i32* %14, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %93, label %114

114:                                              ; preds = %111
  %115 = load i32, i32* %12, align 4
  %116 = load i32, i32* @FORMAT_FLAG_LEFT_JUSTIFY, align 4
  %117 = and i32 %115, %116
  %118 = load i32, i32* @FORMAT_FLAG_LEFT_JUSTIFY, align 4
  %119 = icmp eq i32 %117, %118
  br i1 %119, label %120, label %140

120:                                              ; preds = %114
  %121 = load i32, i32* %11, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %139

123:                                              ; preds = %120
  br label %124

124:                                              ; preds = %133, %123
  %125 = load i32, i32* %11, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %131

127:                                              ; preds = %124
  %128 = load i32, i32* %16, align 4
  %129 = load i32, i32* %11, align 4
  %130 = icmp ult i32 %128, %129
  br label %131

131:                                              ; preds = %127, %124
  %132 = phi i1 [ false, %124 ], [ %130, %127 ]
  br i1 %132, label %133, label %138

133:                                              ; preds = %131
  %134 = load i32, i32* %11, align 4
  %135 = add i32 %134, -1
  store i32 %135, i32* %11, align 4
  %136 = load i32*, i32** %7, align 8
  %137 = call i32 @_StoreChar(i32* %136, i8 signext 32)
  br label %124

138:                                              ; preds = %131
  br label %139

139:                                              ; preds = %138, %120
  br label %140

140:                                              ; preds = %139, %114
  ret void
}

declare dso_local i32 @_StoreChar(i32*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
