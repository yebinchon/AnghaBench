; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Internat.c_UniToUtf8.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Internat.c_UniToUtf8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @UniToUtf8(i32* %0, i64 %1, i32* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  %15 = load i32*, i32** %5, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %3
  %18 = load i32*, i32** %7, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %17, %3
  store i64 0, i64* %4, align 8
  br label %159

21:                                               ; preds = %17
  %22 = load i64, i64* %6, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  store i64 1073741823, i64* %6, align 8
  br label %25

25:                                               ; preds = %24, %21
  %26 = load i32*, i32** %7, align 8
  %27 = call i64 @UniStrLen(i32* %26)
  store i64 %27, i64* %9, align 8
  store i64 0, i64* %11, align 8
  store i64 0, i64* %8, align 8
  br label %28

28:                                               ; preds = %146, %25
  %29 = load i64, i64* %8, align 8
  %30 = load i64, i64* %9, align 8
  %31 = icmp ult i64 %29, %30
  br i1 %31, label %32, label %149

32:                                               ; preds = %28
  %33 = load i32*, i32** %7, align 8
  %34 = load i64, i64* %8, align 8
  %35 = getelementptr inbounds i32, i32* %33, i64 %34
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %14, align 4
  %37 = call i64 (...) @IsBigEndian()
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %32
  %40 = getelementptr inbounds i32, i32* %14, i64 2
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %12, align 4
  %42 = getelementptr inbounds i32, i32* %14, i64 3
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %13, align 4
  br label %49

44:                                               ; preds = %32
  %45 = getelementptr inbounds i32, i32* %14, i64 1
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %12, align 4
  %47 = getelementptr inbounds i32, i32* %14, i64 0
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %13, align 4
  br label %49

49:                                               ; preds = %44, %39
  %50 = load i32*, i32** %7, align 8
  %51 = load i64, i64* %8, align 8
  %52 = getelementptr inbounds i32, i32* %50, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = call i64 @GetUniType(i32 %53)
  store i64 %54, i64* %10, align 8
  %55 = load i64, i64* %10, align 8
  switch i64 %55, label %145 [
    i64 1, label %56
    i64 2, label %67
    i64 3, label %99
  ]

56:                                               ; preds = %49
  %57 = load i64, i64* %11, align 8
  %58 = load i64, i64* %6, align 8
  %59 = icmp ult i64 %57, %58
  br i1 %59, label %60, label %66

60:                                               ; preds = %56
  %61 = load i32, i32* %13, align 4
  %62 = load i32*, i32** %5, align 8
  %63 = load i64, i64* %11, align 8
  %64 = add i64 %63, 1
  store i64 %64, i64* %11, align 8
  %65 = getelementptr inbounds i32, i32* %62, i64 %63
  store i32 %61, i32* %65, align 4
  br label %66

66:                                               ; preds = %60, %56
  br label %145

67:                                               ; preds = %49
  %68 = load i64, i64* %11, align 8
  %69 = load i64, i64* %6, align 8
  %70 = icmp ult i64 %68, %69
  br i1 %70, label %71, label %86

71:                                               ; preds = %67
  %72 = load i32, i32* %12, align 4
  %73 = and i32 %72, 7
  %74 = shl i32 %73, 2
  %75 = and i32 %74, 28
  %76 = load i32, i32* %13, align 4
  %77 = and i32 %76, 192
  %78 = ashr i32 %77, 6
  %79 = and i32 %78, 3
  %80 = or i32 %75, %79
  %81 = or i32 192, %80
  %82 = load i32*, i32** %5, align 8
  %83 = load i64, i64* %11, align 8
  %84 = add i64 %83, 1
  store i64 %84, i64* %11, align 8
  %85 = getelementptr inbounds i32, i32* %82, i64 %83
  store i32 %81, i32* %85, align 4
  br label %86

86:                                               ; preds = %71, %67
  %87 = load i64, i64* %11, align 8
  %88 = load i64, i64* %6, align 8
  %89 = icmp ult i64 %87, %88
  br i1 %89, label %90, label %98

90:                                               ; preds = %86
  %91 = load i32, i32* %13, align 4
  %92 = and i32 %91, 63
  %93 = or i32 128, %92
  %94 = load i32*, i32** %5, align 8
  %95 = load i64, i64* %11, align 8
  %96 = add i64 %95, 1
  store i64 %96, i64* %11, align 8
  %97 = getelementptr inbounds i32, i32* %94, i64 %95
  store i32 %93, i32* %97, align 4
  br label %98

98:                                               ; preds = %90, %86
  br label %145

99:                                               ; preds = %49
  %100 = load i64, i64* %11, align 8
  %101 = load i64, i64* %6, align 8
  %102 = icmp ult i64 %100, %101
  br i1 %102, label %103, label %113

103:                                              ; preds = %99
  %104 = load i32, i32* %12, align 4
  %105 = and i32 %104, 240
  %106 = ashr i32 %105, 4
  %107 = and i32 %106, 15
  %108 = or i32 224, %107
  %109 = load i32*, i32** %5, align 8
  %110 = load i64, i64* %11, align 8
  %111 = add i64 %110, 1
  store i64 %111, i64* %11, align 8
  %112 = getelementptr inbounds i32, i32* %109, i64 %110
  store i32 %108, i32* %112, align 4
  br label %113

113:                                              ; preds = %103, %99
  %114 = load i64, i64* %11, align 8
  %115 = load i64, i64* %6, align 8
  %116 = icmp ult i64 %114, %115
  br i1 %116, label %117, label %132

117:                                              ; preds = %113
  %118 = load i32, i32* %12, align 4
  %119 = and i32 %118, 15
  %120 = shl i32 %119, 2
  %121 = and i32 %120, 60
  %122 = or i32 128, %121
  %123 = load i32, i32* %13, align 4
  %124 = and i32 %123, 192
  %125 = ashr i32 %124, 6
  %126 = and i32 %125, 3
  %127 = or i32 %122, %126
  %128 = load i32*, i32** %5, align 8
  %129 = load i64, i64* %11, align 8
  %130 = add i64 %129, 1
  store i64 %130, i64* %11, align 8
  %131 = getelementptr inbounds i32, i32* %128, i64 %129
  store i32 %127, i32* %131, align 4
  br label %132

132:                                              ; preds = %117, %113
  %133 = load i64, i64* %11, align 8
  %134 = load i64, i64* %6, align 8
  %135 = icmp ult i64 %133, %134
  br i1 %135, label %136, label %144

136:                                              ; preds = %132
  %137 = load i32, i32* %13, align 4
  %138 = and i32 %137, 63
  %139 = or i32 128, %138
  %140 = load i32*, i32** %5, align 8
  %141 = load i64, i64* %11, align 8
  %142 = add i64 %141, 1
  store i64 %142, i64* %11, align 8
  %143 = getelementptr inbounds i32, i32* %140, i64 %141
  store i32 %139, i32* %143, align 4
  br label %144

144:                                              ; preds = %136, %132
  br label %145

145:                                              ; preds = %49, %144, %98, %66
  br label %146

146:                                              ; preds = %145
  %147 = load i64, i64* %8, align 8
  %148 = add i64 %147, 1
  store i64 %148, i64* %8, align 8
  br label %28

149:                                              ; preds = %28
  %150 = load i64, i64* %11, align 8
  %151 = load i64, i64* %6, align 8
  %152 = icmp ult i64 %150, %151
  br i1 %152, label %153, label %157

153:                                              ; preds = %149
  %154 = load i32*, i32** %5, align 8
  %155 = load i64, i64* %11, align 8
  %156 = getelementptr inbounds i32, i32* %154, i64 %155
  store i32 0, i32* %156, align 4
  br label %157

157:                                              ; preds = %153, %149
  %158 = load i64, i64* %11, align 8
  store i64 %158, i64* %4, align 8
  br label %159

159:                                              ; preds = %157, %20
  %160 = load i64, i64* %4, align 8
  ret i64 %160
}

declare dso_local i64 @UniStrLen(i32*) #1

declare dso_local i64 @IsBigEndian(...) #1

declare dso_local i64 @GetUniType(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
