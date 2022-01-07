; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mscc.c_rle_uncompress.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mscc.c_rle_uncompress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@SEEK_SET = common dso_local global i32 0, align 4
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32*, i32*)* @rle_uncompress to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rle_uncompress(%struct.TYPE_5__* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 2
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  store %struct.TYPE_4__* %17, %struct.TYPE_4__** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %18

18:                                               ; preds = %182, %3
  %19 = load i32*, i32** %6, align 8
  %20 = call i64 @bytestream2_get_bytes_left(i32* %19)
  %21 = icmp sgt i64 %20, 0
  br i1 %21, label %22, label %183

22:                                               ; preds = %18
  %23 = load i32*, i32** %6, align 8
  %24 = call i32 @bytestream2_get_byte(i32* %23)
  store i32 %24, i32* %13, align 4
  %25 = load i32, i32* %13, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %76

27:                                               ; preds = %22
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  switch i32 %30, label %43 [
    i32 8, label %31
    i32 16, label %34
    i32 24, label %37
    i32 32, label %40
  ]

31:                                               ; preds = %27
  %32 = load i32*, i32** %6, align 8
  %33 = call i32 @bytestream2_get_byte(i32* %32)
  store i32 %33, i32* %11, align 4
  br label %43

34:                                               ; preds = %27
  %35 = load i32*, i32** %6, align 8
  %36 = call i32 @bytestream2_get_le16(i32* %35)
  store i32 %36, i32* %11, align 4
  br label %43

37:                                               ; preds = %27
  %38 = load i32*, i32** %6, align 8
  %39 = call i32 @bytestream2_get_le24(i32* %38)
  store i32 %39, i32* %11, align 4
  br label %43

40:                                               ; preds = %27
  %41 = load i32*, i32** %6, align 8
  %42 = call i32 @bytestream2_get_le32(i32* %41)
  store i32 %42, i32* %11, align 4
  br label %43

43:                                               ; preds = %27, %40, %37, %34, %31
  store i32 0, i32* %12, align 4
  br label %44

44:                                               ; preds = %69, %43
  %45 = load i32, i32* %12, align 4
  %46 = load i32, i32* %13, align 4
  %47 = icmp ult i32 %45, %46
  br i1 %47, label %48, label %72

48:                                               ; preds = %44
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  switch i32 %51, label %68 [
    i32 8, label %52
    i32 16, label %56
    i32 24, label %60
    i32 32, label %64
  ]

52:                                               ; preds = %48
  %53 = load i32*, i32** %7, align 8
  %54 = load i32, i32* %11, align 4
  %55 = call i32 @bytestream2_put_byte(i32* %53, i32 %54)
  br label %68

56:                                               ; preds = %48
  %57 = load i32*, i32** %7, align 8
  %58 = load i32, i32* %11, align 4
  %59 = call i32 @bytestream2_put_le16(i32* %57, i32 %58)
  br label %68

60:                                               ; preds = %48
  %61 = load i32*, i32** %7, align 8
  %62 = load i32, i32* %11, align 4
  %63 = call i32 @bytestream2_put_le24(i32* %61, i32 %62)
  br label %68

64:                                               ; preds = %48
  %65 = load i32*, i32** %7, align 8
  %66 = load i32, i32* %11, align 4
  %67 = call i32 @bytestream2_put_le32(i32* %65, i32 %66)
  br label %68

68:                                               ; preds = %48, %64, %60, %56, %52
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %12, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %12, align 4
  br label %44

72:                                               ; preds = %44
  %73 = load i32, i32* %13, align 4
  %74 = load i32, i32* %9, align 4
  %75 = add i32 %74, %73
  store i32 %75, i32* %9, align 4
  br label %182

76:                                               ; preds = %22
  %77 = load i32*, i32** %6, align 8
  %78 = call i32 @bytestream2_get_byte(i32* %77)
  store i32 %78, i32* %14, align 4
  %79 = load i32, i32* %14, align 4
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %96

81:                                               ; preds = %76
  store i32 0, i32* %9, align 4
  %82 = load i32, i32* %10, align 4
  %83 = add i32 %82, 1
  store i32 %83, i32* %10, align 4
  %84 = load i32*, i32** %7, align 8
  %85 = load i32, i32* %10, align 4
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = mul i32 %85, %88
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = mul i32 %89, %92
  %94 = load i32, i32* @SEEK_SET, align 4
  %95 = call i32 @bytestream2_seek_p(i32* %84, i32 %93, i32 %94)
  br label %181

96:                                               ; preds = %76
  %97 = load i32, i32* %14, align 4
  %98 = icmp eq i32 %97, 1
  br i1 %98, label %99, label %100

99:                                               ; preds = %96
  store i32 0, i32* %4, align 4
  br label %185

100:                                              ; preds = %96
  %101 = load i32, i32* %14, align 4
  %102 = icmp eq i32 %101, 2
  br i1 %102, label %103, label %130

103:                                              ; preds = %100
  %104 = load i32*, i32** %6, align 8
  %105 = call i32 @bytestream2_get_byte(i32* %104)
  %106 = load i32, i32* %9, align 4
  %107 = add i32 %106, %105
  store i32 %107, i32* %9, align 4
  %108 = load i32*, i32** %6, align 8
  %109 = call i32 @bytestream2_get_byte(i32* %108)
  %110 = load i32, i32* %10, align 4
  %111 = add i32 %110, %109
  store i32 %111, i32* %10, align 4
  %112 = load i32*, i32** %7, align 8
  %113 = load i32, i32* %10, align 4
  %114 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = mul i32 %113, %116
  %118 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = mul i32 %117, %120
  %122 = load i32, i32* %9, align 4
  %123 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = mul i32 %122, %125
  %127 = add i32 %121, %126
  %128 = load i32, i32* @SEEK_SET, align 4
  %129 = call i32 @bytestream2_seek_p(i32* %112, i32 %127, i32 %128)
  br label %179

130:                                              ; preds = %100
  store i32 0, i32* %12, align 4
  br label %131

131:                                              ; preds = %160, %130
  %132 = load i32, i32* %12, align 4
  %133 = load i32, i32* %14, align 4
  %134 = icmp ult i32 %132, %133
  br i1 %134, label %135, label %163

135:                                              ; preds = %131
  %136 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  switch i32 %138, label %159 [
    i32 8, label %139
    i32 16, label %144
    i32 24, label %149
    i32 32, label %154
  ]

139:                                              ; preds = %135
  %140 = load i32*, i32** %7, align 8
  %141 = load i32*, i32** %6, align 8
  %142 = call i32 @bytestream2_get_byte(i32* %141)
  %143 = call i32 @bytestream2_put_byte(i32* %140, i32 %142)
  br label %159

144:                                              ; preds = %135
  %145 = load i32*, i32** %7, align 8
  %146 = load i32*, i32** %6, align 8
  %147 = call i32 @bytestream2_get_le16(i32* %146)
  %148 = call i32 @bytestream2_put_le16(i32* %145, i32 %147)
  br label %159

149:                                              ; preds = %135
  %150 = load i32*, i32** %7, align 8
  %151 = load i32*, i32** %6, align 8
  %152 = call i32 @bytestream2_get_le24(i32* %151)
  %153 = call i32 @bytestream2_put_le24(i32* %150, i32 %152)
  br label %159

154:                                              ; preds = %135
  %155 = load i32*, i32** %7, align 8
  %156 = load i32*, i32** %6, align 8
  %157 = call i32 @bytestream2_get_le32(i32* %156)
  %158 = call i32 @bytestream2_put_le32(i32* %155, i32 %157)
  br label %159

159:                                              ; preds = %135, %154, %149, %144, %139
  br label %160

160:                                              ; preds = %159
  %161 = load i32, i32* %12, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %12, align 4
  br label %131

163:                                              ; preds = %131
  %164 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %165 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = icmp eq i32 %166, 1
  br i1 %167, label %168, label %175

168:                                              ; preds = %163
  %169 = load i32, i32* %14, align 4
  %170 = and i32 %169, 1
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %175

172:                                              ; preds = %168
  %173 = load i32*, i32** %6, align 8
  %174 = call i32 @bytestream2_skip(i32* %173, i32 1)
  br label %175

175:                                              ; preds = %172, %168, %163
  %176 = load i32, i32* %14, align 4
  %177 = load i32, i32* %9, align 4
  %178 = add i32 %177, %176
  store i32 %178, i32* %9, align 4
  br label %179

179:                                              ; preds = %175, %103
  br label %180

180:                                              ; preds = %179
  br label %181

181:                                              ; preds = %180, %81
  br label %182

182:                                              ; preds = %181, %72
  br label %18

183:                                              ; preds = %18
  %184 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %184, i32* %4, align 4
  br label %185

185:                                              ; preds = %183, %99
  %186 = load i32, i32* %4, align 4
  ret i32 %186
}

declare dso_local i64 @bytestream2_get_bytes_left(i32*) #1

declare dso_local i32 @bytestream2_get_byte(i32*) #1

declare dso_local i32 @bytestream2_get_le16(i32*) #1

declare dso_local i32 @bytestream2_get_le24(i32*) #1

declare dso_local i32 @bytestream2_get_le32(i32*) #1

declare dso_local i32 @bytestream2_put_byte(i32*, i32) #1

declare dso_local i32 @bytestream2_put_le16(i32*, i32) #1

declare dso_local i32 @bytestream2_put_le24(i32*, i32) #1

declare dso_local i32 @bytestream2_put_le32(i32*, i32) #1

declare dso_local i32 @bytestream2_seek_p(i32*, i32, i32) #1

declare dso_local i32 @bytestream2_skip(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
