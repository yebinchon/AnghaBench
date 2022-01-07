; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_aacps.c_map_idx_10_to_34.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_aacps.c_map_idx_10_to_34.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64*, i64*, i32)* @map_idx_10_to_34 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @map_idx_10_to_34(i64* %0, i64* %1, i32 %2) #0 {
  %4 = alloca i64*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  store i64* %0, i64** %4, align 8
  store i64* %1, i64** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %100

9:                                                ; preds = %3
  %10 = load i64*, i64** %5, align 8
  %11 = getelementptr inbounds i64, i64* %10, i64 9
  %12 = load i64, i64* %11, align 8
  %13 = load i64*, i64** %4, align 8
  %14 = getelementptr inbounds i64, i64* %13, i64 33
  store i64 %12, i64* %14, align 8
  %15 = load i64*, i64** %5, align 8
  %16 = getelementptr inbounds i64, i64* %15, i64 9
  %17 = load i64, i64* %16, align 8
  %18 = load i64*, i64** %4, align 8
  %19 = getelementptr inbounds i64, i64* %18, i64 32
  store i64 %17, i64* %19, align 8
  %20 = load i64*, i64** %5, align 8
  %21 = getelementptr inbounds i64, i64* %20, i64 9
  %22 = load i64, i64* %21, align 8
  %23 = load i64*, i64** %4, align 8
  %24 = getelementptr inbounds i64, i64* %23, i64 31
  store i64 %22, i64* %24, align 8
  %25 = load i64*, i64** %5, align 8
  %26 = getelementptr inbounds i64, i64* %25, i64 9
  %27 = load i64, i64* %26, align 8
  %28 = load i64*, i64** %4, align 8
  %29 = getelementptr inbounds i64, i64* %28, i64 30
  store i64 %27, i64* %29, align 8
  %30 = load i64*, i64** %5, align 8
  %31 = getelementptr inbounds i64, i64* %30, i64 9
  %32 = load i64, i64* %31, align 8
  %33 = load i64*, i64** %4, align 8
  %34 = getelementptr inbounds i64, i64* %33, i64 29
  store i64 %32, i64* %34, align 8
  %35 = load i64*, i64** %5, align 8
  %36 = getelementptr inbounds i64, i64* %35, i64 9
  %37 = load i64, i64* %36, align 8
  %38 = load i64*, i64** %4, align 8
  %39 = getelementptr inbounds i64, i64* %38, i64 28
  store i64 %37, i64* %39, align 8
  %40 = load i64*, i64** %5, align 8
  %41 = getelementptr inbounds i64, i64* %40, i64 8
  %42 = load i64, i64* %41, align 8
  %43 = load i64*, i64** %4, align 8
  %44 = getelementptr inbounds i64, i64* %43, i64 27
  store i64 %42, i64* %44, align 8
  %45 = load i64*, i64** %5, align 8
  %46 = getelementptr inbounds i64, i64* %45, i64 8
  %47 = load i64, i64* %46, align 8
  %48 = load i64*, i64** %4, align 8
  %49 = getelementptr inbounds i64, i64* %48, i64 26
  store i64 %47, i64* %49, align 8
  %50 = load i64*, i64** %5, align 8
  %51 = getelementptr inbounds i64, i64* %50, i64 8
  %52 = load i64, i64* %51, align 8
  %53 = load i64*, i64** %4, align 8
  %54 = getelementptr inbounds i64, i64* %53, i64 25
  store i64 %52, i64* %54, align 8
  %55 = load i64*, i64** %5, align 8
  %56 = getelementptr inbounds i64, i64* %55, i64 8
  %57 = load i64, i64* %56, align 8
  %58 = load i64*, i64** %4, align 8
  %59 = getelementptr inbounds i64, i64* %58, i64 24
  store i64 %57, i64* %59, align 8
  %60 = load i64*, i64** %5, align 8
  %61 = getelementptr inbounds i64, i64* %60, i64 7
  %62 = load i64, i64* %61, align 8
  %63 = load i64*, i64** %4, align 8
  %64 = getelementptr inbounds i64, i64* %63, i64 23
  store i64 %62, i64* %64, align 8
  %65 = load i64*, i64** %5, align 8
  %66 = getelementptr inbounds i64, i64* %65, i64 7
  %67 = load i64, i64* %66, align 8
  %68 = load i64*, i64** %4, align 8
  %69 = getelementptr inbounds i64, i64* %68, i64 22
  store i64 %67, i64* %69, align 8
  %70 = load i64*, i64** %5, align 8
  %71 = getelementptr inbounds i64, i64* %70, i64 7
  %72 = load i64, i64* %71, align 8
  %73 = load i64*, i64** %4, align 8
  %74 = getelementptr inbounds i64, i64* %73, i64 21
  store i64 %72, i64* %74, align 8
  %75 = load i64*, i64** %5, align 8
  %76 = getelementptr inbounds i64, i64* %75, i64 7
  %77 = load i64, i64* %76, align 8
  %78 = load i64*, i64** %4, align 8
  %79 = getelementptr inbounds i64, i64* %78, i64 20
  store i64 %77, i64* %79, align 8
  %80 = load i64*, i64** %5, align 8
  %81 = getelementptr inbounds i64, i64* %80, i64 6
  %82 = load i64, i64* %81, align 8
  %83 = load i64*, i64** %4, align 8
  %84 = getelementptr inbounds i64, i64* %83, i64 19
  store i64 %82, i64* %84, align 8
  %85 = load i64*, i64** %5, align 8
  %86 = getelementptr inbounds i64, i64* %85, i64 6
  %87 = load i64, i64* %86, align 8
  %88 = load i64*, i64** %4, align 8
  %89 = getelementptr inbounds i64, i64* %88, i64 18
  store i64 %87, i64* %89, align 8
  %90 = load i64*, i64** %5, align 8
  %91 = getelementptr inbounds i64, i64* %90, i64 5
  %92 = load i64, i64* %91, align 8
  %93 = load i64*, i64** %4, align 8
  %94 = getelementptr inbounds i64, i64* %93, i64 17
  store i64 %92, i64* %94, align 8
  %95 = load i64*, i64** %5, align 8
  %96 = getelementptr inbounds i64, i64* %95, i64 5
  %97 = load i64, i64* %96, align 8
  %98 = load i64*, i64** %4, align 8
  %99 = getelementptr inbounds i64, i64* %98, i64 16
  store i64 %97, i64* %99, align 8
  br label %103

