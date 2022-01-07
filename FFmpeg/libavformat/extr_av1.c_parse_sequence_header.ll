; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_av1.c_parse_sequence_header.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_av1.c_parse_sequence_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i8* }

@AV1_OBU_SEQUENCE_HEADER = common dso_local global i32 0, align 4
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32*, i32)* @parse_sequence_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_sequence_header(%struct.TYPE_5__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %23 = load i32*, i32** %6, align 8
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @AV1_OBU_SEQUENCE_HEADER, align 4
  %26 = call i32 @get_obu_bit_length(i32* %23, i32 %24, i32 %25)
  store i32 %26, i32* %12, align 4
  %27 = load i32, i32* %12, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %3
  %30 = load i32, i32* %12, align 4
  store i32 %30, i32* %4, align 4
  br label %194

31:                                               ; preds = %3
  %32 = load i32*, i32** %6, align 8
  %33 = load i32, i32* %12, align 4
  %34 = call i32 @init_get_bits(i32* %8, i32* %32, i32 %33)
  store i32 %34, i32* %13, align 4
  %35 = load i32, i32* %13, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %31
  %38 = load i32, i32* %13, align 4
  store i32 %38, i32* %4, align 4
  br label %194

39:                                               ; preds = %31
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %41 = call i32 @memset(%struct.TYPE_5__* %40, i32 0, i32 16)
  %42 = call i8* @get_bits(i32* %8, i32 3)
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 2
  store i8* %42, i8** %44, align 8
  %45 = call i32 @skip_bits1(i32* %8)
  %46 = call i32 @get_bits1(i32* %8)
  store i32 %46, i32* %9, align 4
  %47 = load i32, i32* %9, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %39
  %50 = call i8* @get_bits(i32* %8, i32 5)
  %51 = ptrtoint i8* %50 to i32
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 8
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 1
  store i32 0, i32* %55, align 4
  br label %133

56:                                               ; preds = %39
  %57 = call i32 @get_bits1(i32* %8)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %76

59:                                               ; preds = %56
  %60 = call i32 @skip_bits_long(i32* %8, i32 32)
  %61 = call i32 @skip_bits_long(i32* %8, i32 32)
  %62 = call i32 @get_bits1(i32* %8)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %59
  %65 = call i32 @uvlc(i32* %8)
  br label %66

66:                                               ; preds = %64, %59
  %67 = call i32 @get_bits1(i32* %8)
  store i32 %67, i32* %16, align 4
  %68 = load i32, i32* %16, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %66
  %71 = call i8* @get_bits(i32* %8, i32 5)
  %72 = ptrtoint i8* %71 to i32
  store i32 %72, i32* %17, align 4
  %73 = call i32 @skip_bits_long(i32* %8, i32 32)
  %74 = call i32 @skip_bits(i32* %8, i32 10)
  br label %75

75:                                               ; preds = %70, %66
  br label %77

76:                                               ; preds = %56
  store i32 0, i32* %16, align 4
  br label %77

77:                                               ; preds = %76, %75
  %78 = call i32 @get_bits1(i32* %8)
  store i32 %78, i32* %14, align 4
  %79 = call i8* @get_bits(i32* %8, i32 5)
  %80 = ptrtoint i8* %79 to i32
  store i32 %80, i32* %15, align 4
  store i32 0, i32* %18, align 4
  br label %81

81:                                               ; preds = %129, %77
  %82 = load i32, i32* %18, align 4
  %83 = load i32, i32* %15, align 4
  %84 = icmp sle i32 %82, %83
  br i1 %84, label %85, label %132

85:                                               ; preds = %81
  %86 = call i32 @skip_bits(i32* %8, i32 12)
  %87 = call i8* @get_bits(i32* %8, i32 5)
  %88 = ptrtoint i8* %87 to i32
  store i32 %88, i32* %19, align 4
  %89 = load i32, i32* %19, align 4
  %90 = icmp sgt i32 %89, 7
  br i1 %90, label %91, label %93

91:                                               ; preds = %85
  %92 = call i32 @get_bits1(i32* %8)
  store i32 %92, i32* %20, align 4
  br label %94

93:                                               ; preds = %85
  store i32 0, i32* %20, align 4
  br label %94

94:                                               ; preds = %93, %91
  %95 = load i32, i32* %16, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %109

97:                                               ; preds = %94
  %98 = call i32 @get_bits1(i32* %8)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %108

100:                                              ; preds = %97
  %101 = load i32, i32* %17, align 4
  %102 = add nsw i32 %101, 1
  %103 = call i32 @skip_bits_long(i32* %8, i32 %102)
  %104 = load i32, i32* %17, align 4
  %105 = add nsw i32 %104, 1
  %106 = call i32 @skip_bits_long(i32* %8, i32 %105)
  %107 = call i32 @skip_bits1(i32* %8)
  br label %108

108:                                              ; preds = %100, %97
  br label %109

109:                                              ; preds = %108, %94
  %110 = load i32, i32* %14, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %118

112:                                              ; preds = %109
  %113 = call i32 @get_bits1(i32* %8)
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %112
  %116 = call i32 @skip_bits(i32* %8, i32 4)
  br label %117

117:                                              ; preds = %115, %112
  br label %118

118:                                              ; preds = %117, %109
  %119 = load i32, i32* %18, align 4
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %121, label %128

121:                                              ; preds = %118
  %122 = load i32, i32* %19, align 4
  %123 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 0
  store i32 %122, i32* %124, align 8
  %125 = load i32, i32* %20, align 4
  %126 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 1
  store i32 %125, i32* %127, align 4
  br label %128

128:                                              ; preds = %121, %118
  br label %129

129:                                              ; preds = %128
  %130 = load i32, i32* %18, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %18, align 4
  br label %81

132:                                              ; preds = %81
  br label %133

133:                                              ; preds = %132, %49
  %134 = call i8* @get_bits(i32* %8, i32 4)
  %135 = ptrtoint i8* %134 to i32
  store i32 %135, i32* %10, align 4
  %136 = call i8* @get_bits(i32* %8, i32 4)
  %137 = ptrtoint i8* %136 to i32
  store i32 %137, i32* %11, align 4
  %138 = load i32, i32* %10, align 4
  %139 = add nsw i32 %138, 1
  %140 = call i32 @skip_bits(i32* %8, i32 %139)
  %141 = load i32, i32* %11, align 4
  %142 = add nsw i32 %141, 1
  %143 = call i32 @skip_bits(i32* %8, i32 %142)
  %144 = load i32, i32* %9, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %152, label %146

146:                                              ; preds = %133
  %147 = call i32 @get_bits1(i32* %8)
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %151

149:                                              ; preds = %146
  %150 = call i32 @skip_bits(i32* %8, i32 7)
  br label %151

151:                                              ; preds = %149, %146
  br label %152

152:                                              ; preds = %151, %133
  %153 = call i32 @skip_bits(i32* %8, i32 3)
  %154 = load i32, i32* %9, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %184, label %156

156:                                              ; preds = %152
  %157 = call i32 @skip_bits(i32* %8, i32 4)
  %158 = call i32 @get_bits1(i32* %8)
  store i32 %158, i32* %21, align 4
  %159 = load i32, i32* %21, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %163

161:                                              ; preds = %156
  %162 = call i32 @skip_bits(i32* %8, i32 2)
  br label %163

163:                                              ; preds = %161, %156
  %164 = call i32 @get_bits1(i32* %8)
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %167

166:                                              ; preds = %163
  store i32 2, i32* %22, align 4
  br label %169

167:                                              ; preds = %163
  %168 = call i32 @get_bits1(i32* %8)
  store i32 %168, i32* %22, align 4
  br label %169

169:                                              ; preds = %167, %166
  %170 = load i32, i32* %22, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %178

172:                                              ; preds = %169
  %173 = call i32 @get_bits1(i32* %8)
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %177, label %175

175:                                              ; preds = %172
  %176 = call i32 @skip_bits1(i32* %8)
  br label %177

177:                                              ; preds = %175, %172
  br label %178

178:                                              ; preds = %177, %169
  %179 = load i32, i32* %21, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %183

181:                                              ; preds = %178
  %182 = call i32 @skip_bits(i32* %8, i32 3)
  br label %183

183:                                              ; preds = %181, %178
  br label %184

184:                                              ; preds = %183, %152
  %185 = call i32 @skip_bits(i32* %8, i32 3)
  %186 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %187 = call i32 @parse_color_config(%struct.TYPE_5__* %186, i32* %8)
  %188 = call i32 @skip_bits1(i32* %8)
  %189 = call i64 @get_bits_left(i32* %8)
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %193

191:                                              ; preds = %184
  %192 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %192, i32* %4, align 4
  br label %194

193:                                              ; preds = %184
  store i32 0, i32* %4, align 4
  br label %194

194:                                              ; preds = %193, %191, %37, %29
  %195 = load i32, i32* %4, align 4
  ret i32 %195
}

declare dso_local i32 @get_obu_bit_length(i32*, i32, i32) #1

declare dso_local i32 @init_get_bits(i32*, i32*, i32) #1

declare dso_local i32 @memset(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i8* @get_bits(i32*, i32) #1

declare dso_local i32 @skip_bits1(i32*) #1

declare dso_local i32 @get_bits1(i32*) #1

declare dso_local i32 @skip_bits_long(i32*, i32) #1

declare dso_local i32 @uvlc(i32*) #1

declare dso_local i32 @skip_bits(i32*, i32) #1

declare dso_local i32 @parse_color_config(%struct.TYPE_5__*, i32*) #1

declare dso_local i64 @get_bits_left(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
