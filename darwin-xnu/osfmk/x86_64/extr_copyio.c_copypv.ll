; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/x86_64/extr_copyio.c_copypv.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/x86_64/extr_copyio.c_copypv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DBG_FUNC_START = common dso_local global i32 0, align 4
@cppvPsrc = common dso_local global i32 0, align 4
@cppvPsnk = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"copypv: no more than 1 parameter may be virtual\0A\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4
@KERN_FAILURE = common dso_local global i32 0, align 4
@DBG_FUNC_END = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i32 0, align 4
@cppvFsnk = common dso_local global i32 0, align 4
@cppvFsrc = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @copypv(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %12, align 4
  %13 = load i32, i32* @DBG_FUNC_START, align 4
  %14 = or i32 -269025204, %13
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* %9, align 4
  %19 = call i32 @KERNEL_DEBUG(i32 %14, i32 %15, i32 %16, i32 %17, i32 %18, i32 0)
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* @cppvPsrc, align 4
  %22 = load i32, i32* @cppvPsnk, align 4
  %23 = or i32 %21, %22
  %24 = and i32 %20, %23
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %4
  %27 = call i32 @panic(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  br label %28

28:                                               ; preds = %26, %4
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* @cppvPsrc, align 4
  %31 = load i32, i32* @cppvPsnk, align 4
  %32 = or i32 %30, %31
  %33 = and i32 %29, %32
  %34 = load i32, i32* @cppvPsrc, align 4
  %35 = load i32, i32* @cppvPsnk, align 4
  %36 = or i32 %34, %35
  %37 = icmp eq i32 %33, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %28
  store i32 1, i32* %12, align 4
  br label %39

39:                                               ; preds = %38, %28
  br label %40

40:                                               ; preds = %114, %39
  %41 = load i32, i32* %8, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %124

43:                                               ; preds = %40
  %44 = load i32, i32* %12, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %69

46:                                               ; preds = %43
  %47 = load i32, i32* @PAGE_SIZE, align 4
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* @PAGE_SIZE, align 4
  %50 = sub nsw i32 %49, 1
  %51 = and i32 %48, %50
  %52 = sub nsw i32 %47, %51
  store i32 %52, i32* %10, align 4
  %53 = load i32, i32* %10, align 4
  %54 = load i32, i32* @PAGE_SIZE, align 4
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* @PAGE_SIZE, align 4
  %57 = sub nsw i32 %56, 1
  %58 = and i32 %55, %57
  %59 = sub nsw i32 %54, %58
  %60 = icmp ugt i32 %53, %59
  br i1 %60, label %61, label %68

61:                                               ; preds = %46
  %62 = load i32, i32* @PAGE_SIZE, align 4
  %63 = load i32, i32* %6, align 4
  %64 = load i32, i32* @PAGE_SIZE, align 4
  %65 = sub nsw i32 %64, 1
  %66 = and i32 %63, %65
  %67 = sub nsw i32 %62, %66
  store i32 %67, i32* %10, align 4
  br label %68

68:                                               ; preds = %61, %46
  br label %89

69:                                               ; preds = %43
  %70 = load i32, i32* %9, align 4
  %71 = load i32, i32* @cppvPsrc, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %81

74:                                               ; preds = %69
  %75 = load i32, i32* @PAGE_SIZE, align 4
  %76 = load i32, i32* %6, align 4
  %77 = load i32, i32* @PAGE_SIZE, align 4
  %78 = sub nsw i32 %77, 1
  %79 = and i32 %76, %78
  %80 = sub nsw i32 %75, %79
  store i32 %80, i32* %10, align 4
  br label %88

81:                                               ; preds = %69
  %82 = load i32, i32* @PAGE_SIZE, align 4
  %83 = load i32, i32* %7, align 4
  %84 = load i32, i32* @PAGE_SIZE, align 4
  %85 = sub nsw i32 %84, 1
  %86 = and i32 %83, %85
  %87 = sub nsw i32 %82, %86
  store i32 %87, i32* %10, align 4
  br label %88

88:                                               ; preds = %81, %74
  br label %89

89:                                               ; preds = %88, %68
  %90 = load i32, i32* %8, align 4
  store i32 %90, i32* %11, align 4
  %91 = load i32, i32* %10, align 4
  %92 = load i32, i32* %8, align 4
  %93 = icmp ult i32 %91, %92
  br i1 %93, label %94, label %96

94:                                               ; preds = %89
  %95 = load i32, i32* %10, align 4
  store i32 %95, i32* %11, align 4
  br label %96

96:                                               ; preds = %94, %89
  %97 = load i32, i32* %12, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %104

99:                                               ; preds = %96
  %100 = load i32, i32* %6, align 4
  %101 = load i32, i32* %7, align 4
  %102 = load i32, i32* %11, align 4
  %103 = call i32 @bcopy_phys(i32 %100, i32 %101, i32 %102)
  br label %114

104:                                              ; preds = %96
  %105 = load i32, i32* %6, align 4
  %106 = load i32, i32* %7, align 4
  %107 = load i32, i32* %11, align 4
  %108 = load i32, i32* %9, align 4
  %109 = call i64 @copyio_phys(i32 %105, i32 %106, i32 %107, i32 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %104
  %112 = load i32, i32* @KERN_FAILURE, align 4
  store i32 %112, i32* %5, align 4
  br label %133

113:                                              ; preds = %104
  br label %114

114:                                              ; preds = %113, %99
  %115 = load i32, i32* %11, align 4
  %116 = load i32, i32* %8, align 4
  %117 = sub i32 %116, %115
  store i32 %117, i32* %8, align 4
  %118 = load i32, i32* %11, align 4
  %119 = load i32, i32* %7, align 4
  %120 = add i32 %119, %118
  store i32 %120, i32* %7, align 4
  %121 = load i32, i32* %11, align 4
  %122 = load i32, i32* %6, align 4
  %123 = add i32 %122, %121
  store i32 %123, i32* %6, align 4
  br label %40

124:                                              ; preds = %40
  %125 = load i32, i32* @DBG_FUNC_END, align 4
  %126 = or i32 -269025204, %125
  %127 = load i32, i32* %6, align 4
  %128 = load i32, i32* %7, align 4
  %129 = load i32, i32* %8, align 4
  %130 = load i32, i32* %9, align 4
  %131 = call i32 @KERNEL_DEBUG(i32 %126, i32 %127, i32 %128, i32 %129, i32 %130, i32 0)
  %132 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %132, i32* %5, align 4
  br label %133

133:                                              ; preds = %124, %111
  %134 = load i32, i32* %5, align 4
  ret i32 %134
}

declare dso_local i32 @KERNEL_DEBUG(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @bcopy_phys(i32, i32, i32) #1

declare dso_local i64 @copyio_phys(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
