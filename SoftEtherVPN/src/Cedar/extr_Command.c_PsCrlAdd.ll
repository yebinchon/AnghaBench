; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PsCrlAdd.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PsCrlAdd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i8*, i32*, i32*, i32*, i32* }
%struct.TYPE_23__ = type { i32 (%struct.TYPE_23__*, i32)* }
%struct.TYPE_19__ = type { i32, i32* }
%struct.TYPE_18__ = type { %struct.TYPE_22__*, i32 }
%struct.TYPE_22__ = type { i32, i32, i32, %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i8* }
%struct.TYPE_24__ = type { i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"SERIAL\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"MD5\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"SHA1\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"CN\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"O\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"OU\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"ST\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"L\00", align 1
@__const.PsCrlAdd.args = private unnamed_addr constant [9 x %struct.TYPE_20__] [%struct.TYPE_20__ { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i32* null, i32* null, i32* null, i32* null }, %struct.TYPE_20__ { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i32* null, i32* null, i32* null, i32* null }, %struct.TYPE_20__ { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i32* null, i32* null, i32* null, i32* null }, %struct.TYPE_20__ { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0), i32* null, i32* null, i32* null, i32* null }, %struct.TYPE_20__ { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0), i32* null, i32* null, i32* null, i32* null }, %struct.TYPE_20__ { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0), i32* null, i32* null, i32* null, i32* null }, %struct.TYPE_20__ { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0), i32* null, i32* null, i32* null, i32* null }, %struct.TYPE_20__ { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i32 0, i32 0), i32* null, i32* null, i32* null, i32* null }, %struct.TYPE_20__ { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i32 0, i32 0), i32* null, i32* null, i32* null, i32* null }], align 16
@.str.9 = private unnamed_addr constant [21 x i8] c"CMD_Hub_Not_Selected\00", align 1
@ERR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@MD5_SIZE = common dso_local global i64 0, align 8
@SHA1_SIZE = common dso_local global i64 0, align 8
@ERR_NO_ERROR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @PsCrlAdd(%struct.TYPE_23__* %0, i8* %1, i32* %2, i8* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_23__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_19__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_18__, align 8
  %14 = alloca [9 x %struct.TYPE_20__], align 16
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_22__*, align 8
  %17 = alloca %struct.TYPE_21__*, align 8
  %18 = alloca %struct.TYPE_24__*, align 8
  %19 = alloca %struct.TYPE_24__*, align 8
  %20 = alloca %struct.TYPE_24__*, align 8
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  %21 = load i8*, i8** %9, align 8
  %22 = bitcast i8* %21 to %struct.TYPE_19__*
  store %struct.TYPE_19__* %22, %struct.TYPE_19__** %11, align 8
  store i64 0, i64* %12, align 8
  %23 = bitcast [9 x %struct.TYPE_20__]* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %23, i8* align 16 bitcast ([9 x %struct.TYPE_20__]* @__const.PsCrlAdd.args to i8*), i64 360, i1 false)
  %24 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %25 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = icmp eq i32* %26, null
  br i1 %27, label %28, label %36

28:                                               ; preds = %4
  %29 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %29, i32 0, i32 0
  %31 = load i32 (%struct.TYPE_23__*, i32)*, i32 (%struct.TYPE_23__*, i32)** %30, align 8
  %32 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %33 = call i32 @_UU(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0))
  %34 = call i32 %31(%struct.TYPE_23__* %32, i32 %33)
  %35 = load i64, i64* @ERR_INVALID_PARAMETER, align 8
  store i64 %35, i64* %5, align 8
  br label %247

36:                                               ; preds = %4
  %37 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %38 = load i8*, i8** %7, align 8
  %39 = load i32*, i32** %8, align 8
  %40 = getelementptr inbounds [9 x %struct.TYPE_20__], [9 x %struct.TYPE_20__]* %14, i64 0, i64 0
  %41 = call i32* @ParseCommandList(%struct.TYPE_23__* %37, i8* %38, i32* %39, %struct.TYPE_20__* %40, i32 9)
  store i32* %41, i32** %10, align 8
  %42 = load i32*, i32** %10, align 8
  %43 = icmp eq i32* %42, null
  br i1 %43, label %44, label %46

44:                                               ; preds = %36
  %45 = load i64, i64* @ERR_INVALID_PARAMETER, align 8
  store i64 %45, i64* %5, align 8
  br label %247

