; ModuleID = '/home/carl/AnghaBench/FFmpeg/tests/checkasm/extr_vp8dsp.c_randomize_loopfilter_buffers.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/tests/checkasm/extr_vp8dsp.c_randomize_loopfilter_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i32, i32, i32, i32*, i32)* @randomize_loopfilter_buffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @randomize_loopfilter_buffers(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32* %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  store i32 %0, i32* %9, align 4
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32* %6, i32** %15, align 8
  store i32 %7, i32* %16, align 4
  store i32 255, i32* %17, align 4
  %29 = load i32, i32* %11, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %8
  %32 = load i32, i32* %9, align 4
  br label %37

33:                                               ; preds = %8
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* %10, align 4
  %36 = mul nsw i32 %34, %35
  br label %37

37:                                               ; preds = %33, %31
  %38 = phi i32 [ %32, %31 ], [ %36, %33 ]
  store i32 %38, i32* %18, align 4
  %39 = load i32, i32* %11, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  br label %44

42:                                               ; preds = %37
  %43 = load i32, i32* %10, align 4
  br label %44

44:                                               ; preds = %42, %41
  %45 = phi i32 [ 1, %41 ], [ %43, %42 ]
  store i32 %45, i32* %19, align 4
  %46 = load i32, i32* %11, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %44
  %49 = load i32, i32* %10, align 4
  br label %51

50:                                               ; preds = %44
  br label %51

51:                                               ; preds = %50, %48
  %52 = phi i32 [ %49, %48 ], [ 1, %50 ]
  store i32 %52, i32* %20, align 4
  store i32 0, i32* %21, align 4
  br label %53

53:                                               ; preds = %138, %51
  %54 = load i32, i32* %21, align 4
  %55 = icmp slt i32 %54, 8
  br i1 %55, label %56, label %141

56:                                               ; preds = %53
  %57 = load i32, i32* %18, align 4
  %58 = load i32, i32* %21, align 4
  %59 = load i32, i32* %19, align 4
  %60 = mul nsw i32 %58, %59
  %61 = add nsw i32 %57, %60
  store i32 %61, i32* %22, align 4
  %62 = load i32, i32* %22, align 4
  %63 = call i32 (...) @rnd()
  %64 = load i32, i32* %17, align 4
  %65 = and i32 %63, %64
  store i32 %65, i32* %26, align 4
  %66 = call i32 @setpx(i32 %62, i32 0, i32 %65)
  %67 = load i32, i32* %21, align 4
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %56
  %70 = load i32, i32* %16, align 4
  %71 = icmp sge i32 %70, 0
  br i1 %71, label %75, label %72

72:                                               ; preds = %69, %56
  %73 = load i32, i32* %16, align 4
  %74 = icmp sgt i32 %73, 0
  br i1 %74, label %75, label %86

75:                                               ; preds = %72, %69
  %76 = load i32, i32* %22, align 4
  %77 = load i32, i32* %27, align 4
  %78 = load i32, i32* %26, align 4
  %79 = load i32, i32* %14, align 4
  %80 = add nsw i32 %79, 1
  %81 = load i32, i32* %13, align 4
  %82 = load i32, i32* %14, align 4
  %83 = sub nsw i32 %81, %82
  %84 = sub nsw i32 %83, 1
  %85 = call i32 @setdx2(i32 %76, i32 1, i32 %77, i32 %78, i32 %80, i32 %84)
  br label %91

86:                                               ; preds = %72
  %87 = load i32, i32* %22, align 4
  %88 = load i32, i32* %26, align 4
  store i32 %88, i32* %27, align 4
  %89 = load i32, i32* %14, align 4
  %90 = call i32 @setdx(i32 %87, i32 1, i32 %88, i32 %89)
  br label %91

91:                                               ; preds = %86, %75
  %92 = load i32, i32* %22, align 4
  %93 = load i32, i32* %27, align 4
  store i32 %93, i32* %28, align 4
  %94 = load i32, i32* %13, align 4
  %95 = call i32 @setdx(i32 %92, i32 2, i32 %93, i32 %94)
  %96 = load i32, i32* %22, align 4
  %97 = load i32, i32* %28, align 4
  %98 = load i32, i32* %13, align 4
  %99 = call i32 @setdx(i32 %96, i32 3, i32 %97, i32 %98)
  %100 = load i32, i32* %22, align 4
  %101 = load i32, i32* %26, align 4
  store i32 %101, i32* %25, align 4
  %102 = load i32, i32* %12, align 4
  %103 = ashr i32 %102, 2
  %104 = call i32 @setdx(i32 %100, i32 -1, i32 %101, i32 %103)
  %105 = load i32, i32* %21, align 4
  %106 = icmp eq i32 %105, 2
  br i1 %106, label %107, label %110

107:                                              ; preds = %91
  %108 = load i32, i32* %16, align 4
  %109 = icmp sge i32 %108, 0
  br i1 %109, label %113, label %110

110:                                              ; preds = %107, %91
  %111 = load i32, i32* %16, align 4
  %112 = icmp sgt i32 %111, 0
  br i1 %112, label %113, label %124

113:                                              ; preds = %110, %107
  %114 = load i32, i32* %22, align 4
  %115 = load i32, i32* %24, align 4
  %116 = load i32, i32* %25, align 4
  %117 = load i32, i32* %14, align 4
  %118 = add nsw i32 %117, 1
  %119 = load i32, i32* %13, align 4
  %120 = load i32, i32* %14, align 4
  %121 = sub nsw i32 %119, %120
  %122 = sub nsw i32 %121, 1
  %123 = call i32 @setdx2(i32 %114, i32 -2, i32 %115, i32 %116, i32 %118, i32 %122)
  br label %129

124:                                              ; preds = %110
  %125 = load i32, i32* %22, align 4
  %126 = load i32, i32* %25, align 4
  store i32 %126, i32* %24, align 4
  %127 = load i32, i32* %14, align 4
  %128 = call i32 @setdx(i32 %125, i32 -2, i32 %126, i32 %127)
  br label %129

129:                                              ; preds = %124, %113
  %130 = load i32, i32* %22, align 4
  %131 = load i32, i32* %24, align 4
  store i32 %131, i32* %23, align 4
  %132 = load i32, i32* %13, align 4
  %133 = call i32 @setdx(i32 %130, i32 -3, i32 %131, i32 %132)
  %134 = load i32, i32* %22, align 4
  %135 = load i32, i32* %23, align 4
  %136 = load i32, i32* %13, align 4
  %137 = call i32 @setdx(i32 %134, i32 -4, i32 %135, i32 %136)
  br label %138

138:                                              ; preds = %129
  %139 = load i32, i32* %21, align 4
  %140 = add nsw i32 %139, 2
  store i32 %140, i32* %21, align 4
  br label %53

141:                                              ; preds = %53
  ret void
}

declare dso_local i32 @setpx(i32, i32, i32) #1

declare dso_local i32 @rnd(...) #1

declare dso_local i32 @setdx2(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @setdx(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
