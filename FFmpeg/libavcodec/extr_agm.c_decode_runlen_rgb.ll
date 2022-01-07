; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_agm.c_decode_runlen_rgb.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_agm.c_decode_runlen_rgb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32*, i32, i32, i64** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32*, %struct.TYPE_5__*)* @decode_runlen_rgb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_runlen_rgb(%struct.TYPE_6__* %0, i32* %1, %struct.TYPE_5__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [4 x i64], align 16
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_5__* %2, %struct.TYPE_5__** %7, align 8
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 3
  %20 = load i64**, i64*** %19, align 8
  %21 = getelementptr inbounds i64*, i64** %20, i64 0
  %22 = load i64*, i64** %21, align 8
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = sub nsw i32 %25, 1
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  %31 = load i32, i32* %30, align 4
  %32 = mul nsw i32 %26, %31
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i64, i64* %22, i64 %33
  store i64* %34, i64** %8, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %35

35:                                               ; preds = %176, %3
  %36 = load i32*, i32** %6, align 8
  %37 = call i64 @bytestream2_get_bytes_left(i32* %36)
  %38 = icmp sgt i64 %37, 0
  br i1 %38, label %39, label %177

39:                                               ; preds = %35
  %40 = load i32*, i32** %6, align 8
  %41 = call i32 @bytestream2_peek_le32(i32* %40)
  store i32 %41, i32* %13, align 4
  %42 = load i32, i32* %13, align 4
  %43 = and i32 %42, 16777215
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* %13, align 4
  %45 = lshr i32 %44, 24
  %46 = icmp eq i32 %45, 119
  br i1 %46, label %47, label %116

47:                                               ; preds = %39
  %48 = load i32*, i32** %6, align 8
  %49 = call i32 @bytestream2_skip(i32* %48, i32 4)
  store i32 0, i32* %14, align 4
  br label %50

50:                                               ; preds = %59, %47
  %51 = load i32, i32* %14, align 4
  %52 = icmp slt i32 %51, 4
  br i1 %52, label %53, label %62

53:                                               ; preds = %50
  %54 = load i32*, i32** %6, align 8
  %55 = call i64 @bytestream2_get_byte(i32* %54)
  %56 = load i32, i32* %14, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds [4 x i64], [4 x i64]* %12, i64 0, i64 %57
  store i64 %55, i64* %58, align 8
  br label %59

59:                                               ; preds = %53
  %60 = load i32, i32* %14, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %14, align 4
  br label %50

62:                                               ; preds = %50
  br label %63

63:                                               ; preds = %114, %62
  %64 = load i32, i32* %9, align 4
  %65 = icmp sgt i32 %64, 0
  br i1 %65, label %66, label %115

66:                                               ; preds = %63
  %67 = load i32, i32* %9, align 4
  %68 = add nsw i32 %67, -1
  store i32 %68, i32* %9, align 4
  store i32 0, i32* %15, align 4
  br label %69

69:                                               ; preds = %111, %66
  %70 = load i32, i32* %15, align 4
  %71 = icmp slt i32 %70, 4
  br i1 %71, label %72, label %114

72:                                               ; preds = %69
  %73 = load i32, i32* %15, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds [4 x i64], [4 x i64]* %12, i64 0, i64 %74
  %76 = load i64, i64* %75, align 8
  %77 = load i64*, i64** %8, align 8
  %78 = load i32, i32* %11, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i64, i64* %77, i64 %79
  %81 = load i64, i64* %80, align 8
  %82 = add nsw i64 %81, %76
  store i64 %82, i64* %80, align 8
  %83 = load i32, i32* %11, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %11, align 4
  %85 = load i32, i32* %11, align 4
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = mul nsw i32 %88, 3
  %90 = icmp sge i32 %85, %89
  br i1 %90, label %91, label %110

91:                                               ; preds = %72
  store i32 0, i32* %11, align 4
  %92 = load i32, i32* %10, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %10, align 4
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 0
  %96 = load i32*, i32** %95, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 0
  %98 = load i32, i32* %97, align 4
  %99 = load i64*, i64** %8, align 8
  %100 = sext i32 %98 to i64
  %101 = sub i64 0, %100
  %102 = getelementptr inbounds i64, i64* %99, i64 %101
  store i64* %102, i64** %8, align 8
  %103 = load i32, i32* %10, align 4
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  %107 = icmp sge i32 %103, %106
  br i1 %107, label %108, label %109

108:                                              ; preds = %91
  store i32 0, i32* %4, align 4
  br label %178

109:                                              ; preds = %91
  br label %110

110:                                              ; preds = %109, %72
  br label %111

111:                                              ; preds = %110
  %112 = load i32, i32* %15, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %15, align 4
  br label %69

114:                                              ; preds = %69
  br label %63

115:                                              ; preds = %63
  br label %176

116:                                              ; preds = %39
  store i32 0, i32* %16, align 4
  br label %117

117:                                              ; preds = %126, %116
  %118 = load i32, i32* %16, align 4
  %119 = icmp slt i32 %118, 4
  br i1 %119, label %120, label %129

120:                                              ; preds = %117
  %121 = load i32*, i32** %6, align 8
  %122 = call i64 @bytestream2_get_byte(i32* %121)
  %123 = load i32, i32* %16, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds [4 x i64], [4 x i64]* %12, i64 0, i64 %124
  store i64 %122, i64* %125, align 8
  br label %126

126:                                              ; preds = %120
  %127 = load i32, i32* %16, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %16, align 4
  br label %117

129:                                              ; preds = %117
  store i32 0, i32* %17, align 4
  br label %130

130:                                              ; preds = %172, %129
  %131 = load i32, i32* %17, align 4
  %132 = icmp slt i32 %131, 4
  br i1 %132, label %133, label %175

133:                                              ; preds = %130
  %134 = load i32, i32* %17, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds [4 x i64], [4 x i64]* %12, i64 0, i64 %135
  %137 = load i64, i64* %136, align 8
  %138 = load i64*, i64** %8, align 8
  %139 = load i32, i32* %11, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i64, i64* %138, i64 %140
  %142 = load i64, i64* %141, align 8
  %143 = add nsw i64 %142, %137
  store i64 %143, i64* %141, align 8
  %144 = load i32, i32* %11, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %11, align 4
  %146 = load i32, i32* %11, align 4
  %147 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %148 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 8
  %150 = mul nsw i32 %149, 3
  %151 = icmp sge i32 %146, %150
  br i1 %151, label %152, label %171

152:                                              ; preds = %133
  store i32 0, i32* %11, align 4
  %153 = load i32, i32* %10, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %10, align 4
  %155 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %156 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %155, i32 0, i32 0
  %157 = load i32*, i32** %156, align 8
  %158 = getelementptr inbounds i32, i32* %157, i64 0
  %159 = load i32, i32* %158, align 4
  %160 = load i64*, i64** %8, align 8
  %161 = sext i32 %159 to i64
  %162 = sub i64 0, %161
  %163 = getelementptr inbounds i64, i64* %160, i64 %162
  store i64* %163, i64** %8, align 8
  %164 = load i32, i32* %10, align 4
  %165 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %166 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 4
  %168 = icmp sge i32 %164, %167
  br i1 %168, label %169, label %170

169:                                              ; preds = %152
  store i32 0, i32* %4, align 4
  br label %178

170:                                              ; preds = %152
  br label %171

171:                                              ; preds = %170, %133
  br label %172

172:                                              ; preds = %171
  %173 = load i32, i32* %17, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %17, align 4
  br label %130

175:                                              ; preds = %130
  br label %176

176:                                              ; preds = %175, %115
  br label %35

177:                                              ; preds = %35
  store i32 0, i32* %4, align 4
  br label %178

178:                                              ; preds = %177, %169, %108
  %179 = load i32, i32* %4, align 4
  ret i32 %179
}

declare dso_local i64 @bytestream2_get_bytes_left(i32*) #1

declare dso_local i32 @bytestream2_peek_le32(i32*) #1

declare dso_local i32 @bytestream2_skip(i32*, i32) #1

declare dso_local i64 @bytestream2_get_byte(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
