; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_interplayvideo.c_ipvideo_decode_block_opcode_0xA_16.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_interplayvideo.c_ipvideo_decode_block_opcode_0xA_16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32*)* @ipvideo_decode_block_opcode_0xA_16 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipvideo_decode_block_opcode_0xA_16(%struct.TYPE_3__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [8 x i32], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %8, align 4
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 3
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to i32*
  store i32* %15, i32** %9, align 8
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
  %25 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 %24
  store i32 %22, i32* %25, align 4
  br label %26

26:                                               ; preds = %19
  %27 = load i32, i32* %5, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %5, align 4
  br label %16

29:                                               ; preds = %16
  %30 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 0
  %31 = load i32, i32* %30, align 16
  %32 = and i32 %31, 32768
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %106, label %34

34:                                               ; preds = %29
  store i32 0, i32* %6, align 4
  br label %35

35:                                               ; preds = %102, %34
  %36 = load i32, i32* %6, align 4
  %37 = icmp slt i32 %36, 16
  br i1 %37, label %38, label %105

38:                                               ; preds = %35
  %39 = load i32, i32* %6, align 4
  %40 = and i32 %39, 3
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %64, label %42

42:                                               ; preds = %38
  %43 = load i32, i32* %6, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %60

45:                                               ; preds = %42
  store i32 0, i32* %5, align 4
  br label %46

46:                                               ; preds = %56, %45
  %47 = load i32, i32* %5, align 4
  %48 = icmp slt i32 %47, 4
  br i1 %48, label %49, label %59

49:                                               ; preds = %46
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 1
  %52 = call i32 @bytestream2_get_le16(i32* %51)
  %53 = load i32, i32* %5, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 %54
  store i32 %52, i32* %55, align 4
  br label %56

56:                                               ; preds = %49
  %57 = load i32, i32* %5, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %5, align 4
  br label %46

59:                                               ; preds = %46
  br label %60

60:                                               ; preds = %59, %42
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 1
  %63 = call i32 @bytestream2_get_le32(i32* %62)
  store i32 %63, i32* %8, align 4
  br label %64

64:                                               ; preds = %60, %38
  store i32 0, i32* %5, align 4
  br label %65

65:                                               ; preds = %76, %64
  %66 = load i32, i32* %5, align 4
  %67 = icmp slt i32 %66, 4
  br i1 %67, label %68, label %81

68:                                               ; preds = %65
  %69 = load i32, i32* %8, align 4
  %70 = and i32 %69, 3
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = load i32*, i32** %9, align 8
  %75 = getelementptr inbounds i32, i32* %74, i32 1
  store i32* %75, i32** %9, align 8
  store i32 %73, i32* %74, align 4
  br label %76

76:                                               ; preds = %68
  %77 = load i32, i32* %5, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %5, align 4
  %79 = load i32, i32* %8, align 4
  %80 = ashr i32 %79, 2
  store i32 %80, i32* %8, align 4
  br label %65

81:                                               ; preds = %65
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = sub nsw i32 %84, 4
  %86 = load i32*, i32** %9, align 8
  %87 = sext i32 %85 to i64
  %88 = getelementptr inbounds i32, i32* %86, i64 %87
  store i32* %88, i32** %9, align 8
  %89 = load i32, i32* %6, align 4
  %90 = icmp eq i32 %89, 7
  br i1 %90, label %91, label %101

91:                                               ; preds = %81
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = mul nsw i32 8, %94
  %96 = sub nsw i32 %95, 4
  %97 = load i32*, i32** %9, align 8
  %98 = sext i32 %96 to i64
  %99 = sub i64 0, %98
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  store i32* %100, i32** %9, align 8
  br label %101

101:                                              ; preds = %91, %81
  br label %102

102:                                              ; preds = %101
  %103 = load i32, i32* %6, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %6, align 4
  br label %35

105:                                              ; preds = %35
  br label %202

106:                                              ; preds = %29
  %107 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 1
  %109 = call i32 @bytestream2_get_le64(i32* %108)
  store i32 %109, i32* %11, align 4
  store i32 4, i32* %5, align 4
  br label %110

110:                                              ; preds = %120, %106
  %111 = load i32, i32* %5, align 4
  %112 = icmp slt i32 %111, 8
  br i1 %112, label %113, label %123

113:                                              ; preds = %110
  %114 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 1
  %116 = call i32 @bytestream2_get_le16(i32* %115)
  %117 = load i32, i32* %5, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 %118
  store i32 %116, i32* %119, align 4
  br label %120

120:                                              ; preds = %113
  %121 = load i32, i32* %5, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %5, align 4
  br label %110

123:                                              ; preds = %110
  %124 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 4
  %125 = load i32, i32* %124, align 16
  %126 = and i32 %125, 32768
  %127 = icmp ne i32 %126, 0
  %128 = xor i1 %127, true
  %129 = zext i1 %128 to i32
  store i32 %129, i32* %10, align 4
  store i32 0, i32* %6, align 4
  br label %130

130:                                              ; preds = %198, %123
  %131 = load i32, i32* %6, align 4
  %132 = icmp slt i32 %131, 16
  br i1 %132, label %133, label %201

133:                                              ; preds = %130
  store i32 0, i32* %5, align 4
  br label %134

134:                                              ; preds = %145, %133
  %135 = load i32, i32* %5, align 4
  %136 = icmp slt i32 %135, 4
  br i1 %136, label %137, label %150

137:                                              ; preds = %134
  %138 = load i32, i32* %11, align 4
  %139 = and i32 %138, 3
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 %140
  %142 = load i32, i32* %141, align 4
  %143 = load i32*, i32** %9, align 8
  %144 = getelementptr inbounds i32, i32* %143, i32 1
  store i32* %144, i32** %9, align 8
  store i32 %142, i32* %143, align 4
  br label %145

145:                                              ; preds = %137
  %146 = load i32, i32* %5, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %5, align 4
  %148 = load i32, i32* %11, align 4
  %149 = ashr i32 %148, 2
  store i32 %149, i32* %11, align 4
  br label %134

150:                                              ; preds = %134
  %151 = load i32, i32* %10, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %174

153:                                              ; preds = %150
  %154 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %155 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = sub nsw i32 %156, 4
  %158 = load i32*, i32** %9, align 8
  %159 = sext i32 %157 to i64
  %160 = getelementptr inbounds i32, i32* %158, i64 %159
  store i32* %160, i32** %9, align 8
  %161 = load i32, i32* %6, align 4
  %162 = icmp eq i32 %161, 7
  br i1 %162, label %163, label %173

163:                                              ; preds = %153
  %164 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %165 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = mul nsw i32 8, %166
  %168 = sub nsw i32 %167, 4
  %169 = load i32*, i32** %9, align 8
  %170 = sext i32 %168 to i64
  %171 = sub i64 0, %170
  %172 = getelementptr inbounds i32, i32* %169, i64 %171
  store i32* %172, i32** %9, align 8
  br label %173

173:                                              ; preds = %163, %153
  br label %186

174:                                              ; preds = %150
  %175 = load i32, i32* %6, align 4
  %176 = and i32 %175, 1
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %185

178:                                              ; preds = %174
  %179 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %180 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %179, i32 0, i32 2
  %181 = load i32, i32* %180, align 8
  %182 = load i32*, i32** %9, align 8
  %183 = sext i32 %181 to i64
  %184 = getelementptr inbounds i32, i32* %182, i64 %183
  store i32* %184, i32** %9, align 8
  br label %185

185:                                              ; preds = %178, %174
  br label %186

186:                                              ; preds = %185, %173
  %187 = load i32, i32* %6, align 4
  %188 = icmp eq i32 %187, 7
  br i1 %188, label %189, label %197

189:                                              ; preds = %186
  %190 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 0
  %191 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 0
  %192 = getelementptr inbounds i32, i32* %191, i64 4
  %193 = call i32 @memcpy(i32* %190, i32* %192, i32 8)
  %194 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %195 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %194, i32 0, i32 1
  %196 = call i32 @bytestream2_get_le64(i32* %195)
  store i32 %196, i32* %11, align 4
  br label %197

197:                                              ; preds = %189, %186
  br label %198

198:                                              ; preds = %197
  %199 = load i32, i32* %6, align 4
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %6, align 4
  br label %130

201:                                              ; preds = %130
  br label %202

202:                                              ; preds = %201, %105
  ret i32 0
}

declare dso_local i32 @bytestream2_get_le16(i32*) #1

declare dso_local i32 @bytestream2_get_le32(i32*) #1

declare dso_local i32 @bytestream2_get_le64(i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
