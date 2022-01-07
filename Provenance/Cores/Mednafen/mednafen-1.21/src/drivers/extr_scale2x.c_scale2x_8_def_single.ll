; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mednafen/mednafen-1.21/src/drivers/extr_scale2x.c_scale2x_8_def_single.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mednafen/mednafen-1.21/src/drivers/extr_scale2x.c_scale2x_8_def_single.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64*, i64*, i64*, i64*, i32)* @scale2x_8_def_single to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scale2x_8_def_single(i64* noalias %0, i64* noalias %1, i64* noalias %2, i64* noalias %3, i32 %4) #0 {
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  store i64* %0, i64** %6, align 8
  store i64* %1, i64** %7, align 8
  store i64* %2, i64** %8, align 8
  store i64* %3, i64** %9, align 8
  store i32 %4, i32* %10, align 4
  %11 = load i32, i32* %10, align 4
  %12 = icmp uge i32 %11, 2
  %13 = zext i1 %12 to i32
  %14 = call i32 @assert(i32 %13)
  %15 = load i64*, i64** %8, align 8
  %16 = getelementptr inbounds i64, i64* %15, i64 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64*, i64** %6, align 8
  %19 = getelementptr inbounds i64, i64* %18, i64 0
  store i64 %17, i64* %19, align 8
  %20 = load i64*, i64** %8, align 8
  %21 = getelementptr inbounds i64, i64* %20, i64 1
  %22 = load i64, i64* %21, align 8
  %23 = load i64*, i64** %7, align 8
  %24 = getelementptr inbounds i64, i64* %23, i64 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp eq i64 %22, %25
  br i1 %26, label %27, label %41

27:                                               ; preds = %5
  %28 = load i64*, i64** %9, align 8
  %29 = getelementptr inbounds i64, i64* %28, i64 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64*, i64** %7, align 8
  %32 = getelementptr inbounds i64, i64* %31, i64 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %30, %33
  br i1 %34, label %35, label %41

35:                                               ; preds = %27
  %36 = load i64*, i64** %7, align 8
  %37 = getelementptr inbounds i64, i64* %36, i64 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64*, i64** %6, align 8
  %40 = getelementptr inbounds i64, i64* %39, i64 1
  store i64 %38, i64* %40, align 8
  br label %47

41:                                               ; preds = %27, %5
  %42 = load i64*, i64** %8, align 8
  %43 = getelementptr inbounds i64, i64* %42, i64 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64*, i64** %6, align 8
  %46 = getelementptr inbounds i64, i64* %45, i64 1
  store i64 %44, i64* %46, align 8
  br label %47

47:                                               ; preds = %41, %35
  %48 = load i64*, i64** %7, align 8
  %49 = getelementptr inbounds i64, i64* %48, i32 1
  store i64* %49, i64** %7, align 8
  %50 = load i64*, i64** %8, align 8
  %51 = getelementptr inbounds i64, i64* %50, i32 1
  store i64* %51, i64** %8, align 8
  %52 = load i64*, i64** %9, align 8
  %53 = getelementptr inbounds i64, i64* %52, i32 1
  store i64* %53, i64** %9, align 8
  %54 = load i64*, i64** %6, align 8
  %55 = getelementptr inbounds i64, i64* %54, i64 2
  store i64* %55, i64** %6, align 8
  %56 = load i32, i32* %10, align 4
  %57 = sub i32 %56, 2
  store i32 %57, i32* %10, align 4
  br label %58

58:                                               ; preds = %127, %47
  %59 = load i32, i32* %10, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %138

61:                                               ; preds = %58
  %62 = load i64*, i64** %7, align 8
  %63 = getelementptr inbounds i64, i64* %62, i64 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64*, i64** %9, align 8
  %66 = getelementptr inbounds i64, i64* %65, i64 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %64, %67
  br i1 %68, label %69, label %116

69:                                               ; preds = %61
  %70 = load i64*, i64** %8, align 8
  %71 = getelementptr inbounds i64, i64* %70, i64 -1
  %72 = load i64, i64* %71, align 8
  %73 = load i64*, i64** %8, align 8
  %74 = getelementptr inbounds i64, i64* %73, i64 1
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %72, %75
  br i1 %76, label %77, label %116

77:                                               ; preds = %69
  %78 = load i64*, i64** %8, align 8
  %79 = getelementptr inbounds i64, i64* %78, i64 -1
  %80 = load i64, i64* %79, align 8
  %81 = load i64*, i64** %7, align 8
  %82 = getelementptr inbounds i64, i64* %81, i64 0
  %83 = load i64, i64* %82, align 8
  %84 = icmp eq i64 %80, %83
  br i1 %84, label %85, label %89

85:                                               ; preds = %77
  %86 = load i64*, i64** %7, align 8
  %87 = getelementptr inbounds i64, i64* %86, i64 0
  %88 = load i64, i64* %87, align 8
  br label %93

89:                                               ; preds = %77
  %90 = load i64*, i64** %8, align 8
  %91 = getelementptr inbounds i64, i64* %90, i64 0
  %92 = load i64, i64* %91, align 8
  br label %93

