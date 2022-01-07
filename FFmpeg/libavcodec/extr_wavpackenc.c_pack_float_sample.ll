; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_wavpackenc.c_pack_float_sample.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_wavpackenc.c_pack_float_sample.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }

@FLOAT_ZEROS_SENT = common dso_local global i32 0, align 4
@FLOAT_NEG_ZEROS = common dso_local global i32 0, align 4
@FLOAT_SHIFT_SENT = common dso_local global i32 0, align 4
@FLOAT_SHIFT_SAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32*)* @pack_float_sample to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pack_float_sample(%struct.TYPE_3__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32* %1, i32** %4, align 8
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %5, align 4
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 2
  store i32* %13, i32** %6, align 8
  %14 = load i32*, i32** %4, align 8
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @get_exponent(i32 %15)
  %17 = icmp eq i32 %16, 255
  br i1 %17, label %18, label %35

18:                                               ; preds = %2
  %19 = load i32*, i32** %4, align 8
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @get_mantissa(i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %18
  %24 = load i32*, i32** %6, align 8
  %25 = call i32 @put_bits(i32* %24, i32 1, i32 1)
  %26 = load i32*, i32** %6, align 8
  %27 = load i32*, i32** %4, align 8
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @get_mantissa(i32 %28)
  %30 = call i32 @put_bits(i32* %26, i32 23, i32 %29)
  br label %34

31:                                               ; preds = %18
  %32 = load i32*, i32** %6, align 8
  %33 = call i32 @put_bits(i32* %32, i32 1, i32 0)
  br label %34

34:                                               ; preds = %31, %23
  store i32 16777216, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %63

35:                                               ; preds = %2
  %36 = load i32*, i32** %4, align 8
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @get_exponent(i32 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %50

40:                                               ; preds = %35
  %41 = load i32, i32* %5, align 4
  %42 = load i32*, i32** %4, align 8
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @get_exponent(i32 %43)
  %45 = sub nsw i32 %41, %44
  store i32 %45, i32* %8, align 4
  %46 = load i32*, i32** %4, align 8
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @get_mantissa(i32 %47)
  %49 = add nsw i32 8388608, %48
  store i32 %49, i32* %7, align 4
  br label %62

50:                                               ; preds = %35
  %51 = load i32, i32* %5, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %50
  %54 = load i32, i32* %5, align 4
  %55 = sub nsw i32 %54, 1
  br label %57

56:                                               ; preds = %50
  br label %57

57:                                               ; preds = %56, %53
  %58 = phi i32 [ %55, %53 ], [ 0, %56 ]
  store i32 %58, i32* %8, align 4
  %59 = load i32*, i32** %4, align 8
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @get_mantissa(i32 %60)
  store i32 %61, i32* %7, align 4
  br label %62

62:                                               ; preds = %57, %40
  br label %63

63:                                               ; preds = %62, %34
  %64 = load i32, i32* %8, align 4
  %65 = icmp slt i32 %64, 25
  br i1 %65, label %66, label %70

66:                                               ; preds = %63
  %67 = load i32, i32* %8, align 4
  %68 = load i32, i32* %7, align 4
  %69 = ashr i32 %68, %67
  store i32 %69, i32* %7, align 4
  br label %71

70:                                               ; preds = %63
  store i32 0, i32* %7, align 4
  br label %71

71:                                               ; preds = %70, %66
  %72 = load i32, i32* %7, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %131, label %74

74:                                               ; preds = %71
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @FLOAT_ZEROS_SENT, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %130

81:                                               ; preds = %74
  %82 = load i32*, i32** %4, align 8
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @get_exponent(i32 %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %91, label %86

86:                                               ; preds = %81
  %87 = load i32*, i32** %4, align 8
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @get_mantissa(i32 %88)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %113

91:                                               ; preds = %86, %81
  %92 = load i32*, i32** %6, align 8
  %93 = call i32 @put_bits(i32* %92, i32 1, i32 1)
  %94 = load i32*, i32** %6, align 8
  %95 = load i32*, i32** %4, align 8
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @get_mantissa(i32 %96)
  %98 = call i32 @put_bits(i32* %94, i32 23, i32 %97)
  %99 = load i32, i32* %5, align 4
  %100 = icmp sge i32 %99, 25
  br i1 %100, label %101, label %107

101:                                              ; preds = %91
  %102 = load i32*, i32** %6, align 8
  %103 = load i32*, i32** %4, align 8
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @get_exponent(i32 %104)
  %106 = call i32 @put_bits(i32* %102, i32 8, i32 %105)
  br label %107

107:                                              ; preds = %101, %91
  %108 = load i32*, i32** %6, align 8
  %109 = load i32*, i32** %4, align 8
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @get_sign(i32 %110)
  %112 = call i32 @put_bits(i32* %108, i32 1, i32 %111)
  br label %129

113:                                              ; preds = %86
  %114 = load i32*, i32** %6, align 8
  %115 = call i32 @put_bits(i32* %114, i32 1, i32 0)
  %116 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* @FLOAT_NEG_ZEROS, align 4
  %120 = and i32 %118, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %128

122:                                              ; preds = %113
  %123 = load i32*, i32** %6, align 8
  %124 = load i32*, i32** %4, align 8
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @get_sign(i32 %125)
  %127 = call i32 @put_bits(i32* %123, i32 1, i32 %126)
  br label %128

128:                                              ; preds = %122, %113
  br label %129

129:                                              ; preds = %128, %107
  br label %130

130:                                              ; preds = %129, %74
  br label %165

131:                                              ; preds = %71
  %132 = load i32, i32* %8, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %164

134:                                              ; preds = %131
  %135 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %136 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* @FLOAT_SHIFT_SENT, align 4
  %139 = and i32 %137, %138
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %148

141:                                              ; preds = %134
  %142 = load i32*, i32** %6, align 8
  %143 = load i32, i32* %8, align 4
  %144 = load i32*, i32** %4, align 8
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @get_mantissa(i32 %145)
  %147 = call i32 @put_sbits(i32* %142, i32 %143, i32 %146)
  br label %163

148:                                              ; preds = %134
  %149 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %150 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* @FLOAT_SHIFT_SAME, align 4
  %153 = and i32 %151, %152
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %162

155:                                              ; preds = %148
  %156 = load i32*, i32** %6, align 8
  %157 = load i32*, i32** %4, align 8
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @get_mantissa(i32 %158)
  %160 = and i32 %159, 1
  %161 = call i32 @put_bits(i32* %156, i32 1, i32 %160)
  br label %162

162:                                              ; preds = %155, %148
  br label %163

163:                                              ; preds = %162, %141
  br label %164

164:                                              ; preds = %163, %131
  br label %165

165:                                              ; preds = %164, %130
  ret void
}

declare dso_local i32 @get_exponent(i32) #1

declare dso_local i32 @get_mantissa(i32) #1

declare dso_local i32 @put_bits(i32*, i32, i32) #1

declare dso_local i32 @get_sign(i32) #1

declare dso_local i32 @put_sbits(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
