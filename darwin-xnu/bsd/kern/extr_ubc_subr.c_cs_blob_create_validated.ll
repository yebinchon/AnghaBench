; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_ubc_subr.c_cs_blob_create_validated.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_ubc_subr.c_cs_blob_create_validated.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cs_blob = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_8__*, i64, i32*, %struct.TYPE_7__*, i64, i32*, i32*, i64, i64, i32, i64, i64 }
%struct.TYPE_8__ = type { i32, i32 (i32*, %union.cs_hash_union*)*, i32 (%union.cs_hash_union*, i8*, i32)*, i32 (%union.cs_hash_union*)* }
%union.cs_hash_union = type { i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CS_SIGNER_TYPE_UNKNOWN = common dso_local global i32 0, align 4
@cs_debug = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"CODESIGNING: csblob invalid: %d\0A\00", align 1
@CS_HASH_MAX_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"validated CodeDirectory but unsupported type\00", align 1
@CS_ALLOWED_MACHO = common dso_local global i32 0, align 4
@CS_VALID = common dso_local global i32 0, align 4
@CS_SUPPORTSSCATTER = common dso_local global i32 0, align 4
@CS_CDHASH_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cs_blob_create_validated(i64* %0, i64 %1, %struct.cs_blob** %2, %struct.TYPE_7__** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.cs_blob**, align 8
  %9 = alloca %struct.TYPE_7__**, align 8
  %10 = alloca %struct.cs_blob*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_7__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %union.cs_hash_union, align 4
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.TYPE_6__*, align 8
  store i64* %0, i64** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.cs_blob** %2, %struct.cs_blob*** %8, align 8
  store %struct.TYPE_7__** %3, %struct.TYPE_7__*** %9, align 8
  %21 = load i32, i32* @EINVAL, align 4
  store i32 %21, i32* %11, align 4
  %22 = load %struct.cs_blob**, %struct.cs_blob*** %8, align 8
  %23 = icmp ne %struct.cs_blob** %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %4
  %25 = load %struct.cs_blob**, %struct.cs_blob*** %8, align 8
  store %struct.cs_blob* null, %struct.cs_blob** %25, align 8
  br label %26

26:                                               ; preds = %24, %4
  %27 = call i64 @kalloc(i32 128)
  %28 = inttoptr i64 %27 to %struct.cs_blob*
  store %struct.cs_blob* %28, %struct.cs_blob** %10, align 8
  %29 = load %struct.cs_blob*, %struct.cs_blob** %10, align 8
  %30 = icmp eq %struct.cs_blob* %29, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = load i32, i32* @ENOMEM, align 4
  store i32 %32, i32* %5, align 4
  br label %243

33:                                               ; preds = %26
  %34 = load i64, i64* %7, align 8
  %35 = load %struct.cs_blob*, %struct.cs_blob** %10, align 8
  %36 = getelementptr inbounds %struct.cs_blob, %struct.cs_blob* %35, i32 0, i32 19
  store i64 %34, i64* %36, align 8
  %37 = load %struct.cs_blob*, %struct.cs_blob** %10, align 8
  %38 = getelementptr inbounds %struct.cs_blob, %struct.cs_blob* %37, i32 0, i32 18
  store i64 0, i64* %38, align 8
  %39 = load i64*, i64** %6, align 8
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.cs_blob*, %struct.cs_blob** %10, align 8
  %42 = getelementptr inbounds %struct.cs_blob, %struct.cs_blob* %41, i32 0, i32 12
  store i64 %40, i64* %42, align 8
  %43 = load %struct.cs_blob*, %struct.cs_blob** %10, align 8
  %44 = getelementptr inbounds %struct.cs_blob, %struct.cs_blob* %43, i32 0, i32 0
  store i32 0, i32* %44, align 8
  %45 = load i32, i32* @CS_SIGNER_TYPE_UNKNOWN, align 4
  %46 = load %struct.cs_blob*, %struct.cs_blob** %10, align 8
  %47 = getelementptr inbounds %struct.cs_blob, %struct.cs_blob* %46, i32 0, i32 17
  store i32 %45, i32* %47, align 8
  %48 = load %struct.cs_blob*, %struct.cs_blob** %10, align 8
  %49 = getelementptr inbounds %struct.cs_blob, %struct.cs_blob* %48, i32 0, i32 16
  store i64 0, i64* %49, align 8
  %50 = load %struct.cs_blob*, %struct.cs_blob** %10, align 8
  %51 = getelementptr inbounds %struct.cs_blob, %struct.cs_blob* %50, i32 0, i32 15
  store i64 0, i64* %51, align 8
  %52 = load %struct.cs_blob*, %struct.cs_blob** %10, align 8
  %53 = getelementptr inbounds %struct.cs_blob, %struct.cs_blob* %52, i32 0, i32 14
  store i32* null, i32** %53, align 8
  %54 = load %struct.cs_blob*, %struct.cs_blob** %10, align 8
  %55 = getelementptr inbounds %struct.cs_blob, %struct.cs_blob* %54, i32 0, i32 10
  store i32* null, i32** %55, align 8
  %56 = load %struct.cs_blob*, %struct.cs_blob** %10, align 8
  %57 = getelementptr inbounds %struct.cs_blob, %struct.cs_blob* %56, i32 0, i32 13
  store i32* null, i32** %57, align 8
  %58 = load %struct.cs_blob*, %struct.cs_blob** %10, align 8
  %59 = getelementptr inbounds %struct.cs_blob, %struct.cs_blob* %58, i32 0, i32 1
  store i32 0, i32* %59, align 4
  %60 = load i64*, i64** %6, align 8
  store i64 0, i64* %60, align 8
  %61 = load i64, i64* %7, align 8
  store i64 %61, i64* %15, align 8
  %62 = load %struct.cs_blob*, %struct.cs_blob** %10, align 8
  %63 = getelementptr inbounds %struct.cs_blob, %struct.cs_blob* %62, i32 0, i32 12
  %64 = load i64, i64* %63, align 8
  %65 = inttoptr i64 %64 to i32*
  %66 = load i64, i64* %15, align 8
  %67 = call i32 @cs_validate_csblob(i32* %65, i64 %66, %struct.TYPE_7__** %12, i32** %13)
  store i32 %67, i32* %11, align 4
  %68 = load i32, i32* %11, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %77

70:                                               ; preds = %33
  %71 = load i64, i64* @cs_debug, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %70
  %74 = load i32, i32* %11, align 4
  %75 = call i32 @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %74)
  br label %76

76:                                               ; preds = %73, %70
  br label %223

77:                                               ; preds = %33
  %78 = load i32, i32* @CS_HASH_MAX_SIZE, align 4
  %79 = zext i32 %78 to i64
  %80 = call i8* @llvm.stacksave()
  store i8* %80, i8** %17, align 8
  %81 = alloca i32, i64 %79, align 16
  store i64 %79, i64* %18, align 8
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %83 = load %struct.cs_blob*, %struct.cs_blob** %10, align 8
  %84 = getelementptr inbounds %struct.cs_blob, %struct.cs_blob* %83, i32 0, i32 11
  store %struct.TYPE_7__* %82, %struct.TYPE_7__** %84, align 8
  %85 = load i32*, i32** %13, align 8
  %86 = load %struct.cs_blob*, %struct.cs_blob** %10, align 8
  %87 = getelementptr inbounds %struct.cs_blob, %struct.cs_blob* %86, i32 0, i32 10
  store i32* %85, i32** %87, align 8
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 6
  %90 = load i32, i32* %89, align 4
  %91 = call %struct.TYPE_8__* @cs_find_md(i32 %90)
  %92 = load %struct.cs_blob*, %struct.cs_blob** %10, align 8
  %93 = getelementptr inbounds %struct.cs_blob, %struct.cs_blob* %92, i32 0, i32 8
  store %struct.TYPE_8__* %91, %struct.TYPE_8__** %93, align 8
  %94 = load %struct.cs_blob*, %struct.cs_blob** %10, align 8
  %95 = getelementptr inbounds %struct.cs_blob, %struct.cs_blob* %94, i32 0, i32 8
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %95, align 8
  %97 = icmp eq %struct.TYPE_8__* %96, null
  br i1 %97, label %107, label %98

98:                                               ; preds = %77
  %99 = load %struct.cs_blob*, %struct.cs_blob** %10, align 8
  %100 = getelementptr inbounds %struct.cs_blob, %struct.cs_blob* %99, i32 0, i32 8
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = sext i32 %103 to i64
  %105 = mul nuw i64 4, %79
  %106 = icmp ugt i64 %104, %105
  br i1 %106, label %107, label %109

107:                                              ; preds = %98, %77
  %108 = call i32 @panic(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  br label %109

109:                                              ; preds = %107, %98
  %110 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.cs_blob*, %struct.cs_blob** %10, align 8
  %114 = getelementptr inbounds %struct.cs_blob, %struct.cs_blob* %113, i32 0, i32 2
  store i32 %112, i32* %114, align 8
  %115 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = shl i32 1, %117
  %119 = load %struct.cs_blob*, %struct.cs_blob** %10, align 8
  %120 = getelementptr inbounds %struct.cs_blob, %struct.cs_blob* %119, i32 0, i32 3
  store i32 %118, i32* %120, align 4
  %121 = load %struct.cs_blob*, %struct.cs_blob** %10, align 8
  %122 = getelementptr inbounds %struct.cs_blob, %struct.cs_blob* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 4
  %124 = sub i32 %123, 1
  %125 = load %struct.cs_blob*, %struct.cs_blob** %10, align 8
  %126 = getelementptr inbounds %struct.cs_blob, %struct.cs_blob* %125, i32 0, i32 4
  store i32 %124, i32* %126, align 8
  %127 = load %struct.cs_blob*, %struct.cs_blob** %10, align 8
  %128 = getelementptr inbounds %struct.cs_blob, %struct.cs_blob* %127, i32 0, i32 9
  store i64 0, i64* %128, align 8
  %129 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i32 0, i32 5
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @ntohl(i32 %131)
  %133 = load i32, i32* @CS_ALLOWED_MACHO, align 4
  %134 = and i32 %132, %133
  %135 = load i32, i32* @CS_VALID, align 4
  %136 = or i32 %134, %135
  %137 = load %struct.cs_blob*, %struct.cs_blob** %10, align 8
  %138 = getelementptr inbounds %struct.cs_blob, %struct.cs_blob* %137, i32 0, i32 0
  store i32 %136, i32* %138, align 8
  %139 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %140 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %139, i32 0, i32 4
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @ntohl(i32 %141)
  %143 = load %struct.cs_blob*, %struct.cs_blob** %10, align 8
  %144 = getelementptr inbounds %struct.cs_blob, %struct.cs_blob* %143, i32 0, i32 4
  %145 = load i32, i32* %144, align 8
  %146 = add nsw i32 %142, %145
  %147 = load %struct.cs_blob*, %struct.cs_blob** %10, align 8
  %148 = getelementptr inbounds %struct.cs_blob, %struct.cs_blob* %147, i32 0, i32 4
  %149 = load i32, i32* %148, align 8
  %150 = xor i32 %149, -1
  %151 = and i32 %146, %150
  %152 = load %struct.cs_blob*, %struct.cs_blob** %10, align 8
  %153 = getelementptr inbounds %struct.cs_blob, %struct.cs_blob* %152, i32 0, i32 5
  store i32 %151, i32* %153, align 4
  %154 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %155 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %154, i32 0, i32 3
  %156 = load i32, i32* %155, align 4
  %157 = call i32 @ntohl(i32 %156)
  %158 = load i32, i32* @CS_SUPPORTSSCATTER, align 4
  %159 = icmp sge i32 %157, %158
  br i1 %159, label %160, label %186

160:                                              ; preds = %109
  %161 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %162 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %161, i32 0, i32 2
  %163 = load i32, i32* %162, align 4
  %164 = call i32 @ntohl(i32 %163)
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %186

166:                                              ; preds = %160
  %167 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %168 = bitcast %struct.TYPE_7__* %167 to i8*
  %169 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %170 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %169, i32 0, i32 2
  %171 = load i32, i32* %170, align 4
  %172 = call i32 @ntohl(i32 %171)
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i8, i8* %168, i64 %173
  %175 = bitcast i8* %174 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %175, %struct.TYPE_6__** %20, align 8
  %176 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %177 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = call i32 @ntohl(i32 %178)
  %180 = load %struct.cs_blob*, %struct.cs_blob** %10, align 8
  %181 = getelementptr inbounds %struct.cs_blob, %struct.cs_blob* %180, i32 0, i32 3
  %182 = load i32, i32* %181, align 4
  %183 = mul i32 %179, %182
  %184 = load %struct.cs_blob*, %struct.cs_blob** %10, align 8
  %185 = getelementptr inbounds %struct.cs_blob, %struct.cs_blob* %184, i32 0, i32 6
  store i32 %183, i32* %185, align 8
  br label %189

186:                                              ; preds = %160, %109
  %187 = load %struct.cs_blob*, %struct.cs_blob** %10, align 8
  %188 = getelementptr inbounds %struct.cs_blob, %struct.cs_blob* %187, i32 0, i32 6
  store i32 0, i32* %188, align 8
  br label %189

189:                                              ; preds = %186, %166
  %190 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %191 = bitcast %struct.TYPE_7__* %190 to i8*
  store i8* %191, i8** %16, align 8
  %192 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %193 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 4
  %195 = call i32 @ntohl(i32 %194)
  store i32 %195, i32* %19, align 4
  %196 = load %struct.cs_blob*, %struct.cs_blob** %10, align 8
  %197 = getelementptr inbounds %struct.cs_blob, %struct.cs_blob* %196, i32 0, i32 8
  %198 = load %struct.TYPE_8__*, %struct.TYPE_8__** %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %198, i32 0, i32 3
  %200 = load i32 (%union.cs_hash_union*)*, i32 (%union.cs_hash_union*)** %199, align 8
  %201 = call i32 %200(%union.cs_hash_union* %14)
  %202 = load %struct.cs_blob*, %struct.cs_blob** %10, align 8
  %203 = getelementptr inbounds %struct.cs_blob, %struct.cs_blob* %202, i32 0, i32 8
  %204 = load %struct.TYPE_8__*, %struct.TYPE_8__** %203, align 8
  %205 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %204, i32 0, i32 2
  %206 = load i32 (%union.cs_hash_union*, i8*, i32)*, i32 (%union.cs_hash_union*, i8*, i32)** %205, align 8
  %207 = load i8*, i8** %16, align 8
  %208 = load i32, i32* %19, align 4
  %209 = call i32 %206(%union.cs_hash_union* %14, i8* %207, i32 %208)
  %210 = load %struct.cs_blob*, %struct.cs_blob** %10, align 8
  %211 = getelementptr inbounds %struct.cs_blob, %struct.cs_blob* %210, i32 0, i32 8
  %212 = load %struct.TYPE_8__*, %struct.TYPE_8__** %211, align 8
  %213 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %212, i32 0, i32 1
  %214 = load i32 (i32*, %union.cs_hash_union*)*, i32 (i32*, %union.cs_hash_union*)** %213, align 8
  %215 = call i32 %214(i32* %81, %union.cs_hash_union* %14)
  %216 = load %struct.cs_blob*, %struct.cs_blob** %10, align 8
  %217 = getelementptr inbounds %struct.cs_blob, %struct.cs_blob* %216, i32 0, i32 7
  %218 = load i32, i32* %217, align 4
  %219 = load i32, i32* @CS_CDHASH_LEN, align 4
  %220 = call i32 @memcpy(i32 %218, i32* %81, i32 %219)
  %221 = load i8*, i8** %17, align 8
  call void @llvm.stackrestore(i8* %221)
  br label %222

222:                                              ; preds = %189
  store i32 0, i32* %11, align 4
  br label %223

223:                                              ; preds = %222, %76
  %224 = load i32, i32* %11, align 4
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %229

226:                                              ; preds = %223
  %227 = load %struct.cs_blob*, %struct.cs_blob** %10, align 8
  %228 = call i32 @cs_blob_free(%struct.cs_blob* %227)
  store %struct.cs_blob* null, %struct.cs_blob** %10, align 8
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %12, align 8
  br label %229

229:                                              ; preds = %226, %223
  %230 = load %struct.cs_blob**, %struct.cs_blob*** %8, align 8
  %231 = icmp ne %struct.cs_blob** %230, null
  br i1 %231, label %232, label %235

232:                                              ; preds = %229
  %233 = load %struct.cs_blob*, %struct.cs_blob** %10, align 8
  %234 = load %struct.cs_blob**, %struct.cs_blob*** %8, align 8
  store %struct.cs_blob* %233, %struct.cs_blob** %234, align 8
  br label %235

235:                                              ; preds = %232, %229
  %236 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %9, align 8
  %237 = icmp ne %struct.TYPE_7__** %236, null
  br i1 %237, label %238, label %241

238:                                              ; preds = %235
  %239 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %240 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %9, align 8
  store %struct.TYPE_7__* %239, %struct.TYPE_7__** %240, align 8
  br label %241

241:                                              ; preds = %238, %235
  %242 = load i32, i32* %11, align 4
  store i32 %242, i32* %5, align 4
  br label %243

243:                                              ; preds = %241, %31
  %244 = load i32, i32* %5, align 4
  ret i32 %244
}

declare dso_local i64 @kalloc(i32) #1

declare dso_local i32 @cs_validate_csblob(i32*, i64, %struct.TYPE_7__**, i32**) #1

declare dso_local i32 @printf(i8*, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local %struct.TYPE_8__* @cs_find_md(i32) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @cs_blob_free(%struct.cs_blob*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
