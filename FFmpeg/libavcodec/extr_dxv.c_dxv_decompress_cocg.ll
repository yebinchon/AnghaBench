; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dxv.c_dxv_decompress_cocg.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dxv.c_dxv_decompress_cocg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*, i32, i32*, i32*, i32, i32)* @dxv_decompress_cocg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dxv_decompress_cocg(i32* %0, i32* %1, i32* %2, i32 %3, i32* %4, i32* %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca [256 x i32*], align 16
  %20 = alloca [256 x i32*], align 16
  %21 = alloca [256 x i32*], align 16
  %22 = alloca [256 x i32*], align 16
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  store i32* %0, i32** %10, align 8
  store i32* %1, i32** %11, align 8
  store i32* %2, i32** %12, align 8
  store i32 %3, i32* %13, align 4
  store i32* %4, i32** %14, align 8
  store i32* %5, i32** %15, align 8
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  %34 = bitcast [256 x i32*]* %19 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %34, i8 0, i64 2048, i1 false)
  %35 = bitcast [256 x i32*]* %20 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %35, i8 0, i64 2048, i1 false)
  %36 = bitcast [256 x i32*]* %21 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %36, i8 0, i64 2048, i1 false)
  %37 = bitcast [256 x i32*]* %22 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %37, i8 0, i64 2048, i1 false)
  %38 = load i32*, i32** %11, align 8
  %39 = call i8* @bytestream2_get_le32(i32* %38)
  %40 = ptrtoint i8* %39 to i32
  store i32 %40, i32* %23, align 4
  %41 = load i32*, i32** %11, align 8
  %42 = call i8* @bytestream2_get_le32(i32* %41)
  %43 = ptrtoint i8* %42 to i32
  store i32 %43, i32* %24, align 4
  %44 = load i32*, i32** %11, align 8
  %45 = call i8* @bytestream2_get_le32(i32* %44)
  %46 = ptrtoint i8* %45 to i32
  store i32 %46, i32* %25, align 4
  %47 = load i32*, i32** %11, align 8
  %48 = call i32 @bytestream2_tell(i32* %47)
  store i32 %48, i32* %26, align 4
  store i32 0, i32* %29, align 4
  store i32 0, i32* %30, align 4
  store i32 0, i32* %32, align 4
  store i32 0, i32* %33, align 4
  %49 = load i32, i32* %23, align 4
  %50 = icmp slt i32 %49, 12
  br i1 %50, label %57, label %51

51:                                               ; preds = %8
  %52 = load i32, i32* %23, align 4
  %53 = sub nsw i32 %52, 12
  %54 = load i32*, i32** %11, align 8
  %55 = call i32 @bytestream2_get_bytes_left(i32* %54)
  %56 = icmp sgt i32 %53, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %51, %8
  %58 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %58, i32* %9, align 4
  br label %205

59:                                               ; preds = %51
  %60 = load i32*, i32** %12, align 8
  store i32* %60, i32** %18, align 8
  %61 = load i32*, i32** %11, align 8
  %62 = load i32, i32* %23, align 4
  %63 = sub nsw i32 %62, 12
  %64 = call i32 @bytestream2_skip(i32* %61, i32 %63)
  %65 = load i32, i32* %24, align 4
  %66 = load i32, i32* %16, align 4
  %67 = icmp ugt i32 %65, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %59
  %69 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %69, i32* %9, align 4
  br label %205

70:                                               ; preds = %59
  %71 = load i32*, i32** %11, align 8
  %72 = load i32*, i32** %14, align 8
  %73 = load i32, i32* %24, align 4
  %74 = call i32 @dxv_decompress_opcodes(i32* %71, i32* %72, i32 %73)
  store i32 %74, i32* %27, align 4
  %75 = load i32, i32* %27, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %70
  %78 = load i32, i32* %27, align 4
  store i32 %78, i32* %9, align 4
  br label %205

79:                                               ; preds = %70
  %80 = load i32, i32* %25, align 4
  %81 = load i32, i32* %17, align 4
  %82 = icmp ugt i32 %80, %81
  br i1 %82, label %83, label %85

83:                                               ; preds = %79
  %84 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %84, i32* %9, align 4
  br label %205

