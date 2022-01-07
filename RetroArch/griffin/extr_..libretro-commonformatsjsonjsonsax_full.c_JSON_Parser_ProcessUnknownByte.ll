; ModuleID = '/home/carl/AnghaBench/RetroArch/griffin/extr_..libretro-commonformatsjsonjsonsax_full.c_JSON_Parser_ProcessUnknownByte.c'
source_filename = "/home/carl/AnghaBench/RetroArch/griffin/extr_..libretro-commonformatsjsonjsonsax_full.c_JSON_Parser_ProcessUnknownByte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_8__, i8* }
%struct.TYPE_8__ = type { i32, i32 }

@LONGEST_ENCODING_SEQUENCE = common dso_local global i32 0, align 4
@JSON_UTF8 = common dso_local global i8* null, align 8
@JSON_UTF32LE = common dso_local global i8* null, align 8
@JSON_UTF16LE = common dso_local global i8* null, align 8
@JSON_UTF32BE = common dso_local global i8* null, align 8
@JSON_UTF16BE = common dso_local global i8* null, align 8
@JSON_UnknownEncoding = common dso_local global i8* null, align 8
@JSON_Failure = common dso_local global i32 0, align 4
@JSON_Success = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i32)* @JSON_Parser_ProcessUnknownByte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @JSON_Parser_ProcessUnknownByte(%struct.TYPE_7__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* @LONGEST_ENCODING_SEQUENCE, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %6, align 8
  %12 = alloca i32, i64 %10, align 16
  store i64 %10, i64* %7, align 8
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  switch i32 %16, label %220 [
    i32 128, label %17
    i32 131, label %26
    i32 130, label %37
    i32 129, label %48
  ]

17:                                               ; preds = %2
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  store i32 131, i32* %20, align 8
  %21 = load i32, i32* %5, align 4
  %22 = shl i32 %21, 24
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 1
  store i32 %22, i32* %25, align 4
  br label %220

26:                                               ; preds = %2
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  store i32 130, i32* %29, align 8
  %30 = load i32, i32* %5, align 4
  %31 = shl i32 %30, 16
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = or i32 %35, %31
  store i32 %36, i32* %34, align 4
  br label %220

37:                                               ; preds = %2
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  store i32 129, i32* %40, align 8
  %41 = load i32, i32* %5, align 4
  %42 = shl i32 %41, 8
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = or i32 %46, %42
  store i32 %47, i32* %45, align 4
  br label %220

48:                                               ; preds = %2
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = ashr i32 %52, 24
  %54 = getelementptr inbounds i32, i32* %12, i64 0
  store i32 %53, i32* %54, align 16
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = ashr i32 %58, 16
  %60 = getelementptr inbounds i32, i32* %12, i64 1
  store i32 %59, i32* %60, align 4
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = ashr i32 %64, 8
  %66 = getelementptr inbounds i32, i32* %12, i64 2
  store i32 %65, i32* %66, align 8
  %67 = load i32, i32* %5, align 4
  %68 = getelementptr inbounds i32, i32* %12, i64 3
  store i32 %67, i32* %68, align 4
  %69 = getelementptr inbounds i32, i32* %12, i64 0
  %70 = load i32, i32* %69, align 16
  %71 = icmp eq i32 %70, 239
  br i1 %71, label %72, label %84

72:                                               ; preds = %48
  %73 = getelementptr inbounds i32, i32* %12, i64 1
  %74 = load i32, i32* %73, align 4
  %75 = icmp eq i32 %74, 187
  br i1 %75, label %76, label %84

76:                                               ; preds = %72
  %77 = getelementptr inbounds i32, i32* %12, i64 2
  %78 = load i32, i32* %77, align 8
  %79 = icmp eq i32 %78, 191
  br i1 %79, label %80, label %84

80:                                               ; preds = %76
  %81 = load i8*, i8** @JSON_UTF8, align 8
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 1
  store i8* %81, i8** %83, align 8
  br label %199

84:                                               ; preds = %76, %72, %48
  %85 = getelementptr inbounds i32, i32* %12, i64 0
  %86 = load i32, i32* %85, align 16
  %87 = icmp eq i32 %86, 255
  br i1 %87, label %88, label %108

88:                                               ; preds = %84
  %89 = getelementptr inbounds i32, i32* %12, i64 1
  %90 = load i32, i32* %89, align 4
  %91 = icmp eq i32 %90, 254
  br i1 %91, label %92, label %108

92:                                               ; preds = %88
  %93 = getelementptr inbounds i32, i32* %12, i64 3
  %94 = load i32, i32* %93, align 4
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %108

96:                                               ; preds = %92
  %97 = getelementptr inbounds i32, i32* %12, i64 2
  %98 = load i32, i32* %97, align 8
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %96
  %101 = load i8*, i8** @JSON_UTF32LE, align 8
  br label %104

102:                                              ; preds = %96
  %103 = load i8*, i8** @JSON_UTF16LE, align 8
  br label %104

104:                                              ; preds = %102, %100
  %105 = phi i8* [ %101, %100 ], [ %103, %102 ]
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 1
  store i8* %105, i8** %107, align 8
  br label %198

108:                                              ; preds = %92, %88, %84
  %109 = getelementptr inbounds i32, i32* %12, i64 0
  %110 = load i32, i32* %109, align 16
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %128

112:                                              ; preds = %108
  %113 = getelementptr inbounds i32, i32* %12, i64 1
  %114 = load i32, i32* %113, align 4
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %128

116:                                              ; preds = %112
  %117 = getelementptr inbounds i32, i32* %12, i64 2
  %118 = load i32, i32* %117, align 8
  %119 = icmp eq i32 %118, 254
  br i1 %119, label %120, label %128

120:                                              ; preds = %116
  %121 = getelementptr inbounds i32, i32* %12, i64 3
  %122 = load i32, i32* %121, align 4
  %123 = icmp eq i32 %122, 255
  br i1 %123, label %124, label %128

124:                                              ; preds = %120
  %125 = load i8*, i8** @JSON_UTF32BE, align 8
  %126 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %126, i32 0, i32 1
  store i8* %125, i8** %127, align 8
  br label %197

128:                                              ; preds = %120, %116, %112, %108
  %129 = getelementptr inbounds i32, i32* %12, i64 0
  %130 = load i32, i32* %129, align 16
  %131 = icmp eq i32 %130, 254
  br i1 %131, label %132, label %140

132:                                              ; preds = %128
  %133 = getelementptr inbounds i32, i32* %12, i64 1
  %134 = load i32, i32* %133, align 4
  %135 = icmp eq i32 %134, 255
  br i1 %135, label %136, label %140

136:                                              ; preds = %132
  %137 = load i8*, i8** @JSON_UTF16BE, align 8
  %138 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %139 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %138, i32 0, i32 1
  store i8* %137, i8** %139, align 8
  br label %196

140:                                              ; preds = %132, %128
  %141 = getelementptr inbounds i32, i32* %12, i64 0
  %142 = load i32, i32* %141, align 16
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %172

144:                                              ; preds = %140
  %145 = getelementptr inbounds i32, i32* %12, i64 1
  %146 = load i32, i32* %145, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %152

148:                                              ; preds = %144
  %149 = load i8*, i8** @JSON_UTF8, align 8
  %150 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %151 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %150, i32 0, i32 1
  store i8* %149, i8** %151, align 8
  br label %171

152:                                              ; preds = %144
  %153 = getelementptr inbounds i32, i32* %12, i64 2
  %154 = load i32, i32* %153, align 8
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %160

156:                                              ; preds = %152
  %157 = load i8*, i8** @JSON_UTF16LE, align 8
  %158 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %159 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %158, i32 0, i32 1
  store i8* %157, i8** %159, align 8
  br label %170

160:                                              ; preds = %152
  %161 = getelementptr inbounds i32, i32* %12, i64 3
  %162 = load i32, i32* %161, align 4
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %164, label %168

164:                                              ; preds = %160
  %165 = load i8*, i8** @JSON_UTF32LE, align 8
  %166 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %167 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %166, i32 0, i32 1
  store i8* %165, i8** %167, align 8
  br label %169

168:                                              ; preds = %160
  br label %169

169:                                              ; preds = %168, %164
  br label %170

170:                                              ; preds = %169, %156
  br label %171

171:                                              ; preds = %170, %148
  br label %195

172:                                              ; preds = %140
  %173 = getelementptr inbounds i32, i32* %12, i64 1
  %174 = load i32, i32* %173, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %180

176:                                              ; preds = %172
  %177 = load i8*, i8** @JSON_UTF16BE, align 8
  %178 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %179 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %178, i32 0, i32 1
  store i8* %177, i8** %179, align 8
  br label %194

180:                                              ; preds = %172
  %181 = getelementptr inbounds i32, i32* %12, i64 2
  %182 = load i32, i32* %181, align 8
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %184, label %192

184:                                              ; preds = %180
  %185 = getelementptr inbounds i32, i32* %12, i64 3
  %186 = load i32, i32* %185, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %192

188:                                              ; preds = %184
  %189 = load i8*, i8** @JSON_UTF32BE, align 8
  %190 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %191 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %190, i32 0, i32 1
  store i8* %189, i8** %191, align 8
  br label %193

192:                                              ; preds = %184, %180
  br label %193

193:                                              ; preds = %192, %188
  br label %194

194:                                              ; preds = %193, %176
  br label %195

195:                                              ; preds = %194, %171
  br label %196

196:                                              ; preds = %195, %136
  br label %197

197:                                              ; preds = %196, %124
  br label %198

198:                                              ; preds = %197, %104
  br label %199

199:                                              ; preds = %198, %80
  %200 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %201 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %200, i32 0, i32 1
  %202 = load i8*, i8** %201, align 8
  %203 = load i8*, i8** @JSON_UnknownEncoding, align 8
  %204 = icmp eq i8* %202, %203
  br i1 %204, label %205, label %208

205:                                              ; preds = %199
  %206 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %207 = call i32 @JSON_Parser_HandleInvalidEncodingSequence(%struct.TYPE_7__* %206, i32 4)
  store i32 %207, i32* %3, align 4
  store i32 1, i32* %8, align 4
  br label %222

208:                                              ; preds = %199
  %209 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %210 = call i32 @JSON_Parser_CallEncodingDetectedHandler(%struct.TYPE_7__* %209)
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %214, label %212

212:                                              ; preds = %208
  %213 = load i32, i32* @JSON_Failure, align 4
  store i32 %213, i32* %3, align 4
  store i32 1, i32* %8, align 4
  br label %222

214:                                              ; preds = %208
  %215 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %216 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %215, i32 0, i32 0
  %217 = call i32 @Decoder_Reset(%struct.TYPE_8__* %216)
  %218 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %219 = call i32 @JSON_Parser_ProcessInputBytes(%struct.TYPE_7__* %218, i32* %12, i32 4)
  store i32 %219, i32* %3, align 4
  store i32 1, i32* %8, align 4
  br label %222

220:                                              ; preds = %2, %37, %26, %17
  %221 = load i32, i32* @JSON_Success, align 4
  store i32 %221, i32* %3, align 4
  store i32 1, i32* %8, align 4
  br label %222

222:                                              ; preds = %220, %214, %212, %205
  %223 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %223)
  %224 = load i32, i32* %3, align 4
  ret i32 %224
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @JSON_Parser_HandleInvalidEncodingSequence(%struct.TYPE_7__*, i32) #2

declare dso_local i32 @JSON_Parser_CallEncodingDetectedHandler(%struct.TYPE_7__*) #2

declare dso_local i32 @Decoder_Reset(%struct.TYPE_8__*) #2

declare dso_local i32 @JSON_Parser_ProcessInputBytes(%struct.TYPE_7__*, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
