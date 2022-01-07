; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Proto_IKE.c_SetIkeClientEndpoint.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Proto_IKE.c_SetIkeClientEndpoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { %struct.TYPE_22__*, i32, i32 }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_21__ = type { i64, i64, i32, i32, i32, i32, i64, i32, i32, i32* }
%struct.TYPE_20__ = type { %struct.TYPE_21__* }
%struct.TYPE_18__ = type { %struct.TYPE_21__* }

@MAX_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Merge IKE_CLIENT: %p->%p: %s:%u -> %s:%u\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"LI_CLIENT_MERGE\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"Update IKE_CLIENT: %p: %s:%u -> %s:%u\0A\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"LI_CLIENT_UPDATE\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_21__* @SetIkeClientEndpoint(%struct.TYPE_19__* %0, %struct.TYPE_21__* %1, i32* %2, i64 %3, i32* %4, i64 %5) #0 {
  %7 = alloca %struct.TYPE_21__*, align 8
  %8 = alloca %struct.TYPE_19__*, align 8
  %9 = alloca %struct.TYPE_21__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.TYPE_21__*, align 8
  %18 = alloca %struct.TYPE_21__*, align 8
  %19 = alloca %struct.TYPE_21__, align 8
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  %22 = alloca %struct.TYPE_20__*, align 8
  %23 = alloca %struct.TYPE_18__*, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %8, align 8
  store %struct.TYPE_21__* %1, %struct.TYPE_21__** %9, align 8
  store i32* %2, i32** %10, align 8
  store i64 %3, i64* %11, align 8
  store i32* %4, i32** %12, align 8
  store i64 %5, i64* %13, align 8
  %24 = load i32, i32* @MAX_SIZE, align 4
  %25 = zext i32 %24 to i64
  %26 = call i8* @llvm.stacksave()
  store i8* %26, i8** %14, align 8
  %27 = alloca i8, i64 %25, align 16
  store i64 %25, i64* %15, align 8
  %28 = load i32, i32* @MAX_SIZE, align 4
  %29 = zext i32 %28 to i64
  %30 = alloca i8, i64 %29, align 16
  store i64 %29, i64* %16, align 8
  %31 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  store %struct.TYPE_21__* %31, %struct.TYPE_21__** %17, align 8
  %32 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %33 = icmp eq %struct.TYPE_19__* %32, null
  br i1 %33, label %49, label %34

34:                                               ; preds = %6
  %35 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %36 = icmp eq %struct.TYPE_21__* %35, null
  br i1 %36, label %49, label %37

37:                                               ; preds = %34
  %38 = load i32*, i32** %10, align 8
  %39 = icmp eq i32* %38, null
  br i1 %39, label %49, label %40

40:                                               ; preds = %37
  %41 = load i64, i64* %11, align 8
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %49, label %43

43:                                               ; preds = %40
  %44 = load i32*, i32** %12, align 8
  %45 = icmp eq i32* %44, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %43
  %47 = load i64, i64* %13, align 8
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %46, %43, %40, %37, %34, %6
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %7, align 8
  store i32 1, i32* %20, align 4
  br label %274

50:                                               ; preds = %46
  %51 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %51, i32 0, i32 4
  %53 = load i32*, i32** %10, align 8
  %54 = call i64 @CmpIpAddr(i32* %52, i32* %53)
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %76

56:                                               ; preds = %50
  %57 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %58 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %57, i32 0, i32 3
  %59 = load i32*, i32** %12, align 8
  %60 = call i64 @CmpIpAddr(i32* %58, i32* %59)
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %76

62:                                               ; preds = %56
  %63 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %64 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* %11, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %76

68:                                               ; preds = %62
  %69 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %70 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* %13, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %76

74:                                               ; preds = %68
  %75 = load %struct.TYPE_21__*, %struct.TYPE_21__** %17, align 8
  store %struct.TYPE_21__* %75, %struct.TYPE_21__** %7, align 8
  store i32 1, i32* %20, align 4
  br label %274

