; ModuleID = '/home/carl/AnghaBench/borg/src/borg/algorithms/extr_crc32_slice_by_8.c_crc32_slice_by_8.c'
source_filename = "/home/carl/AnghaBench/borg/src/borg/algorithms/extr_crc32_slice_by_8.c_crc32_slice_by_8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Crc32Lookup = common dso_local global i32** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @crc32_slice_by_8(i8* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = xor i32 %16, -1
  store i32 %17, i32* %7, align 4
  %18 = load i8*, i8** %4, align 8
  %19 = bitcast i8* %18 to i32*
  store i32* %19, i32** %9, align 8
  store i64 4, i64* %10, align 8
  store i64 32, i64* %11, align 8
  %20 = load i32*, i32** %9, align 8
  %21 = ptrtoint i32* %20 to i64
  %22 = and i64 %21, 3
  %23 = sub i64 4, %22
  %24 = and i64 %23, 3
  store i64 %24, i64* %12, align 8
  br label %25

25:                                               ; preds = %33, %3
  %26 = load i64, i64* %5, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %25
  %29 = load i64, i64* %12, align 8
  %30 = icmp ne i64 %29, 0
  br label %31

31:                                               ; preds = %28, %25
  %32 = phi i1 [ false, %25 ], [ %30, %28 ]
  br i1 %32, label %33, label %53

33:                                               ; preds = %31
  %34 = load i32, i32* %7, align 4
  %35 = ashr i32 %34, 8
  %36 = load i32**, i32*** @Crc32Lookup, align 8
  %37 = getelementptr inbounds i32*, i32** %36, i64 0
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* %7, align 4
  %40 = and i32 %39, 255
  %41 = load i32*, i32** %9, align 8
  %42 = getelementptr inbounds i32, i32* %41, i32 1
  store i32* %42, i32** %9, align 8
  %43 = load i32, i32* %41, align 4
  %44 = xor i32 %40, %43
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %38, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = xor i32 %35, %47
  store i32 %48, i32* %7, align 4
  %49 = load i64, i64* %5, align 8
  %50 = add i64 %49, -1
  store i64 %50, i64* %5, align 8
  %51 = load i64, i64* %12, align 8
  %52 = add i64 %51, -1
  store i64 %52, i64* %12, align 8
  br label %25

53:                                               ; preds = %31
  %54 = load i32*, i32** %9, align 8
  store i32* %54, i32** %8, align 8
  br label %55

55:                                               ; preds = %151, %53
  %56 = load i64, i64* %5, align 8
  %57 = icmp uge i64 %56, 32
  br i1 %57, label %58, label %154

58:                                               ; preds = %55
  store i64 0, i64* %13, align 8
  br label %59

59:                                               ; preds = %148, %58
  %60 = load i64, i64* %13, align 8
  %61 = icmp ult i64 %60, 4
  br i1 %61, label %62, label %151

