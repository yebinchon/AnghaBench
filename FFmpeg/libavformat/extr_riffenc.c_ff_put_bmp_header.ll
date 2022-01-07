; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_riffenc.c_ff_put_bmp_header.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_riffenc.c_ff_put_bmp_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i64 }

@.str = private unnamed_addr constant [9 x i8] c"BottomUp\00", align 1
@AV_PIX_FMT_NONE = common dso_local global i32 0, align 4
@AV_PIX_FMT_MONOWHITE = common dso_local global i32 0, align 4
@AV_PIX_FMT_PAL8 = common dso_local global i32 0, align 4
@AV_PIX_FMT_MONOBLACK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_put_bmp_header(i32* %0, %struct.TYPE_3__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp sge i32 %16, 9
  br i1 %17, label %18, label %31

18:                                               ; preds = %4
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 6
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = sext i32 %24 to i64
  %26 = add nsw i64 %21, %25
  %27 = sub nsw i64 %26, 9
  %28 = call i32 @memcmp(i64 %27, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 9)
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  br label %31

31:                                               ; preds = %18, %4
  %32 = phi i1 [ false, %4 ], [ %30, %18 ]
  %33 = zext i1 %32 to i32
  store i32 %33, i32* %9, align 4
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* %9, align 4
  %38 = mul nsw i32 9, %37
  %39 = sub nsw i32 %36, %38
  store i32 %39, i32* %10, align 4
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %11, align 4
  %43 = load i32, i32* %11, align 4
  %44 = load i32, i32* @AV_PIX_FMT_NONE, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %53

46:                                               ; preds = %31
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = icmp eq i32 %49, 1
  br i1 %50, label %51, label %53

51:                                               ; preds = %46
  %52 = load i32, i32* @AV_PIX_FMT_MONOWHITE, align 4
  store i32 %52, i32* %11, align 4
  br label %53

53:                                               ; preds = %51, %46, %31
  %54 = load i32, i32* %7, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %70, label %56

56:                                               ; preds = %53
  %57 = load i32, i32* %11, align 4
  %58 = load i32, i32* @AV_PIX_FMT_PAL8, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %68, label %60

60:                                               ; preds = %56
  %61 = load i32, i32* %11, align 4
  %62 = load i32, i32* @AV_PIX_FMT_MONOWHITE, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %68, label %64

64:                                               ; preds = %60
  %65 = load i32, i32* %11, align 4
  %66 = load i32, i32* @AV_PIX_FMT_MONOBLACK, align 4
  %67 = icmp eq i32 %65, %66
  br label %68

68:                                               ; preds = %64, %60, %56
  %69 = phi i1 [ true, %60 ], [ true, %56 ], [ %67, %64 ]
  br label %70

70:                                               ; preds = %68, %53
  %71 = phi i1 [ false, %53 ], [ %69, %68 ]
  %72 = zext i1 %71 to i32
  store i32 %72, i32* %12, align 4
  %73 = load i32*, i32** %5, align 8
  %74 = load i32, i32* %8, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %79, label %76

76:                                               ; preds = %70
  %77 = load i32, i32* %12, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %76, %70
  br label %82

80:                                               ; preds = %76
  %81 = load i32, i32* %10, align 4
  br label %82

82:                                               ; preds = %80, %79
  %83 = phi i32 [ 0, %79 ], [ %81, %80 ]
  %84 = add nsw i32 40, %83
  %85 = call i32 @avio_wl32(i32* %73, i32 %84)
  %86 = load i32*, i32** %5, align 8
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @avio_wl32(i32* %86, i32 %89)
  %91 = load i32*, i32** %5, align 8
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 4
  %94 = load i32, i32* %93, align 8
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %99, label %96

96:                                               ; preds = %82
  %97 = load i32, i32* %9, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %96, %82
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 5
  %102 = load i32, i32* %101, align 4
  br label %108

103:                                              ; preds = %96
  %104 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 5
  %106 = load i32, i32* %105, align 4
  %107 = sub nsw i32 0, %106
  br label %108

108:                                              ; preds = %103, %99
  %109 = phi i32 [ %102, %99 ], [ %107, %103 ]
  %110 = call i32 @avio_wl32(i32* %91, i32 %109)
  %111 = load i32*, i32** %5, align 8
  %112 = call i32 @avio_wl16(i32* %111, i32 1)
  %113 = load i32*, i32** %5, align 8
  %114 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 8
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %122

118:                                              ; preds = %108
  %119 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 8
  br label %123

122:                                              ; preds = %108
  br label %123

123:                                              ; preds = %122, %118
  %124 = phi i32 [ %121, %118 ], [ 24, %122 ]
  %125 = call i32 @avio_wl16(i32* %113, i32 %124)
  %126 = load i32*, i32** %5, align 8
  %127 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %127, i32 0, i32 4
  %129 = load i32, i32* %128, align 8
  %130 = call i32 @avio_wl32(i32* %126, i32 %129)
  %131 = load i32*, i32** %5, align 8
  %132 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i32 0, i32 3
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %136 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %135, i32 0, i32 5
  %137 = load i32, i32* %136, align 4
  %138 = mul nsw i32 %134, %137
  %139 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %140 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 8
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %147

143:                                              ; preds = %123
  %144 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %145 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 8
  br label %148

147:                                              ; preds = %123
  br label %148

148:                                              ; preds = %147, %143
  %149 = phi i32 [ %146, %143 ], [ 24, %147 ]
  %150 = mul nsw i32 %138, %149
  %151 = add nsw i32 %150, 7
  %152 = sdiv i32 %151, 8
  %153 = call i32 @avio_wl32(i32* %131, i32 %152)
  %154 = load i32*, i32** %5, align 8
  %155 = call i32 @avio_wl32(i32* %154, i32 0)
  %156 = load i32*, i32** %5, align 8
  %157 = call i32 @avio_wl32(i32* %156, i32 0)
  %158 = load i32*, i32** %5, align 8
  %159 = load i32, i32* %12, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %166

161:                                              ; preds = %148
  %162 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %163 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 8
  %165 = shl i32 1, %164
  br label %167

166:                                              ; preds = %148
  br label %167

167:                                              ; preds = %166, %161
  %168 = phi i32 [ %165, %161 ], [ 0, %166 ]
  %169 = call i32 @avio_wl32(i32* %158, i32 %168)
  %170 = load i32*, i32** %5, align 8
  %171 = call i32 @avio_wl32(i32* %170, i32 0)
  %172 = load i32, i32* %8, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %238, label %174

174:                                              ; preds = %167
  %175 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %176 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %196

179:                                              ; preds = %174
  %180 = load i32*, i32** %5, align 8
  %181 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %182 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %181, i32 0, i32 6
  %183 = load i64, i64* %182, align 8
  %184 = load i32, i32* %10, align 4
  %185 = call i32 @avio_write(i32* %180, i64 %183, i32 %184)
  %186 = load i32, i32* %7, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %195, label %188

188:                                              ; preds = %179
  %189 = load i32, i32* %10, align 4
  %190 = and i32 %189, 1
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %195

192:                                              ; preds = %188
  %193 = load i32*, i32** %5, align 8
  %194 = call i32 @avio_w8(i32* %193, i32 0)
  br label %195

195:                                              ; preds = %192, %188, %179
  br label %237

196:                                              ; preds = %174
  %197 = load i32, i32* %12, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %236

199:                                              ; preds = %196
  store i32 0, i32* %13, align 4
  br label %200

200:                                              ; preds = %232, %199
  %201 = load i32, i32* %13, align 4
  %202 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %203 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %202, i32 0, i32 2
  %204 = load i32, i32* %203, align 8
  %205 = shl i32 1, %204
  %206 = icmp slt i32 %201, %205
  br i1 %206, label %207, label %235

207:                                              ; preds = %200
  %208 = load i32, i32* %13, align 4
  %209 = icmp eq i32 %208, 0
  br i1 %209, label %210, label %217

210:                                              ; preds = %207
  %211 = load i32, i32* %11, align 4
  %212 = load i32, i32* @AV_PIX_FMT_MONOWHITE, align 4
  %213 = icmp eq i32 %211, %212
  br i1 %213, label %214, label %217

214:                                              ; preds = %210
  %215 = load i32*, i32** %5, align 8
  %216 = call i32 @avio_wl32(i32* %215, i32 16777215)
  br label %231

217:                                              ; preds = %210, %207
  %218 = load i32, i32* %13, align 4
  %219 = icmp eq i32 %218, 1
  br i1 %219, label %220, label %227

220:                                              ; preds = %217
  %221 = load i32, i32* %11, align 4
  %222 = load i32, i32* @AV_PIX_FMT_MONOBLACK, align 4
  %223 = icmp eq i32 %221, %222
  br i1 %223, label %224, label %227

224:                                              ; preds = %220
  %225 = load i32*, i32** %5, align 8
  %226 = call i32 @avio_wl32(i32* %225, i32 16777215)
  br label %230

227:                                              ; preds = %220, %217
  %228 = load i32*, i32** %5, align 8
  %229 = call i32 @avio_wl32(i32* %228, i32 0)
  br label %230

230:                                              ; preds = %227, %224
  br label %231

231:                                              ; preds = %230, %214
  br label %232

232:                                              ; preds = %231
  %233 = load i32, i32* %13, align 4
  %234 = add nsw i32 %233, 1
  store i32 %234, i32* %13, align 4
  br label %200

235:                                              ; preds = %200
  br label %236

236:                                              ; preds = %235, %196
  br label %237

237:                                              ; preds = %236, %195
  br label %238

238:                                              ; preds = %237, %167
  ret void
}

declare dso_local i32 @memcmp(i64, i8*, i32) #1

declare dso_local i32 @avio_wl32(i32*, i32) #1

declare dso_local i32 @avio_wl16(i32*, i32) #1

declare dso_local i32 @avio_write(i32*, i64, i32) #1

declare dso_local i32 @avio_w8(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