46:                                               ; preds = %36
  %47 = call i32 @Zero(%struct.TYPE_18__* %13, i32 16)
  %48 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %51 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = call i32 @StrCpy(i32 %49, i32 4, i32* %52)
  store i32 0, i32* %15, align 4
  %54 = call i8* @ZeroMalloc(i32 24)
  %55 = bitcast i8* %54 to %struct.TYPE_22__*
  store %struct.TYPE_22__* %55, %struct.TYPE_22__** %16, align 8
  %56 = call i8* @ZeroMalloc(i32 8)
  %57 = bitcast i8* %56 to %struct.TYPE_21__*
  %58 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %59 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %58, i32 0, i32 3
  store %struct.TYPE_21__* %57, %struct.TYPE_21__** %59, align 8
  store %struct.TYPE_21__* %57, %struct.TYPE_21__** %17, align 8
  %60 = load i32*, i32** %10, align 8
  %61 = call i32 @GetParamStr(i32* %60, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %62 = call i32 @IsEmptyStr(i32 %61)
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %46
  %65 = load i32*, i32** %10, align 8
  %66 = call i32 @GetParamUniStr(i32* %65, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %67 = call i8* @CopyUniStr(i32 %66)
  %68 = load %struct.TYPE_21__*, %struct.TYPE_21__** %17, align 8
  %69 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %68, i32 0, i32 0
  store i8* %67, i8** %69, align 8
  store i32 1, i32* %15, align 4
  br label %70

70:                                               ; preds = %64, %46
  %71 = load i32*, i32** %10, align 8
  %72 = call i32 @GetParamStr(i32* %71, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %73 = call i32 @IsEmptyStr(i32 %72)
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %70
  %76 = load i32*, i32** %10, align 8
  %77 = call i32 @GetParamUniStr(i32* %76, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %78 = call i8* @CopyUniStr(i32 %77)
  %79 = load %struct.TYPE_21__*, %struct.TYPE_21__** %17, align 8
  %80 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %79, i32 0, i32 0
  store i8* %78, i8** %80, align 8
  store i32 1, i32* %15, align 4
  br label %81

81:                                               ; preds = %75, %70
  %82 = load i32*, i32** %10, align 8
  %83 = call i32 @GetParamStr(i32* %82, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  %84 = call i32 @IsEmptyStr(i32 %83)
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %92

86:                                               ; preds = %81
  %87 = load i32*, i32** %10, align 8
  %88 = call i32 @GetParamUniStr(i32* %87, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  %89 = call i8* @CopyUniStr(i32 %88)
  %90 = load %struct.TYPE_21__*, %struct.TYPE_21__** %17, align 8
  %91 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %90, i32 0, i32 0
  store i8* %89, i8** %91, align 8
  store i32 1, i32* %15, align 4
  br label %92

92:                                               ; preds = %86, %81
  %93 = load i32*, i32** %10, align 8
  %94 = call i32 @GetParamStr(i32* %93, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  %95 = call i32 @IsEmptyStr(i32 %94)
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %103

97:                                               ; preds = %92
  %98 = load i32*, i32** %10, align 8
  %99 = call i32 @GetParamUniStr(i32* %98, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  %100 = call i8* @CopyUniStr(i32 %99)
  %101 = load %struct.TYPE_21__*, %struct.TYPE_21__** %17, align 8
  %102 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %101, i32 0, i32 0
  store i8* %100, i8** %102, align 8
  store i32 1, i32* %15, align 4
  br label %103

103:                                              ; preds = %97, %92
  %104 = load i32*, i32** %10, align 8
  %105 = call i32 @GetParamStr(i32* %104, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  %106 = call i32 @IsEmptyStr(i32 %105)
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %114

108:                                              ; preds = %103
  %109 = load i32*, i32** %10, align 8
  %110 = call i32 @GetParamUniStr(i32* %109, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  %111 = call i8* @CopyUniStr(i32 %110)
  %112 = load %struct.TYPE_21__*, %struct.TYPE_21__** %17, align 8
  %113 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %112, i32 0, i32 0
  store i8* %111, i8** %113, align 8
  store i32 1, i32* %15, align 4
  br label %114

114:                                              ; preds = %108, %103
  %115 = load i32*, i32** %10, align 8
  %116 = call i32 @GetParamStr(i32* %115, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  %117 = call i32 @IsEmptyStr(i32 %116)
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %125

119:                                              ; preds = %114
  %120 = load i32*, i32** %10, align 8
  %121 = call i32 @GetParamUniStr(i32* %120, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  %122 = call i8* @CopyUniStr(i32 %121)
  %123 = load %struct.TYPE_21__*, %struct.TYPE_21__** %17, align 8
  %124 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %123, i32 0, i32 0
  store i8* %122, i8** %124, align 8
  store i32 1, i32* %15, align 4
  br label %125

125:                                              ; preds = %119, %114
  %126 = load i32*, i32** %10, align 8
  %127 = call i32 @GetParamStr(i32* %126, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %128 = call i32 @IsEmptyStr(i32 %127)
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %130, label %154

130:                                              ; preds = %125
  %131 = load i32*, i32** %10, align 8
  %132 = call i32 @GetParamStr(i32* %131, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %133 = call %struct.TYPE_24__* @StrToBin(i32 %132)
  store %struct.TYPE_24__* %133, %struct.TYPE_24__** %18, align 8
  %134 = load %struct.TYPE_24__*, %struct.TYPE_24__** %18, align 8
  %135 = icmp ne %struct.TYPE_24__* %134, null
  br i1 %135, label %136, label %151

136:                                              ; preds = %130
  %137 = load %struct.TYPE_24__*, %struct.TYPE_24__** %18, align 8
  %138 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = icmp sge i32 %139, 1
  br i1 %140, label %141, label %151

141:                                              ; preds = %136
  %142 = load %struct.TYPE_24__*, %struct.TYPE_24__** %18, align 8
  %143 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.TYPE_24__*, %struct.TYPE_24__** %18, align 8
  %146 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = call i32 @NewXSerial(i32 %144, i32 %147)
  %149 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %150 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %149, i32 0, i32 2
  store i32 %148, i32* %150, align 8
  store i32 1, i32* %15, align 4
  br label %151

151:                                              ; preds = %141, %136, %130
  %152 = load %struct.TYPE_24__*, %struct.TYPE_24__** %18, align 8
  %153 = call i32 @FreeBuf(%struct.TYPE_24__* %152)
  br label %154

154:                                              ; preds = %151, %125
  %155 = load i32*, i32** %10, align 8
  %156 = call i32 @GetParamStr(i32* %155, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %157 = call i32 @IsEmptyStr(i32 %156)
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %159, label %184

159:                                              ; preds = %154
  %160 = load i32*, i32** %10, align 8
  %161 = call i32 @GetParamStr(i32* %160, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %162 = call %struct.TYPE_24__* @StrToBin(i32 %161)
  store %struct.TYPE_24__* %162, %struct.TYPE_24__** %19, align 8
  %163 = load %struct.TYPE_24__*, %struct.TYPE_24__** %19, align 8
  %164 = icmp ne %struct.TYPE_24__* %163, null
  br i1 %164, label %165, label %181

165:                                              ; preds = %159
  %166 = load %struct.TYPE_24__*, %struct.TYPE_24__** %19, align 8
  %167 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = sext i32 %168 to i64
  %170 = load i64, i64* @MD5_SIZE, align 8
  %171 = icmp eq i64 %169, %170
  br i1 %171, label %172, label %181

172:                                              ; preds = %165
  %173 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %174 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = load %struct.TYPE_24__*, %struct.TYPE_24__** %19, align 8
  %177 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  %179 = load i64, i64* @MD5_SIZE, align 8
  %180 = call i32 @Copy(i32 %175, i32 %178, i64 %179)
  store i32 1, i32* %15, align 4
  br label %181

181:                                              ; preds = %172, %165, %159
  %182 = load %struct.TYPE_24__*, %struct.TYPE_24__** %19, align 8
  %183 = call i32 @FreeBuf(%struct.TYPE_24__* %182)
  br label %184

184:                                              ; preds = %181, %154
  %185 = load i32*, i32** %10, align 8
  %186 = call i32 @GetParamStr(i32* %185, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %187 = call i32 @IsEmptyStr(i32 %186)
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %189, label %214

189:                                              ; preds = %184
  %190 = load i32*, i32** %10, align 8
  %191 = call i32 @GetParamStr(i32* %190, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %192 = call %struct.TYPE_24__* @StrToBin(i32 %191)
  store %struct.TYPE_24__* %192, %struct.TYPE_24__** %20, align 8
  %193 = load %struct.TYPE_24__*, %struct.TYPE_24__** %20, align 8
  %194 = icmp ne %struct.TYPE_24__* %193, null
  br i1 %194, label %195, label %211

195:                                              ; preds = %189
  %196 = load %struct.TYPE_24__*, %struct.TYPE_24__** %20, align 8
  %197 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 4
  %199 = sext i32 %198 to i64
  %200 = load i64, i64* @SHA1_SIZE, align 8
  %201 = icmp eq i64 %199, %200
  br i1 %201, label %202, label %211

202:                                              ; preds = %195
  %203 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %204 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 8
  %206 = load %struct.TYPE_24__*, %struct.TYPE_24__** %20, align 8
  %207 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 4
  %209 = load i64, i64* @SHA1_SIZE, align 8
  %210 = call i32 @Copy(i32 %205, i32 %208, i64 %209)
  store i32 1, i32* %15, align 4
  br label %211

211:                                              ; preds = %202, %195, %189
  %212 = load %struct.TYPE_24__*, %struct.TYPE_24__** %20, align 8
  %213 = call i32 @FreeBuf(%struct.TYPE_24__* %212)
  br label %214

214:                                              ; preds = %211, %184
  %215 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %216 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 0
  store %struct.TYPE_22__* %215, %struct.TYPE_22__** %216, align 8
  %217 = load i32, i32* %15, align 4
  %218 = icmp eq i32 %217, 0
  br i1 %218, label %219, label %228

219:                                              ; preds = %214
  %220 = call i32 @FreeRpcCrl(%struct.TYPE_18__* %13)
  %221 = load i64, i64* @ERR_INVALID_PARAMETER, align 8
  store i64 %221, i64* %12, align 8
  %222 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %223 = load i64, i64* %12, align 8
  %224 = call i32 @CmdPrintError(%struct.TYPE_23__* %222, i64 %223)
  %225 = load i32*, i32** %10, align 8
  %226 = call i32 @FreeParamValueList(i32* %225)
  %227 = load i64, i64* %12, align 8
  store i64 %227, i64* %5, align 8
  br label %247

228:                                              ; preds = %214
  %229 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %230 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 8
  %232 = call i64 @ScAddCrl(i32 %231, %struct.TYPE_18__* %13)
  store i64 %232, i64* %12, align 8
  %233 = load i64, i64* %12, align 8
  %234 = load i64, i64* @ERR_NO_ERROR, align 8
  %235 = icmp ne i64 %233, %234
  br i1 %235, label %236, label %243

236:                                              ; preds = %228
  %237 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %238 = load i64, i64* %12, align 8
  %239 = call i32 @CmdPrintError(%struct.TYPE_23__* %237, i64 %238)
  %240 = load i32*, i32** %10, align 8
  %241 = call i32 @FreeParamValueList(i32* %240)
  %242 = load i64, i64* %12, align 8
  store i64 %242, i64* %5, align 8
  br label %247

243:                                              ; preds = %228
  %244 = call i32 @FreeRpcCrl(%struct.TYPE_18__* %13)
  %245 = load i32*, i32** %10, align 8
  %246 = call i32 @FreeParamValueList(i32* %245)
  store i64 0, i64* %5, align 8
  br label %247

247:                                              ; preds = %243, %236, %219, %44, %28
  %248 = load i64, i64* %5, align 8
  ret i64 %248
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @_UU(i8*) #2

declare dso_local i32* @ParseCommandList(%struct.TYPE_23__*, i8*, i32*, %struct.TYPE_20__*, i32) #2

declare dso_local i32 @Zero(%struct.TYPE_18__*, i32) #2

declare dso_local i32 @StrCpy(i32, i32, i32*) #2

declare dso_local i8* @ZeroMalloc(i32) #2

declare dso_local i32 @IsEmptyStr(i32) #2

declare dso_local i32 @GetParamStr(i32*, i8*) #2

declare dso_local i8* @CopyUniStr(i32) #2

declare dso_local i32 @GetParamUniStr(i32*, i8*) #2

declare dso_local %struct.TYPE_24__* @StrToBin(i32) #2

declare dso_local i32 @NewXSerial(i32, i32) #2

declare dso_local i32 @FreeBuf(%struct.TYPE_24__*) #2

declare dso_local i32 @Copy(i32, i32, i64) #2

declare dso_local i32 @FreeRpcCrl(%struct.TYPE_18__*) #2

declare dso_local i32 @CmdPrintError(%struct.TYPE_23__*, i64) #2

declare dso_local i32 @FreeParamValueList(i32*) #2

declare dso_local i64 @ScAddCrl(i32, %struct.TYPE_18__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
