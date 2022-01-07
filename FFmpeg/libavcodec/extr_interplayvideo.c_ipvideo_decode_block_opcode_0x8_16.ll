; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_interplayvideo.c_ipvideo_decode_block_opcode_0x8_16.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_interplayvideo.c_ipvideo_decode_block_opcode_0x8_16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32*)* @ipvideo_decode_block_opcode_0x8_16 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipvideo_decode_block_opcode_0x8_16(%struct.TYPE_3__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [4 x i32], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %8, align 4
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 3
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to i32*
  store i32* %13, i32** %9, align 8
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 2
  %16 = call i8* @bytestream2_get_le16(i32* %15)
  %17 = ptrtoint i8* %16 to i32
  %18 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  store i32 %17, i32* %18, align 16
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 2
  %21 = call i8* @bytestream2_get_le16(i32* %20)
  %22 = ptrtoint i8* %21 to i32
  %23 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 1
  store i32 %22, i32* %23, align 4
  %24 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %25 = load i32, i32* %24, align 16
  %26 = and i32 %25, 32768
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %97, label %28

28:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %29

29:                                               ; preds = %93, %28
  %30 = load i32, i32* %6, align 4
  %31 = icmp slt i32 %30, 16
  br i1 %31, label %32, label %96

32:                                               ; preds = %29
  %33 = load i32, i32* %6, align 4
  %34 = and i32 %33, 3
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %55, label %36

36:                                               ; preds = %32
  %37 = load i32, i32* %6, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %50

39:                                               ; preds = %36
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 2
  %42 = call i8* @bytestream2_get_le16(i32* %41)
  %43 = ptrtoint i8* %42 to i32
  %44 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  store i32 %43, i32* %44, align 16
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 2
  %47 = call i8* @bytestream2_get_le16(i32* %46)
  %48 = ptrtoint i8* %47 to i32
  %49 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 1
  store i32 %48, i32* %49, align 4
  br label %50

50:                                               ; preds = %39, %36
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 2
  %53 = call i8* @bytestream2_get_le16(i32* %52)
  %54 = ptrtoint i8* %53 to i32
  store i32 %54, i32* %8, align 4
  br label %55

55:                                               ; preds = %50, %32
  store i32 0, i32* %5, align 4
  br label %56

56:                                               ; preds = %67, %55
  %57 = load i32, i32* %5, align 4
  %58 = icmp slt i32 %57, 4
  br i1 %58, label %59, label %72

59:                                               ; preds = %56
  %60 = load i32, i32* %8, align 4
  %61 = and i32 %60, 1
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = load i32*, i32** %9, align 8
  %66 = getelementptr inbounds i32, i32* %65, i32 1
  store i32* %66, i32** %9, align 8
  store i32 %64, i32* %65, align 4
  br label %67

67:                                               ; preds = %59
  %68 = load i32, i32* %5, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %5, align 4
  %70 = load i32, i32* %8, align 4
  %71 = lshr i32 %70, 1
  store i32 %71, i32* %8, align 4
  br label %56

72:                                               ; preds = %56
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = sub nsw i32 %75, 4
  %77 = load i32*, i32** %9, align 8
  %78 = sext i32 %76 to i64
  %79 = getelementptr inbounds i32, i32* %77, i64 %78
  store i32* %79, i32** %9, align 8
  %80 = load i32, i32* %6, align 4
  %81 = icmp eq i32 %80, 7
  br i1 %81, label %82, label %92

82:                                               ; preds = %72
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = mul nsw i32 8, %85
  %87 = sub nsw i32 %86, 4
  %88 = load i32*, i32** %9, align 8
  %89 = sext i32 %87 to i64
  %90 = sub i64 0, %89
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  store i32* %91, i32** %9, align 8
  br label %92

92:                                               ; preds = %82, %72
  br label %93

93:                                               ; preds = %92
  %94 = load i32, i32* %6, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %6, align 4
  br label %29

96:                                               ; preds = %29
  br label %216

97:                                               ; preds = %2
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 2
  %100 = call i32 @bytestream2_get_le32(i32* %99)
  store i32 %100, i32* %8, align 4
  %101 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 2
  %103 = call i8* @bytestream2_get_le16(i32* %102)
  %104 = ptrtoint i8* %103 to i32
  %105 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 2
  store i32 %104, i32* %105, align 8
  %106 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 2
  %108 = call i8* @bytestream2_get_le16(i32* %107)
  %109 = ptrtoint i8* %108 to i32
  %110 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 3
  store i32 %109, i32* %110, align 4
  %111 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 2
  %112 = load i32, i32* %111, align 8
  %113 = and i32 %112, 32768
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %170, label %115

115:                                              ; preds = %97
  store i32 0, i32* %6, align 4
  br label %116

116:                                              ; preds = %166, %115
  %117 = load i32, i32* %6, align 4
  %118 = icmp slt i32 %117, 16
  br i1 %118, label %119, label %169

119:                                              ; preds = %116
  store i32 0, i32* %5, align 4
  br label %120

120:                                              ; preds = %131, %119
  %121 = load i32, i32* %5, align 4
  %122 = icmp slt i32 %121, 4
  br i1 %122, label %123, label %136

123:                                              ; preds = %120
  %124 = load i32, i32* %8, align 4
  %125 = and i32 %124, 1
  %126 = zext i32 %125 to i64
  %127 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 %126
  %128 = load i32, i32* %127, align 4
  %129 = load i32*, i32** %9, align 8
  %130 = getelementptr inbounds i32, i32* %129, i32 1
  store i32* %130, i32** %9, align 8
  store i32 %128, i32* %129, align 4
  br label %131

131:                                              ; preds = %123
  %132 = load i32, i32* %5, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %5, align 4
  %134 = load i32, i32* %8, align 4
  %135 = lshr i32 %134, 1
  store i32 %135, i32* %8, align 4
  br label %120

136:                                              ; preds = %120
  %137 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %138 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = sub nsw i32 %139, 4
  %141 = load i32*, i32** %9, align 8
  %142 = sext i32 %140 to i64
  %143 = getelementptr inbounds i32, i32* %141, i64 %142
  store i32* %143, i32** %9, align 8
  %144 = load i32, i32* %6, align 4
  %145 = icmp eq i32 %144, 7
  br i1 %145, label %146, label %165

146:                                              ; preds = %136
  %147 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %148 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = mul nsw i32 8, %149
  %151 = sub nsw i32 %150, 4
  %152 = load i32*, i32** %9, align 8
  %153 = sext i32 %151 to i64
  %154 = sub i64 0, %153
  %155 = getelementptr inbounds i32, i32* %152, i64 %154
  store i32* %155, i32** %9, align 8
  %156 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 2
  %157 = load i32, i32* %156, align 8
  %158 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  store i32 %157, i32* %158, align 16
  %159 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 3
  %160 = load i32, i32* %159, align 4
  %161 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 1
  store i32 %160, i32* %161, align 4
  %162 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %163 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %162, i32 0, i32 2
  %164 = call i32 @bytestream2_get_le32(i32* %163)
  store i32 %164, i32* %8, align 4
  br label %165

165:                                              ; preds = %146, %136
  br label %166

166:                                              ; preds = %165
  %167 = load i32, i32* %6, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %6, align 4
  br label %116

169:                                              ; preds = %116
  br label %215

170:                                              ; preds = %97
  store i32 0, i32* %6, align 4
  br label %171

171:                                              ; preds = %211, %170
  %172 = load i32, i32* %6, align 4
  %173 = icmp slt i32 %172, 8
  br i1 %173, label %174, label %214

174:                                              ; preds = %171
  %175 = load i32, i32* %6, align 4
  %176 = icmp eq i32 %175, 4
  br i1 %176, label %177, label %187

177:                                              ; preds = %174
  %178 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 2
  %179 = load i32, i32* %178, align 8
  %180 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  store i32 %179, i32* %180, align 16
  %181 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 3
  %182 = load i32, i32* %181, align 4
  %183 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 1
  store i32 %182, i32* %183, align 4
  %184 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %185 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %184, i32 0, i32 2
  %186 = call i32 @bytestream2_get_le32(i32* %185)
  store i32 %186, i32* %8, align 4
  br label %187

187:                                              ; preds = %177, %174
  store i32 0, i32* %5, align 4
  br label %188

188:                                              ; preds = %199, %187
  %189 = load i32, i32* %5, align 4
  %190 = icmp slt i32 %189, 8
  br i1 %190, label %191, label %204

191:                                              ; preds = %188
  %192 = load i32, i32* %8, align 4
  %193 = and i32 %192, 1
  %194 = zext i32 %193 to i64
  %195 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 %194
  %196 = load i32, i32* %195, align 4
  %197 = load i32*, i32** %9, align 8
  %198 = getelementptr inbounds i32, i32* %197, i32 1
  store i32* %198, i32** %9, align 8
  store i32 %196, i32* %197, align 4
  br label %199

199:                                              ; preds = %191
  %200 = load i32, i32* %5, align 4
  %201 = add nsw i32 %200, 1
  store i32 %201, i32* %5, align 4
  %202 = load i32, i32* %8, align 4
  %203 = lshr i32 %202, 1
  store i32 %203, i32* %8, align 4
  br label %188

204:                                              ; preds = %188
  %205 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %206 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %205, i32 0, i32 1
  %207 = load i32, i32* %206, align 4
  %208 = load i32*, i32** %9, align 8
  %209 = sext i32 %207 to i64
  %210 = getelementptr inbounds i32, i32* %208, i64 %209
  store i32* %210, i32** %9, align 8
  br label %211

211:                                              ; preds = %204
  %212 = load i32, i32* %6, align 4
  %213 = add nsw i32 %212, 1
  store i32 %213, i32* %6, align 4
  br label %171

214:                                              ; preds = %171
  br label %215

215:                                              ; preds = %214, %169
  br label %216

216:                                              ; preds = %215, %96
  ret i32 0
}

declare dso_local i8* @bytestream2_get_le16(i32*) #1

declare dso_local i32 @bytestream2_get_le32(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
