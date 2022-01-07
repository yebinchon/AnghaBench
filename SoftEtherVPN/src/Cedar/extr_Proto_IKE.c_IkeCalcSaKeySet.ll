; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Proto_IKE.c_IkeCalcSaKeySet.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Proto_IKE.c_IkeCalcSaKeySet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i8* }
%struct.TYPE_22__ = type { %struct.TYPE_20__, i32, i32, i32*, i32, i32, i32, %struct.TYPE_24__*, i32, i32, %struct.TYPE_24__*, %struct.TYPE_24__*, i32 }
%struct.TYPE_20__ = type { i32, i32, i32* }
%struct.TYPE_24__ = type { i32, i32 }
%struct.TYPE_23__ = type { i32, i32 }

@MAX_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"ResponderRand: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"InitiatorRand: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"SKEYID: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"SKEYID_d: %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"SKEYID_a: %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"SKEYID_e: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @IkeCalcSaKeySet(%struct.TYPE_21__* %0, %struct.TYPE_22__* %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_21__*, align 8
  %5 = alloca %struct.TYPE_22__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_23__*, align 8
  %8 = alloca %struct.TYPE_23__*, align 8
  %9 = alloca %struct.TYPE_23__*, align 8
  %10 = alloca %struct.TYPE_23__*, align 8
  %11 = alloca %struct.TYPE_23__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %4, align 8
  store %struct.TYPE_22__* %1, %struct.TYPE_22__** %5, align 8
  store i8* %2, i8** %6, align 8
  %17 = load i32, i32* @MAX_SIZE, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %14, align 8
  %20 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %15, align 8
  %21 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %22 = icmp eq %struct.TYPE_21__* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %3
  %24 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %25 = icmp eq %struct.TYPE_22__* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %23, %3
  store i32 1, i32* %16, align 4
  br label %289

27:                                               ; preds = %23
  %28 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %29, i32 0, i32 2
  %31 = load i32*, i32** %30, align 8
  store i32* %31, i32** %13, align 8
  %32 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %32, i32 0, i32 12
  %34 = load i32, i32* %33, align 8
  %35 = load i8*, i8** %6, align 8
  %36 = icmp eq i8* %35, null
  br i1 %36, label %37, label %41

37:                                               ; preds = %27
  %38 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  br label %43

41:                                               ; preds = %27
  %42 = load i8*, i8** %6, align 8
  br label %43

43:                                               ; preds = %41, %37
  %44 = phi i8* [ %40, %37 ], [ %42, %41 ]
  %45 = call i32 @StrCpy(i32 %34, i32 4, i8* %44)
  %46 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %46, i32 0, i32 12
  %48 = load i32, i32* %47, align 8
  %49 = call %struct.TYPE_23__* @IkeStrToPassword(i32 %48)
  store %struct.TYPE_23__* %49, %struct.TYPE_23__** %7, align 8
  %50 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %50, i32 0, i32 11
  %52 = load %struct.TYPE_24__*, %struct.TYPE_24__** %51, align 8
  %53 = call %struct.TYPE_23__* @CloneBuf(%struct.TYPE_24__* %52)
  store %struct.TYPE_23__* %53, %struct.TYPE_23__** %8, align 8
  %54 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %55 = call i32 @SeekBufToEnd(%struct.TYPE_23__* %54)
  %56 = trunc i64 %18 to i32
  %57 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @BinToStrEx(i8* %20, i32 %56, i32 %59, i32 %62)
  %64 = call i32 @Debug(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* %20)
  %65 = trunc i64 %18 to i32
  %66 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %66, i32 0, i32 10
  %68 = load %struct.TYPE_24__*, %struct.TYPE_24__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %71, i32 0, i32 10
  %73 = load %struct.TYPE_24__*, %struct.TYPE_24__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @BinToStrEx(i8* %20, i32 %65, i32 %70, i32 %75)
  %77 = call i32 @Debug(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8* %20)
  %78 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %79 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %79, i32 0, i32 10
  %81 = load %struct.TYPE_24__*, %struct.TYPE_24__** %80, align 8
  %82 = call i32 @WriteBufBuf(%struct.TYPE_23__* %78, %struct.TYPE_24__* %81)
  %83 = load i32*, i32** %13, align 8
  %84 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %84, i32 0, i32 4
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %88 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %89 = call i32 @IkeHMacBuf(i32* %83, i32 %86, %struct.TYPE_23__* %87, %struct.TYPE_23__* %88)
  %90 = trunc i64 %18 to i32
  %91 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %91, i32 0, i32 4
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @BinToStrEx(i8* %20, i32 %90, i32 %93, i32 %96)
  %98 = call i32 @Debug(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8* %20)
  %99 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %99, i32 0, i32 7
  %101 = load %struct.TYPE_24__*, %struct.TYPE_24__** %100, align 8
  %102 = call %struct.TYPE_23__* @CloneBuf(%struct.TYPE_24__* %101)
  store %struct.TYPE_23__* %102, %struct.TYPE_23__** %9, align 8
  %103 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %104 = call i32 @SeekBufToEnd(%struct.TYPE_23__* %103)
  %105 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %106 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %106, i32 0, i32 6
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @WriteBufInt64(%struct.TYPE_23__* %105, i32 %108)
  %110 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %111 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %111, i32 0, i32 5
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @WriteBufInt64(%struct.TYPE_23__* %110, i32 %113)
  store i32 0, i32* %12, align 4
  %115 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %116 = call i32 @WriteBuf(%struct.TYPE_23__* %115, i32* %12, i32 1)
  %117 = load i32*, i32** %13, align 8
  %118 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %118, i32 0, i32 9
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %122 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %121, i32 0, i32 4
  %123 = load i32, i32* %122, align 8
  %124 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 8
  %127 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %128 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %131 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @IkeHMac(i32* %117, i32 %120, i32 %123, i32 %126, i32 %129, i32 %132)
  %134 = trunc i64 %18 to i32
  %135 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %136 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %135, i32 0, i32 9
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %139 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 8
  %141 = call i32 @BinToStrEx(i8* %20, i32 %134, i32 %137, i32 %140)
  %142 = call i32 @Debug(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i8* %20)
  %143 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %144 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %143, i32 0, i32 9
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %147 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 8
  %149 = call %struct.TYPE_23__* @MemToBuf(i32 %145, i32 %148)
  store %struct.TYPE_23__* %149, %struct.TYPE_23__** %10, align 8
  %150 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %151 = call i32 @SeekBufToEnd(%struct.TYPE_23__* %150)
  %152 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %153 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %154 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %153, i32 0, i32 7
  %155 = load %struct.TYPE_24__*, %struct.TYPE_24__** %154, align 8
  %156 = call i32 @WriteBufBuf(%struct.TYPE_23__* %152, %struct.TYPE_24__* %155)
  %157 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %158 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %159 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %158, i32 0, i32 6
  %160 = load i32, i32* %159, align 8
  %161 = call i32 @WriteBufInt64(%struct.TYPE_23__* %157, i32 %160)
  %162 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %163 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %164 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %163, i32 0, i32 5
  %165 = load i32, i32* %164, align 4
  %166 = call i32 @WriteBufInt64(%struct.TYPE_23__* %162, i32 %165)
  store i32 1, i32* %12, align 4
  %167 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %168 = call i32 @WriteBuf(%struct.TYPE_23__* %167, i32* %12, i32 1)
  %169 = load i32*, i32** %13, align 8
  %170 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %171 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %170, i32 0, i32 8
  %172 = load i32, i32* %171, align 8
  %173 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %174 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %173, i32 0, i32 4
  %175 = load i32, i32* %174, align 8
  %176 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %177 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 8
  %179 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %180 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 4
  %182 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %183 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  %185 = call i32 @IkeHMac(i32* %169, i32 %172, i32 %175, i32 %178, i32 %181, i32 %184)
  %186 = trunc i64 %18 to i32
  %187 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %188 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %187, i32 0, i32 8
  %189 = load i32, i32* %188, align 8
  %190 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %191 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 8
  %193 = call i32 @BinToStrEx(i8* %20, i32 %186, i32 %189, i32 %192)
  %194 = call i32 @Debug(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i8* %20)
  %195 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %196 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %195, i32 0, i32 8
  %197 = load i32, i32* %196, align 8
  %198 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %199 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 8
  %201 = call %struct.TYPE_23__* @MemToBuf(i32 %197, i32 %200)
  store %struct.TYPE_23__* %201, %struct.TYPE_23__** %11, align 8
  %202 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %203 = call i32 @SeekBufToEnd(%struct.TYPE_23__* %202)
  %204 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %205 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %206 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %205, i32 0, i32 7
  %207 = load %struct.TYPE_24__*, %struct.TYPE_24__** %206, align 8
  %208 = call i32 @WriteBufBuf(%struct.TYPE_23__* %204, %struct.TYPE_24__* %207)
  %209 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %210 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %211 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %210, i32 0, i32 6
  %212 = load i32, i32* %211, align 8
  %213 = call i32 @WriteBufInt64(%struct.TYPE_23__* %209, i32 %212)
  %214 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %215 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %216 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %215, i32 0, i32 5
  %217 = load i32, i32* %216, align 4
  %218 = call i32 @WriteBufInt64(%struct.TYPE_23__* %214, i32 %217)
  store i32 2, i32* %12, align 4
  %219 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %220 = call i32 @WriteBuf(%struct.TYPE_23__* %219, i32* %12, i32 1)
  %221 = load i32*, i32** %13, align 8
  %222 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %223 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %222, i32 0, i32 2
  %224 = load i32, i32* %223, align 4
  %225 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %226 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %225, i32 0, i32 4
  %227 = load i32, i32* %226, align 8
  %228 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %229 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %228, i32 0, i32 1
  %230 = load i32, i32* %229, align 8
  %231 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %232 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %231, i32 0, i32 1
  %233 = load i32, i32* %232, align 4
  %234 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %235 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 4
  %237 = call i32 @IkeHMac(i32* %221, i32 %224, i32 %227, i32 %230, i32 %233, i32 %236)
  %238 = trunc i64 %18 to i32
  %239 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %240 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %239, i32 0, i32 2
  %241 = load i32, i32* %240, align 4
  %242 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %243 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %242, i32 0, i32 1
  %244 = load i32, i32* %243, align 8
  %245 = call i32 @BinToStrEx(i8* %20, i32 %238, i32 %241, i32 %244)
  %246 = call i32 @Debug(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i8* %20)
  %247 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %248 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %247, i32 0, i32 3
  %249 = load i32*, i32** %248, align 8
  %250 = icmp ne i32* %249, null
  br i1 %250, label %251, label %256

251:                                              ; preds = %43
  %252 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %253 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %252, i32 0, i32 3
  %254 = load i32*, i32** %253, align 8
  %255 = call i32 @IkeFreeKey(i32* %254)
  br label %256

256:                                              ; preds = %251, %43
  %257 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %258 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %259 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %258, i32 0, i32 2
  %260 = load i32, i32* %259, align 4
  %261 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %262 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %261, i32 0, i32 1
  %263 = load i32, i32* %262, align 8
  %264 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %265 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %264, i32 0, i32 0
  %266 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %265, i32 0, i32 2
  %267 = load i32*, i32** %266, align 8
  %268 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %269 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %268, i32 0, i32 0
  %270 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %269, i32 0, i32 1
  %271 = load i32, i32* %270, align 4
  %272 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %273 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %272, i32 0, i32 0
  %274 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %273, i32 0, i32 0
  %275 = load i32, i32* %274, align 8
  %276 = call i32* @IkeNewCryptoKeyFromK(%struct.TYPE_21__* %257, i32 %260, i32 %263, i32* %267, i32 %271, i32 %275)
  %277 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %278 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %277, i32 0, i32 3
  store i32* %276, i32** %278, align 8
  %279 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %280 = call i32 @FreeBuf(%struct.TYPE_23__* %279)
  %281 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %282 = call i32 @FreeBuf(%struct.TYPE_23__* %281)
  %283 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %284 = call i32 @FreeBuf(%struct.TYPE_23__* %283)
  %285 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %286 = call i32 @FreeBuf(%struct.TYPE_23__* %285)
  %287 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %288 = call i32 @FreeBuf(%struct.TYPE_23__* %287)
  store i32 0, i32* %16, align 4
  br label %289

289:                                              ; preds = %256, %26
  %290 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %290)
  %291 = load i32, i32* %16, align 4
  switch i32 %291, label %293 [
    i32 0, label %292
    i32 1, label %292
  ]