93:                                               ; preds = %89, %85
  %94 = phi i64 [ %88, %85 ], [ %92, %89 ]
  %95 = load i64*, i64** %6, align 8
  %96 = getelementptr inbounds i64, i64* %95, i64 0
  store i64 %94, i64* %96, align 8
  %97 = load i64*, i64** %8, align 8
  %98 = getelementptr inbounds i64, i64* %97, i64 1
  %99 = load i64, i64* %98, align 8
  %100 = load i64*, i64** %7, align 8
  %101 = getelementptr inbounds i64, i64* %100, i64 0
  %102 = load i64, i64* %101, align 8
  %103 = icmp eq i64 %99, %102
  br i1 %103, label %104, label %108

104:                                              ; preds = %93
  %105 = load i64*, i64** %7, align 8
  %106 = getelementptr inbounds i64, i64* %105, i64 0
  %107 = load i64, i64* %106, align 8
  br label %112

108:                                              ; preds = %93
  %109 = load i64*, i64** %8, align 8
  %110 = getelementptr inbounds i64, i64* %109, i64 0
  %111 = load i64, i64* %110, align 8
  br label %112

112:                                              ; preds = %108, %104
  %113 = phi i64 [ %107, %104 ], [ %111, %108 ]
  %114 = load i64*, i64** %6, align 8
  %115 = getelementptr inbounds i64, i64* %114, i64 1
  store i64 %113, i64* %115, align 8
  br label %127

116:                                              ; preds = %69, %61
  %117 = load i64*, i64** %8, align 8
  %118 = getelementptr inbounds i64, i64* %117, i64 0
  %119 = load i64, i64* %118, align 8
  %120 = load i64*, i64** %6, align 8
  %121 = getelementptr inbounds i64, i64* %120, i64 0
  store i64 %119, i64* %121, align 8
  %122 = load i64*, i64** %8, align 8
  %123 = getelementptr inbounds i64, i64* %122, i64 0
  %124 = load i64, i64* %123, align 8
  %125 = load i64*, i64** %6, align 8
  %126 = getelementptr inbounds i64, i64* %125, i64 1
  store i64 %124, i64* %126, align 8
  br label %127

127:                                              ; preds = %116, %112
  %128 = load i64*, i64** %7, align 8
  %129 = getelementptr inbounds i64, i64* %128, i32 1
  store i64* %129, i64** %7, align 8
  %130 = load i64*, i64** %8, align 8
  %131 = getelementptr inbounds i64, i64* %130, i32 1
  store i64* %131, i64** %8, align 8
  %132 = load i64*, i64** %9, align 8
  %133 = getelementptr inbounds i64, i64* %132, i32 1
  store i64* %133, i64** %9, align 8
  %134 = load i64*, i64** %6, align 8
  %135 = getelementptr inbounds i64, i64* %134, i64 2
  store i64* %135, i64** %6, align 8
  %136 = load i32, i32* %10, align 4
  %137 = add i32 %136, -1
  store i32 %137, i32* %10, align 4
  br label %58

138:                                              ; preds = %58
  %139 = load i64*, i64** %8, align 8
  %140 = getelementptr inbounds i64, i64* %139, i64 -1
  %141 = load i64, i64* %140, align 8
  %142 = load i64*, i64** %7, align 8
  %143 = getelementptr inbounds i64, i64* %142, i64 0
  %144 = load i64, i64* %143, align 8
  %145 = icmp eq i64 %141, %144
  br i1 %145, label %146, label %160

146:                                              ; preds = %138
  %147 = load i64*, i64** %9, align 8
  %148 = getelementptr inbounds i64, i64* %147, i64 0
  %149 = load i64, i64* %148, align 8
  %150 = load i64*, i64** %7, align 8
  %151 = getelementptr inbounds i64, i64* %150, i64 0
  %152 = load i64, i64* %151, align 8
  %153 = icmp ne i64 %149, %152
  br i1 %153, label %154, label %160

154:                                              ; preds = %146
  %155 = load i64*, i64** %7, align 8
  %156 = getelementptr inbounds i64, i64* %155, i64 0
  %157 = load i64, i64* %156, align 8
  %158 = load i64*, i64** %6, align 8
  %159 = getelementptr inbounds i64, i64* %158, i64 0
  store i64 %157, i64* %159, align 8
  br label %166

160:                                              ; preds = %146, %138
  %161 = load i64*, i64** %8, align 8
  %162 = getelementptr inbounds i64, i64* %161, i64 0
  %163 = load i64, i64* %162, align 8
  %164 = load i64*, i64** %6, align 8
  %165 = getelementptr inbounds i64, i64* %164, i64 0
  store i64 %163, i64* %165, align 8
  br label %166

166:                                              ; preds = %160, %154
  %167 = load i64*, i64** %8, align 8
  %168 = getelementptr inbounds i64, i64* %167, i64 0
  %169 = load i64, i64* %168, align 8
  %170 = load i64*, i64** %6, align 8
  %171 = getelementptr inbounds i64, i64* %170, i64 1
  store i64 %169, i64* %171, align 8
  ret void
}

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
