; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavutil/extr_twofish.c_tf_h0.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavutil/extr_twofish.c_tf_h0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@q1 = common dso_local global i64* null, align 8
@q0 = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64*, i32*, i32)* @tf_h0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tf_h0(i64* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i64*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [4 x i64], align 16
  store i64* %0, i64** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  %9 = icmp eq i32 %8, 4
  br i1 %9, label %10, label %60

10:                                               ; preds = %3
  %11 = getelementptr inbounds [4 x i64], [4 x i64]* %7, i64 0, i64 0
  %12 = load i32*, i32** %5, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 3
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @AV_WL32(i64* %11, i32 %14)
  %16 = load i64*, i64** @q1, align 8
  %17 = load i64*, i64** %4, align 8
  %18 = getelementptr inbounds i64, i64* %17, i64 0
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds i64, i64* %16, i64 %19
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds [4 x i64], [4 x i64]* %7, i64 0, i64 0
  %23 = load i64, i64* %22, align 16
  %24 = xor i64 %21, %23
  %25 = load i64*, i64** %4, align 8
  %26 = getelementptr inbounds i64, i64* %25, i64 0
  store i64 %24, i64* %26, align 8
  %27 = load i64*, i64** @q0, align 8
  %28 = load i64*, i64** %4, align 8
  %29 = getelementptr inbounds i64, i64* %28, i64 1
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds i64, i64* %27, i64 %30
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds [4 x i64], [4 x i64]* %7, i64 0, i64 1
  %34 = load i64, i64* %33, align 8
  %35 = xor i64 %32, %34
  %36 = load i64*, i64** %4, align 8
  %37 = getelementptr inbounds i64, i64* %36, i64 1
  store i64 %35, i64* %37, align 8
  %38 = load i64*, i64** @q0, align 8
  %39 = load i64*, i64** %4, align 8
  %40 = getelementptr inbounds i64, i64* %39, i64 2
  %41 = load i64, i64* %40, align 8
  %42 = getelementptr inbounds i64, i64* %38, i64 %41
  %43 = load i64, i64* %42, align 8
  %44 = getelementptr inbounds [4 x i64], [4 x i64]* %7, i64 0, i64 2
  %45 = load i64, i64* %44, align 16
  %46 = xor i64 %43, %45
  %47 = load i64*, i64** %4, align 8
  %48 = getelementptr inbounds i64, i64* %47, i64 2
  store i64 %46, i64* %48, align 8
  %49 = load i64*, i64** @q1, align 8
  %50 = load i64*, i64** %4, align 8
  %51 = getelementptr inbounds i64, i64* %50, i64 3
  %52 = load i64, i64* %51, align 8
  %53 = getelementptr inbounds i64, i64* %49, i64 %52
  %54 = load i64, i64* %53, align 8
  %55 = getelementptr inbounds [4 x i64], [4 x i64]* %7, i64 0, i64 3
  %56 = load i64, i64* %55, align 8
  %57 = xor i64 %54, %56
  %58 = load i64*, i64** %4, align 8
  %59 = getelementptr inbounds i64, i64* %58, i64 3
  store i64 %57, i64* %59, align 8
  br label %60

60:                                               ; preds = %10, %3
  %61 = load i32, i32* %6, align 4
  %62 = icmp sge i32 %61, 3
  br i1 %62, label %63, label %113

63:                                               ; preds = %60
  %64 = getelementptr inbounds [4 x i64], [4 x i64]* %7, i64 0, i64 0
  %65 = load i32*, i32** %5, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 2
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @AV_WL32(i64* %64, i32 %67)
  %69 = load i64*, i64** @q1, align 8
  %70 = load i64*, i64** %4, align 8
  %71 = getelementptr inbounds i64, i64* %70, i64 0
  %72 = load i64, i64* %71, align 8
  %73 = getelementptr inbounds i64, i64* %69, i64 %72
  %74 = load i64, i64* %73, align 8
  %75 = getelementptr inbounds [4 x i64], [4 x i64]* %7, i64 0, i64 0
  %76 = load i64, i64* %75, align 16
  %77 = xor i64 %74, %76
  %78 = load i64*, i64** %4, align 8
  %79 = getelementptr inbounds i64, i64* %78, i64 0
  store i64 %77, i64* %79, align 8
  %80 = load i64*, i64** @q1, align 8
  %81 = load i64*, i64** %4, align 8
  %82 = getelementptr inbounds i64, i64* %81, i64 1
  %83 = load i64, i64* %82, align 8
  %84 = getelementptr inbounds i64, i64* %80, i64 %83
  %85 = load i64, i64* %84, align 8
  %86 = getelementptr inbounds [4 x i64], [4 x i64]* %7, i64 0, i64 1
  %87 = load i64, i64* %86, align 8
  %88 = xor i64 %85, %87
  %89 = load i64*, i64** %4, align 8
  %90 = getelementptr inbounds i64, i64* %89, i64 1
  store i64 %88, i64* %90, align 8
  %91 = load i64*, i64** @q0, align 8
  %92 = load i64*, i64** %4, align 8
  %93 = getelementptr inbounds i64, i64* %92, i64 2
  %94 = load i64, i64* %93, align 8
  %95 = getelementptr inbounds i64, i64* %91, i64 %94
  %96 = load i64, i64* %95, align 8
  %97 = getelementptr inbounds [4 x i64], [4 x i64]* %7, i64 0, i64 2
  %98 = load i64, i64* %97, align 16
  %99 = xor i64 %96, %98
  %100 = load i64*, i64** %4, align 8
  %101 = getelementptr inbounds i64, i64* %100, i64 2
  store i64 %99, i64* %101, align 8
  %102 = load i64*, i64** @q0, align 8
  %103 = load i64*, i64** %4, align 8
  %104 = getelementptr inbounds i64, i64* %103, i64 3
  %105 = load i64, i64* %104, align 8
  %106 = getelementptr inbounds i64, i64* %102, i64 %105
  %107 = load i64, i64* %106, align 8
  %108 = getelementptr inbounds [4 x i64], [4 x i64]* %7, i64 0, i64 3
  %109 = load i64, i64* %108, align 8
  %110 = xor i64 %107, %109
  %111 = load i64*, i64** %4, align 8
  %112 = getelementptr inbounds i64, i64* %111, i64 3
  store i64 %110, i64* %112, align 8
  br label %113

113:                                              ; preds = %63, %60
  %114 = getelementptr inbounds [4 x i64], [4 x i64]* %7, i64 0, i64 0
  %115 = load i32*, i32** %5, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 1
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @AV_WL32(i64* %114, i32 %117)
  %119 = load i64*, i64** @q1, align 8
  %120 = load i64*, i64** @q0, align 8
  %121 = load i64*, i64** @q0, align 8
  %122 = load i64*, i64** %4, align 8
  %123 = getelementptr inbounds i64, i64* %122, i64 0
  %124 = load i64, i64* %123, align 8
  %125 = getelementptr inbounds i64, i64* %121, i64 %124
  %126 = load i64, i64* %125, align 8
  %127 = getelementptr inbounds [4 x i64], [4 x i64]* %7, i64 0, i64 0
  %128 = load i64, i64* %127, align 16
  %129 = xor i64 %126, %128
  %130 = getelementptr inbounds i64, i64* %120, i64 %129
  %131 = load i64, i64* %130, align 8
  %132 = load i32*, i32** %5, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 0
  %134 = load i32, i32* %133, align 4
  %135 = and i32 %134, 255
  %136 = sext i32 %135 to i64
  %137 = xor i64 %131, %136
  %138 = getelementptr inbounds i64, i64* %119, i64 %137
  %139 = load i64, i64* %138, align 8
  %140 = load i64*, i64** %4, align 8
  %141 = getelementptr inbounds i64, i64* %140, i64 0
  store i64 %139, i64* %141, align 8
  %142 = load i64*, i64** @q0, align 8
  %143 = load i64*, i64** @q0, align 8
  %144 = load i64*, i64** @q1, align 8
  %145 = load i64*, i64** %4, align 8
  %146 = getelementptr inbounds i64, i64* %145, i64 1
  %147 = load i64, i64* %146, align 8
  %148 = getelementptr inbounds i64, i64* %144, i64 %147
  %149 = load i64, i64* %148, align 8
  %150 = getelementptr inbounds [4 x i64], [4 x i64]* %7, i64 0, i64 1
  %151 = load i64, i64* %150, align 8
  %152 = xor i64 %149, %151
  %153 = getelementptr inbounds i64, i64* %143, i64 %152
  %154 = load i64, i64* %153, align 8
  %155 = load i32*, i32** %5, align 8
  %156 = getelementptr inbounds i32, i32* %155, i64 0
  %157 = load i32, i32* %156, align 4
  %158 = ashr i32 %157, 8
  %159 = and i32 %158, 255
  %160 = sext i32 %159 to i64
  %161 = xor i64 %154, %160
  %162 = getelementptr inbounds i64, i64* %142, i64 %161
  %163 = load i64, i64* %162, align 8
  %164 = load i64*, i64** %4, align 8
  %165 = getelementptr inbounds i64, i64* %164, i64 1
  store i64 %163, i64* %165, align 8
  %166 = load i64*, i64** @q1, align 8
  %167 = load i64*, i64** @q1, align 8
  %168 = load i64*, i64** @q0, align 8
  %169 = load i64*, i64** %4, align 8
  %170 = getelementptr inbounds i64, i64* %169, i64 2
  %171 = load i64, i64* %170, align 8
  %172 = getelementptr inbounds i64, i64* %168, i64 %171
  %173 = load i64, i64* %172, align 8
  %174 = getelementptr inbounds [4 x i64], [4 x i64]* %7, i64 0, i64 2
  %175 = load i64, i64* %174, align 16
  %176 = xor i64 %173, %175
  %177 = getelementptr inbounds i64, i64* %167, i64 %176
  %178 = load i64, i64* %177, align 8
  %179 = load i32*, i32** %5, align 8
  %180 = getelementptr inbounds i32, i32* %179, i64 0
  %181 = load i32, i32* %180, align 4
  %182 = ashr i32 %181, 16
  %183 = and i32 %182, 255
  %184 = sext i32 %183 to i64
  %185 = xor i64 %178, %184
  %186 = getelementptr inbounds i64, i64* %166, i64 %185
  %187 = load i64, i64* %186, align 8
  %188 = load i64*, i64** %4, align 8
  %189 = getelementptr inbounds i64, i64* %188, i64 2
  store i64 %187, i64* %189, align 8
  %190 = load i64*, i64** @q0, align 8
  %191 = load i64*, i64** @q1, align 8
  %192 = load i64*, i64** @q1, align 8
  %193 = load i64*, i64** %4, align 8
  %194 = getelementptr inbounds i64, i64* %193, i64 3
  %195 = load i64, i64* %194, align 8
  %196 = getelementptr inbounds i64, i64* %192, i64 %195
  %197 = load i64, i64* %196, align 8
  %198 = getelementptr inbounds [4 x i64], [4 x i64]* %7, i64 0, i64 3
  %199 = load i64, i64* %198, align 8
  %200 = xor i64 %197, %199
  %201 = getelementptr inbounds i64, i64* %191, i64 %200
  %202 = load i64, i64* %201, align 8
  %203 = load i32*, i32** %5, align 8
  %204 = getelementptr inbounds i32, i32* %203, i64 0
  %205 = load i32, i32* %204, align 4
  %206 = ashr i32 %205, 24
  %207 = sext i32 %206 to i64
  %208 = xor i64 %202, %207
  %209 = getelementptr inbounds i64, i64* %190, i64 %208
  %210 = load i64, i64* %209, align 8
  %211 = load i64*, i64** %4, align 8
  %212 = getelementptr inbounds i64, i64* %211, i64 3
  store i64 %210, i64* %212, align 8
  ret void
}

declare dso_local i32 @AV_WL32(i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