85:                                               ; preds = %79
  %86 = load i32*, i32** %11, align 8
  %87 = load i32*, i32** %15, align 8
  %88 = load i32, i32* %25, align 4
  %89 = call i32 @dxv_decompress_opcodes(i32* %86, i32* %87, i32 %88)
  store i32 %89, i32* %28, align 4
  %90 = load i32, i32* %28, align 4
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %85
  %93 = load i32, i32* %28, align 4
  store i32 %93, i32* %9, align 4
  br label %205

94:                                               ; preds = %85
  %95 = load i32*, i32** %11, align 8
  %96 = load i32, i32* %26, align 4
  %97 = load i32, i32* @SEEK_SET, align 4
  %98 = call i32 @bytestream2_seek(i32* %95, i32 %96, i32 %97)
  %99 = load i32*, i32** %18, align 8
  %100 = load i32*, i32** %11, align 8
  %101 = call i8* @bytestream2_get_le32(i32* %100)
  %102 = call i32 @AV_WL32(i32* %99, i8* %101)
  %103 = load i32*, i32** %18, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 4
  %105 = load i32*, i32** %11, align 8
  %106 = call i8* @bytestream2_get_le32(i32* %105)
  %107 = call i32 @AV_WL32(i32* %104, i8* %106)
  %108 = load i32*, i32** %18, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 8
  %110 = load i32*, i32** %11, align 8
  %111 = call i8* @bytestream2_get_le32(i32* %110)
  %112 = call i32 @AV_WL32(i32* %109, i8* %111)
  %113 = load i32*, i32** %18, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 12
  %115 = load i32*, i32** %11, align 8
  %116 = call i8* @bytestream2_get_le32(i32* %115)
  %117 = call i32 @AV_WL32(i32* %114, i8* %116)
  %118 = load i32*, i32** %18, align 8
  %119 = load i32*, i32** %18, align 8
  %120 = call i32 @AV_RL16(i32* %119)
  %121 = mul i32 -1640531535, %120
  %122 = lshr i32 %121, 24
  %123 = zext i32 %122 to i64
  %124 = getelementptr inbounds [256 x i32*], [256 x i32*]* %20, i64 0, i64 %123
  store i32* %118, i32** %124, align 8
  %125 = load i32*, i32** %18, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 2
  %127 = load i32*, i32** %18, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 2
  %129 = call i32 @AV_RL32(i32* %128)
  %130 = and i32 %129, 16777215
  %131 = mul i32 -1640531535, %130
  %132 = lshr i32 %131, 24
  %133 = zext i32 %132 to i64
  %134 = getelementptr inbounds [256 x i32*], [256 x i32*]* %22, i64 0, i64 %133
  store i32* %126, i32** %134, align 8
  %135 = load i32*, i32** %18, align 8
  %136 = getelementptr inbounds i32, i32* %135, i64 8
  %137 = load i32*, i32** %18, align 8
  %138 = getelementptr inbounds i32, i32* %137, i64 8
  %139 = call i32 @AV_RL16(i32* %138)
  %140 = mul i32 -1640531535, %139
  %141 = lshr i32 %140, 24
  %142 = zext i32 %141 to i64
  %143 = getelementptr inbounds [256 x i32*], [256 x i32*]* %19, i64 0, i64 %142
  store i32* %136, i32** %143, align 8
  %144 = load i32*, i32** %18, align 8
  %145 = getelementptr inbounds i32, i32* %144, i64 10
  %146 = load i32*, i32** %18, align 8
  %147 = getelementptr inbounds i32, i32* %146, i64 10
  %148 = call i32 @AV_RL32(i32* %147)
  %149 = and i32 %148, 16777215
  %150 = mul i32 -1640531535, %149
  %151 = lshr i32 %150, 24
  %152 = zext i32 %151 to i64
  %153 = getelementptr inbounds [256 x i32*], [256 x i32*]* %21, i64 0, i64 %152
  store i32* %145, i32** %153, align 8
  %154 = load i32*, i32** %18, align 8
  %155 = getelementptr inbounds i32, i32* %154, i64 16
  store i32* %155, i32** %18, align 8
  br label %156

