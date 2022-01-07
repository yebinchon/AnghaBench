; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dvenc.c_dv_set_class_number_hd.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dvenc.c_dv_set_class_number_hd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i32*, i32*, i32*, i32, i64, i8** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8**, %struct.TYPE_3__*, i64*, i32*, i32)* @dv_set_class_number_hd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dv_set_class_number_hd(i32* %0, i8** %1, %struct.TYPE_3__* %2, i64* %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca %struct.TYPE_3__*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i8** %1, i8*** %8, align 8
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %9, align 8
  store i64* %3, i64** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32 %5, i32* %12, align 4
  store i32 0, i32* %14, align 4
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  store i32 1, i32* %20, align 4
  store i32 0, i32* %13, align 4
  br label %21

21:                                               ; preds = %147, %6
  %22 = load i32, i32* %13, align 4
  %23 = icmp slt i32 %22, 64
  br i1 %23, label %24, label %150

24:                                               ; preds = %21
  %25 = load i8**, i8*** %8, align 8
  %26 = load i64*, i64** %10, align 8
  %27 = load i32, i32* %13, align 4
  %28 = add nsw i32 %27, 0
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i64, i64* %26, i64 %29
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds i8*, i8** %25, i64 %31
  %33 = load i8*, i8** %32, align 8
  %34 = ptrtoint i8* %33 to i32
  store i32 %34, i32* %15, align 4
  %35 = load i8**, i8*** %8, align 8
  %36 = load i64*, i64** %10, align 8
  %37 = load i32, i32* %13, align 4
  %38 = add nsw i32 %37, 1
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i64, i64* %36, i64 %39
  %41 = load i64, i64* %40, align 8
  %42 = getelementptr inbounds i8*, i8** %35, i64 %41
  %43 = load i8*, i8** %42, align 8
  %44 = ptrtoint i8* %43 to i32
  store i32 %44, i32* %16, align 4
  %45 = load i32, i32* %15, align 4
  %46 = ashr i32 %45, 31
  %47 = and i32 %46, 1
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* %13, align 4
  %52 = add nsw i32 %51, 0
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %50, i64 %53
  store i32 %47, i32* %54, align 4
  %55 = load i32, i32* %16, align 4
  %56 = ashr i32 %55, 31
  %57 = and i32 %56, 1
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* %13, align 4
  %62 = add nsw i32 %61, 1
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %60, i64 %63
  store i32 %57, i32* %64, align 4
  %65 = load i32, i32* %15, align 4
  %66 = call i32 @FFABS(i32 %65)
  store i32 %66, i32* %15, align 4
  %67 = load i32, i32* %16, align 4
  %68 = call i32 @FFABS(i32 %67)
  store i32 %68, i32* %16, align 4
  %69 = load i32, i32* %15, align 4
  %70 = load i32*, i32** %11, align 8
  %71 = load i32, i32* %13, align 4
  %72 = add nsw i32 %71, 0
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %70, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = mul nsw i32 %69, %75
  %77 = add nsw i32 %76, 4096
  %78 = add nsw i32 %77, 131072
  %79 = ashr i32 %78, 18
  store i32 %79, i32* %15, align 4
  %80 = load i32, i32* %16, align 4
  %81 = load i32*, i32** %11, align 8
  %82 = load i32, i32* %13, align 4
  %83 = add nsw i32 %82, 1
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %81, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = mul nsw i32 %80, %86
  %88 = add nsw i32 %87, 4096
  %89 = add nsw i32 %88, 131072
  %90 = ashr i32 %89, 18
  store i32 %90, i32* %16, align 4
  %91 = load i32, i32* %15, align 4
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 2
  %94 = load i32*, i32** %93, align 8
  %95 = load i32, i32* %13, align 4
  %96 = add nsw i32 %95, 0
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %94, i64 %97
  store i32 %91, i32* %98, align 4
  %99 = load i32, i32* %16, align 4
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 2
  %102 = load i32*, i32** %101, align 8
  %103 = load i32, i32* %13, align 4
  %104 = add nsw i32 %103, 1
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %102, i64 %105
  store i32 %99, i32* %106, align 4
  %107 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 2
  %109 = load i32*, i32** %108, align 8
  %110 = load i32, i32* %13, align 4
  %111 = add nsw i32 %110, 0
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %109, i64 %112
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* %14, align 4
  %116 = icmp sgt i32 %114, %115
  br i1 %116, label %117, label %126

117:                                              ; preds = %24
  %118 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 2
  %120 = load i32*, i32** %119, align 8
  %121 = load i32, i32* %13, align 4
  %122 = add nsw i32 %121, 0
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %120, i64 %123
  %125 = load i32, i32* %124, align 4
  store i32 %125, i32* %14, align 4
  br label %126

126:                                              ; preds = %117, %24
  %127 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %127, i32 0, i32 2
  %129 = load i32*, i32** %128, align 8
  %130 = load i32, i32* %13, align 4
  %131 = add nsw i32 %130, 1
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %129, i64 %132
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* %14, align 4
  %136 = icmp sgt i32 %134, %135
  br i1 %136, label %137, label %146

137:                                              ; preds = %126
  %138 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %139 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %138, i32 0, i32 2
  %140 = load i32*, i32** %139, align 8
  %141 = load i32, i32* %13, align 4
  %142 = add nsw i32 %141, 1
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %140, i64 %143
  %145 = load i32, i32* %144, align 4
  store i32 %145, i32* %14, align 4
  br label %146

146:                                              ; preds = %137, %126
  br label %147

147:                                              ; preds = %146
  %148 = load i32, i32* %13, align 4
  %149 = add nsw i32 %148, 2
  store i32 %149, i32* %13, align 4
  br label %21

150:                                              ; preds = %21
  %151 = load i8**, i8*** %8, align 8
  %152 = getelementptr inbounds i8*, i8** %151, i64 0
  %153 = load i8*, i8** %152, align 8
  %154 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %155 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %154, i32 0, i32 6
  %156 = load i8**, i8*** %155, align 8
  %157 = getelementptr inbounds i8*, i8** %156, i64 0
  store i8* %153, i8** %157, align 8
  %158 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %159 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %158, i32 0, i32 3
  %160 = load i32*, i32** %159, align 8
  %161 = getelementptr inbounds i32, i32* %160, i64 0
  store i32 4, i32* %161, align 4
  %162 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %163 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %162, i32 0, i32 3
  %164 = load i32*, i32** %163, align 8
  %165 = getelementptr inbounds i32, i32* %164, i64 3
  store i32 0, i32* %165, align 4
  %166 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %167 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %166, i32 0, i32 3
  %168 = load i32*, i32** %167, align 8
  %169 = getelementptr inbounds i32, i32* %168, i64 2
  store i32 0, i32* %169, align 4
  %170 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %171 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %170, i32 0, i32 3
  %172 = load i32*, i32** %171, align 8
  %173 = getelementptr inbounds i32, i32* %172, i64 1
  store i32 0, i32* %173, align 4
  %174 = load i32, i32* %14, align 4
  %175 = add nsw i32 %174, 256
  %176 = ashr i32 %175, 8
  %177 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %178 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %177, i32 0, i32 4
  store i32 %176, i32* %178, align 8
  %179 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %180 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %179, i32 0, i32 0
  %181 = load i32*, i32** %180, align 8
  %182 = getelementptr inbounds i32, i32* %181, i64 0
  store i32 25, i32* %182, align 4
  %183 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %184 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %183, i32 0, i32 5
  store i64 0, i64* %184, align 8
  ret void
}

declare dso_local i32 @FFABS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