62:                                               ; preds = %59
  %63 = load i32*, i32** %8, align 8
  %64 = getelementptr inbounds i32, i32* %63, i32 1
  store i32* %64, i32** %8, align 8
  %65 = load i32, i32* %63, align 4
  %66 = load i32, i32* %7, align 4
  %67 = xor i32 %65, %66
  store i32 %67, i32* %14, align 4
  %68 = load i32*, i32** %8, align 8
  %69 = getelementptr inbounds i32, i32* %68, i32 1
  store i32* %69, i32** %8, align 8
  %70 = load i32, i32* %68, align 4
  store i32 %70, i32* %15, align 4
  %71 = load i32**, i32*** @Crc32Lookup, align 8
  %72 = getelementptr inbounds i32*, i32** %71, i64 0
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* %15, align 4
  %75 = ashr i32 %74, 24
  %76 = and i32 %75, 255
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %73, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = load i32**, i32*** @Crc32Lookup, align 8
  %81 = getelementptr inbounds i32*, i32** %80, i64 1
  %82 = load i32*, i32** %81, align 8
  %83 = load i32, i32* %15, align 4
  %84 = ashr i32 %83, 16
  %85 = and i32 %84, 255
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %82, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = xor i32 %79, %88
  %90 = load i32**, i32*** @Crc32Lookup, align 8
  %91 = getelementptr inbounds i32*, i32** %90, i64 2
  %92 = load i32*, i32** %91, align 8
  %93 = load i32, i32* %15, align 4
  %94 = ashr i32 %93, 8
  %95 = and i32 %94, 255
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %92, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = xor i32 %89, %98
  %100 = load i32**, i32*** @Crc32Lookup, align 8
  %101 = getelementptr inbounds i32*, i32** %100, i64 3
  %102 = load i32*, i32** %101, align 8
  %103 = load i32, i32* %15, align 4
  %104 = and i32 %103, 255
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %102, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = xor i32 %99, %107
  %109 = load i32**, i32*** @Crc32Lookup, align 8
  %110 = getelementptr inbounds i32*, i32** %109, i64 4
  %111 = load i32*, i32** %110, align 8
  %112 = load i32, i32* %14, align 4
  %113 = ashr i32 %112, 24
  %114 = and i32 %113, 255
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %111, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = xor i32 %108, %117
  %119 = load i32**, i32*** @Crc32Lookup, align 8
  %120 = getelementptr inbounds i32*, i32** %119, i64 5
  %121 = load i32*, i32** %120, align 8
  %122 = load i32, i32* %14, align 4
  %123 = ashr i32 %122, 16
  %124 = and i32 %123, 255
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32, i32* %121, i64 %125
  %127 = load i32, i32* %126, align 4
  %128 = xor i32 %118, %127
  %129 = load i32**, i32*** @Crc32Lookup, align 8
  %130 = getelementptr inbounds i32*, i32** %129, i64 6
  %131 = load i32*, i32** %130, align 8
  %132 = load i32, i32* %14, align 4
  %133 = ashr i32 %132, 8
  %134 = and i32 %133, 255
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32, i32* %131, i64 %135
  %137 = load i32, i32* %136, align 4
  %138 = xor i32 %128, %137
  %139 = load i32**, i32*** @Crc32Lookup, align 8
  %140 = getelementptr inbounds i32*, i32** %139, i64 7
  %141 = load i32*, i32** %140, align 8
  %142 = load i32, i32* %14, align 4
  %143 = and i32 %142, 255
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i32, i32* %141, i64 %144
  %146 = load i32, i32* %145, align 4
  %147 = xor i32 %138, %146
  store i32 %147, i32* %7, align 4
  br label %148

148:                                              ; preds = %62
  %149 = load i64, i64* %13, align 8
  %150 = add i64 %149, 1
  store i64 %150, i64* %13, align 8
  br label %59

151:                                              ; preds = %59
  %152 = load i64, i64* %5, align 8
  %153 = sub i64 %152, 32
  store i64 %153, i64* %5, align 8
  br label %55

154:                                              ; preds = %55
  %155 = load i32*, i32** %8, align 8
  store i32* %155, i32** %9, align 8
  br label %156

156:                                              ; preds = %160, %154
  %157 = load i64, i64* %5, align 8
  %158 = add i64 %157, -1
  store i64 %158, i64* %5, align 8
  %159 = icmp ne i64 %157, 0
  br i1 %159, label %160, label %176

160:                                              ; preds = %156
  %161 = load i32, i32* %7, align 4
  %162 = ashr i32 %161, 8
  %163 = load i32**, i32*** @Crc32Lookup, align 8
  %164 = getelementptr inbounds i32*, i32** %163, i64 0
  %165 = load i32*, i32** %164, align 8
  %166 = load i32, i32* %7, align 4
  %167 = and i32 %166, 255
  %168 = load i32*, i32** %9, align 8
  %169 = getelementptr inbounds i32, i32* %168, i32 1
  store i32* %169, i32** %9, align 8
  %170 = load i32, i32* %168, align 4
  %171 = xor i32 %167, %170
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i32, i32* %165, i64 %172
  %174 = load i32, i32* %173, align 4
  %175 = xor i32 %162, %174
  store i32 %175, i32* %7, align 4
  br label %156

176:                                              ; preds = %156
  %177 = load i32, i32* %7, align 4
  %178 = xor i32 %177, -1
  ret i32 %178
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
