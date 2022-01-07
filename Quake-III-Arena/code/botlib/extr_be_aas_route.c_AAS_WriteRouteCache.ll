; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/botlib/extr_be_aas_route.c_AAS_WriteRouteCache.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/botlib/extr_be_aas_route.c_AAS_WriteRouteCache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, %struct.TYPE_9__***, %struct.TYPE_10__*, %struct.TYPE_9__**, i64, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, %struct.TYPE_9__*, i8*, i8*, i32, i32 }
%struct.TYPE_11__ = type { i32 (i32, i8*, i32)*, i32 (i32)*, i32 (%struct.TYPE_9__*, i32, i32)*, i32 (i8*, i32*, i32)* }

@MAX_QPATH = common dso_local global i32 0, align 4
@aasworld = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@.str = private unnamed_addr constant [12 x i8] c"maps/%s.rcd\00", align 1
@botimport = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@FS_WRITE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Unable to open file: %s\0A\00", align 1
@RCID = common dso_local global i32 0, align 4
@RCVERSION = common dso_local global i32 0, align 4
@PRT_MESSAGE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"\0Aroute cache written to %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"written %d bytes of routing cache\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @AAS_WriteRouteCache() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_9__, align 8
  %12 = alloca i32, align 4
  %13 = load i32, i32* @MAX_QPATH, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %9, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %10, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %1, align 4
  br label %17

17:                                               ; preds = %38, %0
  %18 = load i32, i32* %1, align 4
  %19 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @aasworld, i32 0, i32 0), align 8
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %41

21:                                               ; preds = %17
  %22 = load %struct.TYPE_9__**, %struct.TYPE_9__*** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @aasworld, i32 0, i32 4), align 8
  %23 = load i32, i32* %1, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %22, i64 %24
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %25, align 8
  store %struct.TYPE_9__* %26, %struct.TYPE_9__** %6, align 8
  br label %27

27:                                               ; preds = %33, %21
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %29 = icmp ne %struct.TYPE_9__* %28, null
  br i1 %29, label %30, label %37

30:                                               ; preds = %27
  %31 = load i32, i32* %3, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %3, align 4
  br label %33

33:                                               ; preds = %30
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 5
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %35, align 8
  store %struct.TYPE_9__* %36, %struct.TYPE_9__** %6, align 8
  br label %27

37:                                               ; preds = %27
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %1, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %1, align 4
  br label %17

41:                                               ; preds = %17
  store i32 0, i32* %4, align 4
  store i32 0, i32* %1, align 4
  br label %42

42:                                               ; preds = %82, %41
  %43 = load i32, i32* %1, align 4
  %44 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @aasworld, i32 0, i32 1), align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %85

46:                                               ; preds = %42
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @aasworld, i32 0, i32 3), align 8
  %48 = load i32, i32* %1, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i64 %49
  store %struct.TYPE_10__* %50, %struct.TYPE_10__** %7, align 8
  store i32 0, i32* %2, align 4
  br label %51

51:                                               ; preds = %78, %46
  %52 = load i32, i32* %2, align 4
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = icmp slt i32 %52, %55
  br i1 %56, label %57, label %81

57:                                               ; preds = %51
  %58 = load %struct.TYPE_9__***, %struct.TYPE_9__**** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @aasworld, i32 0, i32 2), align 8
  %59 = load i32, i32* %1, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_9__**, %struct.TYPE_9__*** %58, i64 %60
  %62 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %61, align 8
  %63 = load i32, i32* %2, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %62, i64 %64
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %65, align 8
  store %struct.TYPE_9__* %66, %struct.TYPE_9__** %6, align 8
  br label %67

67:                                               ; preds = %73, %57
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %69 = icmp ne %struct.TYPE_9__* %68, null
  br i1 %69, label %70, label %77

70:                                               ; preds = %67
  %71 = load i32, i32* %4, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %4, align 4
  br label %73

73:                                               ; preds = %70
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 5
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %75, align 8
  store %struct.TYPE_9__* %76, %struct.TYPE_9__** %6, align 8
  br label %67

77:                                               ; preds = %67
  br label %78

78:                                               ; preds = %77
  %79 = load i32, i32* %2, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %2, align 4
  br label %51

81:                                               ; preds = %51
  br label %82

82:                                               ; preds = %81
  %83 = load i32, i32* %1, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %1, align 4
  br label %42

