; ModuleID = '/home/carl/AnghaBench/TDengine/src/util/src/extr_tbase64.c_base64_encode.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/util/src/extr_tbase64.c_base64_encode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@basis_64 = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @base64_encode(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  store i8 0, i8* %5, align 1
  %8 = load i32, i32* %4, align 4
  %9 = mul nsw i32 %8, 4
  %10 = sext i32 %9 to i64
  %11 = udiv i64 %10, 3
  %12 = add i64 %11, 10
  %13 = call i64 @malloc(i64 %12)
  %14 = inttoptr i64 %13 to i8*
  store i8* %14, i8** %6, align 8
  %15 = load i8*, i8** %6, align 8
  store i8* %15, i8** %7, align 8
  br label %16

16:                                               ; preds = %19, %2
  %17 = load i32, i32* %4, align 4
  %18 = icmp sge i32 %17, 3
  br i1 %18, label %19, label %82

19:                                               ; preds = %16
  %20 = load i8*, i8** @basis_64, align 8
  %21 = load i8*, i8** %3, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 0
  %23 = load i8, i8* %22, align 1
  %24 = zext i8 %23 to i32
  %25 = ashr i32 %24, 2
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8, i8* %20, i64 %26
  %28 = load i8, i8* %27, align 1
  %29 = load i8*, i8** %7, align 8
  %30 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %30, i8** %7, align 8
  store i8 %28, i8* %29, align 1
  %31 = load i8*, i8** @basis_64, align 8
  %32 = load i8*, i8** %3, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 0
  %34 = load i8, i8* %33, align 1
  %35 = zext i8 %34 to i32
  %36 = shl i32 %35, 4
  %37 = and i32 %36, 48
  %38 = load i8*, i8** %3, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 1
  %40 = load i8, i8* %39, align 1
  %41 = zext i8 %40 to i32
  %42 = ashr i32 %41, 4
  %43 = or i32 %37, %42
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8, i8* %31, i64 %44
  %46 = load i8, i8* %45, align 1
  %47 = load i8*, i8** %7, align 8
  %48 = getelementptr inbounds i8, i8* %47, i32 1
  store i8* %48, i8** %7, align 8
  store i8 %46, i8* %47, align 1
  %49 = load i8*, i8** @basis_64, align 8
  %50 = load i8*, i8** %3, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 1
  %52 = load i8, i8* %51, align 1
  %53 = zext i8 %52 to i32
  %54 = shl i32 %53, 2
  %55 = and i32 %54, 60
  %56 = load i8*, i8** %3, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 2
  %58 = load i8, i8* %57, align 1
  %59 = zext i8 %58 to i32
  %60 = ashr i32 %59, 6
  %61 = or i32 %55, %60
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8, i8* %49, i64 %62
  %64 = load i8, i8* %63, align 1
  %65 = load i8*, i8** %7, align 8
  %66 = getelementptr inbounds i8, i8* %65, i32 1
  store i8* %66, i8** %7, align 8
  store i8 %64, i8* %65, align 1
  %67 = load i8*, i8** @basis_64, align 8
  %68 = load i8*, i8** %3, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 2
  %70 = load i8, i8* %69, align 1
  %71 = zext i8 %70 to i32
  %72 = and i32 %71, 63
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i8, i8* %67, i64 %73
  %75 = load i8, i8* %74, align 1
  %76 = load i8*, i8** %7, align 8
  %77 = getelementptr inbounds i8, i8* %76, i32 1
  store i8* %77, i8** %7, align 8
  store i8 %75, i8* %76, align 1
  %78 = load i8*, i8** %3, align 8
  %79 = getelementptr inbounds i8, i8* %78, i64 3
  store i8* %79, i8** %3, align 8
  %80 = load i32, i32* %4, align 4
  %81 = sub nsw i32 %80, 3
  store i32 %81, i32* %4, align 4
  br label %16

