; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kdp/ml/i386/extr_kdp_x86_common.c_kdp_machine_vm_read.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kdp/ml/i386/extr_kdp_x86_common.c_kdp_machine_vm_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64 }

@kernel_pmap = common dso_local global i64 0, align 8
@kdp_trans_off = common dso_local global i64 0, align 8
@KDP_CURRENT_LCPU = common dso_local global i32 0, align 4
@kdp_pmap = common dso_local global i64 0, align 8
@kdp_read_io = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i64 0, align 8
@PAGE_MASK = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @kdp_machine_vm_read(i64 %0, i64 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.TYPE_3__, align 8
  %18 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %19 = load i64, i64* %5, align 8
  %20 = trunc i64 %19 to i32
  %21 = call i32 @PAL_KDP_ADDR(i32 %20)
  store i32 %21, i32* %8, align 4
  %22 = load i64, i64* %6, align 8
  %23 = trunc i64 %22 to i32
  %24 = call i32 @PAL_KDP_ADDR(i32 %23)
  store i32 %24, i32* %9, align 4
  %25 = load i64, i64* %7, align 8
  store i64 %25, i64* %12, align 8
  store i64 0, i64* %13, align 8
  %26 = load i64, i64* @kernel_pmap, align 8
  store i64 %26, i64* %16, align 8
  %27 = load i64, i64* @kdp_trans_off, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %42

29:                                               ; preds = %3
  %30 = load i64, i64* %5, align 8
  %31 = call i64 @IS_PHYS_ADDR(i64 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %29
  %34 = load i64, i64* %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 1
  store i64 %34, i64* %35, align 8
  %36 = load i64, i64* %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  store i64 %36, i64* %37, align 8
  %38 = load i64, i64* %6, align 8
  %39 = load i32, i32* @KDP_CURRENT_LCPU, align 4
  %40 = call i64 @kdp_machine_phys_read(%struct.TYPE_3__* %17, i64 %38, i32 %39)
  store i64 %40, i64* %18, align 8
  %41 = load i64, i64* %18, align 8
  store i64 %41, i64* %4, align 8
  br label %133

42:                                               ; preds = %29, %3
  %43 = load i64, i64* @kdp_pmap, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %42
  %46 = load i64, i64* @kdp_pmap, align 8
  store i64 %46, i64* %16, align 8
  br label %47

47:                                               ; preds = %45, %42
  br label %48

48:                                               ; preds = %114, %47
  %49 = load i64, i64* %12, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %128

51:                                               ; preds = %48
  %52 = load i64, i64* %16, align 8
  %53 = load i32, i32* %8, align 4
  %54 = call i32 @kdp_vtophys(i64 %52, i32 %53)
  store i32 %54, i32* %11, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %51
  br label %129

57:                                               ; preds = %51
  %58 = load i64, i64* @kernel_pmap, align 8
  %59 = load i32, i32* %9, align 4
  %60 = call i32 @kdp_vtophys(i64 %58, i32 %59)
  store i32 %60, i32* %10, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %57
  br label %129

63:                                               ; preds = %57
  %64 = load i64, i64* @kdp_read_io, align 8
  %65 = load i64, i64* @FALSE, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %79

67:                                               ; preds = %63
  %68 = load i32, i32* %10, align 4
  %69 = call i32 @i386_btop(i32 %68)
  %70 = call i32 @pmap_valid_page(i32 %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %67
  %73 = load i32, i32* %11, align 4
  %74 = call i32 @i386_btop(i32 %73)
  %75 = call i32 @pmap_valid_page(i32 %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %78, label %77

77:                                               ; preds = %72, %67
  br label %129

78:                                               ; preds = %72
  br label %79

79:                                               ; preds = %78, %63
  %80 = load i64, i64* @PAGE_SIZE, align 8
  %81 = load i32, i32* %11, align 4
  %82 = load i32, i32* @PAGE_MASK, align 4
  %83 = and i32 %81, %82
  %84 = sext i32 %83 to i64
  %85 = sub nsw i64 %80, %84
  store i64 %85, i64* %14, align 8
  %86 = load i64, i64* @PAGE_SIZE, align 8
  %87 = load i32, i32* %10, align 4
  %88 = load i32, i32* @PAGE_MASK, align 4
  %89 = and i32 %87, %88
  %90 = sext i32 %89 to i64
  %91 = sub nsw i64 %86, %90
  store i64 %91, i64* %15, align 8
  %92 = load i64, i64* %14, align 8
  %93 = load i64, i64* %15, align 8
  %94 = icmp sgt i64 %92, %93
  br i1 %94, label %95, label %97

95:                                               ; preds = %79
  %96 = load i64, i64* %15, align 8
  store i64 %96, i64* %13, align 8
  br label %99

97:                                               ; preds = %79
  %98 = load i64, i64* %14, align 8
  store i64 %98, i64* %13, align 8
  br label %99

99:                                               ; preds = %97, %95
  %100 = load i64, i64* %13, align 8
  %101 = load i64, i64* %12, align 8
  %102 = icmp sgt i64 %100, %101
  br i1 %102, label %103, label %105

103:                                              ; preds = %99
  %104 = load i64, i64* %12, align 8
  store i64 %104, i64* %13, align 8
  br label %105

105:                                              ; preds = %103, %99
  %106 = load i64, i64* @EFAULT, align 8
  %107 = load i32, i32* %11, align 4
  %108 = load i32, i32* %10, align 4
  %109 = load i64, i64* %13, align 8
  %110 = trunc i64 %109 to i32
  %111 = call i64 @ml_copy_phys(i32 %107, i32 %108, i32 %110)
  %112 = icmp eq i64 %106, %111
  br i1 %112, label %113, label %114

113:                                              ; preds = %105
  br label %129

114:                                              ; preds = %105
  %115 = load i64, i64* %13, align 8
  %116 = load i32, i32* %8, align 4
  %117 = sext i32 %116 to i64
  %118 = add nsw i64 %117, %115
  %119 = trunc i64 %118 to i32
  store i32 %119, i32* %8, align 4
  %120 = load i64, i64* %13, align 8
  %121 = load i32, i32* %9, align 4
  %122 = sext i32 %121 to i64
  %123 = add nsw i64 %122, %120
  %124 = trunc i64 %123 to i32
  store i32 %124, i32* %9, align 4
  %125 = load i64, i64* %13, align 8
  %126 = load i64, i64* %12, align 8
  %127 = sub nsw i64 %126, %125
  store i64 %127, i64* %12, align 8
  br label %48

128:                                              ; preds = %48
  br label %129

129:                                              ; preds = %128, %113, %77, %62, %56
  %130 = load i64, i64* %7, align 8
  %131 = load i64, i64* %12, align 8
  %132 = sub nsw i64 %130, %131
  store i64 %132, i64* %4, align 8
  br label %133

133:                                              ; preds = %129, %33
  %134 = load i64, i64* %4, align 8
  ret i64 %134
}

declare dso_local i32 @PAL_KDP_ADDR(i32) #1

declare dso_local i64 @IS_PHYS_ADDR(i64) #1

declare dso_local i64 @kdp_machine_phys_read(%struct.TYPE_3__*, i64, i32) #1

declare dso_local i32 @kdp_vtophys(i64, i32) #1

declare dso_local i32 @pmap_valid_page(i32) #1

declare dso_local i32 @i386_btop(i32) #1

declare dso_local i64 @ml_copy_phys(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