85:                                               ; preds = %42
  %86 = load i32, i32* @MAX_QPATH, align 4
  %87 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @aasworld, i32 0, i32 6), align 8
  %88 = call i32 @Com_sprintf(i8* %16, i32 %86, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %87)
  %89 = load i32 (i8*, i32*, i32)*, i32 (i8*, i32*, i32)** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @botimport, i32 0, i32 3), align 8
  %90 = load i32, i32* @FS_WRITE, align 4
  %91 = call i32 %89(i8* %16, i32* %8, i32 %90)
  %92 = load i32, i32* %8, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %96, label %94

94:                                               ; preds = %85
  %95 = call i32 @AAS_Error(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i8* %16)
  store i32 1, i32* %12, align 4
  br label %228

96:                                               ; preds = %85
  %97 = load i32, i32* @RCID, align 4
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 9
  store i32 %97, i32* %98, align 4
  %99 = load i32, i32* @RCVERSION, align 4
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 8
  store i32 %99, i32* %100, align 8
  %101 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @aasworld, i32 0, i32 0), align 8
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  store i32 %101, i32* %102, align 8
  %103 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @aasworld, i32 0, i32 1), align 4
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 1
  store i32 %103, i32* %104, align 4
  %105 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @aasworld, i32 0, i32 5), align 8
  %106 = inttoptr i64 %105 to i8*
  %107 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @aasworld, i32 0, i32 0), align 8
  %108 = sext i32 %107 to i64
  %109 = mul i64 4, %108
  %110 = trunc i64 %109 to i32
  %111 = call i8* @CRC_ProcessString(i8* %106, i32 %110)
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 7
  store i8* %111, i8** %112, align 8
  %113 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @aasworld, i32 0, i32 3), align 8
  %114 = bitcast %struct.TYPE_10__* %113 to i8*
  %115 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @aasworld, i32 0, i32 1), align 4
  %116 = sext i32 %115 to i64
  %117 = mul i64 4, %116
  %118 = trunc i64 %117 to i32
  %119 = call i8* @CRC_ProcessString(i8* %114, i32 %118)
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 6
  store i8* %119, i8** %120, align 8
  %121 = load i32, i32* %3, align 4
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 2
  store i32 %121, i32* %122, align 8
  %123 = load i32, i32* %4, align 4
  %124 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 3
  store i32 %123, i32* %124, align 4
  %125 = load i32 (%struct.TYPE_9__*, i32, i32)*, i32 (%struct.TYPE_9__*, i32, i32)** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @botimport, i32 0, i32 2), align 8
  %126 = load i32, i32* %8, align 4
  %127 = call i32 %125(%struct.TYPE_9__* %11, i32 56, i32 %126)
  store i32 0, i32* %5, align 4
  store i32 0, i32* %1, align 4
  br label %128

128:                                              ; preds = %159, %96
  %129 = load i32, i32* %1, align 4
  %130 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @aasworld, i32 0, i32 0), align 8
  %131 = icmp slt i32 %129, %130
  br i1 %131, label %132, label %162

132:                                              ; preds = %128
  %133 = load %struct.TYPE_9__**, %struct.TYPE_9__*** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @aasworld, i32 0, i32 4), align 8
  %134 = load i32, i32* %1, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %133, i64 %135
  %137 = load %struct.TYPE_9__*, %struct.TYPE_9__** %136, align 8
  store %struct.TYPE_9__* %137, %struct.TYPE_9__** %6, align 8
  br label %138

138:                                              ; preds = %154, %132
  %139 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %140 = icmp ne %struct.TYPE_9__* %139, null
  br i1 %140, label %141, label %158

141:                                              ; preds = %138
  %142 = load i32 (%struct.TYPE_9__*, i32, i32)*, i32 (%struct.TYPE_9__*, i32, i32)** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @botimport, i32 0, i32 2), align 8
  %143 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %144 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %145 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %144, i32 0, i32 4
  %146 = load i32, i32* %145, align 8
  %147 = load i32, i32* %8, align 4
  %148 = call i32 %142(%struct.TYPE_9__* %143, i32 %146, i32 %147)
  %149 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %150 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %149, i32 0, i32 4
  %151 = load i32, i32* %150, align 8
  %152 = load i32, i32* %5, align 4
  %153 = add nsw i32 %152, %151
  store i32 %153, i32* %5, align 4
  br label %154

154:                                              ; preds = %141
  %155 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %156 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %155, i32 0, i32 5
  %157 = load %struct.TYPE_9__*, %struct.TYPE_9__** %156, align 8
  store %struct.TYPE_9__* %157, %struct.TYPE_9__** %6, align 8
  br label %138

158:                                              ; preds = %138
  br label %159

159:                                              ; preds = %158
  %160 = load i32, i32* %1, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %1, align 4
  br label %128

