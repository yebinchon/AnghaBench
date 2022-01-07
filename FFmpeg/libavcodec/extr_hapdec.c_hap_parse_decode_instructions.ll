; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_hapdec.c_hap_parse_decode_instructions.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_hapdec.c_hap_parse_decode_instructions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i32, i64, i8* }

@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32)* @hap_parse_decode_instructions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hap_parse_decode_instructions(%struct.TYPE_6__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
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
  %16 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32 %1, i32* %5, align 4
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 2
  store i32* %18, i32** %6, align 8
  store i32 1, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %19

19:                                               ; preds = %130, %2
  %20 = load i32, i32* %5, align 4
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %22, label %134

22:                                               ; preds = %19
  %23 = load i32*, i32** %6, align 8
  %24 = call i32 @bytestream2_get_bytes_left(i32* %23)
  store i32 %24, i32* %15, align 4
  %25 = load i32*, i32** %6, align 8
  %26 = call i32 @ff_hap_parse_section_header(i32* %25, i32* %7, i32* %8)
  store i32 %26, i32* %14, align 4
  %27 = load i32, i32* %14, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %22
  %30 = load i32, i32* %14, align 4
  store i32 %30, i32* %3, align 4
  br label %177

31:                                               ; preds = %22
  %32 = load i32, i32* %15, align 4
  %33 = load i32*, i32** %6, align 8
  %34 = call i32 @bytestream2_get_bytes_left(i32* %33)
  %35 = sub nsw i32 %32, %34
  %36 = load i32, i32* %5, align 4
  %37 = sub nsw i32 %36, %35
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %8, align 4
  switch i32 %38, label %129 [
    i32 130, label %39
    i32 128, label %68
    i32 129, label %98
  ]

39:                                               ; preds = %31
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* %9, align 4
  %43 = call i32 @ff_hap_set_chunk_count(%struct.TYPE_6__* %40, i32 %41, i32 %42)
  store i32 %43, i32* %14, align 4
  %44 = load i32, i32* %14, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %39
  %47 = load i32, i32* %14, align 4
  store i32 %47, i32* %3, align 4
  br label %177

48:                                               ; preds = %39
  store i32 0, i32* %13, align 4
  br label %49

49:                                               ; preds = %64, %48
  %50 = load i32, i32* %13, align 4
  %51 = load i32, i32* %7, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %67

53:                                               ; preds = %49
  %54 = load i32*, i32** %6, align 8
  %55 = call i32 @bytestream2_get_byte(i32* %54)
  %56 = shl i32 %55, 4
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 1
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %58, align 8
  %60 = load i32, i32* %13, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  store i32 %56, i32* %63, align 8
  br label %64

64:                                               ; preds = %53
  %65 = load i32, i32* %13, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %13, align 4
  br label %49

67:                                               ; preds = %49
  store i32 1, i32* %11, align 4
  store i32 0, i32* %9, align 4
  br label %130

68:                                               ; preds = %31
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %70 = load i32, i32* %7, align 4
  %71 = sdiv i32 %70, 4
  %72 = load i32, i32* %9, align 4
  %73 = call i32 @ff_hap_set_chunk_count(%struct.TYPE_6__* %69, i32 %71, i32 %72)
  store i32 %73, i32* %14, align 4
  %74 = load i32, i32* %14, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %68
  %77 = load i32, i32* %14, align 4
  store i32 %77, i32* %3, align 4
  br label %177

78:                                               ; preds = %68
  store i32 0, i32* %13, align 4
  br label %79

79:                                               ; preds = %94, %78
  %80 = load i32, i32* %13, align 4
  %81 = load i32, i32* %7, align 4
  %82 = sdiv i32 %81, 4
  %83 = icmp slt i32 %80, %82
  br i1 %83, label %84, label %97

84:                                               ; preds = %79
  %85 = load i32*, i32** %6, align 8
  %86 = call i8* @bytestream2_get_le32(i32* %85)
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 1
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %88, align 8
  %90 = load i32, i32* %13, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 2
  store i8* %86, i8** %93, align 8
  br label %94

94:                                               ; preds = %84
  %95 = load i32, i32* %13, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %13, align 4
  br label %79

97:                                               ; preds = %79
  store i32 1, i32* %12, align 4
  store i32 0, i32* %9, align 4
  br label %130

98:                                               ; preds = %31
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %100 = load i32, i32* %7, align 4
  %101 = sdiv i32 %100, 4
  %102 = load i32, i32* %9, align 4
  %103 = call i32 @ff_hap_set_chunk_count(%struct.TYPE_6__* %99, i32 %101, i32 %102)
  store i32 %103, i32* %14, align 4
  %104 = load i32, i32* %14, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %98
  %107 = load i32, i32* %14, align 4
  store i32 %107, i32* %3, align 4
  br label %177

108:                                              ; preds = %98
  store i32 0, i32* %13, align 4
  br label %109

109:                                              ; preds = %125, %108
  %110 = load i32, i32* %13, align 4
  %111 = load i32, i32* %7, align 4
  %112 = sdiv i32 %111, 4
  %113 = icmp slt i32 %110, %112
  br i1 %113, label %114, label %128

114:                                              ; preds = %109
  %115 = load i32*, i32** %6, align 8
  %116 = call i8* @bytestream2_get_le32(i32* %115)
  %117 = ptrtoint i8* %116 to i64
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 1
  %120 = load %struct.TYPE_5__*, %struct.TYPE_5__** %119, align 8
  %121 = load i32, i32* %13, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 1
  store i64 %117, i64* %124, align 8
  br label %125

125:                                              ; preds = %114
  %126 = load i32, i32* %13, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %13, align 4
  br label %109

128:                                              ; preds = %109
  store i32 1, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %130

129:                                              ; preds = %31
  br label %130

130:                                              ; preds = %129, %128, %97, %67
  %131 = load i32, i32* %7, align 4
  %132 = load i32, i32* %5, align 4
  %133 = sub nsw i32 %132, %131
  store i32 %133, i32* %5, align 4
  br label %19

134:                                              ; preds = %19
  %135 = load i32, i32* %12, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %140

137:                                              ; preds = %134
  %138 = load i32, i32* %11, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %142, label %140

140:                                              ; preds = %137, %134
  %141 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %141, i32* %3, align 4
  br label %177

142:                                              ; preds = %137
  %143 = load i32, i32* %10, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %176, label %145

145:                                              ; preds = %142
  store i64 0, i64* %16, align 8
  store i32 0, i32* %13, align 4
  br label %146

146:                                              ; preds = %172, %145
  %147 = load i32, i32* %13, align 4
  %148 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = icmp slt i32 %147, %150
  br i1 %151, label %152, label %175

152:                                              ; preds = %146
  %153 = load i64, i64* %16, align 8
  %154 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %155 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %154, i32 0, i32 1
  %156 = load %struct.TYPE_5__*, %struct.TYPE_5__** %155, align 8
  %157 = load i32, i32* %13, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %156, i64 %158
  %160 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %159, i32 0, i32 1
  store i64 %153, i64* %160, align 8
  %161 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %162 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %161, i32 0, i32 1
  %163 = load %struct.TYPE_5__*, %struct.TYPE_5__** %162, align 8
  %164 = load i32, i32* %13, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %163, i64 %165
  %167 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %166, i32 0, i32 2
  %168 = load i8*, i8** %167, align 8
  %169 = load i64, i64* %16, align 8
  %170 = getelementptr i8, i8* %168, i64 %169
  %171 = ptrtoint i8* %170 to i64
  store i64 %171, i64* %16, align 8
  br label %172

172:                                              ; preds = %152
  %173 = load i32, i32* %13, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %13, align 4
  br label %146

175:                                              ; preds = %146
  br label %176

176:                                              ; preds = %175, %142
  store i32 0, i32* %3, align 4
  br label %177

177:                                              ; preds = %176, %140, %106, %76, %46, %29
  %178 = load i32, i32* %3, align 4
  ret i32 %178
}

declare dso_local i32 @bytestream2_get_bytes_left(i32*) #1

declare dso_local i32 @ff_hap_parse_section_header(i32*, i32*, i32*) #1

declare dso_local i32 @ff_hap_set_chunk_count(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @bytestream2_get_byte(i32*) #1

declare dso_local i8* @bytestream2_get_le32(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
