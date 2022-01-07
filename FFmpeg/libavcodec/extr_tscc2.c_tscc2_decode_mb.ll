; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_tscc2.c_tscc2_decode_mb.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_tscc2.c_tscc2_decode_mb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32*, %struct.TYPE_8__*, %struct.TYPE_7__*, %struct.TYPE_6__, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@ff_zigzag_scan = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i32*, i32, i32*, i32, i32)* @tscc2_decode_mb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tscc2_decode_mb(%struct.TYPE_9__* %0, i32* %1, i32 %2, i32* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32* %3, i32** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 4
  store i32* %26, i32** %14, align 8
  %27 = load i32*, i32** %14, align 8
  %28 = call i64 @get_bits1(i32* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %88

30:                                               ; preds = %6
  %31 = load i32*, i32** %14, align 8
  %32 = call i64 @get_bits1(i32* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %53

34:                                               ; preds = %30
  %35 = load i32*, i32** %14, align 8
  %36 = call i8* @get_bits(i32* %35, i32 8)
  %37 = ptrtoint i8* %36 to i32
  store i32 %37, i32* %20, align 4
  store i32 0, i32* %21, align 4
  br label %38

38:                                               ; preds = %45, %34
  %39 = load i32, i32* %21, align 4
  %40 = icmp slt i32 %39, 8
  br i1 %40, label %41, label %52

41:                                               ; preds = %38
  %42 = load i32*, i32** %11, align 8
  %43 = load i32, i32* %20, align 4
  %44 = call i32 @memset(i32* %42, i32 %43, i32 16)
  br label %45

45:                                               ; preds = %41
  %46 = load i32, i32* %21, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %21, align 4
  %48 = load i32, i32* %12, align 4
  %49 = load i32*, i32** %11, align 8
  %50 = sext i32 %48 to i64
  %51 = getelementptr inbounds i32, i32* %49, i64 %50
  store i32* %51, i32** %11, align 8
  br label %38

52:                                               ; preds = %38
  br label %87

53:                                               ; preds = %30
  %54 = load i32*, i32** %14, align 8
  %55 = call i32 @get_bits_left(i32* %54)
  %56 = icmp slt i32 %55, 1024
  br i1 %56, label %57, label %59

57:                                               ; preds = %53
  %58 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %58, i32* %7, align 4
  br label %233

59:                                               ; preds = %53
  store i32 0, i32* %21, align 4
  br label %60

60:                                               ; preds = %83, %59
  %61 = load i32, i32* %21, align 4
  %62 = icmp slt i32 %61, 8
  br i1 %62, label %63, label %86

63:                                               ; preds = %60
  store i32 0, i32* %22, align 4
  br label %64

64:                                               ; preds = %75, %63
  %65 = load i32, i32* %22, align 4
  %66 = icmp slt i32 %65, 16
  br i1 %66, label %67, label %78

67:                                               ; preds = %64
  %68 = load i32*, i32** %14, align 8
  %69 = call i8* @get_bits(i32* %68, i32 8)
  %70 = ptrtoint i8* %69 to i32
  %71 = load i32*, i32** %11, align 8
  %72 = load i32, i32* %22, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  store i32 %70, i32* %74, align 4
  br label %75

75:                                               ; preds = %67
  %76 = load i32, i32* %22, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %22, align 4
  br label %64

78:                                               ; preds = %64
  %79 = load i32, i32* %12, align 4
  %80 = load i32*, i32** %11, align 8
  %81 = sext i32 %79 to i64
  %82 = getelementptr inbounds i32, i32* %80, i64 %81
  store i32* %82, i32** %11, align 8
  br label %83

83:                                               ; preds = %78
  %84 = load i32, i32* %21, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %21, align 4
  br label %60

86:                                               ; preds = %60
  br label %87

87:                                               ; preds = %86, %52
  store i32 0, i32* %7, align 4
  br label %233

88:                                               ; preds = %6
  store i32 0, i32* %15, align 4
  store i32 0, i32* %22, align 4
  br label %89

89:                                               ; preds = %229, %88
  %90 = load i32, i32* %22, align 4
  %91 = icmp slt i32 %90, 2
  br i1 %91, label %92, label %232

92:                                               ; preds = %89
  store i32 0, i32* %23, align 4
  br label %93

93:                                               ; preds = %220, %92
  %94 = load i32, i32* %23, align 4
  %95 = icmp slt i32 %94, 4
  br i1 %95, label %96, label %223

96:                                               ; preds = %93
  %97 = load i32, i32* %22, align 4
  %98 = load i32, i32* %23, align 4
  %99 = or i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %105, label %101

101:                                              ; preds = %96
  %102 = load i32*, i32** %14, align 8
  %103 = call i8* @get_bits(i32* %102, i32 8)
  %104 = ptrtoint i8* %103 to i32
  store i32 %104, i32* %16, align 4
  br label %124

105:                                              ; preds = %96
  %106 = load i32*, i32** %14, align 8
  %107 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 3
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @get_vlc2(i32* %106, i32 %110, i32 9, i32 2)
  store i32 %111, i32* %16, align 4
  %112 = load i32, i32* %16, align 4
  %113 = icmp eq i32 %112, -1
  br i1 %113, label %114, label %116

114:                                              ; preds = %105
  %115 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %115, i32* %7, align 4
  br label %233

116:                                              ; preds = %105
  %117 = load i32, i32* %16, align 4
  %118 = icmp eq i32 %117, 256
  br i1 %118, label %119, label %123

119:                                              ; preds = %116
  %120 = load i32*, i32** %14, align 8
  %121 = call i8* @get_bits(i32* %120, i32 8)
  %122 = ptrtoint i8* %121 to i32
  store i32 %122, i32* %16, align 4
  br label %123

123:                                              ; preds = %119, %116
  br label %124

124:                                              ; preds = %123, %101
  %125 = load i32, i32* %16, align 4
  %126 = load i32, i32* %15, align 4
  %127 = add nsw i32 %125, %126
  %128 = and i32 %127, 255
  store i32 %128, i32* %16, align 4
  %129 = load i32, i32* %16, align 4
  store i32 %129, i32* %15, align 4
  %130 = load i32, i32* %16, align 4
  %131 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %132 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %131, i32 0, i32 0
  %133 = load i32*, i32** %132, align 8
  %134 = getelementptr inbounds i32, i32* %133, i64 0
  store i32 %130, i32* %134, align 4
  %135 = load i32*, i32** %14, align 8
  %136 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %137 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %136, i32 0, i32 2
  %138 = load %struct.TYPE_7__*, %struct.TYPE_7__** %137, align 8
  %139 = load i32, i32* %10, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %138, i64 %140
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @get_vlc2(i32* %135, i32 %143, i32 9, i32 1)
  store i32 %144, i32* %17, align 4
  %145 = load i32, i32* %17, align 4
  %146 = icmp eq i32 %145, -1
  br i1 %146, label %147, label %149

147:                                              ; preds = %124
  %148 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %148, i32* %7, align 4
  br label %233

149:                                              ; preds = %124
  store i32 1, i32* %19, align 4
  %150 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %151 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %150, i32 0, i32 0
  %152 = load i32*, i32** %151, align 8
  %153 = getelementptr inbounds i32, i32* %152, i64 1
  %154 = call i32 @memset(i32* %153, i32 0, i32 60)
  store i32 0, i32* %24, align 4
  br label %155

155:                                              ; preds = %205, %149
  %156 = load i32, i32* %24, align 4
  %157 = load i32, i32* %17, align 4
  %158 = icmp slt i32 %156, %157
  br i1 %158, label %159, label %208

159:                                              ; preds = %155
  %160 = load i32*, i32** %14, align 8
  %161 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %162 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %161, i32 0, i32 1
  %163 = load %struct.TYPE_8__*, %struct.TYPE_8__** %162, align 8
  %164 = load i32, i32* %10, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %163, i64 %165
  %167 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = call i32 @get_vlc2(i32* %160, i32 %168, i32 9, i32 2)
  store i32 %169, i32* %18, align 4
  %170 = load i32, i32* %18, align 4
  %171 = icmp eq i32 %170, -1
  br i1 %171, label %172, label %174

172:                                              ; preds = %159
  %173 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %173, i32* %7, align 4
  br label %233

174:                                              ; preds = %159
  %175 = load i32, i32* %18, align 4
  %176 = icmp eq i32 %175, 4096
  br i1 %176, label %177, label %181

177:                                              ; preds = %174
  %178 = load i32*, i32** %14, align 8
  %179 = call i8* @get_bits(i32* %178, i32 12)
  %180 = ptrtoint i8* %179 to i32
  store i32 %180, i32* %18, align 4
  br label %181

181:                                              ; preds = %177, %174
  %182 = load i32, i32* %18, align 4
  %183 = and i32 %182, 15
  %184 = load i32, i32* %19, align 4
  %185 = add nsw i32 %184, %183
  store i32 %185, i32* %19, align 4
  %186 = load i32, i32* %19, align 4
  %187 = icmp sge i32 %186, 16
  br i1 %187, label %188, label %190

188:                                              ; preds = %181
  %189 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %189, i32* %7, align 4
  br label %233

190:                                              ; preds = %181
  %191 = load i32, i32* %18, align 4
  %192 = ashr i32 %191, 4
  %193 = call i32 @sign_extend(i32 %192, i32 8)
  store i32 %193, i32* %20, align 4
  %194 = load i32, i32* %20, align 4
  %195 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %196 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %195, i32 0, i32 0
  %197 = load i32*, i32** %196, align 8
  %198 = load i64*, i64** @ff_zigzag_scan, align 8
  %199 = load i32, i32* %19, align 4
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %19, align 4
  %201 = sext i32 %199 to i64
  %202 = getelementptr inbounds i64, i64* %198, i64 %201
  %203 = load i64, i64* %202, align 8
  %204 = getelementptr inbounds i32, i32* %197, i64 %203
  store i32 %194, i32* %204, align 4
  br label %205

205:                                              ; preds = %190
  %206 = load i32, i32* %24, align 4
  %207 = add nsw i32 %206, 1
  store i32 %207, i32* %24, align 4
  br label %155

208:                                              ; preds = %155
  %209 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %210 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %209, i32 0, i32 0
  %211 = load i32*, i32** %210, align 8
  %212 = load i32*, i32** %9, align 8
  %213 = load i32*, i32** %11, align 8
  %214 = load i32, i32* %23, align 4
  %215 = mul nsw i32 %214, 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds i32, i32* %213, i64 %216
  %218 = load i32, i32* %12, align 4
  %219 = call i32 @tscc2_idct4_put(i32* %211, i32* %212, i32* %217, i32 %218)
  br label %220

220:                                              ; preds = %208
  %221 = load i32, i32* %23, align 4
  %222 = add nsw i32 %221, 1
  store i32 %222, i32* %23, align 4
  br label %93

223:                                              ; preds = %93
  %224 = load i32, i32* %12, align 4
  %225 = mul nsw i32 4, %224
  %226 = load i32*, i32** %11, align 8
  %227 = sext i32 %225 to i64
  %228 = getelementptr inbounds i32, i32* %226, i64 %227
  store i32* %228, i32** %11, align 8
  br label %229

229:                                              ; preds = %223
  %230 = load i32, i32* %22, align 4
  %231 = add nsw i32 %230, 1
  store i32 %231, i32* %22, align 4
  br label %89

232:                                              ; preds = %89
  store i32 0, i32* %7, align 4
  br label %233

233:                                              ; preds = %232, %188, %172, %147, %114, %87, %57
  %234 = load i32, i32* %7, align 4
  ret i32 %234
}

declare dso_local i64 @get_bits1(i32*) #1

declare dso_local i8* @get_bits(i32*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @get_bits_left(i32*) #1

declare dso_local i32 @get_vlc2(i32*, i32, i32, i32) #1

declare dso_local i32 @sign_extend(i32, i32) #1

declare dso_local i32 @tscc2_idct4_put(i32*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
