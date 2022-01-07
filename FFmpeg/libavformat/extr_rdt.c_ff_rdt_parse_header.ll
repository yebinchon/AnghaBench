; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_rdt.c_ff_rdt_parse_header.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_rdt.c_ff_rdt_parse_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_rdt_parse_header(i32* %0, i32 %1, i32* %2, i32* %3, i32* %4, i32* %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32* %2, i32** %11, align 8
  store i32* %3, i32** %12, align 8
  store i32* %4, i32** %13, align 8
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  store i32 0, i32* %17, align 4
  br label %26

26:                                               ; preds = %43, %7
  %27 = load i32, i32* %10, align 4
  %28 = icmp sge i32 %27, 5
  br i1 %28, label %29, label %34

29:                                               ; preds = %26
  %30 = load i32*, i32** %9, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 1
  %32 = load i32, i32* %31, align 4
  %33 = icmp eq i32 %32, 255
  br label %34

34:                                               ; preds = %29, %26
  %35 = phi i1 [ false, %26 ], [ %33, %29 ]
  br i1 %35, label %36, label %57

36:                                               ; preds = %34
  %37 = load i32*, i32** %9, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  %39 = load i32, i32* %38, align 4
  %40 = and i32 %39, 128
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %36
  store i32 -1, i32* %8, align 4
  br label %132

43:                                               ; preds = %36
  %44 = load i32*, i32** %9, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 3
  %46 = call i32 @AV_RB16(i32* %45)
  store i32 %46, i32* %25, align 4
  %47 = load i32, i32* %25, align 4
  %48 = load i32*, i32** %9, align 8
  %49 = sext i32 %47 to i64
  %50 = getelementptr inbounds i32, i32* %48, i64 %49
  store i32* %50, i32** %9, align 8
  %51 = load i32, i32* %25, align 4
  %52 = load i32, i32* %10, align 4
  %53 = sub nsw i32 %52, %51
  store i32 %53, i32* %10, align 4
  %54 = load i32, i32* %25, align 4
  %55 = load i32, i32* %17, align 4
  %56 = add nsw i32 %55, %54
  store i32 %56, i32* %17, align 4
  br label %26

57:                                               ; preds = %34
  %58 = load i32, i32* %10, align 4
  %59 = icmp slt i32 %58, 16
  br i1 %59, label %60, label %61

60:                                               ; preds = %57
  store i32 -1, i32* %8, align 4
  br label %132

61:                                               ; preds = %57
  %62 = load i32*, i32** %9, align 8
  %63 = load i32, i32* %10, align 4
  %64 = shl i32 %63, 3
  %65 = call i32 @init_get_bits(i32* %16, i32* %62, i32 %64)
  %66 = call i32 @get_bits1(i32* %16)
  store i32 %66, i32* %22, align 4
  %67 = call i32 @get_bits1(i32* %16)
  store i32 %67, i32* %23, align 4
  %68 = call i32 @get_bits(i32* %16, i32 5)
  store i32 %68, i32* %18, align 4
  %69 = call i32 @skip_bits(i32* %16, i32 1)
  %70 = call i32 @get_bits(i32* %16, i32 16)
  store i32 %70, i32* %19, align 4
  %71 = load i32, i32* %22, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %61
  %74 = call i32 @skip_bits(i32* %16, i32 16)
  br label %75

75:                                               ; preds = %73, %61
  %76 = call i32 @skip_bits(i32* %16, i32 2)
  %77 = call i32 @get_bits(i32* %16, i32 5)
  store i32 %77, i32* %20, align 4
  %78 = call i32 @get_bits1(i32* %16)
  %79 = icmp ne i32 %78, 0
  %80 = xor i1 %79, true
  %81 = zext i1 %80 to i32
  store i32 %81, i32* %21, align 4
  %82 = call i32 @get_bits_long(i32* %16, i32 32)
  store i32 %82, i32* %24, align 4
  %83 = load i32, i32* %18, align 4
  %84 = icmp eq i32 %83, 31
  br i1 %84, label %85, label %87

85:                                               ; preds = %75
  %86 = call i32 @get_bits(i32* %16, i32 16)
  store i32 %86, i32* %18, align 4
  br label %87

87:                                               ; preds = %85, %75
  %88 = load i32, i32* %23, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %87
  %91 = call i32 @skip_bits(i32* %16, i32 16)
  br label %92

92:                                               ; preds = %90, %87
  %93 = load i32, i32* %20, align 4
  %94 = icmp eq i32 %93, 31
  br i1 %94, label %95, label %97

95:                                               ; preds = %92
  %96 = call i32 @get_bits(i32* %16, i32 16)
  store i32 %96, i32* %20, align 4
  br label %97

97:                                               ; preds = %95, %92
  %98 = load i32*, i32** %11, align 8
  %99 = icmp ne i32* %98, null
  br i1 %99, label %100, label %103

100:                                              ; preds = %97
  %101 = load i32, i32* %18, align 4
  %102 = load i32*, i32** %11, align 8
  store i32 %101, i32* %102, align 4
  br label %103

103:                                              ; preds = %100, %97
  %104 = load i32*, i32** %12, align 8
  %105 = icmp ne i32* %104, null
  br i1 %105, label %106, label %109

106:                                              ; preds = %103
  %107 = load i32, i32* %19, align 4
  %108 = load i32*, i32** %12, align 8
  store i32 %107, i32* %108, align 4
  br label %109

109:                                              ; preds = %106, %103
  %110 = load i32*, i32** %13, align 8
  %111 = icmp ne i32* %110, null
  br i1 %111, label %112, label %115

112:                                              ; preds = %109
  %113 = load i32, i32* %20, align 4
  %114 = load i32*, i32** %13, align 8
  store i32 %113, i32* %114, align 4
  br label %115

115:                                              ; preds = %112, %109
  %116 = load i32*, i32** %14, align 8
  %117 = icmp ne i32* %116, null
  br i1 %117, label %118, label %121

118:                                              ; preds = %115
  %119 = load i32, i32* %21, align 4
  %120 = load i32*, i32** %14, align 8
  store i32 %119, i32* %120, align 4
  br label %121

121:                                              ; preds = %118, %115
  %122 = load i32*, i32** %15, align 8
  %123 = icmp ne i32* %122, null
  br i1 %123, label %124, label %127

124:                                              ; preds = %121
  %125 = load i32, i32* %24, align 4
  %126 = load i32*, i32** %15, align 8
  store i32 %125, i32* %126, align 4
  br label %127

127:                                              ; preds = %124, %121
  %128 = load i32, i32* %17, align 4
  %129 = call i32 @get_bits_count(i32* %16)
  %130 = ashr i32 %129, 3
  %131 = add nsw i32 %128, %130
  store i32 %131, i32* %8, align 4
  br label %132

132:                                              ; preds = %127, %60, %42
  %133 = load i32, i32* %8, align 4
  ret i32 %133
}

declare dso_local i32 @AV_RB16(i32*) #1

declare dso_local i32 @init_get_bits(i32*, i32*, i32) #1

declare dso_local i32 @get_bits1(i32*) #1

declare dso_local i32 @get_bits(i32*, i32) #1

declare dso_local i32 @skip_bits(i32*, i32) #1

declare dso_local i32 @get_bits_long(i32*, i32) #1

declare dso_local i32 @get_bits_count(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