100:                                              ; preds = %3
  %101 = load i64*, i64** %4, align 8
  %102 = getelementptr inbounds i64, i64* %101, i64 16
  store i64 0, i64* %102, align 8
  br label %103

103:                                              ; preds = %100, %9
  %104 = load i64*, i64** %5, align 8
  %105 = getelementptr inbounds i64, i64* %104, i64 4
  %106 = load i64, i64* %105, align 8
  %107 = load i64*, i64** %4, align 8
  %108 = getelementptr inbounds i64, i64* %107, i64 15
  store i64 %106, i64* %108, align 8
  %109 = load i64*, i64** %5, align 8
  %110 = getelementptr inbounds i64, i64* %109, i64 4
  %111 = load i64, i64* %110, align 8
  %112 = load i64*, i64** %4, align 8
  %113 = getelementptr inbounds i64, i64* %112, i64 14
  store i64 %111, i64* %113, align 8
  %114 = load i64*, i64** %5, align 8
  %115 = getelementptr inbounds i64, i64* %114, i64 4
  %116 = load i64, i64* %115, align 8
  %117 = load i64*, i64** %4, align 8
  %118 = getelementptr inbounds i64, i64* %117, i64 13
  store i64 %116, i64* %118, align 8
  %119 = load i64*, i64** %5, align 8
  %120 = getelementptr inbounds i64, i64* %119, i64 4
  %121 = load i64, i64* %120, align 8
  %122 = load i64*, i64** %4, align 8
  %123 = getelementptr inbounds i64, i64* %122, i64 12
  store i64 %121, i64* %123, align 8
  %124 = load i64*, i64** %5, align 8
  %125 = getelementptr inbounds i64, i64* %124, i64 3
  %126 = load i64, i64* %125, align 8
  %127 = load i64*, i64** %4, align 8
  %128 = getelementptr inbounds i64, i64* %127, i64 11
  store i64 %126, i64* %128, align 8
  %129 = load i64*, i64** %5, align 8
  %130 = getelementptr inbounds i64, i64* %129, i64 3
  %131 = load i64, i64* %130, align 8
  %132 = load i64*, i64** %4, align 8
  %133 = getelementptr inbounds i64, i64* %132, i64 10
  store i64 %131, i64* %133, align 8
  %134 = load i64*, i64** %5, align 8
  %135 = getelementptr inbounds i64, i64* %134, i64 2
  %136 = load i64, i64* %135, align 8
  %137 = load i64*, i64** %4, align 8
  %138 = getelementptr inbounds i64, i64* %137, i64 9
  store i64 %136, i64* %138, align 8
  %139 = load i64*, i64** %5, align 8
  %140 = getelementptr inbounds i64, i64* %139, i64 2
  %141 = load i64, i64* %140, align 8
  %142 = load i64*, i64** %4, align 8
  %143 = getelementptr inbounds i64, i64* %142, i64 8
  store i64 %141, i64* %143, align 8
  %144 = load i64*, i64** %5, align 8
  %145 = getelementptr inbounds i64, i64* %144, i64 2
  %146 = load i64, i64* %145, align 8
  %147 = load i64*, i64** %4, align 8
  %148 = getelementptr inbounds i64, i64* %147, i64 7
  store i64 %146, i64* %148, align 8
  %149 = load i64*, i64** %5, align 8
  %150 = getelementptr inbounds i64, i64* %149, i64 2
  %151 = load i64, i64* %150, align 8
  %152 = load i64*, i64** %4, align 8
  %153 = getelementptr inbounds i64, i64* %152, i64 6
  store i64 %151, i64* %153, align 8
  %154 = load i64*, i64** %5, align 8
  %155 = getelementptr inbounds i64, i64* %154, i64 1
  %156 = load i64, i64* %155, align 8
  %157 = load i64*, i64** %4, align 8
  %158 = getelementptr inbounds i64, i64* %157, i64 5
  store i64 %156, i64* %158, align 8
  %159 = load i64*, i64** %5, align 8
  %160 = getelementptr inbounds i64, i64* %159, i64 1
  %161 = load i64, i64* %160, align 8
  %162 = load i64*, i64** %4, align 8
  %163 = getelementptr inbounds i64, i64* %162, i64 4
  store i64 %161, i64* %163, align 8
  %164 = load i64*, i64** %5, align 8
  %165 = getelementptr inbounds i64, i64* %164, i64 1
  %166 = load i64, i64* %165, align 8
  %167 = load i64*, i64** %4, align 8
  %168 = getelementptr inbounds i64, i64* %167, i64 3
  store i64 %166, i64* %168, align 8
  %169 = load i64*, i64** %5, align 8
  %170 = getelementptr inbounds i64, i64* %169, i64 0
  %171 = load i64, i64* %170, align 8
  %172 = load i64*, i64** %4, align 8
  %173 = getelementptr inbounds i64, i64* %172, i64 2
  store i64 %171, i64* %173, align 8
  %174 = load i64*, i64** %5, align 8
  %175 = getelementptr inbounds i64, i64* %174, i64 0
  %176 = load i64, i64* %175, align 8
  %177 = load i64*, i64** %4, align 8
  %178 = getelementptr inbounds i64, i64* %177, i64 1
  store i64 %176, i64* %178, align 8
  %179 = load i64*, i64** %5, align 8
  %180 = getelementptr inbounds i64, i64* %179, i64 0
  %181 = load i64, i64* %180, align 8
  %182 = load i64*, i64** %4, align 8
  %183 = getelementptr inbounds i64, i64* %182, i64 0
  store i64 %181, i64* %183, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