76:                                               ; preds = %68, %62, %56, %50
  %77 = load i64, i64* %11, align 8
  %78 = call i64 @IS_SPECIAL_PORT(i64 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %84, label %80

80:                                               ; preds = %76
  %81 = load i64, i64* %13, align 8
  %82 = call i64 @IS_SPECIAL_PORT(i64 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %80, %76
  %85 = load %struct.TYPE_21__*, %struct.TYPE_21__** %17, align 8
  store %struct.TYPE_21__* %85, %struct.TYPE_21__** %7, align 8
  store i32 1, i32* %20, align 4
  br label %274

86:                                               ; preds = %80
  %87 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %19, i32 0, i32 4
  %88 = load i32*, i32** %10, align 8
  %89 = call i32 @Copy(i32* %87, i32* %88, i32 4)
  %90 = load i64, i64* %11, align 8
  %91 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %19, i32 0, i32 0
  store i64 %90, i64* %91, align 8
  %92 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %19, i32 0, i32 3
  %93 = load i32*, i32** %12, align 8
  %94 = call i32 @Copy(i32* %92, i32* %93, i32 4)
  %95 = load i64, i64* %13, align 8
  %96 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %19, i32 0, i32 1
  store i64 %95, i64* %96, align 8
  %97 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %98 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %97, i32 0, i32 0
  %99 = load %struct.TYPE_22__*, %struct.TYPE_22__** %98, align 8
  %100 = call %struct.TYPE_21__* @Search(%struct.TYPE_22__* %99, %struct.TYPE_21__* %19)
  store %struct.TYPE_21__* %100, %struct.TYPE_21__** %18, align 8
  %101 = load %struct.TYPE_21__*, %struct.TYPE_21__** %18, align 8
  %102 = icmp ne %struct.TYPE_21__* %101, null
  br i1 %102, label %103, label %240

103:                                              ; preds = %86
  %104 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %105 = load %struct.TYPE_21__*, %struct.TYPE_21__** %18, align 8
  %106 = icmp ne %struct.TYPE_21__* %104, %105
  br i1 %106, label %107, label %240

107:                                              ; preds = %103
  %108 = load %struct.TYPE_21__*, %struct.TYPE_21__** %18, align 8
  %109 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %240

112:                                              ; preds = %107
  %113 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %114 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %113, i32 0, i32 9
  %115 = load i32*, i32** %114, align 8
  %116 = icmp eq i32* %115, null
  br i1 %116, label %117, label %240

117:                                              ; preds = %112
  store i64 0, i64* %21, align 8
  br label %118

118:                                              ; preds = %142, %117
  %119 = load i64, i64* %21, align 8
  %120 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %121 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 4
  %123 = call i64 @LIST_NUM(i32 %122)
  %124 = icmp slt i64 %119, %123
  br i1 %124, label %125, label %145

125:                                              ; preds = %118
  %126 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %127 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 4
  %129 = load i64, i64* %21, align 8
  %130 = call i8* @LIST_DATA(i32 %128, i64 %129)
  %131 = bitcast i8* %130 to %struct.TYPE_20__*
  store %struct.TYPE_20__* %131, %struct.TYPE_20__** %22, align 8
  %132 = load %struct.TYPE_20__*, %struct.TYPE_20__** %22, align 8
  %133 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %132, i32 0, i32 0
  %134 = load %struct.TYPE_21__*, %struct.TYPE_21__** %133, align 8
  %135 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %136 = icmp eq %struct.TYPE_21__* %134, %135
  br i1 %136, label %137, label %141

137:                                              ; preds = %125
  %138 = load %struct.TYPE_21__*, %struct.TYPE_21__** %18, align 8
  %139 = load %struct.TYPE_20__*, %struct.TYPE_20__** %22, align 8
  %140 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %139, i32 0, i32 0
  store %struct.TYPE_21__* %138, %struct.TYPE_21__** %140, align 8
  br label %141

141:                                              ; preds = %137, %125
  br label %142

142:                                              ; preds = %141
  %143 = load i64, i64* %21, align 8
  %144 = add nsw i64 %143, 1
  store i64 %144, i64* %21, align 8
  br label %118

145:                                              ; preds = %118
  store i64 0, i64* %21, align 8
  br label %146

146:                                              ; preds = %170, %145
  %147 = load i64, i64* %21, align 8
  %148 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %149 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 8
  %151 = call i64 @LIST_NUM(i32 %150)
  %152 = icmp slt i64 %147, %151
  br i1 %152, label %153, label %173

153:                                              ; preds = %146
  %154 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %155 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 8
  %157 = load i64, i64* %21, align 8
  %158 = call i8* @LIST_DATA(i32 %156, i64 %157)
  %159 = bitcast i8* %158 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %159, %struct.TYPE_18__** %23, align 8
  %160 = load %struct.TYPE_18__*, %struct.TYPE_18__** %23, align 8
  %161 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %160, i32 0, i32 0
  %162 = load %struct.TYPE_21__*, %struct.TYPE_21__** %161, align 8
  %163 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %164 = icmp eq %struct.TYPE_21__* %162, %163
  br i1 %164, label %165, label %169

165:                                              ; preds = %153
  %166 = load %struct.TYPE_21__*, %struct.TYPE_21__** %18, align 8
  %167 = load %struct.TYPE_18__*, %struct.TYPE_18__** %23, align 8
  %168 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %167, i32 0, i32 0
  store %struct.TYPE_21__* %166, %struct.TYPE_21__** %168, align 8
  br label %169

169:                                              ; preds = %165, %153
  br label %170

170:                                              ; preds = %169
  %171 = load i64, i64* %21, align 8
  %172 = add nsw i64 %171, 1
  store i64 %172, i64* %21, align 8
  br label %146

173:                                              ; preds = %146
  %174 = load %struct.TYPE_21__*, %struct.TYPE_21__** %18, align 8
  %175 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %174, i32 0, i32 6
  %176 = load i64, i64* %175, align 8
  %177 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %178 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %177, i32 0, i32 6
  %179 = load i64, i64* %178, align 8
  %180 = icmp slt i64 %176, %179
  br i1 %180, label %181, label %189

181:                                              ; preds = %173
  %182 = load %struct.TYPE_21__*, %struct.TYPE_21__** %18, align 8
  %183 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %182, i32 0, i32 8
  %184 = load i32, i32* %183, align 4
  %185 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %186 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %185, i32 0, i32 8
  %187 = load i32, i32* %186, align 4
  %188 = call i32 @StrCpy(i32 %184, i32 4, i32 %187)
  br label %189

189:                                              ; preds = %181, %173
  %190 = load %struct.TYPE_21__*, %struct.TYPE_21__** %18, align 8
  %191 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %190, i32 0, i32 7
  %192 = load i32, i32* %191, align 8
  %193 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %194 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %193, i32 0, i32 7
  %195 = load i32, i32* %194, align 8
  %196 = call i32 @MIN(i32 %192, i32 %195)
  %197 = load %struct.TYPE_21__*, %struct.TYPE_21__** %18, align 8
  %198 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %197, i32 0, i32 7
  store i32 %196, i32* %198, align 8
  %199 = load %struct.TYPE_21__*, %struct.TYPE_21__** %18, align 8
  %200 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %199, i32 0, i32 6
  %201 = load i64, i64* %200, align 8
  %202 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %203 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %202, i32 0, i32 6
  %204 = load i64, i64* %203, align 8
  %205 = call i64 @MAX(i64 %201, i64 %204)
  %206 = load %struct.TYPE_21__*, %struct.TYPE_21__** %18, align 8
  %207 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %206, i32 0, i32 6
  store i64 %205, i64* %207, align 8
  %208 = load %struct.TYPE_21__*, %struct.TYPE_21__** %18, align 8
  store %struct.TYPE_21__* %208, %struct.TYPE_21__** %17, align 8
  %209 = trunc i64 %25 to i32
  %210 = load i32*, i32** %10, align 8
  %211 = call i32 @IPToStr(i8* %27, i32 %209, i32* %210)
  %212 = trunc i64 %29 to i32
  %213 = load i32*, i32** %12, align 8
  %214 = call i32 @IPToStr(i8* %30, i32 %212, i32* %213)
  %215 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %216 = load %struct.TYPE_21__*, %struct.TYPE_21__** %18, align 8
  %217 = load i64, i64* %11, align 8
  %218 = load i64, i64* %13, align 8
  %219 = call i32 (i8*, %struct.TYPE_21__*, ...) @Debug(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), %struct.TYPE_21__* %215, %struct.TYPE_21__* %216, i8* %27, i64 %217, i8* %30, i64 %218)
  %220 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %221 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %222 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %223 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %222, i32 0, i32 5
  %224 = load i32, i32* %223, align 4
  %225 = load %struct.TYPE_21__*, %struct.TYPE_21__** %18, align 8
  %226 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %225, i32 0, i32 5
  %227 = load i32, i32* %226, align 4
  %228 = load %struct.TYPE_21__*, %struct.TYPE_21__** %18, align 8
  %229 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %228, i32 0, i32 5
  %230 = load i32, i32* %229, align 4
  %231 = call i32 (%struct.TYPE_19__*, %struct.TYPE_21__*, i32*, i32*, i8*, ...) @IPsecLog(%struct.TYPE_19__* %220, %struct.TYPE_21__* %221, i32* null, i32* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %224, i32 %227, i32 %230)
  %232 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %233 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %232, i32 0, i32 0
  %234 = load %struct.TYPE_22__*, %struct.TYPE_22__** %233, align 8
  %235 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %236 = call i32 @Delete(%struct.TYPE_22__* %234, %struct.TYPE_21__* %235)
  %237 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %238 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %239 = call i32 @FreeIkeClient(%struct.TYPE_19__* %237, %struct.TYPE_21__* %238)
  br label %272

240:                                              ; preds = %112, %107, %103, %86
  %241 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %242 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %241, i32 0, i32 4
  %243 = load i32*, i32** %10, align 8
  %244 = call i32 @Copy(i32* %242, i32* %243, i32 4)
  %245 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %246 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %245, i32 0, i32 3
  %247 = load i32*, i32** %12, align 8
  %248 = call i32 @Copy(i32* %246, i32* %247, i32 4)
  %249 = load i64, i64* %11, align 8
  %250 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %251 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %250, i32 0, i32 0
  store i64 %249, i64* %251, align 8
  %252 = load i64, i64* %13, align 8
  %253 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %254 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %253, i32 0, i32 1
  store i64 %252, i64* %254, align 8
  %255 = trunc i64 %25 to i32
  %256 = load i32*, i32** %10, align 8
  %257 = call i32 @IPToStr(i8* %27, i32 %255, i32* %256)
  %258 = trunc i64 %29 to i32
  %259 = load i32*, i32** %12, align 8
  %260 = call i32 @IPToStr(i8* %30, i32 %258, i32* %259)
  %261 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %262 = load i64, i64* %11, align 8
  %263 = load i64, i64* %13, align 8
  %264 = call i32 (i8*, %struct.TYPE_21__*, ...) @Debug(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_21__* %261, i8* %27, i64 %262, i8* %30, i64 %263)
  %265 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %266 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %267 = call i32 (%struct.TYPE_19__*, %struct.TYPE_21__*, i32*, i32*, i8*, ...) @IPsecLog(%struct.TYPE_19__* %265, %struct.TYPE_21__* %266, i32* null, i32* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  %268 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %269 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %268, i32 0, i32 0
  %270 = load %struct.TYPE_22__*, %struct.TYPE_22__** %269, align 8
  %271 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %270, i32 0, i32 0
  store i32 0, i32* %271, align 4
  br label %272

272:                                              ; preds = %240, %189
  %273 = load %struct.TYPE_21__*, %struct.TYPE_21__** %17, align 8
  store %struct.TYPE_21__* %273, %struct.TYPE_21__** %7, align 8
  store i32 1, i32* %20, align 4
  br label %274

274:                                              ; preds = %272, %84, %74, %49
  %275 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %275)
  %276 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  ret %struct.TYPE_21__* %276
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @CmpIpAddr(i32*, i32*) #2

declare dso_local i64 @IS_SPECIAL_PORT(i64) #2

declare dso_local i32 @Copy(i32*, i32*, i32) #2

declare dso_local %struct.TYPE_21__* @Search(%struct.TYPE_22__*, %struct.TYPE_21__*) #2

declare dso_local i64 @LIST_NUM(i32) #2

declare dso_local i8* @LIST_DATA(i32, i64) #2

declare dso_local i32 @StrCpy(i32, i32, i32) #2

declare dso_local i32 @MIN(i32, i32) #2

declare dso_local i64 @MAX(i64, i64) #2

declare dso_local i32 @IPToStr(i8*, i32, i32*) #2

declare dso_local i32 @Debug(i8*, %struct.TYPE_21__*, ...) #2

declare dso_local i32 @IPsecLog(%struct.TYPE_19__*, %struct.TYPE_21__*, i32*, i32*, i8*, ...) #2

declare dso_local i32 @Delete(%struct.TYPE_22__*, %struct.TYPE_21__*) #2

declare dso_local i32 @FreeIkeClient(%struct.TYPE_19__*, %struct.TYPE_21__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
