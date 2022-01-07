; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Proto_IkePacket.c_IkeParseEx.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Proto_IkePacket.c_IkeParseEx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i32, i32, i32, %struct.TYPE_14__*, i32, i32, i8*, i8* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i32, i8* }
%struct.TYPE_12__ = type { i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [29 x i8] c"ISAKMP: Invalid Packet Size\0A\00", align 1
@IKE_HEADER_FLAG_ENCRYPTED = common dso_local global i32 0, align 4
@IKE_HEADER_FLAG_COMMIT = common dso_local global i32 0, align 4
@IKE_HEADER_FLAG_AUTH_ONLY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"ISAKMP: Decrypt Failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_11__* @IkeParseEx(i8* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca %struct.TYPE_13__*, align 8
  %12 = alloca %struct.TYPE_12__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_13__*, align 8
  %17 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %10, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = icmp eq i8* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %4
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %5, align 8
  br label %208

21:                                               ; preds = %4
  %22 = load i8*, i8** %6, align 8
  %23 = load i32, i32* %7, align 4
  %24 = call i8* @MemToBuf(i8* %22, i32 %23)
  %25 = bitcast i8* %24 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %25, %struct.TYPE_13__** %11, align 8
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = sext i32 %28 to i64
  %30 = icmp ult i64 %29, 28
  br i1 %30, label %31, label %33

31:                                               ; preds = %21
  %32 = call i32 @Debug(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %204

33:                                               ; preds = %21
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i32 0, i32 1
  %36 = load i8*, i8** %35, align 8
  %37 = bitcast i8* %36 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %37, %struct.TYPE_12__** %12, align 8
  %38 = call %struct.TYPE_11__* @ZeroMalloc(i32 56)
  store %struct.TYPE_11__* %38, %struct.TYPE_11__** %10, align 8
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @Endian32(i32 %41)
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 6
  %47 = load i32, i32* %46, align 4
  %48 = call i8* @Endian64(i32 %47)
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 9
  store i8* %48, i8** %50, align 8
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 5
  %53 = load i32, i32* %52, align 4
  %54 = call i8* @Endian64(i32 %53)
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 8
  store i8* %54, i8** %56, align 8
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 4
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 7
  store i32 %59, i32* %61, align 4
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @IKE_HEADER_FLAG_ENCRYPTED, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  %68 = zext i1 %67 to i64
  %69 = select i1 %67, i32 1, i32 0
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 4
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @IKE_HEADER_FLAG_COMMIT, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  %78 = zext i1 %77 to i64
  %79 = select i1 %77, i32 1, i32 0
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 2
  store i32 %79, i32* %81, align 8
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @IKE_HEADER_FLAG_AUTH_ONLY, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  %88 = zext i1 %87 to i64
  %89 = select i1 %87, i32 1, i32 0
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 3
  store i32 %89, i32* %91, align 4
  %92 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @Endian32(i32 %94)
  %96 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 4
  store i32 %95, i32* %97, align 8
  %98 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %99 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @Endian32(i32 %103)
  %105 = icmp slt i32 %100, %104
  br i1 %105, label %113, label %106

106:                                              ; preds = %33
  %107 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %108 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @Endian32(i32 %109)
  %111 = sext i32 %110 to i64
  %112 = icmp ult i64 %111, 28
  br i1 %112, label %113, label %117

113:                                              ; preds = %106, %33
  %114 = call i32 @Debug(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %115 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %116 = call i32 @IkeFree(%struct.TYPE_11__* %115)
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %10, align 8
  br label %203

117:                                              ; preds = %106
  %118 = load i32, i32* %9, align 4
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %202

120:                                              ; preds = %117
  store i32 0, i32* %13, align 4
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %16, align 8
  %121 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %122 = bitcast %struct.TYPE_12__* %121 to i8*
  %123 = getelementptr i8, i8* %122, i64 28
  store i8* %123, i8** %14, align 8
  %124 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %125 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @Endian32(i32 %126)
  %128 = sext i32 %127 to i64
  %129 = sub i64 %128, 28
  %130 = trunc i64 %129 to i32
  store i32 %130, i32* %15, align 4
  %131 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %132 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %154

135:                                              ; preds = %120
  %136 = load i8*, i8** %14, align 8
  %137 = load i32, i32* %15, align 4
  %138 = load i32*, i32** %8, align 8
  %139 = call %struct.TYPE_13__* @IkeDecrypt(i8* %136, i32 %137, i32* %138)
  store %struct.TYPE_13__* %139, %struct.TYPE_13__** %16, align 8
  %140 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %141 = icmp ne %struct.TYPE_13__* %140, null
  br i1 %141, label %142, label %153

142:                                              ; preds = %135
  store i32 1, i32* %13, align 4
  %143 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %144 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %143, i32 0, i32 1
  %145 = load i8*, i8** %144, align 8
  store i8* %145, i8** %14, align 8
  %146 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %147 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  store i32 %148, i32* %15, align 4
  %149 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %150 = call %struct.TYPE_14__* @CloneBuf(%struct.TYPE_13__* %149)
  %151 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %152 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %151, i32 0, i32 5
  store %struct.TYPE_14__* %150, %struct.TYPE_14__** %152, align 8
  br label %153

153:                                              ; preds = %142, %135
  br label %155

154:                                              ; preds = %120
  store i32 1, i32* %13, align 4
  br label %155

155:                                              ; preds = %154, %153
  %156 = load i32, i32* %13, align 4
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %158, label %162

158:                                              ; preds = %155
  %159 = call i32 @Debug(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %160 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %161 = call i32 @IkeFree(%struct.TYPE_11__* %160)
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %10, align 8
  br label %195

162:                                              ; preds = %155
  %163 = load i8*, i8** %14, align 8
  %164 = load i32, i32* %15, align 4
  %165 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %166 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = call i32 @IkeParsePayloadListEx(i8* %163, i32 %164, i32 %167, i32* %17)
  %169 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %170 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %169, i32 0, i32 6
  store i32 %168, i32* %170, align 8
  %171 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %172 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %171, i32 0, i32 5
  %173 = load %struct.TYPE_14__*, %struct.TYPE_14__** %172, align 8
  %174 = icmp ne %struct.TYPE_14__* %173, null
  br i1 %174, label %175, label %187

175:                                              ; preds = %162
  %176 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %177 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %176, i32 0, i32 5
  %178 = load %struct.TYPE_14__*, %struct.TYPE_14__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = load i32, i32* %17, align 4
  %182 = call i32 @MIN(i32 %180, i32 %181)
  %183 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %184 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %183, i32 0, i32 5
  %185 = load %struct.TYPE_14__*, %struct.TYPE_14__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %185, i32 0, i32 0
  store i32 %182, i32* %186, align 4
  br label %194

187:                                              ; preds = %162
  %188 = load i8*, i8** %14, align 8
  %189 = load i32, i32* %15, align 4
  %190 = call i8* @MemToBuf(i8* %188, i32 %189)
  %191 = bitcast i8* %190 to %struct.TYPE_14__*
  %192 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %193 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %192, i32 0, i32 5
  store %struct.TYPE_14__* %191, %struct.TYPE_14__** %193, align 8
  br label %194

194:                                              ; preds = %187, %175
  br label %195

195:                                              ; preds = %194, %158
  %196 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %197 = icmp ne %struct.TYPE_13__* %196, null
  br i1 %197, label %198, label %201

198:                                              ; preds = %195
  %199 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %200 = call i32 @FreeBuf(%struct.TYPE_13__* %199)
  br label %201

201:                                              ; preds = %198, %195
  br label %202

202:                                              ; preds = %201, %117
  br label %203

203:                                              ; preds = %202, %113
  br label %204

204:                                              ; preds = %203, %31
  %205 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %206 = call i32 @FreeBuf(%struct.TYPE_13__* %205)
  %207 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  store %struct.TYPE_11__* %207, %struct.TYPE_11__** %5, align 8
  br label %208

208:                                              ; preds = %204, %20
  %209 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  ret %struct.TYPE_11__* %209
}

declare dso_local i8* @MemToBuf(i8*, i32) #1

declare dso_local i32 @Debug(i8*) #1

declare dso_local %struct.TYPE_11__* @ZeroMalloc(i32) #1

declare dso_local i32 @Endian32(i32) #1

declare dso_local i8* @Endian64(i32) #1

declare dso_local i32 @IkeFree(%struct.TYPE_11__*) #1

declare dso_local %struct.TYPE_13__* @IkeDecrypt(i8*, i32, i32*) #1

declare dso_local %struct.TYPE_14__* @CloneBuf(%struct.TYPE_13__*) #1

declare dso_local i32 @IkeParsePayloadListEx(i8*, i32, i32, i32*) #1

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local i32 @FreeBuf(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
