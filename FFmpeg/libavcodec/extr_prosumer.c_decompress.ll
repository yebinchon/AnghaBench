; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_prosumer.c_decompress.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_prosumer.c_decompress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SEEK_SET = common dso_local global i32 0, align 4
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32*, i32*)* @decompress to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decompress(i32* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %18 = load i32*, i32** %6, align 8
  %19 = call i32 @bytestream2_skip(i32* %18, i32 32)
  store i32 4, i32* %12, align 4
  %20 = load i32*, i32** %6, align 8
  %21 = call i32 @bytestream2_get_le32(i32* %20)
  store i32 %21, i32* %14, align 4
  %22 = load i32, i32* %14, align 4
  %23 = ashr i32 %22, 20
  store i32 %23, i32* %11, align 4
  %24 = load i32*, i32** %9, align 8
  %25 = load i32, i32* %11, align 4
  %26 = mul nsw i32 2, %25
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %24, i64 %27
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %15, align 4
  br label %30

30:                                               ; preds = %4, %150, %194
  %31 = load i32*, i32** %8, align 8
  %32 = call i64 @bytestream2_get_bytes_left_p(i32* %31)
  %33 = icmp sle i64 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %30
  %35 = load i32*, i32** %8, align 8
  %36 = call i64 @bytestream2_get_eof(i32* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %34, %30
  store i32 0, i32* %5, align 4
  br label %198

39:                                               ; preds = %34
  %40 = load i32, i32* %15, align 4
  %41 = and i32 %40, 65280
  %42 = icmp ne i32 %41, 32768
  br i1 %42, label %47, label %43

43:                                               ; preds = %39
  %44 = load i32, i32* %15, align 4
  %45 = and i32 %44, 255
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %151

47:                                               ; preds = %43, %39
  %48 = load i32, i32* %15, align 4
  %49 = and i32 %48, 65280
  %50 = icmp ne i32 %49, 32768
  br i1 %50, label %51, label %55

51:                                               ; preds = %47
  %52 = load i32*, i32** %8, align 8
  %53 = load i32, i32* %15, align 4
  %54 = call i32 @bytestream2_put_le16(i32* %52, i32 %53)
  br label %68

55:                                               ; preds = %47
  store i32 0, i32* %11, align 4
  store i32 0, i32* %17, align 4
  br label %56

56:                                               ; preds = %64, %55
  %57 = load i32, i32* %17, align 4
  %58 = load i32, i32* %15, align 4
  %59 = and i32 %58, 255
  %60 = icmp ult i32 %57, %59
  br i1 %60, label %61, label %67

61:                                               ; preds = %56
  %62 = load i32*, i32** %8, align 8
  %63 = call i32 @bytestream2_put_le32(i32* %62, i32 0)
  br label %64

64:                                               ; preds = %61
  %65 = load i32, i32* %17, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %17, align 4
  br label %56

67:                                               ; preds = %56
  br label %68

68:                                               ; preds = %67, %51
  %69 = load i32, i32* %15, align 4
  %70 = ashr i32 %69, 16
  store i32 %70, i32* %16, align 4
  %71 = load i32, i32* %16, align 4
  %72 = and i32 %71, 65280
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %97

74:                                               ; preds = %68
  %75 = load i32*, i32** %9, align 8
  %76 = load i32, i32* %11, align 4
  %77 = mul nsw i32 2, %76
  %78 = add nsw i32 %77, 1
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %75, i64 %79
  %81 = load i32, i32* %80, align 4
  store i32 %81, i32* %13, align 4
  %82 = load i32, i32* %16, align 4
  %83 = and i32 %82, 61440
  %84 = icmp eq i32 %83, 4096
  br i1 %84, label %85, label %89

85:                                               ; preds = %74
  %86 = load i32*, i32** %8, align 8
  %87 = load i32, i32* %13, align 4
  %88 = call i32 @bytestream2_put_le16(i32* %86, i32 %87)
  br label %93

89:                                               ; preds = %74
  %90 = load i32*, i32** %8, align 8
  %91 = load i32, i32* %13, align 4
  %92 = call i32 @bytestream2_put_le32(i32* %90, i32 %91)
  br label %93

93:                                               ; preds = %89, %85
  %94 = load i32, i32* %16, align 4
  %95 = ashr i32 %94, 8
  %96 = and i32 %95, 15
  store i32 %96, i32* %16, align 4
  br label %97

97:                                               ; preds = %93, %68
  br label %98

98:                                               ; preds = %134, %97
  %99 = load i32, i32* %16, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %137

101:                                              ; preds = %98
  %102 = load i32, i32* %14, align 4
  %103 = shl i32 %102, 4
  store i32 %103, i32* %14, align 4
  %104 = load i32, i32* %12, align 4
  %105 = add nsw i32 %104, -1
  store i32 %105, i32* %12, align 4
  %106 = load i32, i32* %12, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %134, label %108

108:                                              ; preds = %101
  %109 = load i32*, i32** %6, align 8
  %110 = call i64 @bytestream2_get_bytes_left(i32* %109)
  %111 = icmp sle i64 %110, 0
  br i1 %111, label %112, label %117

112:                                              ; preds = %108
  %113 = load i32, i32* %14, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %116, label %115

115:                                              ; preds = %112
  store i32 0, i32* %5, align 4
  br label %198

116:                                              ; preds = %112
  br label %133

117:                                              ; preds = %108
  %118 = load i32*, i32** %6, align 8
  %119 = call i32 @bytestream2_tell(i32* %118)
  store i32 %119, i32* %10, align 4
  %120 = load i32*, i32** %6, align 8
  %121 = load i32, i32* %10, align 4
  %122 = xor i32 %121, 2
  %123 = load i32, i32* @SEEK_SET, align 4
  %124 = call i32 @bytestream2_seek(i32* %120, i32 %122, i32 %123)
  %125 = load i32*, i32** %6, align 8
  %126 = call i32 @bytestream2_peek_le16(i32* %125)
  %127 = call i32 @AV_WN16(i32* %14, i32 %126)
  %128 = load i32*, i32** %6, align 8
  %129 = load i32, i32* %10, align 4
  %130 = add nsw i32 %129, 2
  %131 = load i32, i32* @SEEK_SET, align 4
  %132 = call i32 @bytestream2_seek(i32* %128, i32 %130, i32 %131)
  br label %133

133:                                              ; preds = %117, %116
  store i32 4, i32* %12, align 4
  br label %134

134:                                              ; preds = %133, %101
  %135 = load i32, i32* %16, align 4
  %136 = add nsw i32 %135, -1
  store i32 %136, i32* %16, align 4
  br label %98

137:                                              ; preds = %98
  %138 = load i32, i32* %14, align 4
  %139 = ashr i32 %138, 20
  store i32 %139, i32* %11, align 4
  %140 = load i32*, i32** %9, align 8
  %141 = load i32, i32* %11, align 4
  %142 = mul nsw i32 2, %141
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %140, i64 %143
  %145 = load i32, i32* %144, align 4
  store i32 %145, i32* %15, align 4
  %146 = load i32, i32* %15, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %150, label %148

148:                                              ; preds = %137
  %149 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %149, i32* %5, align 4
  br label %198

150:                                              ; preds = %137
  br label %30

151:                                              ; preds = %43
  store i32 2, i32* %11, align 4
  br label %152

152:                                              ; preds = %176, %172, %162, %151
  %153 = load i32, i32* %11, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %194

155:                                              ; preds = %152
  %156 = load i32, i32* %14, align 4
  %157 = shl i32 %156, 4
  store i32 %157, i32* %14, align 4
  %158 = load i32, i32* %12, align 4
  %159 = add nsw i32 %158, -1
  store i32 %159, i32* %12, align 4
  %160 = load i32, i32* %12, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %165

162:                                              ; preds = %155
  %163 = load i32, i32* %11, align 4
  %164 = add nsw i32 %163, -1
  store i32 %164, i32* %11, align 4
  br label %152

165:                                              ; preds = %155
  %166 = load i32*, i32** %6, align 8
  %167 = call i64 @bytestream2_get_bytes_left(i32* %166)
  %168 = icmp sle i64 %167, 0
  br i1 %168, label %169, label %176

169:                                              ; preds = %165
  %170 = load i32, i32* %14, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %175

172:                                              ; preds = %169
  store i32 4, i32* %12, align 4
  %173 = load i32, i32* %11, align 4
  %174 = add nsw i32 %173, -1
  store i32 %174, i32* %11, align 4
  br label %152

175:                                              ; preds = %169
  store i32 0, i32* %5, align 4
  br label %198

176:                                              ; preds = %165
  %177 = load i32*, i32** %6, align 8
  %178 = call i32 @bytestream2_tell(i32* %177)
  store i32 %178, i32* %10, align 4
  %179 = load i32*, i32** %6, align 8
  %180 = load i32, i32* %10, align 4
  %181 = xor i32 %180, 2
  %182 = load i32, i32* @SEEK_SET, align 4
  %183 = call i32 @bytestream2_seek(i32* %179, i32 %181, i32 %182)
  %184 = load i32*, i32** %6, align 8
  %185 = call i32 @bytestream2_peek_le16(i32* %184)
  %186 = call i32 @AV_WN16(i32* %14, i32 %185)
  %187 = load i32*, i32** %6, align 8
  %188 = load i32, i32* %10, align 4
  %189 = add nsw i32 %188, 2
  %190 = load i32, i32* @SEEK_SET, align 4
  %191 = call i32 @bytestream2_seek(i32* %187, i32 %189, i32 %190)
  store i32 4, i32* %12, align 4
  %192 = load i32, i32* %11, align 4
  %193 = add nsw i32 %192, -1
  store i32 %193, i32* %11, align 4
  br label %152

194:                                              ; preds = %152
  %195 = load i32, i32* %14, align 4
  %196 = call i32 @PAIR(i32 4, i32 %195)
  %197 = ashr i32 %196, 16
  store i32 %197, i32* %15, align 4
  br label %30

198:                                              ; preds = %175, %148, %115, %38
  %199 = load i32, i32* %5, align 4
  ret i32 %199
}

declare dso_local i32 @bytestream2_skip(i32*, i32) #1

declare dso_local i32 @bytestream2_get_le32(i32*) #1

declare dso_local i64 @bytestream2_get_bytes_left_p(i32*) #1

declare dso_local i64 @bytestream2_get_eof(i32*) #1

declare dso_local i32 @bytestream2_put_le16(i32*, i32) #1

declare dso_local i32 @bytestream2_put_le32(i32*, i32) #1

declare dso_local i64 @bytestream2_get_bytes_left(i32*) #1

declare dso_local i32 @bytestream2_tell(i32*) #1

declare dso_local i32 @bytestream2_seek(i32*, i32, i32) #1

declare dso_local i32 @AV_WN16(i32*, i32) #1

declare dso_local i32 @bytestream2_peek_le16(i32*) #1

declare dso_local i32 @PAIR(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
