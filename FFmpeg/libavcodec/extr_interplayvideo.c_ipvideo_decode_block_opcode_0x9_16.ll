; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_interplayvideo.c_ipvideo_decode_block_opcode_0x9_16.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_interplayvideo.c_ipvideo_decode_block_opcode_0x9_16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32*)* @ipvideo_decode_block_opcode_0x9_16 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipvideo_decode_block_opcode_0x9_16(%struct.TYPE_3__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [4 x i32], align 16
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32* %1, i32** %4, align 8
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 3
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to i32*
  store i32* %15, i32** %8, align 8
  store i32 0, i32* %5, align 4
  br label %16

16:                                               ; preds = %26, %2
  %17 = load i32, i32* %5, align 4
  %18 = icmp slt i32 %17, 4
  br i1 %18, label %19, label %29

19:                                               ; preds = %16
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  %22 = call i32 @bytestream2_get_le16(i32* %21)
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 %24
  store i32 %22, i32* %25, align 4
  br label %26

26:                                               ; preds = %19
  %27 = load i32, i32* %5, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %5, align 4
  br label %16

29:                                               ; preds = %16
  %30 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %31 = load i32, i32* %30, align 16
  %32 = and i32 %31, 32768
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %135, label %34

34:                                               ; preds = %29
  %35 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 2
  %36 = load i32, i32* %35, align 8
  %37 = and i32 %36, 32768
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %74, label %39

39:                                               ; preds = %34
  store i32 0, i32* %6, align 4
  br label %40

40:                                               ; preds = %70, %39
  %41 = load i32, i32* %6, align 4
  %42 = icmp slt i32 %41, 8
  br i1 %42, label %43, label %73

43:                                               ; preds = %40
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 1
  %46 = call i32 @bytestream2_get_le16(i32* %45)
  store i32 %46, i32* %9, align 4
  store i32 0, i32* %5, align 4
  br label %47

47:                                               ; preds = %58, %43
  %48 = load i32, i32* %5, align 4
  %49 = icmp slt i32 %48, 8
  br i1 %49, label %50, label %63

50:                                               ; preds = %47
  %51 = load i32, i32* %9, align 4
  %52 = and i32 %51, 3
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = load i32*, i32** %8, align 8
  %57 = getelementptr inbounds i32, i32* %56, i32 1
  store i32* %57, i32** %8, align 8
  store i32 %55, i32* %56, align 4
  br label %58

58:                                               ; preds = %50
  %59 = load i32, i32* %5, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %5, align 4
  %61 = load i32, i32* %9, align 4
  %62 = ashr i32 %61, 2
  store i32 %62, i32* %9, align 4
  br label %47

63:                                               ; preds = %47
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = load i32*, i32** %8, align 8
  %68 = sext i32 %66 to i64
  %69 = getelementptr inbounds i32, i32* %67, i64 %68
  store i32* %69, i32** %8, align 8
  br label %70

70:                                               ; preds = %63
  %71 = load i32, i32* %6, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %6, align 4
  br label %40

73:                                               ; preds = %40
  br label %134

74:                                               ; preds = %34
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 1
  %77 = call i32 @bytestream2_get_le32(i32* %76)
  store i32 %77, i32* %10, align 4
  store i32 0, i32* %6, align 4
  br label %78

78:                                               ; preds = %130, %74
  %79 = load i32, i32* %6, align 4
  %80 = icmp slt i32 %79, 8
  br i1 %80, label %81, label %133

81:                                               ; preds = %78
  store i32 0, i32* %5, align 4
  br label %82

82:                                               ; preds = %117, %81
  %83 = load i32, i32* %5, align 4
  %84 = icmp slt i32 %83, 8
  br i1 %84, label %85, label %122

85:                                               ; preds = %82
  %86 = load i32, i32* %10, align 4
  %87 = and i32 %86, 3
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = load i32*, i32** %8, align 8
  %92 = load i32, i32* %5, align 4
  %93 = add nsw i32 %92, 1
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = add nsw i32 %93, %96
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %91, i64 %98
  store i32 %90, i32* %99, align 4
  %100 = load i32*, i32** %8, align 8
  %101 = load i32, i32* %5, align 4
  %102 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = add nsw i32 %101, %104
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %100, i64 %106
  store i32 %90, i32* %107, align 4
  %108 = load i32*, i32** %8, align 8
  %109 = load i32, i32* %5, align 4
  %110 = add nsw i32 %109, 1
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %108, i64 %111
  store i32 %90, i32* %112, align 4
  %113 = load i32*, i32** %8, align 8
  %114 = load i32, i32* %5, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %113, i64 %115
  store i32 %90, i32* %116, align 4
  br label %117

117:                                              ; preds = %85
  %118 = load i32, i32* %5, align 4
  %119 = add nsw i32 %118, 2
  store i32 %119, i32* %5, align 4
  %120 = load i32, i32* %10, align 4
  %121 = ashr i32 %120, 2
  store i32 %121, i32* %10, align 4
  br label %82

122:                                              ; preds = %82
  %123 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = mul nsw i32 %125, 2
  %127 = load i32*, i32** %8, align 8
  %128 = sext i32 %126 to i64
  %129 = getelementptr inbounds i32, i32* %127, i64 %128
  store i32* %129, i32** %8, align 8
  br label %130

130:                                              ; preds = %122
  %131 = load i32, i32* %6, align 4
  %132 = add nsw i32 %131, 2
  store i32 %132, i32* %6, align 4
  br label %78

133:                                              ; preds = %78
  br label %134

134:                                              ; preds = %133, %73
  br label %226

135:                                              ; preds = %29
  %136 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %136, i32 0, i32 1
  %138 = call i32 @bytestream2_get_le64(i32* %137)
  store i32 %138, i32* %11, align 4
  %139 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 2
  %140 = load i32, i32* %139, align 8
  %141 = and i32 %140, 32768
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %182, label %143

143:                                              ; preds = %135
  store i32 0, i32* %6, align 4
  br label %144

144:                                              ; preds = %178, %143
  %145 = load i32, i32* %6, align 4
  %146 = icmp slt i32 %145, 8
  br i1 %146, label %147, label %181

147:                                              ; preds = %144
  store i32 0, i32* %5, align 4
  br label %148

148:                                              ; preds = %166, %147
  %149 = load i32, i32* %5, align 4
  %150 = icmp slt i32 %149, 8
  br i1 %150, label %151, label %171

151:                                              ; preds = %148
  %152 = load i32, i32* %11, align 4
  %153 = and i32 %152, 3
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 %154
  %156 = load i32, i32* %155, align 4
  %157 = load i32*, i32** %8, align 8
  %158 = load i32, i32* %5, align 4
  %159 = add nsw i32 %158, 1
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i32, i32* %157, i64 %160
  store i32 %156, i32* %161, align 4
  %162 = load i32*, i32** %8, align 8
  %163 = load i32, i32* %5, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i32, i32* %162, i64 %164
  store i32 %156, i32* %165, align 4
  br label %166

166:                                              ; preds = %151
  %167 = load i32, i32* %5, align 4
  %168 = add nsw i32 %167, 2
  store i32 %168, i32* %5, align 4
  %169 = load i32, i32* %11, align 4
  %170 = ashr i32 %169, 2
  store i32 %170, i32* %11, align 4
  br label %148

171:                                              ; preds = %148
  %172 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %173 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = load i32*, i32** %8, align 8
  %176 = sext i32 %174 to i64
  %177 = getelementptr inbounds i32, i32* %175, i64 %176
  store i32* %177, i32** %8, align 8
  br label %178

178:                                              ; preds = %171
  %179 = load i32, i32* %6, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %6, align 4
  br label %144

181:                                              ; preds = %144
  br label %225

182:                                              ; preds = %135
  store i32 0, i32* %6, align 4
  br label %183

183:                                              ; preds = %221, %182
  %184 = load i32, i32* %6, align 4
  %185 = icmp slt i32 %184, 8
  br i1 %185, label %186, label %224

186:                                              ; preds = %183
  store i32 0, i32* %5, align 4
  br label %187

187:                                              ; preds = %208, %186
  %188 = load i32, i32* %5, align 4
  %189 = icmp slt i32 %188, 8
  br i1 %189, label %190, label %213

190:                                              ; preds = %187
  %191 = load i32, i32* %11, align 4
  %192 = and i32 %191, 3
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 %193
  %195 = load i32, i32* %194, align 4
  %196 = load i32*, i32** %8, align 8
  %197 = load i32, i32* %5, align 4
  %198 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %199 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  %201 = add nsw i32 %197, %200
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds i32, i32* %196, i64 %202
  store i32 %195, i32* %203, align 4
  %204 = load i32*, i32** %8, align 8
  %205 = load i32, i32* %5, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds i32, i32* %204, i64 %206
  store i32 %195, i32* %207, align 4
  br label %208

208:                                              ; preds = %190
  %209 = load i32, i32* %5, align 4
  %210 = add nsw i32 %209, 1
  store i32 %210, i32* %5, align 4
  %211 = load i32, i32* %11, align 4
  %212 = ashr i32 %211, 2
  store i32 %212, i32* %11, align 4
  br label %187

213:                                              ; preds = %187
  %214 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %215 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 8
  %217 = mul nsw i32 %216, 2
  %218 = load i32*, i32** %8, align 8
  %219 = sext i32 %217 to i64
  %220 = getelementptr inbounds i32, i32* %218, i64 %219
  store i32* %220, i32** %8, align 8
  br label %221

221:                                              ; preds = %213
  %222 = load i32, i32* %6, align 4
  %223 = add nsw i32 %222, 2
  store i32 %223, i32* %6, align 4
  br label %183

224:                                              ; preds = %183
  br label %225

225:                                              ; preds = %224, %181
  br label %226

226:                                              ; preds = %225, %134
  ret i32 0
}

declare dso_local i32 @bytestream2_get_le16(i32*) #1

declare dso_local i32 @bytestream2_get_le32(i32*) #1

declare dso_local i32 @bytestream2_get_le64(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
