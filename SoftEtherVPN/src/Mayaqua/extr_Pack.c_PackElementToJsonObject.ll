; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Pack.c_PackElementToJsonObject.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Pack.c_PackElementToJsonObject.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32, %struct.TYPE_8__**, i32, i32 }
%struct.TYPE_8__ = type { i8*, i8* }
%struct.TYPE_10__ = type { i32, i32* }

@MAX_PATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"@\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [1 x i32] zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @PackElementToJsonObject(i32* %0, i32* %1, %struct.TYPE_9__* %2, i64 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [64 x i8], align 16
  %15 = alloca [64 x i8], align 16
  %16 = alloca %struct.TYPE_10__*, align 8
  %17 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_9__* %2, %struct.TYPE_9__** %7, align 8
  store i64 %3, i64* %8, align 8
  %18 = load i32, i32* @MAX_PATH, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %10, align 8
  %21 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %11, align 8
  %22 = load i32*, i32** %5, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %30, label %24

24:                                               ; preds = %4
  %25 = load i32*, i32** %6, align 8
  %26 = icmp eq i32* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %24
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %29 = icmp eq %struct.TYPE_9__* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %27, %24, %4
  store i32 1, i32* %12, align 4
  br label %223

31:                                               ; preds = %27
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %33 = call i8* @DetermineJsonSuffixForPackElement(%struct.TYPE_9__* %32)
  store i8* %33, i8** %9, align 8
  %34 = load i8*, i8** %9, align 8
  %35 = icmp eq i8* %34, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  store i32 1, i32* %12, align 4
  br label %223

37:                                               ; preds = %31
  %38 = trunc i64 %19 to i32
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @StrCpy(i8* %21, i32 %38, i32 %41)
  %43 = trunc i64 %19 to i32
  %44 = load i8*, i8** %9, align 8
  %45 = call i32 @StrCat(i8* %21, i32 %43, i8* %44)
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  switch i32 %48, label %222 [
    i32 131, label %49
    i32 130, label %101
    i32 132, label %134
    i32 129, label %164
    i32 128, label %193
  ]

49:                                               ; preds = %37
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %76

