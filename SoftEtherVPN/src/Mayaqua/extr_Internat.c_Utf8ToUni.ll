; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Internat.c_Utf8ToUni.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Internat.c_Utf8ToUni.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @Utf8ToUni(i64* %0, i64 %1, i32* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i64* %0, i64** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  %17 = load i64*, i64** %6, align 8
  %18 = icmp eq i64* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %4
  %20 = load i32*, i32** %8, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %19, %4
  store i64 0, i64* %5, align 8
  br label %152

23:                                               ; preds = %19
  %24 = load i64, i64* %7, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  store i64 1073741823, i64* %7, align 8
  br label %27

27:                                               ; preds = %26, %23
  %28 = load i64, i64* %9, align 8
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %27
  %31 = load i32*, i32** %8, align 8
  %32 = bitcast i32* %31 to i8*
  %33 = call i64 @StrLen(i8* %32)
  store i64 %33, i64* %9, align 8
  br label %34

34:                                               ; preds = %30, %27
  store i64 0, i64* %10, align 8
  store i64 0, i64* %11, align 8
  store i64 0, i64* %12, align 8
  br label %35

35:                                               ; preds = %34, %139
  store i64 0, i64* %14, align 8
  %36 = load i32*, i32** %8, align 8
  %37 = load i64, i64* %9, align 8
  %38 = load i64, i64* %10, align 8
  %39 = call i64 @GetUtf8Type(i32* %36, i64 %37, i64 %38)
  store i64 %39, i64* %13, align 8
  %40 = load i64, i64* %13, align 8
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %35
  br label %140

43:                                               ; preds = %35
  %44 = load i64, i64* %13, align 8
  switch i64 %44, label %104 [
    i64 1, label %45
    i64 2, label %50
    i64 3, label %72
  ]

45:                                               ; preds = %43
  store i32 0, i32* %15, align 4
  %46 = load i32*, i32** %8, align 8
  %47 = load i64, i64* %10, align 8
  %48 = getelementptr inbounds i32, i32* %46, i64 %47
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %16, align 4
  br label %104

50:                                               ; preds = %43
  %51 = load i32*, i32** %8, align 8
  %52 = load i64, i64* %10, align 8
  %53 = getelementptr inbounds i32, i32* %51, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = and i32 %54, 28
  %56 = ashr i32 %55, 2
  %57 = and i32 %56, 7
  store i32 %57, i32* %15, align 4
  %58 = load i32*, i32** %8, align 8
  %59 = load i64, i64* %10, align 8
  %60 = getelementptr inbounds i32, i32* %58, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = and i32 %61, 3
  %63 = shl i32 %62, 6
  %64 = and i32 %63, 192
  %65 = load i32*, i32** %8, align 8
  %66 = load i64, i64* %10, align 8
  %67 = add nsw i64 %66, 1
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = and i32 %69, 63
  %71 = or i32 %64, %70
  store i32 %71, i32* %16, align 4
  br label %104

72:                                               ; preds = %43
  %73 = load i32*, i32** %8, align 8
  %74 = load i64, i64* %10, align 8
  %75 = getelementptr inbounds i32, i32* %73, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = and i32 %76, 15
  %78 = shl i32 %77, 4
  %79 = and i32 %78, 240
  %80 = load i32*, i32** %8, align 8
  %81 = load i64, i64* %10, align 8
  %82 = add nsw i64 %81, 1
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = and i32 %84, 60
  %86 = ashr i32 %85, 2
  %87 = and i32 %86, 15
  %88 = or i32 %79, %87
  store i32 %88, i32* %15, align 4
  %89 = load i32*, i32** %8, align 8
  %90 = load i64, i64* %10, align 8
  %91 = add nsw i64 %90, 1
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = and i32 %93, 3
  %95 = shl i32 %94, 6
  %96 = and i32 %95, 192
  %97 = load i32*, i32** %8, align 8
  %98 = load i64, i64* %10, align 8
  %99 = add nsw i64 %98, 2
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = and i32 %101, 63
  %103 = or i32 %96, %102
  store i32 %103, i32* %16, align 4
  br label %104

104:                                              ; preds = %43, %72, %50, %45
  %105 = load i64, i64* %13, align 8
  %106 = load i64, i64* %10, align 8
  %107 = add nsw i64 %106, %105
  store i64 %107, i64* %10, align 8
  %108 = call i64 (...) @IsBigEndian()
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %117

110:                                              ; preds = %104
  %111 = load i32, i32* %15, align 4
  %112 = bitcast i64* %14 to i32*
  %113 = getelementptr inbounds i32, i32* %112, i64 2
  store i32 %111, i32* %113, align 8
  %114 = load i32, i32* %16, align 4
  %115 = bitcast i64* %14 to i32*
  %116 = getelementptr inbounds i32, i32* %115, i64 3
  store i32 %114, i32* %116, align 4
  br label %124

117:                                              ; preds = %104
  %118 = load i32, i32* %16, align 4
  %119 = bitcast i64* %14 to i32*
  %120 = getelementptr inbounds i32, i32* %119, i64 0
  store i32 %118, i32* %120, align 8
  %121 = load i32, i32* %15, align 4
  %122 = bitcast i64* %14 to i32*
  %123 = getelementptr inbounds i32, i32* %122, i64 1
  store i32 %121, i32* %123, align 4
  br label %124

124:                                              ; preds = %117, %110
  %125 = load i64, i64* %11, align 8
  %126 = load i64, i64* %7, align 8
  %127 = udiv i64 %126, 8
  %128 = sub i64 %127, 1
  %129 = icmp ult i64 %125, %128
  br i1 %129, label %130, label %138

130:                                              ; preds = %124
  %131 = load i64, i64* %14, align 8
  %132 = load i64*, i64** %6, align 8
  %133 = load i64, i64* %11, align 8
  %134 = add nsw i64 %133, 1
  store i64 %134, i64* %11, align 8
  %135 = getelementptr inbounds i64, i64* %132, i64 %133
  store i64 %131, i64* %135, align 8
  %136 = load i64, i64* %12, align 8
  %137 = add nsw i64 %136, 1
  store i64 %137, i64* %12, align 8
  br label %139

138:                                              ; preds = %124
  br label %140

139:                                              ; preds = %130
  br label %35

140:                                              ; preds = %138, %42
  %141 = load i64, i64* %11, align 8
  %142 = load i64, i64* %7, align 8
  %143 = udiv i64 %142, 8
  %144 = icmp ult i64 %141, %143
  br i1 %144, label %145, label %150

145:                                              ; preds = %140
  %146 = load i64*, i64** %6, align 8
  %147 = load i64, i64* %11, align 8
  %148 = add nsw i64 %147, 1
  store i64 %148, i64* %11, align 8
  %149 = getelementptr inbounds i64, i64* %146, i64 %147
  store i64 0, i64* %149, align 8
  br label %150

150:                                              ; preds = %145, %140
  %151 = load i64, i64* %12, align 8
  store i64 %151, i64* %5, align 8
  br label %152

152:                                              ; preds = %150, %22
  %153 = load i64, i64* %5, align 8
  ret i64 %153
}

declare dso_local i64 @StrLen(i8*) #1

declare dso_local i64 @GetUtf8Type(i32*, i64, i64) #1

declare dso_local i64 @IsBigEndian(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
