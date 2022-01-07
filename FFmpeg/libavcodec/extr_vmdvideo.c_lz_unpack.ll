; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_vmdvideo.c_lz_unpack.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_vmdvideo.c_lz_unpack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@QUEUE_SIZE = common dso_local global i32 0, align 4
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@QUEUE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i8*, i32)* @lz_unpack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lz_unpack(i8* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8, align 1
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %24 = load i32, i32* @QUEUE_SIZE, align 4
  %25 = zext i32 %24 to i64
  %26 = call i8* @llvm.stacksave()
  store i8* %26, i8** %12, align 8
  %27 = alloca i8, i64 %25, align 16
  store i64 %25, i64* %13, align 8
  %28 = load i8*, i8** %6, align 8
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @bytestream2_init(i32* %22, i8* %28, i32 %29)
  %31 = load i8*, i8** %8, align 8
  store i8* %31, i8** %10, align 8
  %32 = load i8*, i8** %10, align 8
  %33 = load i32, i32* %9, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8, i8* %32, i64 %34
  store i8* %35, i8** %11, align 8
  %36 = call i32 @bytestream2_get_le32(i32* %22)
  store i32 %36, i32* %15, align 4
  %37 = load i32, i32* @QUEUE_SIZE, align 4
  %38 = call i32 @memset(i8* %27, i32 32, i32 %37)
  %39 = call i32 @bytestream2_get_bytes_left(i32* %22)
  %40 = icmp slt i32 %39, 4
  br i1 %40, label %41, label %43

41:                                               ; preds = %4
  %42 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %42, i32* %5, align 4
  store i32 1, i32* %23, align 4
  br label %216

43:                                               ; preds = %4
  %44 = call i32 @bytestream2_peek_le32(i32* %22)
  %45 = icmp eq i32 %44, 1450709556
  br i1 %45, label %46, label %48

46:                                               ; preds = %43
  %47 = call i32 @bytestream2_skipu(i32* %22, i32 4)
  store i32 273, i32* %14, align 4
  store i32 18, i32* %18, align 4
  br label %49

48:                                               ; preds = %43
  store i32 4078, i32* %14, align 4
  store i32 100, i32* %18, align 4
  br label %49

49:                                               ; preds = %48, %46
  br label %50

50:                                               ; preds = %208, %49
  %51 = load i32, i32* %15, align 4
  %52 = icmp ugt i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %50
  %54 = call i32 @bytestream2_get_bytes_left(i32* %22)
  %55 = icmp sgt i32 %54, 0
  br label %56

56:                                               ; preds = %53, %50
  %57 = phi i1 [ false, %50 ], [ %55, %53 ]
  br i1 %57, label %58, label %209

58:                                               ; preds = %56
  %59 = call i8* @bytestream2_get_byteu(i32* %22)
  %60 = ptrtoint i8* %59 to i8
  store i8 %60, i8* %19, align 1
  %61 = load i8, i8* %19, align 1
  %62 = zext i8 %61 to i32
  %63 = icmp eq i32 %62, 255
  br i1 %63, label %64, label %101

64:                                               ; preds = %58
  %65 = load i32, i32* %15, align 4
  %66 = icmp ugt i32 %65, 8
  br i1 %66, label %67, label %101

67:                                               ; preds = %64
  %68 = load i8*, i8** %11, align 8
  %69 = load i8*, i8** %10, align 8
  %70 = ptrtoint i8* %68 to i64
  %71 = ptrtoint i8* %69 to i64
  %72 = sub i64 %70, %71
  %73 = icmp slt i64 %72, 8
  br i1 %73, label %77, label %74

74:                                               ; preds = %67
  %75 = call i32 @bytestream2_get_bytes_left(i32* %22)
  %76 = icmp slt i32 %75, 8
  br i1 %76, label %77, label %79

77:                                               ; preds = %74, %67
  %78 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %78, i32* %5, align 4
  store i32 1, i32* %23, align 4
  br label %216

79:                                               ; preds = %74
  store i32 0, i32* %20, align 4
  br label %80

80:                                               ; preds = %95, %79
  %81 = load i32, i32* %20, align 4
  %82 = icmp ult i32 %81, 8
  br i1 %82, label %83, label %98

83:                                               ; preds = %80
  %84 = call i8* @bytestream2_get_byteu(i32* %22)
  %85 = ptrtoint i8* %84 to i8
  %86 = load i8*, i8** %10, align 8
  %87 = getelementptr inbounds i8, i8* %86, i32 1
  store i8* %87, i8** %10, align 8
  store i8 %85, i8* %86, align 1
  %88 = load i32, i32* %14, align 4
  %89 = add i32 %88, 1
  store i32 %89, i32* %14, align 4
  %90 = zext i32 %88 to i64
  %91 = getelementptr inbounds i8, i8* %27, i64 %90
  store i8 %85, i8* %91, align 1
  %92 = load i32, i32* @QUEUE_MASK, align 4
  %93 = load i32, i32* %14, align 4
  %94 = and i32 %93, %92
  store i32 %94, i32* %14, align 4
  br label %95

95:                                               ; preds = %83
  %96 = load i32, i32* %20, align 4
  %97 = add i32 %96, 1
  store i32 %97, i32* %20, align 4
  br label %80

98:                                               ; preds = %80
  %99 = load i32, i32* %15, align 4
  %100 = sub i32 %99, 8
  store i32 %100, i32* %15, align 4
  br label %208

101:                                              ; preds = %64, %58
  store i32 0, i32* %20, align 4
  br label %102

102:                                              ; preds = %204, %101
  %103 = load i32, i32* %20, align 4
  %104 = icmp ult i32 %103, 8
  br i1 %104, label %105, label %207

105:                                              ; preds = %102
  %106 = load i32, i32* %15, align 4
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %105
  br label %207

109:                                              ; preds = %105
  %110 = load i8, i8* %19, align 1
  %111 = zext i8 %110 to i32
  %112 = and i32 %111, 1
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %140

114:                                              ; preds = %109
  %115 = load i8*, i8** %11, align 8
  %116 = load i8*, i8** %10, align 8
  %117 = ptrtoint i8* %115 to i64
  %118 = ptrtoint i8* %116 to i64
  %119 = sub i64 %117, %118
  %120 = icmp slt i64 %119, 1
  br i1 %120, label %124, label %121

121:                                              ; preds = %114
  %122 = call i32 @bytestream2_get_bytes_left(i32* %22)
  %123 = icmp slt i32 %122, 1
  br i1 %123, label %124, label %126

124:                                              ; preds = %121, %114
  %125 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %125, i32* %5, align 4
  store i32 1, i32* %23, align 4
  br label %216

126:                                              ; preds = %121
  %127 = call i8* @bytestream2_get_byteu(i32* %22)
  %128 = ptrtoint i8* %127 to i8
  %129 = load i8*, i8** %10, align 8
  %130 = getelementptr inbounds i8, i8* %129, i32 1
  store i8* %130, i8** %10, align 8
  store i8 %128, i8* %129, align 1
  %131 = load i32, i32* %14, align 4
  %132 = add i32 %131, 1
  store i32 %132, i32* %14, align 4
  %133 = zext i32 %131 to i64
  %134 = getelementptr inbounds i8, i8* %27, i64 %133
  store i8 %128, i8* %134, align 1
  %135 = load i32, i32* @QUEUE_MASK, align 4
  %136 = load i32, i32* %14, align 4
  %137 = and i32 %136, %135
  store i32 %137, i32* %14, align 4
  %138 = load i32, i32* %15, align 4
  %139 = add i32 %138, -1
  store i32 %139, i32* %15, align 4
  br label %199

140:                                              ; preds = %109
  %141 = call i32 @bytestream2_get_byte(i32* %22)
  store i32 %141, i32* %16, align 4
  %142 = call i32 @bytestream2_peek_byte(i32* %22)
  %143 = and i32 %142, 240
  %144 = shl i32 %143, 4
  %145 = load i32, i32* %16, align 4
  %146 = or i32 %145, %144
  store i32 %146, i32* %16, align 4
  %147 = call i32 @bytestream2_get_byte(i32* %22)
  %148 = and i32 %147, 15
  %149 = add nsw i32 %148, 3
  store i32 %149, i32* %17, align 4
  %150 = load i32, i32* %17, align 4
  %151 = load i32, i32* %18, align 4
  %152 = icmp eq i32 %150, %151
  br i1 %152, label %153, label %157

153:                                              ; preds = %140
  %154 = call i32 @bytestream2_get_byte(i32* %22)
  %155 = add nsw i32 %154, 15
  %156 = add nsw i32 %155, 3
  store i32 %156, i32* %17, align 4
  br label %157

157:                                              ; preds = %153, %140
  %158 = load i8*, i8** %11, align 8
  %159 = load i8*, i8** %10, align 8
  %160 = ptrtoint i8* %158 to i64
  %161 = ptrtoint i8* %159 to i64
  %162 = sub i64 %160, %161
  %163 = load i32, i32* %17, align 4
  %164 = zext i32 %163 to i64
  %165 = icmp slt i64 %162, %164
  br i1 %165, label %166, label %168

166:                                              ; preds = %157
  %167 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %167, i32* %5, align 4
  store i32 1, i32* %23, align 4
  br label %216

168:                                              ; preds = %157
  store i32 0, i32* %21, align 4
  br label %169

169:                                              ; preds = %192, %168
  %170 = load i32, i32* %21, align 4
  %171 = load i32, i32* %17, align 4
  %172 = icmp ult i32 %170, %171
  br i1 %172, label %173, label %195

173:                                              ; preds = %169
  %174 = load i32, i32* %16, align 4
  %175 = add i32 %174, 1
  store i32 %175, i32* %16, align 4
  %176 = load i32, i32* @QUEUE_MASK, align 4
  %177 = and i32 %174, %176
  %178 = zext i32 %177 to i64
  %179 = getelementptr inbounds i8, i8* %27, i64 %178
  %180 = load i8, i8* %179, align 1
  %181 = load i8*, i8** %10, align 8
  store i8 %180, i8* %181, align 1
  %182 = load i8*, i8** %10, align 8
  %183 = getelementptr inbounds i8, i8* %182, i32 1
  store i8* %183, i8** %10, align 8
  %184 = load i8, i8* %182, align 1
  %185 = load i32, i32* %14, align 4
  %186 = add i32 %185, 1
  store i32 %186, i32* %14, align 4
  %187 = zext i32 %185 to i64
  %188 = getelementptr inbounds i8, i8* %27, i64 %187
  store i8 %184, i8* %188, align 1
  %189 = load i32, i32* @QUEUE_MASK, align 4
  %190 = load i32, i32* %14, align 4
  %191 = and i32 %190, %189
  store i32 %191, i32* %14, align 4
  br label %192

192:                                              ; preds = %173
  %193 = load i32, i32* %21, align 4
  %194 = add i32 %193, 1
  store i32 %194, i32* %21, align 4
  br label %169

195:                                              ; preds = %169
  %196 = load i32, i32* %17, align 4
  %197 = load i32, i32* %15, align 4
  %198 = sub i32 %197, %196
  store i32 %198, i32* %15, align 4
  br label %199

199:                                              ; preds = %195, %126
  %200 = load i8, i8* %19, align 1
  %201 = zext i8 %200 to i32
  %202 = ashr i32 %201, 1
  %203 = trunc i32 %202 to i8
  store i8 %203, i8* %19, align 1
  br label %204

204:                                              ; preds = %199
  %205 = load i32, i32* %20, align 4
  %206 = add i32 %205, 1
  store i32 %206, i32* %20, align 4
  br label %102

207:                                              ; preds = %108, %102
  br label %208

208:                                              ; preds = %207, %98
  br label %50

209:                                              ; preds = %56
  %210 = load i8*, i8** %10, align 8
  %211 = load i8*, i8** %8, align 8
  %212 = ptrtoint i8* %210 to i64
  %213 = ptrtoint i8* %211 to i64
  %214 = sub i64 %212, %213
  %215 = trunc i64 %214 to i32
  store i32 %215, i32* %5, align 4
  store i32 1, i32* %23, align 4
  br label %216

216:                                              ; preds = %209, %166, %124, %77, %41
  %217 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %217)
  %218 = load i32, i32* %5, align 4
  ret i32 %218
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @bytestream2_init(i32*, i8*, i32) #2

declare dso_local i32 @bytestream2_get_le32(i32*) #2

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i32 @bytestream2_get_bytes_left(i32*) #2

declare dso_local i32 @bytestream2_peek_le32(i32*) #2

declare dso_local i32 @bytestream2_skipu(i32*, i32) #2

declare dso_local i8* @bytestream2_get_byteu(i32*) #2

declare dso_local i32 @bytestream2_get_byte(i32*) #2

declare dso_local i32 @bytestream2_peek_byte(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