162:                                              ; preds = %128
  store i32 0, i32* %1, align 4
  br label %163

163:                                              ; preds = %213, %162
  %164 = load i32, i32* %1, align 4
  %165 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @aasworld, i32 0, i32 1), align 4
  %166 = icmp slt i32 %164, %165
  br i1 %166, label %167, label %216

167:                                              ; preds = %163
  %168 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @aasworld, i32 0, i32 3), align 8
  %169 = load i32, i32* %1, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %168, i64 %170
  store %struct.TYPE_10__* %171, %struct.TYPE_10__** %7, align 8
  store i32 0, i32* %2, align 4
  br label %172

172:                                              ; preds = %209, %167
  %173 = load i32, i32* %2, align 4
  %174 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %175 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = icmp slt i32 %173, %176
  br i1 %177, label %178, label %212

178:                                              ; preds = %172
  %179 = load %struct.TYPE_9__***, %struct.TYPE_9__**** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @aasworld, i32 0, i32 2), align 8
  %180 = load i32, i32* %1, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds %struct.TYPE_9__**, %struct.TYPE_9__*** %179, i64 %181
  %183 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %182, align 8
  %184 = load i32, i32* %2, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %183, i64 %185
  %187 = load %struct.TYPE_9__*, %struct.TYPE_9__** %186, align 8
  store %struct.TYPE_9__* %187, %struct.TYPE_9__** %6, align 8
  br label %188

188:                                              ; preds = %204, %178
  %189 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %190 = icmp ne %struct.TYPE_9__* %189, null
  br i1 %190, label %191, label %208

191:                                              ; preds = %188
  %192 = load i32 (%struct.TYPE_9__*, i32, i32)*, i32 (%struct.TYPE_9__*, i32, i32)** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @botimport, i32 0, i32 2), align 8
  %193 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %194 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %195 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %194, i32 0, i32 4
  %196 = load i32, i32* %195, align 8
  %197 = load i32, i32* %8, align 4
  %198 = call i32 %192(%struct.TYPE_9__* %193, i32 %196, i32 %197)
  %199 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %200 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %199, i32 0, i32 4
  %201 = load i32, i32* %200, align 8
  %202 = load i32, i32* %5, align 4
  %203 = add nsw i32 %202, %201
  store i32 %203, i32* %5, align 4
  br label %204

204:                                              ; preds = %191
  %205 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %206 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %205, i32 0, i32 5
  %207 = load %struct.TYPE_9__*, %struct.TYPE_9__** %206, align 8
  store %struct.TYPE_9__* %207, %struct.TYPE_9__** %6, align 8
  br label %188

208:                                              ; preds = %188
  br label %209

209:                                              ; preds = %208
  %210 = load i32, i32* %2, align 4
  %211 = add nsw i32 %210, 1
  store i32 %211, i32* %2, align 4
  br label %172

212:                                              ; preds = %172
  br label %213

213:                                              ; preds = %212
  %214 = load i32, i32* %1, align 4
  %215 = add nsw i32 %214, 1
  store i32 %215, i32* %1, align 4
  br label %163

216:                                              ; preds = %163
  %217 = load i32 (i32)*, i32 (i32)** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @botimport, i32 0, i32 1), align 8
  %218 = load i32, i32* %8, align 4
  %219 = call i32 %217(i32 %218)
  %220 = load i32 (i32, i8*, i32)*, i32 (i32, i8*, i32)** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @botimport, i32 0, i32 0), align 8
  %221 = load i32, i32* @PRT_MESSAGE, align 4
  %222 = ptrtoint i8* %16 to i32
  %223 = call i32 %220(i32 %221, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %222)
  %224 = load i32 (i32, i8*, i32)*, i32 (i32, i8*, i32)** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @botimport, i32 0, i32 0), align 8
  %225 = load i32, i32* @PRT_MESSAGE, align 4
  %226 = load i32, i32* %5, align 4
  %227 = call i32 %224(i32 %225, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %226)
  store i32 0, i32* %12, align 4
  br label %228

228:                                              ; preds = %216, %94
  %229 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %229)
  %230 = load i32, i32* %12, align 4
  switch i32 %230, label %232 [
    i32 0, label %231
    i32 1, label %231
  ]

231:                                              ; preds = %228, %228
  ret void

232:                                              ; preds = %228
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @Com_sprintf(i8*, i32, i8*, i32) #2

declare dso_local i32 @AAS_Error(i8*, i8*) #2

declare dso_local i8* @CRC_ProcessString(i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
