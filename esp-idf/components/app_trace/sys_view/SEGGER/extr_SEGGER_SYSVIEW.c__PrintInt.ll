; ModuleID = '/home/carl/AnghaBench/esp-idf/components/app_trace/sys_view/SEGGER/extr_SEGGER_SYSVIEW.c__PrintInt.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/app_trace/sys_view/SEGGER/extr_SEGGER_SYSVIEW.c__PrintInt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FORMAT_FLAG_PRINT_SIGN = common dso_local global i32 0, align 4
@FORMAT_FLAG_PAD_ZERO = common dso_local global i32 0, align 4
@FORMAT_FLAG_LEFT_JUSTIFY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32, i32, i32, i32)* @_PrintInt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_PrintInt(i32* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %6
  %18 = load i32, i32* %8, align 4
  %19 = sub nsw i32 0, %18
  br label %22

20:                                               ; preds = %6
  %21 = load i32, i32* %8, align 4
  br label %22

22:                                               ; preds = %20, %17
  %23 = phi i32 [ %19, %17 ], [ %21, %20 ]
  store i32 %23, i32* %14, align 4
  store i32 1, i32* %13, align 4
  br label %24

24:                                               ; preds = %28, %22
  %25 = load i32, i32* %14, align 4
  %26 = load i32, i32* %9, align 4
  %27 = icmp sge i32 %25, %26
  br i1 %27, label %28, label %34

28:                                               ; preds = %24
  %29 = load i32, i32* %14, align 4
  %30 = load i32, i32* %9, align 4
  %31 = sdiv i32 %29, %30
  store i32 %31, i32* %14, align 4
  %32 = load i32, i32* %13, align 4
  %33 = add i32 %32, 1
  store i32 %33, i32* %13, align 4
  br label %24

34:                                               ; preds = %24
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* %13, align 4
  %37 = icmp ugt i32 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  %39 = load i32, i32* %10, align 4
  store i32 %39, i32* %13, align 4
  br label %40

40:                                               ; preds = %38, %34
  %41 = load i32, i32* %11, align 4
  %42 = icmp ugt i32 %41, 0
  br i1 %42, label %43, label %55

43:                                               ; preds = %40
  %44 = load i32, i32* %8, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %52, label %46

46:                                               ; preds = %43
  %47 = load i32, i32* %12, align 4
  %48 = load i32, i32* @FORMAT_FLAG_PRINT_SIGN, align 4
  %49 = and i32 %47, %48
  %50 = load i32, i32* @FORMAT_FLAG_PRINT_SIGN, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %46, %43
  %53 = load i32, i32* %11, align 4
  %54 = add i32 %53, -1
  store i32 %54, i32* %11, align 4
  br label %55

55:                                               ; preds = %52, %46, %40
  %56 = load i32, i32* %12, align 4
  %57 = load i32, i32* @FORMAT_FLAG_PAD_ZERO, align 4
  %58 = and i32 %56, %57
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %63, label %60

60:                                               ; preds = %55
  %61 = load i32, i32* %10, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %88

63:                                               ; preds = %60, %55
  %64 = load i32, i32* %12, align 4
  %65 = load i32, i32* @FORMAT_FLAG_LEFT_JUSTIFY, align 4
  %66 = and i32 %64, %65
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %88

68:                                               ; preds = %63
  %69 = load i32, i32* %11, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %87

71:                                               ; preds = %68
  br label %72

72:                                               ; preds = %81, %71
  %73 = load i32, i32* %11, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %72
  %76 = load i32, i32* %13, align 4
  %77 = load i32, i32* %11, align 4
  %78 = icmp ult i32 %76, %77
  br label %79

79:                                               ; preds = %75, %72
  %80 = phi i1 [ false, %72 ], [ %78, %75 ]
  br i1 %80, label %81, label %86

81:                                               ; preds = %79
  %82 = load i32, i32* %11, align 4
  %83 = add i32 %82, -1
  store i32 %83, i32* %11, align 4
  %84 = load i32*, i32** %7, align 8
  %85 = call i32 @_StoreChar(i32* %84, i8 signext 32)
  br label %72

86:                                               ; preds = %79
  br label %87

87:                                               ; preds = %86, %68
  br label %88

88:                                               ; preds = %87, %63, %60
  %89 = load i32, i32* %8, align 4
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %88
  %92 = load i32, i32* %8, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %8, align 4
  %94 = load i32*, i32** %7, align 8
  %95 = call i32 @_StoreChar(i32* %94, i8 signext 45)
  br label %107

96:                                               ; preds = %88
  %97 = load i32, i32* %12, align 4
  %98 = load i32, i32* @FORMAT_FLAG_PRINT_SIGN, align 4
  %99 = and i32 %97, %98
  %100 = load i32, i32* @FORMAT_FLAG_PRINT_SIGN, align 4
  %101 = icmp eq i32 %99, %100
  br i1 %101, label %102, label %105

102:                                              ; preds = %96
  %103 = load i32*, i32** %7, align 8
  %104 = call i32 @_StoreChar(i32* %103, i8 signext 43)
  br label %106

105:                                              ; preds = %96
  br label %106

106:                                              ; preds = %105, %102
  br label %107

107:                                              ; preds = %106, %91
  %108 = load i32, i32* %12, align 4
  %109 = load i32, i32* @FORMAT_FLAG_PAD_ZERO, align 4
  %110 = and i32 %108, %109
  %111 = load i32, i32* @FORMAT_FLAG_PAD_ZERO, align 4
  %112 = icmp eq i32 %110, %111
  br i1 %112, label %113, label %141

113:                                              ; preds = %107
  %114 = load i32, i32* %12, align 4
  %115 = load i32, i32* @FORMAT_FLAG_LEFT_JUSTIFY, align 4
  %116 = and i32 %114, %115
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %141

118:                                              ; preds = %113
  %119 = load i32, i32* %10, align 4
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %121, label %141

121:                                              ; preds = %118
  %122 = load i32, i32* %11, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %140

124:                                              ; preds = %121
  br label %125

125:                                              ; preds = %134, %124
  %126 = load i32, i32* %11, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %132

128:                                              ; preds = %125
  %129 = load i32, i32* %13, align 4
  %130 = load i32, i32* %11, align 4
  %131 = icmp ult i32 %129, %130
  br label %132

132:                                              ; preds = %128, %125
  %133 = phi i1 [ false, %125 ], [ %131, %128 ]
  br i1 %133, label %134, label %139

134:                                              ; preds = %132
  %135 = load i32, i32* %11, align 4
  %136 = add i32 %135, -1
  store i32 %136, i32* %11, align 4
  %137 = load i32*, i32** %7, align 8
  %138 = call i32 @_StoreChar(i32* %137, i8 signext 48)
  br label %125

139:                                              ; preds = %132
  br label %140

140:                                              ; preds = %139, %121
  br label %141

141:                                              ; preds = %140, %118, %113, %107
  %142 = load i32*, i32** %7, align 8
  %143 = load i32, i32* %8, align 4
  %144 = load i32, i32* %9, align 4
  %145 = load i32, i32* %10, align 4
  %146 = load i32, i32* %11, align 4
  %147 = load i32, i32* %12, align 4
  %148 = call i32 @_PrintUnsigned(i32* %142, i32 %143, i32 %144, i32 %145, i32 %146, i32 %147)
  ret void
}

declare dso_local i32 @_StoreChar(i32*, i8 signext) #1

declare dso_local i32 @_PrintUnsigned(i32*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
