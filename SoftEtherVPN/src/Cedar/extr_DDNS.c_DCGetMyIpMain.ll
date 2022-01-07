; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_DDNS.c_DCGetMyIpMain.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_DDNS.c_DCGetMyIpMain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i8* }
%struct.TYPE_12__ = type { i32, i32* }

@MAX_SIZE = common dso_local global i32 0, align 4
@ERR_INTERNAL_ERROR = common dso_local global i64 0, align 8
@DDNS_URL2_V4_GLOBAL = common dso_local global i8* null, align 8
@DDNS_URL2_V4_ALT = common dso_local global i8* null, align 8
@DDNS_URL2_V6_GLOBAL = common dso_local global i8* null, align 8
@DDNS_URL2_V6_ALT = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [11 x i8] c"%s?v=%I64u\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"http://\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"https://\00", align 1
@DDNS_CERT_HASH = common dso_local global i32 0, align 4
@DDNS_SNI_VER_STRING = common dso_local global i8* null, align 8
@DDNS_CONNECT_TIMEOUT = common dso_local global i32 0, align 4
@DDNS_COMM_TIMEOUT = common dso_local global i32 0, align 4
@SHA1_SIZE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"IP=\00", align 1
@ERR_PROTOCOL_ERROR = common dso_local global i64 0, align 8
@ERR_NO_ERROR = common dso_local global i64 0, align 8
@ERR_CONNECT_FAILED = common dso_local global i64 0, align 8
@FLETS_DETECT_TYPE_EAST_BFLETS_PRIVATE = common dso_local global i64 0, align 8
@DDNS_REPLACE_URL2_FOR_EAST_BFLETS = common dso_local global i8* null, align 8
@FLETS_DETECT_TYPE_EAST_NGN_PRIVATE = common dso_local global i64 0, align 8
@DDNS_REPLACE_URL2_FOR_EAST_NGN = common dso_local global i8* null, align 8
@FLETS_DETECT_TYPE_WEST_NGN_PRIVATE = common dso_local global i64 0, align 8
@DDNS_REPLACE_URL2_FOR_WEST_NGN = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @DCGetMyIpMain(%struct.TYPE_11__* %0, i32 %1, i8* %2, i64 %3, i32 %4, i8* %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.TYPE_10__, align 8
  %19 = alloca %struct.TYPE_12__*, align 8
  %20 = alloca %struct.TYPE_12__*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i8*, align 8
  %23 = alloca i64, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %8, align 8
  store i32 %1, i32* %9, align 4
  store i8* %2, i8** %10, align 8
  store i64 %3, i64* %11, align 8
  store i32 %4, i32* %12, align 4
  store i8* %5, i8** %13, align 8
  %24 = load i32, i32* @MAX_SIZE, align 4
  %25 = zext i32 %24 to i64
  %26 = call i8* @llvm.stacksave()
  store i8* %26, i8** %15, align 8
  %27 = alloca i8, i64 %25, align 16
  store i64 %25, i64* %16, align 8
  %28 = load i64, i64* @ERR_INTERNAL_ERROR, align 8
  store i64 %28, i64* %17, align 8
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %20, align 8
  %29 = load i8*, i8** %10, align 8
  %30 = icmp eq i8* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %6
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %33 = icmp eq %struct.TYPE_11__* %32, null
  br i1 %33, label %34, label %36

34:                                               ; preds = %31, %6
  %35 = load i64, i64* @ERR_INTERNAL_ERROR, align 8
  store i64 %35, i64* %7, align 8
  store i32 1, i32* %21, align 4
  br label %226

36:                                               ; preds = %31
  %37 = load i32, i32* %9, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %36
  %40 = load i8*, i8** @DDNS_URL2_V4_GLOBAL, align 8
  store i8* %40, i8** %14, align 8
  %41 = call i32 (...) @IsUseAlternativeHostname()
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %39
  %44 = load i8*, i8** @DDNS_URL2_V4_ALT, align 8
  store i8* %44, i8** %14, align 8
  br label %45

45:                                               ; preds = %43, %39
  br label %58

46:                                               ; preds = %36
  %47 = load i8*, i8** @DDNS_URL2_V6_GLOBAL, align 8
  store i8* %47, i8** %14, align 8
  %48 = call i32 (...) @IsUseAlternativeHostname()
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %46
  %51 = load i8*, i8** @DDNS_URL2_V6_ALT, align 8
  store i8* %51, i8** %14, align 8
  br label %52

52:                                               ; preds = %50, %46
  %53 = load i8*, i8** %13, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %55, label %57

55:                                               ; preds = %52
  %56 = load i8*, i8** %13, align 8
  store i8* %56, i8** %14, align 8
  br label %57

57:                                               ; preds = %55, %52
  br label %58

58:                                               ; preds = %57, %45
  %59 = trunc i64 %25 to i32
  %60 = load i8*, i8** %14, align 8
  %61 = call i32 (...) @Rand64()
  %62 = call i32 @Format(i8* %27, i32 %59, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* %60, i32 %61)
  %63 = load i32, i32* %12, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %58
  %66 = trunc i64 %25 to i32
  %67 = call i32 @ReplaceStr(i8* %27, i32 %66, i8* %27, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  br label %68

68:                                               ; preds = %65, %58
  %69 = call i32 @ParseUrl(%struct.TYPE_10__* %18, i8* %27, i32 0, i32* null)
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %68
  %72 = load i64, i64* @ERR_INTERNAL_ERROR, align 8
  store i64 %72, i64* %7, align 8
  store i32 1, i32* %21, align 4
  br label %226

73:                                               ; preds = %68
  %74 = load i32, i32* @DDNS_CERT_HASH, align 4
  %75 = call %struct.TYPE_12__* @StrToBin(i32 %74)
  store %struct.TYPE_12__* %75, %struct.TYPE_12__** %20, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  %77 = load i8*, i8** %76, align 8
  %78 = load i8*, i8** @DDNS_SNI_VER_STRING, align 8
  %79 = call i32 @StrCpy(i8* %77, i64 8, i8* %78)
  %80 = load i32, i32* %9, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %73
  br label %86

83:                                               ; preds = %73
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 0
  br label %86

86:                                               ; preds = %83, %82
  %87 = phi i32* [ null, %82 ], [ %85, %83 ]
  %88 = load i32, i32* @DDNS_CONNECT_TIMEOUT, align 4
  %89 = load i32, i32* @DDNS_COMM_TIMEOUT, align 4
  %90 = load %struct.TYPE_12__*, %struct.TYPE_12__** %20, align 8
  %91 = icmp ne %struct.TYPE_12__* %90, null
  br i1 %91, label %92, label %103

92:                                               ; preds = %86
  %93 = load %struct.TYPE_12__*, %struct.TYPE_12__** %20, align 8
  %94 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @SHA1_SIZE, align 4
  %97 = srem i32 %95, %96
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %92
  %100 = load %struct.TYPE_12__*, %struct.TYPE_12__** %20, align 8
  %101 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %100, i32 0, i32 1
  %102 = load i32*, i32** %101, align 8
  br label %104

103:                                              ; preds = %92, %86
  br label %104

104:                                              ; preds = %103, %99
  %105 = phi i32* [ %102, %99 ], [ null, %103 ]
  %106 = load %struct.TYPE_12__*, %struct.TYPE_12__** %20, align 8
  %107 = icmp ne %struct.TYPE_12__* %106, null
  br i1 %107, label %108, label %114

108:                                              ; preds = %104
  %109 = load %struct.TYPE_12__*, %struct.TYPE_12__** %20, align 8
  %110 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* @SHA1_SIZE, align 4
  %113 = sdiv i32 %111, %112
  br label %115

114:                                              ; preds = %104
  br label %115

115:                                              ; preds = %114, %108
  %116 = phi i32 [ %113, %108 ], [ 0, %114 ]
  %117 = call %struct.TYPE_12__* @HttpRequestEx3(%struct.TYPE_10__* %18, i32* %87, i32 %88, i32 %89, i64* %17, i32 0, i32* null, i32* null, i32* null, i32* %105, i32 %116, i32* null, i32 0, i32* null, i32* null)
  store %struct.TYPE_12__* %117, %struct.TYPE_12__** %19, align 8
  %118 = load %struct.TYPE_12__*, %struct.TYPE_12__** %20, align 8
  %119 = call i32 @FreeBuf(%struct.TYPE_12__* %118)
  %120 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %121 = icmp ne %struct.TYPE_12__* %120, null
  br i1 %121, label %122, label %153

122:                                              ; preds = %115
  %123 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %124 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = add nsw i32 %125, 1
  %127 = call i8* @ZeroMalloc(i32 %126)
  store i8* %127, i8** %22, align 8
  %128 = load i8*, i8** %22, align 8
  %129 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %130 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %129, i32 0, i32 1
  %131 = load i32*, i32** %130, align 8
  %132 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %133 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = call i32 @Copy(i8* %128, i32* %131, i32 %134)
  %136 = load i8*, i8** %22, align 8
  %137 = call i32 @StartWith(i8* %136, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %139, label %141

139:                                              ; preds = %122
  %140 = load i64, i64* @ERR_PROTOCOL_ERROR, align 8
  store i64 %140, i64* %17, align 8
  br label %148

141:                                              ; preds = %122
  %142 = load i8*, i8** %10, align 8
  %143 = load i64, i64* %11, align 8
  %144 = load i8*, i8** %22, align 8
  %145 = getelementptr inbounds i8, i8* %144, i64 3
  %146 = call i32 @StrCpy(i8* %142, i64 %143, i8* %145)
  %147 = load i64, i64* @ERR_NO_ERROR, align 8
  store i64 %147, i64* %17, align 8
  br label %148

148:                                              ; preds = %141, %139
  %149 = load i8*, i8** %22, align 8
  %150 = call i32 @Free(i8* %149)
  %151 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %152 = call i32 @FreeBuf(%struct.TYPE_12__* %151)
  br label %153

153:                                              ; preds = %148, %115
  %154 = call i32 (...) @IsUseAlternativeHostname()
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %156, label %224

156:                                              ; preds = %153
  %157 = load i64, i64* %17, align 8
  %158 = load i64, i64* @ERR_CONNECT_FAILED, align 8
  %159 = icmp eq i64 %157, %158
  br i1 %159, label %160, label %223

160:                                              ; preds = %156
  %161 = load i32, i32* %9, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %222

163:                                              ; preds = %160
  %164 = load i8*, i8** %13, align 8
  %165 = icmp eq i8* %164, null
  br i1 %165, label %166, label %222

166:                                              ; preds = %163
  %167 = load i32, i32* %12, align 4
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %169, label %222

169:                                              ; preds = %166
  %170 = call i64 (...) @DetectFletsType()
  store i64 %170, i64* %23, align 8
  %171 = load i64, i64* %23, align 8
  %172 = load i64, i64* @FLETS_DETECT_TYPE_EAST_BFLETS_PRIVATE, align 8
  %173 = and i64 %171, %172
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %187

175:                                              ; preds = %169
  %176 = load i64, i64* %17, align 8
  %177 = load i64, i64* @ERR_NO_ERROR, align 8
  %178 = icmp ne i64 %176, %177
  br i1 %178, label %179, label %187

179:                                              ; preds = %175
  %180 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %181 = load i32, i32* %9, align 4
  %182 = load i8*, i8** %10, align 8
  %183 = load i64, i64* %11, align 8
  %184 = load i32, i32* %12, align 4
  %185 = load i8*, i8** @DDNS_REPLACE_URL2_FOR_EAST_BFLETS, align 8
  %186 = call i64 @DCGetMyIpMain(%struct.TYPE_11__* %180, i32 %181, i8* %182, i64 %183, i32 %184, i8* %185)
  store i64 %186, i64* %17, align 8
  br label %187

187:                                              ; preds = %179, %175, %169
  %188 = load i64, i64* %23, align 8
  %189 = load i64, i64* @FLETS_DETECT_TYPE_EAST_NGN_PRIVATE, align 8
  %190 = and i64 %188, %189
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %204

192:                                              ; preds = %187
  %193 = load i64, i64* %17, align 8
  %194 = load i64, i64* @ERR_NO_ERROR, align 8
  %195 = icmp ne i64 %193, %194
  br i1 %195, label %196, label %204

196:                                              ; preds = %192
  %197 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %198 = load i32, i32* %9, align 4
  %199 = load i8*, i8** %10, align 8
  %200 = load i64, i64* %11, align 8
  %201 = load i32, i32* %12, align 4
  %202 = load i8*, i8** @DDNS_REPLACE_URL2_FOR_EAST_NGN, align 8
  %203 = call i64 @DCGetMyIpMain(%struct.TYPE_11__* %197, i32 %198, i8* %199, i64 %200, i32 %201, i8* %202)
  store i64 %203, i64* %17, align 8
  br label %204

204:                                              ; preds = %196, %192, %187
  %205 = load i64, i64* %23, align 8
  %206 = load i64, i64* @FLETS_DETECT_TYPE_WEST_NGN_PRIVATE, align 8
  %207 = and i64 %205, %206
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %209, label %221

209:                                              ; preds = %204
  %210 = load i64, i64* %17, align 8
  %211 = load i64, i64* @ERR_NO_ERROR, align 8
  %212 = icmp ne i64 %210, %211
  br i1 %212, label %213, label %221

213:                                              ; preds = %209
  %214 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %215 = load i32, i32* %9, align 4
  %216 = load i8*, i8** %10, align 8
  %217 = load i64, i64* %11, align 8
  %218 = load i32, i32* %12, align 4
  %219 = load i8*, i8** @DDNS_REPLACE_URL2_FOR_WEST_NGN, align 8
  %220 = call i64 @DCGetMyIpMain(%struct.TYPE_11__* %214, i32 %215, i8* %216, i64 %217, i32 %218, i8* %219)
  store i64 %220, i64* %17, align 8
  br label %221

221:                                              ; preds = %213, %209, %204
  br label %222

222:                                              ; preds = %221, %166, %163, %160
  br label %223

223:                                              ; preds = %222, %156
  br label %224

224:                                              ; preds = %223, %153
  %225 = load i64, i64* %17, align 8
  store i64 %225, i64* %7, align 8
  store i32 1, i32* %21, align 4
  br label %226

226:                                              ; preds = %224, %71, %34
  %227 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %227)
  %228 = load i64, i64* %7, align 8
  ret i64 %228
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @IsUseAlternativeHostname(...) #2

declare dso_local i32 @Format(i8*, i32, i8*, i8*, i32) #2

declare dso_local i32 @Rand64(...) #2

declare dso_local i32 @ReplaceStr(i8*, i32, i8*, i8*, i8*) #2

declare dso_local i32 @ParseUrl(%struct.TYPE_10__*, i8*, i32, i32*) #2

declare dso_local %struct.TYPE_12__* @StrToBin(i32) #2

declare dso_local i32 @StrCpy(i8*, i64, i8*) #2

declare dso_local %struct.TYPE_12__* @HttpRequestEx3(%struct.TYPE_10__*, i32*, i32, i32, i64*, i32, i32*, i32*, i32*, i32*, i32, i32*, i32, i32*, i32*) #2

declare dso_local i32 @FreeBuf(%struct.TYPE_12__*) #2

declare dso_local i8* @ZeroMalloc(i32) #2

declare dso_local i32 @Copy(i8*, i32*, i32) #2

declare dso_local i32 @StartWith(i8*, i8*) #2

declare dso_local i32 @Free(i8*) #2

declare dso_local i64 @DetectFletsType(...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
