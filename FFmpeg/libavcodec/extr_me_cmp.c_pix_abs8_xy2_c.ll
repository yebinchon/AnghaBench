; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_me_cmp.c_pix_abs8_xy2_c.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_me_cmp.c_pix_abs8_xy2_c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64*, i64*, i32, i32)* @pix_abs8_xy2_c to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pix_abs8_xy2_c(i32* %0, i64* %1, i64* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64*, align 8
  store i32* %0, i32** %6, align 8
  store i64* %1, i64** %7, align 8
  store i64* %2, i64** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %14 = load i64*, i64** %8, align 8
  %15 = load i32, i32* %9, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i64, i64* %14, i64 %16
  store i64* %17, i64** %13, align 8
  store i32 0, i32* %12, align 4
  br label %18

18:                                               ; preds = %211, %5
  %19 = load i32, i32* %12, align 4
  %20 = load i32, i32* %10, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %214

22:                                               ; preds = %18
  %23 = load i64*, i64** %7, align 8
  %24 = getelementptr inbounds i64, i64* %23, i64 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64*, i64** %8, align 8
  %27 = getelementptr inbounds i64, i64* %26, i64 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64*, i64** %8, align 8
  %30 = getelementptr inbounds i64, i64* %29, i64 1
  %31 = load i64, i64* %30, align 8
  %32 = load i64*, i64** %13, align 8
  %33 = getelementptr inbounds i64, i64* %32, i64 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64*, i64** %13, align 8
  %36 = getelementptr inbounds i64, i64* %35, i64 1
  %37 = load i64, i64* %36, align 8
  %38 = call i64 @avg4(i64 %28, i64 %31, i64 %34, i64 %37)
  %39 = sub nsw i64 %25, %38
  %40 = call i64 @abs(i64 %39)
  %41 = load i32, i32* %11, align 4
  %42 = sext i32 %41 to i64
  %43 = add nsw i64 %42, %40
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %11, align 4
  %45 = load i64*, i64** %7, align 8
  %46 = getelementptr inbounds i64, i64* %45, i64 1
  %47 = load i64, i64* %46, align 8
  %48 = load i64*, i64** %8, align 8
  %49 = getelementptr inbounds i64, i64* %48, i64 1
  %50 = load i64, i64* %49, align 8
  %51 = load i64*, i64** %8, align 8
  %52 = getelementptr inbounds i64, i64* %51, i64 2
  %53 = load i64, i64* %52, align 8
  %54 = load i64*, i64** %13, align 8
  %55 = getelementptr inbounds i64, i64* %54, i64 1
  %56 = load i64, i64* %55, align 8
  %57 = load i64*, i64** %13, align 8
  %58 = getelementptr inbounds i64, i64* %57, i64 2
  %59 = load i64, i64* %58, align 8
  %60 = call i64 @avg4(i64 %50, i64 %53, i64 %56, i64 %59)
  %61 = sub nsw i64 %47, %60
  %62 = call i64 @abs(i64 %61)
  %63 = load i32, i32* %11, align 4
  %64 = sext i32 %63 to i64
  %65 = add nsw i64 %64, %62
  %66 = trunc i64 %65 to i32
  store i32 %66, i32* %11, align 4
  %67 = load i64*, i64** %7, align 8
  %68 = getelementptr inbounds i64, i64* %67, i64 2
  %69 = load i64, i64* %68, align 8
  %70 = load i64*, i64** %8, align 8
  %71 = getelementptr inbounds i64, i64* %70, i64 2
  %72 = load i64, i64* %71, align 8
  %73 = load i64*, i64** %8, align 8
  %74 = getelementptr inbounds i64, i64* %73, i64 3
  %75 = load i64, i64* %74, align 8
  %76 = load i64*, i64** %13, align 8
  %77 = getelementptr inbounds i64, i64* %76, i64 2
  %78 = load i64, i64* %77, align 8
  %79 = load i64*, i64** %13, align 8
  %80 = getelementptr inbounds i64, i64* %79, i64 3
  %81 = load i64, i64* %80, align 8
  %82 = call i64 @avg4(i64 %72, i64 %75, i64 %78, i64 %81)
  %83 = sub nsw i64 %69, %82
  %84 = call i64 @abs(i64 %83)
  %85 = load i32, i32* %11, align 4
  %86 = sext i32 %85 to i64
  %87 = add nsw i64 %86, %84
  %88 = trunc i64 %87 to i32
  store i32 %88, i32* %11, align 4
  %89 = load i64*, i64** %7, align 8
  %90 = getelementptr inbounds i64, i64* %89, i64 3
  %91 = load i64, i64* %90, align 8
  %92 = load i64*, i64** %8, align 8
  %93 = getelementptr inbounds i64, i64* %92, i64 3
  %94 = load i64, i64* %93, align 8
  %95 = load i64*, i64** %8, align 8
  %96 = getelementptr inbounds i64, i64* %95, i64 4
  %97 = load i64, i64* %96, align 8
  %98 = load i64*, i64** %13, align 8
  %99 = getelementptr inbounds i64, i64* %98, i64 3
  %100 = load i64, i64* %99, align 8
  %101 = load i64*, i64** %13, align 8
  %102 = getelementptr inbounds i64, i64* %101, i64 4
  %103 = load i64, i64* %102, align 8
  %104 = call i64 @avg4(i64 %94, i64 %97, i64 %100, i64 %103)
  %105 = sub nsw i64 %91, %104
  %106 = call i64 @abs(i64 %105)
  %107 = load i32, i32* %11, align 4
  %108 = sext i32 %107 to i64
  %109 = add nsw i64 %108, %106
  %110 = trunc i64 %109 to i32
  store i32 %110, i32* %11, align 4
  %111 = load i64*, i64** %7, align 8
  %112 = getelementptr inbounds i64, i64* %111, i64 4
  %113 = load i64, i64* %112, align 8
  %114 = load i64*, i64** %8, align 8
  %115 = getelementptr inbounds i64, i64* %114, i64 4
  %116 = load i64, i64* %115, align 8
  %117 = load i64*, i64** %8, align 8
  %118 = getelementptr inbounds i64, i64* %117, i64 5
  %119 = load i64, i64* %118, align 8
  %120 = load i64*, i64** %13, align 8
  %121 = getelementptr inbounds i64, i64* %120, i64 4
  %122 = load i64, i64* %121, align 8
  %123 = load i64*, i64** %13, align 8
  %124 = getelementptr inbounds i64, i64* %123, i64 5
  %125 = load i64, i64* %124, align 8
  %126 = call i64 @avg4(i64 %116, i64 %119, i64 %122, i64 %125)
  %127 = sub nsw i64 %113, %126
  %128 = call i64 @abs(i64 %127)
  %129 = load i32, i32* %11, align 4
  %130 = sext i32 %129 to i64
  %131 = add nsw i64 %130, %128
  %132 = trunc i64 %131 to i32
  store i32 %132, i32* %11, align 4
  %133 = load i64*, i64** %7, align 8
  %134 = getelementptr inbounds i64, i64* %133, i64 5
  %135 = load i64, i64* %134, align 8
  %136 = load i64*, i64** %8, align 8
  %137 = getelementptr inbounds i64, i64* %136, i64 5
  %138 = load i64, i64* %137, align 8
  %139 = load i64*, i64** %8, align 8
  %140 = getelementptr inbounds i64, i64* %139, i64 6
  %141 = load i64, i64* %140, align 8
  %142 = load i64*, i64** %13, align 8
  %143 = getelementptr inbounds i64, i64* %142, i64 5
  %144 = load i64, i64* %143, align 8
  %145 = load i64*, i64** %13, align 8
  %146 = getelementptr inbounds i64, i64* %145, i64 6
  %147 = load i64, i64* %146, align 8
  %148 = call i64 @avg4(i64 %138, i64 %141, i64 %144, i64 %147)
  %149 = sub nsw i64 %135, %148
  %150 = call i64 @abs(i64 %149)
  %151 = load i32, i32* %11, align 4
  %152 = sext i32 %151 to i64
  %153 = add nsw i64 %152, %150
  %154 = trunc i64 %153 to i32
  store i32 %154, i32* %11, align 4
  %155 = load i64*, i64** %7, align 8
  %156 = getelementptr inbounds i64, i64* %155, i64 6
  %157 = load i64, i64* %156, align 8
  %158 = load i64*, i64** %8, align 8
  %159 = getelementptr inbounds i64, i64* %158, i64 6
  %160 = load i64, i64* %159, align 8
  %161 = load i64*, i64** %8, align 8
  %162 = getelementptr inbounds i64, i64* %161, i64 7
  %163 = load i64, i64* %162, align 8
  %164 = load i64*, i64** %13, align 8
  %165 = getelementptr inbounds i64, i64* %164, i64 6
  %166 = load i64, i64* %165, align 8
  %167 = load i64*, i64** %13, align 8
  %168 = getelementptr inbounds i64, i64* %167, i64 7
  %169 = load i64, i64* %168, align 8
  %170 = call i64 @avg4(i64 %160, i64 %163, i64 %166, i64 %169)
  %171 = sub nsw i64 %157, %170
  %172 = call i64 @abs(i64 %171)
  %173 = load i32, i32* %11, align 4
  %174 = sext i32 %173 to i64
  %175 = add nsw i64 %174, %172
  %176 = trunc i64 %175 to i32
  store i32 %176, i32* %11, align 4
  %177 = load i64*, i64** %7, align 8
  %178 = getelementptr inbounds i64, i64* %177, i64 7
  %179 = load i64, i64* %178, align 8
  %180 = load i64*, i64** %8, align 8
  %181 = getelementptr inbounds i64, i64* %180, i64 7
  %182 = load i64, i64* %181, align 8
  %183 = load i64*, i64** %8, align 8
  %184 = getelementptr inbounds i64, i64* %183, i64 8
  %185 = load i64, i64* %184, align 8
  %186 = load i64*, i64** %13, align 8
  %187 = getelementptr inbounds i64, i64* %186, i64 7
  %188 = load i64, i64* %187, align 8
  %189 = load i64*, i64** %13, align 8
  %190 = getelementptr inbounds i64, i64* %189, i64 8
  %191 = load i64, i64* %190, align 8
  %192 = call i64 @avg4(i64 %182, i64 %185, i64 %188, i64 %191)
  %193 = sub nsw i64 %179, %192
  %194 = call i64 @abs(i64 %193)
  %195 = load i32, i32* %11, align 4
  %196 = sext i32 %195 to i64
  %197 = add nsw i64 %196, %194
  %198 = trunc i64 %197 to i32
  store i32 %198, i32* %11, align 4
  %199 = load i32, i32* %9, align 4
  %200 = load i64*, i64** %7, align 8
  %201 = sext i32 %199 to i64
  %202 = getelementptr inbounds i64, i64* %200, i64 %201
  store i64* %202, i64** %7, align 8
  %203 = load i32, i32* %9, align 4
  %204 = load i64*, i64** %8, align 8
  %205 = sext i32 %203 to i64
  %206 = getelementptr inbounds i64, i64* %204, i64 %205
  store i64* %206, i64** %8, align 8
  %207 = load i32, i32* %9, align 4
  %208 = load i64*, i64** %13, align 8
  %209 = sext i32 %207 to i64
  %210 = getelementptr inbounds i64, i64* %208, i64 %209
  store i64* %210, i64** %13, align 8
  br label %211

211:                                              ; preds = %22
  %212 = load i32, i32* %12, align 4
  %213 = add nsw i32 %212, 1
  store i32 %213, i32* %12, align 4
  br label %18

214:                                              ; preds = %18
  %215 = load i32, i32* %11, align 4
  ret i32 %215
}

declare dso_local i64 @abs(i64) #1

declare dso_local i64 @avg4(i64, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
