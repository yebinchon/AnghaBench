; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-common/gfx/scaler/extr_scaler_filter.c_fixup_filter_sub.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-common/gfx/scaler/extr_scaler_filter.c_fixup_filter_sub.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scaler_filter = type { i32, i32*, i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scaler_filter*, i32, i32)* @fixup_filter_sub to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fixup_filter_sub(%struct.scaler_filter* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.scaler_filter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  store %struct.scaler_filter* %0, %struct.scaler_filter** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = load %struct.scaler_filter*, %struct.scaler_filter** %4, align 8
  %15 = getelementptr inbounds %struct.scaler_filter, %struct.scaler_filter* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = sub nsw i32 %13, %16
  store i32 %17, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %18

18:                                               ; preds = %165, %3
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %168

22:                                               ; preds = %18
  %23 = load %struct.scaler_filter*, %struct.scaler_filter** %4, align 8
  %24 = getelementptr inbounds %struct.scaler_filter, %struct.scaler_filter* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %7, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %8, align 4
  %31 = sub nsw i32 %29, %30
  store i32 %31, i32* %9, align 4
  %32 = load %struct.scaler_filter*, %struct.scaler_filter** %4, align 8
  %33 = getelementptr inbounds %struct.scaler_filter, %struct.scaler_filter* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* %7, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %10, align 4
  %40 = load i32, i32* %9, align 4
  %41 = icmp sgt i32 %40, 0
  br i1 %41, label %42, label %98

42:                                               ; preds = %22
  store i32* null, i32** %11, align 8
  %43 = load i32, i32* %9, align 4
  %44 = load %struct.scaler_filter*, %struct.scaler_filter** %4, align 8
  %45 = getelementptr inbounds %struct.scaler_filter, %struct.scaler_filter* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %7, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = sub nsw i32 %50, %43
  store i32 %51, i32* %49, align 4
  %52 = load %struct.scaler_filter*, %struct.scaler_filter** %4, align 8
  %53 = getelementptr inbounds %struct.scaler_filter, %struct.scaler_filter* %52, i32 0, i32 3
  %54 = load i32*, i32** %53, align 8
  %55 = load i32, i32* %7, align 4
  %56 = load %struct.scaler_filter*, %struct.scaler_filter** %4, align 8
  %57 = getelementptr inbounds %struct.scaler_filter, %struct.scaler_filter* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = mul nsw i32 %55, %58
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %54, i64 %60
  store i32* %61, i32** %11, align 8
  %62 = load i32, i32* %9, align 4
  %63 = load %struct.scaler_filter*, %struct.scaler_filter** %4, align 8
  %64 = getelementptr inbounds %struct.scaler_filter, %struct.scaler_filter* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = icmp sgt i32 %62, %65
  br i1 %66, label %67, label %76

67:                                               ; preds = %42
  %68 = load i32*, i32** %11, align 8
  %69 = load %struct.scaler_filter*, %struct.scaler_filter** %4, align 8
  %70 = getelementptr inbounds %struct.scaler_filter, %struct.scaler_filter* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = sext i32 %71 to i64
  %73 = mul i64 %72, 4
  %74 = trunc i64 %73 to i32
  %75 = call i32 @memset(i32* %68, i32 0, i32 %74)
  br label %97

76:                                               ; preds = %42
  %77 = load i32*, i32** %11, align 8
  %78 = load i32, i32* %9, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  %81 = load i32*, i32** %11, align 8
  %82 = load %struct.scaler_filter*, %struct.scaler_filter** %4, align 8
  %83 = getelementptr inbounds %struct.scaler_filter, %struct.scaler_filter* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* %9, align 4
  %86 = sub nsw i32 %84, %85
  %87 = sext i32 %86 to i64
  %88 = mul i64 %87, 4
  %89 = trunc i64 %88 to i32
  %90 = call i32 @memmove(i32* %80, i32* %81, i32 %89)
  %91 = load i32*, i32** %11, align 8
  %92 = load i32, i32* %9, align 4
  %93 = sext i32 %92 to i64
  %94 = mul i64 %93, 4
  %95 = trunc i64 %94 to i32
  %96 = call i32 @memset(i32* %91, i32 0, i32 %95)
  br label %97

97:                                               ; preds = %76, %67
  br label %98

98:                                               ; preds = %97, %22
  %99 = load i32, i32* %10, align 4
  %100 = icmp sgt i32 %99, 0
  br i1 %100, label %101, label %164

101:                                              ; preds = %98
  store i32* null, i32** %12, align 8
  %102 = load i32, i32* %10, align 4
  %103 = load %struct.scaler_filter*, %struct.scaler_filter** %4, align 8
  %104 = getelementptr inbounds %struct.scaler_filter, %struct.scaler_filter* %103, i32 0, i32 1
  %105 = load i32*, i32** %104, align 8
  %106 = load i32, i32* %7, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %105, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = add nsw i32 %109, %102
  store i32 %110, i32* %108, align 4
  %111 = load %struct.scaler_filter*, %struct.scaler_filter** %4, align 8
  %112 = getelementptr inbounds %struct.scaler_filter, %struct.scaler_filter* %111, i32 0, i32 3
  %113 = load i32*, i32** %112, align 8
  %114 = load i32, i32* %7, align 4
  %115 = load %struct.scaler_filter*, %struct.scaler_filter** %4, align 8
  %116 = getelementptr inbounds %struct.scaler_filter, %struct.scaler_filter* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  %118 = mul nsw i32 %114, %117
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %113, i64 %119
  store i32* %120, i32** %12, align 8
  %121 = load i32, i32* %10, align 4
  %122 = load %struct.scaler_filter*, %struct.scaler_filter** %4, align 8
  %123 = getelementptr inbounds %struct.scaler_filter, %struct.scaler_filter* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = icmp sgt i32 %121, %124
  br i1 %125, label %126, label %135

126:                                              ; preds = %101
  %127 = load i32*, i32** %12, align 8
  %128 = load %struct.scaler_filter*, %struct.scaler_filter** %4, align 8
  %129 = getelementptr inbounds %struct.scaler_filter, %struct.scaler_filter* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = sext i32 %130 to i64
  %132 = mul i64 %131, 4
  %133 = trunc i64 %132 to i32
  %134 = call i32 @memset(i32* %127, i32 0, i32 %133)
  br label %163

135:                                              ; preds = %101
  %136 = load i32*, i32** %12, align 8
  %137 = load i32*, i32** %12, align 8
  %138 = load i32, i32* %10, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32, i32* %137, i64 %139
  %141 = load %struct.scaler_filter*, %struct.scaler_filter** %4, align 8
  %142 = getelementptr inbounds %struct.scaler_filter, %struct.scaler_filter* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = load i32, i32* %10, align 4
  %145 = sub nsw i32 %143, %144
  %146 = sext i32 %145 to i64
  %147 = mul i64 %146, 4
  %148 = trunc i64 %147 to i32
  %149 = call i32 @memmove(i32* %136, i32* %140, i32 %148)
  %150 = load i32*, i32** %12, align 8
  %151 = load %struct.scaler_filter*, %struct.scaler_filter** %4, align 8
  %152 = getelementptr inbounds %struct.scaler_filter, %struct.scaler_filter* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = load i32, i32* %10, align 4
  %155 = sub nsw i32 %153, %154
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i32, i32* %150, i64 %156
  %158 = load i32, i32* %10, align 4
  %159 = sext i32 %158 to i64
  %160 = mul i64 %159, 4
  %161 = trunc i64 %160 to i32
  %162 = call i32 @memset(i32* %157, i32 0, i32 %161)
  br label %163

163:                                              ; preds = %135, %126
  br label %164

164:                                              ; preds = %163, %98
  br label %165

165:                                              ; preds = %164
  %166 = load i32, i32* %7, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %7, align 4
  br label %18

168:                                              ; preds = %18
  ret void
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @memmove(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
