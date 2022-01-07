; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_pad.c___pad_updateorigin.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_pad.c___pad_updateorigin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__pad_analogmode = common dso_local global i32 0, align 4
@__pad_origin = common dso_local global i32** null, align 8
@__pad_xpatchbits = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @__pad_updateorigin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__pad_updateorigin(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %6 = load i64, i64* %2, align 8
  %7 = call i32 @PAD_ENABLEDMASK(i64 %6)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* @__pad_analogmode, align 4
  %9 = and i32 %8, 1792
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = icmp eq i32 %10, 256
  br i1 %11, label %12, label %41

12:                                               ; preds = %1
  %13 = load i32**, i32*** @__pad_origin, align 8
  %14 = load i64, i64* %2, align 8
  %15 = getelementptr inbounds i32*, i32** %13, i64 %14
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 4
  %18 = load i32, i32* %17, align 4
  %19 = and i32 %18, -16
  store i32 %19, i32* %17, align 4
  %20 = load i32**, i32*** @__pad_origin, align 8
  %21 = load i64, i64* %2, align 8
  %22 = getelementptr inbounds i32*, i32** %20, i64 %21
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 5
  %25 = load i32, i32* %24, align 4
  %26 = and i32 %25, -16
  store i32 %26, i32* %24, align 4
  %27 = load i32**, i32*** @__pad_origin, align 8
  %28 = load i64, i64* %2, align 8
  %29 = getelementptr inbounds i32*, i32** %27, i64 %28
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 8
  %32 = load i32, i32* %31, align 4
  %33 = and i32 %32, -16
  store i32 %33, i32* %31, align 4
  %34 = load i32**, i32*** @__pad_origin, align 8
  %35 = load i64, i64* %2, align 8
  %36 = getelementptr inbounds i32*, i32** %34, i64 %35
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 9
  %39 = load i32, i32* %38, align 4
  %40 = and i32 %39, -16
  store i32 %40, i32* %38, align 4
  br label %74

41:                                               ; preds = %1
  %42 = load i32, i32* %3, align 4
  %43 = icmp eq i32 %42, 512
  br i1 %43, label %44, label %73

44:                                               ; preds = %41
  %45 = load i32**, i32*** @__pad_origin, align 8
  %46 = load i64, i64* %2, align 8
  %47 = getelementptr inbounds i32*, i32** %45, i64 %46
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 4
  %50 = load i32, i32* %49, align 4
  %51 = and i32 %50, -16
  store i32 %51, i32* %49, align 4
  %52 = load i32**, i32*** @__pad_origin, align 8
  %53 = load i64, i64* %2, align 8
  %54 = getelementptr inbounds i32*, i32** %52, i64 %53
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 5
  %57 = load i32, i32* %56, align 4
  %58 = and i32 %57, -16
  store i32 %58, i32* %56, align 4
  %59 = load i32**, i32*** @__pad_origin, align 8
  %60 = load i64, i64* %2, align 8
  %61 = getelementptr inbounds i32*, i32** %59, i64 %60
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 6
  %64 = load i32, i32* %63, align 4
  %65 = and i32 %64, -16
  store i32 %65, i32* %63, align 4
  %66 = load i32**, i32*** @__pad_origin, align 8
  %67 = load i64, i64* %2, align 8
  %68 = getelementptr inbounds i32*, i32** %66, i64 %67
  %69 = load i32*, i32** %68, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 7
  %71 = load i32, i32* %70, align 4
  %72 = and i32 %71, -16
  store i32 %72, i32* %70, align 4
  br label %73

73:                                               ; preds = %44, %41
  br label %74

74:                                               ; preds = %73, %12
  %75 = load i32**, i32*** @__pad_origin, align 8
  %76 = load i64, i64* %2, align 8
  %77 = getelementptr inbounds i32*, i32** %75, i64 %76
  %78 = load i32*, i32** %77, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 2
  %80 = load i32, i32* %79, align 4
  %81 = sub nsw i32 %80, 128
  store i32 %81, i32* %79, align 4
  %82 = load i32**, i32*** @__pad_origin, align 8
  %83 = load i64, i64* %2, align 8
  %84 = getelementptr inbounds i32*, i32** %82, i64 %83
  %85 = load i32*, i32** %84, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 3
  %87 = load i32, i32* %86, align 4
  %88 = sub nsw i32 %87, 128
  store i32 %88, i32* %86, align 4
  %89 = load i32**, i32*** @__pad_origin, align 8
  %90 = load i64, i64* %2, align 8
  %91 = getelementptr inbounds i32*, i32** %89, i64 %90
  %92 = load i32*, i32** %91, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 4
  %94 = load i32, i32* %93, align 4
  %95 = sub nsw i32 %94, 128
  store i32 %95, i32* %93, align 4
  %96 = load i32**, i32*** @__pad_origin, align 8
  %97 = load i64, i64* %2, align 8
  %98 = getelementptr inbounds i32*, i32** %96, i64 %97
  %99 = load i32*, i32** %98, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 5
  %101 = load i32, i32* %100, align 4
  %102 = sub nsw i32 %101, 128
  store i32 %102, i32* %100, align 4
  %103 = load i32, i32* @__pad_xpatchbits, align 4
  %104 = load i32, i32* %4, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %130

107:                                              ; preds = %74
  %108 = load i32**, i32*** @__pad_origin, align 8
  %109 = load i64, i64* %2, align 8
  %110 = getelementptr inbounds i32*, i32** %108, i64 %109
  %111 = load i32*, i32** %110, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 2
  %113 = load i32, i32* %112, align 4
  %114 = sext i32 %113 to i64
  %115 = icmp ugt i64 %114, 64
  br i1 %115, label %116, label %130

116:                                              ; preds = %107
  %117 = load i64, i64* %2, align 8
  %118 = call i32 @SI_GetType(i64 %117)
  %119 = and i32 %118, -65536
  store i32 %119, i32* %5, align 4
  %120 = load i32, i32* %5, align 4
  %121 = and i32 %120, -167772160
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %129, label %123

123:                                              ; preds = %116
  %124 = load i32**, i32*** @__pad_origin, align 8
  %125 = load i64, i64* %2, align 8
  %126 = getelementptr inbounds i32*, i32** %124, i64 %125
  %127 = load i32*, i32** %126, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 2
  store i32 0, i32* %128, align 4
  br label %129

129:                                              ; preds = %123, %116
  br label %130

130:                                              ; preds = %129, %107, %74
  ret void
}

declare dso_local i32 @PAD_ENABLEDMASK(i64) #1

declare dso_local i32 @SI_GetType(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
