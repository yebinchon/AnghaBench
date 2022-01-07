; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/khronos/common/extr_khrn_int_util.c_khrn_clip_range2.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/khronos/common/extr_khrn_int_util.c_khrn_clip_range2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @khrn_clip_range2(i64* %0, i64* %1, i64* %2, i64 %3, i64 %4, i64 %5, i64 %6) #0 {
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  store i64* %0, i64** %8, align 8
  store i64* %1, i64** %9, align 8
  store i64* %2, i64** %10, align 8
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store i64 %5, i64* %13, align 8
  store i64 %6, i64* %14, align 8
  %22 = load i64*, i64** %10, align 8
  %23 = load i64, i64* %22, align 8
  %24 = icmp sge i64 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %7
  %26 = load i64, i64* %12, align 8
  %27 = icmp sge i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %25
  %29 = load i64, i64* %14, align 8
  %30 = icmp sge i64 %29, 0
  br label %31

31:                                               ; preds = %28, %25, %7
  %32 = phi i1 [ false, %25 ], [ false, %7 ], [ %30, %28 ]
  %33 = zext i1 %32 to i32
  %34 = call i32 @vcos_assert(i32 %33)
  %35 = load i64*, i64** %8, align 8
  %36 = load i64, i64* %35, align 8
  store i64 %36, i64* %15, align 8
  %37 = load i64*, i64** %9, align 8
  %38 = load i64, i64* %37, align 8
  store i64 %38, i64* %16, align 8
  %39 = load i64*, i64** %10, align 8
  %40 = load i64, i64* %39, align 8
  store i64 %40, i64* %17, align 8
  %41 = load i64, i64* %15, align 8
  %42 = load i64, i64* %16, align 8
  %43 = call i64 @_max(i64 %41, i64 %42)
  %44 = load i64, i64* %17, align 8
  %45 = call i64 @_adds(i64 %43, i64 %44)
  %46 = load i64, i64* %15, align 8
  %47 = load i64, i64* %16, align 8
  %48 = call i64 @_max(i64 %46, i64 %47)
  %49 = sub nsw i64 %45, %48
  store i64 %49, i64* %17, align 8
  %50 = load i64, i64* %15, align 8
  %51 = load i64, i64* %17, align 8
  %52 = add nsw i64 %50, %51
  store i64 %52, i64* %18, align 8
  %53 = load i64, i64* %16, align 8
  %54 = load i64, i64* %17, align 8
  %55 = add nsw i64 %53, %54
  store i64 %55, i64* %19, align 8
  %56 = load i64, i64* %11, align 8
  %57 = load i64, i64* %12, align 8
  %58 = add nsw i64 %56, %57
  store i64 %58, i64* %20, align 8
  %59 = load i64, i64* %13, align 8
  %60 = load i64, i64* %14, align 8
  %61 = add nsw i64 %59, %60
  store i64 %61, i64* %21, align 8
  %62 = load i64, i64* %15, align 8
  %63 = load i64, i64* %11, align 8
  %64 = icmp slt i64 %62, %63
  br i1 %64, label %65, label %72

65:                                               ; preds = %31
  %66 = load i64, i64* %16, align 8
  %67 = load i64, i64* %11, align 8
  %68 = load i64, i64* %15, align 8
  %69 = call i64 @_subs(i64 %67, i64 %68)
  %70 = call i64 @_adds(i64 %66, i64 %69)
  store i64 %70, i64* %16, align 8
  %71 = load i64, i64* %11, align 8
  store i64 %71, i64* %15, align 8
  br label %72

72:                                               ; preds = %65, %31
  %73 = load i64, i64* %18, align 8
  %74 = load i64, i64* %20, align 8
  %75 = icmp sgt i64 %73, %74
  br i1 %75, label %76, label %83

76:                                               ; preds = %72
  %77 = load i64, i64* %19, align 8
  %78 = load i64, i64* %18, align 8
  %79 = load i64, i64* %20, align 8
  %80 = call i64 @_subs(i64 %78, i64 %79)
  %81 = call i64 @_subs(i64 %77, i64 %80)
  store i64 %81, i64* %19, align 8
  %82 = load i64, i64* %20, align 8
  store i64 %82, i64* %18, align 8
  br label %83

83:                                               ; preds = %76, %72
  %84 = load i64, i64* %16, align 8
  %85 = load i64, i64* %13, align 8
  %86 = icmp slt i64 %84, %85
  br i1 %86, label %87, label %94

87:                                               ; preds = %83
  %88 = load i64, i64* %15, align 8
  %89 = load i64, i64* %13, align 8
  %90 = load i64, i64* %16, align 8
  %91 = call i64 @_subs(i64 %89, i64 %90)
  %92 = call i64 @_adds(i64 %88, i64 %91)
  store i64 %92, i64* %15, align 8
  %93 = load i64, i64* %13, align 8
  store i64 %93, i64* %16, align 8
  br label %94

94:                                               ; preds = %87, %83
  %95 = load i64, i64* %19, align 8
  %96 = load i64, i64* %21, align 8
  %97 = icmp sgt i64 %95, %96
  br i1 %97, label %98, label %105

98:                                               ; preds = %94
  %99 = load i64, i64* %18, align 8
  %100 = load i64, i64* %19, align 8
  %101 = load i64, i64* %21, align 8
  %102 = call i64 @_subs(i64 %100, i64 %101)
  %103 = call i64 @_subs(i64 %99, i64 %102)
  store i64 %103, i64* %18, align 8
  %104 = load i64, i64* %21, align 8
  store i64 %104, i64* %19, align 8
  br label %105

105:                                              ; preds = %98, %94
  %106 = load i64, i64* %18, align 8
  %107 = load i64, i64* %15, align 8
  %108 = call i64 @_subs(i64 %106, i64 %107)
  %109 = call i64 @_max(i64 %108, i64 0)
  store i64 %109, i64* %17, align 8
  %110 = load i64, i64* %17, align 8
  %111 = load i64, i64* %19, align 8
  %112 = load i64, i64* %16, align 8
  %113 = call i64 @_subs(i64 %111, i64 %112)
  %114 = call i64 @_max(i64 %113, i64 0)
  %115 = icmp eq i64 %110, %114
  %116 = zext i1 %115 to i32
  %117 = call i32 @vcos_assert(i32 %116)
  %118 = load i64, i64* %17, align 8
  %119 = icmp eq i64 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %105
  %121 = load i64, i64* %11, align 8
  br label %124

122:                                              ; preds = %105
  %123 = load i64, i64* %15, align 8
  br label %124

124:                                              ; preds = %122, %120
  %125 = phi i64 [ %121, %120 ], [ %123, %122 ]
  %126 = load i64*, i64** %8, align 8
  store i64 %125, i64* %126, align 8
  %127 = load i64, i64* %17, align 8
  %128 = icmp eq i64 %127, 0
  br i1 %128, label %129, label %131

129:                                              ; preds = %124
  %130 = load i64, i64* %13, align 8
  br label %133

131:                                              ; preds = %124
  %132 = load i64, i64* %16, align 8
  br label %133

133:                                              ; preds = %131, %129
  %134 = phi i64 [ %130, %129 ], [ %132, %131 ]
  %135 = load i64*, i64** %9, align 8
  store i64 %134, i64* %135, align 8
  %136 = load i64, i64* %17, align 8
  %137 = load i64*, i64** %10, align 8
  store i64 %136, i64* %137, align 8
  ret void
}

declare dso_local i32 @vcos_assert(i32) #1

declare dso_local i64 @_adds(i64, i64) #1

declare dso_local i64 @_max(i64, i64) #1

declare dso_local i64 @_subs(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