156:                                              ; preds = %192, %94
  %157 = load i32*, i32** %18, align 8
  %158 = getelementptr inbounds i32, i32* %157, i64 10
  %159 = load i32*, i32** %12, align 8
  %160 = load i32, i32* %13, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i32, i32* %159, i64 %161
  %163 = icmp ult i32* %158, %162
  br i1 %163, label %164, label %193

164:                                              ; preds = %156
  %165 = load i32*, i32** %10, align 8
  %166 = load i32*, i32** %11, align 8
  %167 = load i32*, i32** %12, align 8
  %168 = load i32, i32* %13, align 4
  %169 = load i32*, i32** %14, align 8
  %170 = load i32, i32* %24, align 4
  %171 = getelementptr inbounds [256 x i32*], [256 x i32*]* %20, i64 0, i64 0
  %172 = getelementptr inbounds [256 x i32*], [256 x i32*]* %22, i64 0, i64 0
  %173 = call i32 @dxv_decompress_cgo(i32* %165, i32* %166, i32* %167, i32 %168, i32* %169, i32* %29, i32 %170, i32** %18, i32* %32, i32** %171, i32** %172, i32 8)
  store i32 %173, i32* %31, align 4
  %174 = load i32, i32* %31, align 4
  %175 = icmp slt i32 %174, 0
  br i1 %175, label %176, label %178

176:                                              ; preds = %164
  %177 = load i32, i32* %31, align 4
  store i32 %177, i32* %9, align 4
  br label %205

178:                                              ; preds = %164
  %179 = load i32*, i32** %10, align 8
  %180 = load i32*, i32** %11, align 8
  %181 = load i32*, i32** %12, align 8
  %182 = load i32, i32* %13, align 4
  %183 = load i32*, i32** %15, align 8
  %184 = load i32, i32* %25, align 4
  %185 = getelementptr inbounds [256 x i32*], [256 x i32*]* %19, i64 0, i64 0
  %186 = getelementptr inbounds [256 x i32*], [256 x i32*]* %21, i64 0, i64 0
  %187 = call i32 @dxv_decompress_cgo(i32* %179, i32* %180, i32* %181, i32 %182, i32* %183, i32* %30, i32 %184, i32** %18, i32* %33, i32** %185, i32** %186, i32 8)
  store i32 %187, i32* %31, align 4
  %188 = load i32, i32* %31, align 4
  %189 = icmp slt i32 %188, 0
  br i1 %189, label %190, label %192

190:                                              ; preds = %178
  %191 = load i32, i32* %31, align 4
  store i32 %191, i32* %9, align 4
  br label %205

192:                                              ; preds = %178
  br label %156

193:                                              ; preds = %156
  %194 = load i32*, i32** %11, align 8
  %195 = load i32, i32* %26, align 4
  %196 = sub nsw i32 %195, 12
  %197 = load i32, i32* %23, align 4
  %198 = add nsw i32 %196, %197
  %199 = load i32, i32* %27, align 4
  %200 = add nsw i32 %198, %199
  %201 = load i32, i32* %28, align 4
  %202 = add nsw i32 %200, %201
  %203 = load i32, i32* @SEEK_SET, align 4
  %204 = call i32 @bytestream2_seek(i32* %194, i32 %202, i32 %203)
  store i32 0, i32* %9, align 4
  br label %205

205:                                              ; preds = %193, %190, %176, %92, %83, %77, %68, %57
  %206 = load i32, i32* %9, align 4
  ret i32 %206
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i8* @bytestream2_get_le32(i32*) #2

declare dso_local i32 @bytestream2_tell(i32*) #2

declare dso_local i32 @bytestream2_get_bytes_left(i32*) #2

declare dso_local i32 @bytestream2_skip(i32*, i32) #2

declare dso_local i32 @dxv_decompress_opcodes(i32*, i32*, i32) #2

declare dso_local i32 @bytestream2_seek(i32*, i32, i32) #2

declare dso_local i32 @AV_WL32(i32*, i8*) #2

declare dso_local i32 @AV_RL16(i32*) #2

declare dso_local i32 @AV_RL32(i32*) #2

declare dso_local i32 @dxv_decompress_cgo(i32*, i32*, i32*, i32, i32*, i32*, i32, i32**, i32*, i32**, i32**, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