292:                                              ; preds = %289, %289
  ret void

293:                                              ; preds = %289
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @StrCpy(i32, i32, i8*) #2

declare dso_local %struct.TYPE_23__* @IkeStrToPassword(i32) #2

declare dso_local %struct.TYPE_23__* @CloneBuf(%struct.TYPE_24__*) #2

declare dso_local i32 @SeekBufToEnd(%struct.TYPE_23__*) #2

declare dso_local i32 @BinToStrEx(i8*, i32, i32, i32) #2

declare dso_local i32 @Debug(i8*, i8*) #2

declare dso_local i32 @WriteBufBuf(%struct.TYPE_23__*, %struct.TYPE_24__*) #2

declare dso_local i32 @IkeHMacBuf(i32*, i32, %struct.TYPE_23__*, %struct.TYPE_23__*) #2

declare dso_local i32 @WriteBufInt64(%struct.TYPE_23__*, i32) #2

declare dso_local i32 @WriteBuf(%struct.TYPE_23__*, i32*, i32) #2

declare dso_local i32 @IkeHMac(i32*, i32, i32, i32, i32, i32) #2

declare dso_local %struct.TYPE_23__* @MemToBuf(i32, i32) #2

declare dso_local i32 @IkeFreeKey(i32*) #2

declare dso_local i32* @IkeNewCryptoKeyFromK(%struct.TYPE_21__*, i32, i32, i32*, i32, i32) #2

declare dso_local i32 @FreeBuf(%struct.TYPE_23__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