54:                                               ; preds = %49
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @InStr(i32 %57, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %75

60:                                               ; preds = %54
  %61 = load i32*, i32** %6, align 8
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 4
  %64 = load i32, i32* %63, align 8
  %65 = load i64, i64* %8, align 8
  %66 = call i32 @PackGetIpEx(i32* %61, i32 %64, i32* %13, i64 %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %60
  %69 = getelementptr inbounds [64 x i8], [64 x i8]* %14, i64 0, i64 0
  %70 = call i32 @IPToStr(i8* %69, i32 64, i32* %13)
  %71 = load i32*, i32** %5, align 8
  %72 = getelementptr inbounds [64 x i8], [64 x i8]* %14, i64 0, i64 0
  %73 = call i32 @JsonSetStr(i32* %71, i8* %21, i8* %72)
  br label %74

74:                                               ; preds = %68, %60
  br label %75

75:                                               ; preds = %74, %54
  br label %100

76:                                               ; preds = %49
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 5
  %79 = load i32, i32* %78, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %90

81:                                               ; preds = %76
  %82 = load i32*, i32** %5, align 8
  %83 = load i32*, i32** %6, align 8
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 4
  %86 = load i32, i32* %85, align 8
  %87 = load i64, i64* %8, align 8
  %88 = call i32 @PackGetBoolEx(i32* %83, i32 %86, i64 %87)
  %89 = call i32 @JsonSetBool(i32* %82, i8* %21, i32 %88)
  br label %99

90:                                               ; preds = %76
  %91 = load i32*, i32** %5, align 8
  %92 = load i32*, i32** %6, align 8
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 4
  %95 = load i32, i32* %94, align 8
  %96 = load i64, i64* %8, align 8
  %97 = call i32 @PackGetIntEx(i32* %92, i32 %95, i64 %96)
  %98 = call i32 @JsonSetNumber(i32* %91, i8* %21, i32 %97)
  br label %99

99:                                               ; preds = %90, %81
  br label %100

100:                                              ; preds = %99, %75
  br label %222

101:                                              ; preds = %37
  %102 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %133

106:                                              ; preds = %101
  %107 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %120

111:                                              ; preds = %106
  %112 = load i32*, i32** %5, align 8
  %113 = load i32*, i32** %6, align 8
  %114 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i32 0, i32 4
  %116 = load i32, i32* %115, align 8
  %117 = load i64, i64* %8, align 8
  %118 = call i32 @PackGetInt64Ex(i32* %113, i32 %116, i64 %117)
  %119 = call i32 @JsonSetNumber(i32* %112, i8* %21, i32 %118)
  br label %132

120:                                              ; preds = %106
  %121 = getelementptr inbounds [64 x i8], [64 x i8]* %15, i64 0, i64 0
  %122 = load i32*, i32** %6, align 8
  %123 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %124 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %123, i32 0, i32 4
  %125 = load i32, i32* %124, align 8
  %126 = load i64, i64* %8, align 8
  %127 = call i32 @PackGetInt64Ex(i32* %122, i32 %125, i64 %126)
  %128 = call i32 @SystemTime64ToJsonStr(i8* %121, i32 64, i32 %127)
  %129 = load i32*, i32** %5, align 8
  %130 = getelementptr inbounds [64 x i8], [64 x i8]* %15, i64 0, i64 0
  %131 = call i32 @JsonSetStr(i32* %129, i8* %21, i8* %130)
  br label %132

132:                                              ; preds = %120, %111
  br label %133

133:                                              ; preds = %132, %101
  br label %222

134:                                              ; preds = %37
  %135 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %136 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %139, label %163

139:                                              ; preds = %134
  %140 = load i32*, i32** %6, align 8
  %141 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %142 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %141, i32 0, i32 4
  %143 = load i32, i32* %142, align 8
  %144 = load i64, i64* %8, align 8
  %145 = call %struct.TYPE_10__* @PackGetBufEx(i32* %140, i32 %143, i64 %144)
  store %struct.TYPE_10__* %145, %struct.TYPE_10__** %16, align 8
  %146 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %147 = icmp ne %struct.TYPE_10__* %146, null
  br i1 %147, label %148, label %159

148:                                              ; preds = %139
  %149 = load i32*, i32** %5, align 8
  %150 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %151 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %150, i32 0, i32 1
  %152 = load i32*, i32** %151, align 8
  %153 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %154 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = call i32 @JsonSetData(i32* %149, i8* %21, i32* %152, i32 %155)
  %157 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %158 = call i32 @FreeBuf(%struct.TYPE_10__* %157)
  br label %162

159:                                              ; preds = %139
  store i32 0, i32* %17, align 4
  %160 = load i32*, i32** %5, align 8
  %161 = call i32 @JsonSetData(i32* %160, i8* %21, i32* %17, i32 0)
  br label %162

162:                                              ; preds = %159, %148
  br label %163

163:                                              ; preds = %162, %134
  br label %222

164:                                              ; preds = %37
  %165 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %166 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %169, label %192

169:                                              ; preds = %164
  %170 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %171 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %170, i32 0, i32 3
  %172 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %171, align 8
  %173 = load i64, i64* %8, align 8
  %174 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %172, i64 %173
  %175 = load %struct.TYPE_8__*, %struct.TYPE_8__** %174, align 8
  %176 = icmp ne %struct.TYPE_8__* %175, null
  br i1 %176, label %177, label %188

177:                                              ; preds = %169
  %178 = load i32*, i32** %5, align 8
  %179 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %180 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %179, i32 0, i32 3
  %181 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %180, align 8
  %182 = load i64, i64* %8, align 8
  %183 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %181, i64 %182
  %184 = load %struct.TYPE_8__*, %struct.TYPE_8__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %184, i32 0, i32 0
  %186 = load i8*, i8** %185, align 8
  %187 = call i32 @JsonSetStr(i32* %178, i8* %21, i8* %186)
  br label %191

188:                                              ; preds = %169
  %189 = load i32*, i32** %5, align 8
  %190 = call i32 @JsonSetStr(i32* %189, i8* %21, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  br label %191

191:                                              ; preds = %188, %177
  br label %192

192:                                              ; preds = %191, %164
  br label %222

193:                                              ; preds = %37
  %194 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %195 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 4
  %197 = icmp eq i32 %196, 0
  br i1 %197, label %198, label %221

198:                                              ; preds = %193
  %199 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %200 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %199, i32 0, i32 3
  %201 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %200, align 8
  %202 = load i64, i64* %8, align 8
  %203 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %201, i64 %202
  %204 = load %struct.TYPE_8__*, %struct.TYPE_8__** %203, align 8
  %205 = icmp ne %struct.TYPE_8__* %204, null
  br i1 %205, label %206, label %217

206:                                              ; preds = %198
  %207 = load i32*, i32** %5, align 8
  %208 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %209 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %208, i32 0, i32 3
  %210 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %209, align 8
  %211 = load i64, i64* %8, align 8
  %212 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %210, i64 %211
  %213 = load %struct.TYPE_8__*, %struct.TYPE_8__** %212, align 8
  %214 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %213, i32 0, i32 1
  %215 = load i8*, i8** %214, align 8
  %216 = call i32 @JsonSetUniStr(i32* %207, i8* %21, i8* %215)
  br label %220

217:                                              ; preds = %198
  %218 = load i32*, i32** %5, align 8
  %219 = call i32 @JsonSetUniStr(i32* %218, i8* %21, i8* bitcast ([1 x i32]* @.str.2 to i8*))
  br label %220

220:                                              ; preds = %217, %206
  br label %221

221:                                              ; preds = %220, %193
  br label %222

222:                                              ; preds = %37, %221, %192, %163, %133, %100
  store i32 0, i32* %12, align 4
  br label %223

223:                                              ; preds = %222, %36, %30
  %224 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %224)
  %225 = load i32, i32* %12, align 4
  switch i32 %225, label %227 [
    i32 0, label %226
    i32 1, label %226
  ]

226:                                              ; preds = %223, %223
  ret void

227:                                              ; preds = %223
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @DetermineJsonSuffixForPackElement(%struct.TYPE_9__*) #2

declare dso_local i32 @StrCpy(i8*, i32, i32) #2

declare dso_local i32 @StrCat(i8*, i32, i8*) #2

declare dso_local i32 @InStr(i32, i8*) #2

declare dso_local i32 @PackGetIpEx(i32*, i32, i32*, i64) #2

declare dso_local i32 @IPToStr(i8*, i32, i32*) #2

declare dso_local i32 @JsonSetStr(i32*, i8*, i8*) #2

declare dso_local i32 @JsonSetBool(i32*, i8*, i32) #2

declare dso_local i32 @PackGetBoolEx(i32*, i32, i64) #2

declare dso_local i32 @JsonSetNumber(i32*, i8*, i32) #2

declare dso_local i32 @PackGetIntEx(i32*, i32, i64) #2

declare dso_local i32 @PackGetInt64Ex(i32*, i32, i64) #2

declare dso_local i32 @SystemTime64ToJsonStr(i8*, i32, i32) #2

declare dso_local %struct.TYPE_10__* @PackGetBufEx(i32*, i32, i64) #2

declare dso_local i32 @JsonSetData(i32*, i8*, i32*, i32) #2

declare dso_local i32 @FreeBuf(%struct.TYPE_10__*) #2

declare dso_local i32 @JsonSetUniStr(i32*, i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