82:                                               ; preds = %16
  %83 = load i32, i32* %4, align 4
  %84 = icmp sgt i32 %83, 0
  br i1 %84, label %85, label %146

85:                                               ; preds = %82
  %86 = load i8*, i8** @basis_64, align 8
  %87 = load i8*, i8** %3, align 8
  %88 = getelementptr inbounds i8, i8* %87, i64 0
  %89 = load i8, i8* %88, align 1
  %90 = zext i8 %89 to i32
  %91 = ashr i32 %90, 2
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i8, i8* %86, i64 %92
  %94 = load i8, i8* %93, align 1
  %95 = load i8*, i8** %7, align 8
  %96 = getelementptr inbounds i8, i8* %95, i32 1
  store i8* %96, i8** %7, align 8
  store i8 %94, i8* %95, align 1
  %97 = load i8*, i8** %3, align 8
  %98 = getelementptr inbounds i8, i8* %97, i64 0
  %99 = load i8, i8* %98, align 1
  %100 = zext i8 %99 to i32
  %101 = shl i32 %100, 4
  %102 = and i32 %101, 48
  %103 = trunc i32 %102 to i8
  store i8 %103, i8* %5, align 1
  %104 = load i32, i32* %4, align 4
  %105 = icmp sgt i32 %104, 1
  br i1 %105, label %106, label %116

106:                                              ; preds = %85
  %107 = load i8*, i8** %3, align 8
  %108 = getelementptr inbounds i8, i8* %107, i64 1
  %109 = load i8, i8* %108, align 1
  %110 = zext i8 %109 to i32
  %111 = ashr i32 %110, 4
  %112 = load i8, i8* %5, align 1
  %113 = zext i8 %112 to i32
  %114 = or i32 %113, %111
  %115 = trunc i32 %114 to i8
  store i8 %115, i8* %5, align 1
  br label %116

116:                                              ; preds = %106, %85
  %117 = load i8*, i8** @basis_64, align 8
  %118 = load i8, i8* %5, align 1
  %119 = zext i8 %118 to i64
  %120 = getelementptr inbounds i8, i8* %117, i64 %119
  %121 = load i8, i8* %120, align 1
  %122 = load i8*, i8** %7, align 8
  %123 = getelementptr inbounds i8, i8* %122, i32 1
  store i8* %123, i8** %7, align 8
  store i8 %121, i8* %122, align 1
  %124 = load i32, i32* %4, align 4
  %125 = icmp slt i32 %124, 2
  br i1 %125, label %126, label %127

126:                                              ; preds = %116
  br label %139

127:                                              ; preds = %116
  %128 = load i8*, i8** @basis_64, align 8
  %129 = load i8*, i8** %3, align 8
  %130 = getelementptr inbounds i8, i8* %129, i64 1
  %131 = load i8, i8* %130, align 1
  %132 = zext i8 %131 to i32
  %133 = shl i32 %132, 2
  %134 = and i32 %133, 60
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i8, i8* %128, i64 %135
  %137 = load i8, i8* %136, align 1
  %138 = sext i8 %137 to i32
  br label %139

139:                                              ; preds = %127, %126
  %140 = phi i32 [ 61, %126 ], [ %138, %127 ]
  %141 = trunc i32 %140 to i8
  %142 = load i8*, i8** %7, align 8
  %143 = getelementptr inbounds i8, i8* %142, i32 1
  store i8* %143, i8** %7, align 8
  store i8 %141, i8* %142, align 1
  %144 = load i8*, i8** %7, align 8
  %145 = getelementptr inbounds i8, i8* %144, i32 1
  store i8* %145, i8** %7, align 8
  store i8 61, i8* %144, align 1
  br label %146

146:                                              ; preds = %139, %82
  %147 = load i8*, i8** %7, align 8
  store i8 0, i8* %147, align 1
  %148 = load i8*, i8** %6, align 8
  ret i8* %148
}

declare dso_local i64 @malloc(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
