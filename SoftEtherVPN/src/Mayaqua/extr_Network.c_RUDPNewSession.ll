; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Network.c_RUDPNewSession.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Network.c_RUDPNewSession.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, i32, i32*, i8*, i8*, i8*, i8*, i32, i32*, i32*, i32*, i32*, i32*, i32*, i8*, i8*, i8*, i8*, i64, i8*, i32, i8*, i32 }
%struct.TYPE_10__ = type { i32, i32 }

@SHA1_SIZE = common dso_local global i32 0, align 4
@RUDPCompareSegmentList = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"zurukko\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"yasushineko\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"Magic_KeepAliveRequest\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"Magic_KeepAliveResponse\00", align 1
@RUDP_KEEPALIVE_INTERVAL_MIN = common dso_local global i32 0, align 4
@RUDP_KEEPALIVE_INTERVAL_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_9__* @RUDPNewSession(i32 %0, i32* %1, i8* %2, i32* %3, i8* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_9__*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.TYPE_10__*, align 8
  store i32 %0, i32* %7, align 4
  store i32* %1, i32** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32* %3, i32** %10, align 8
  store i8* %4, i8** %11, align 8
  store i32* %5, i32** %12, align 8
  %20 = load i32, i32* @SHA1_SIZE, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %14, align 8
  %23 = alloca i32, i64 %21, align 16
  store i64 %21, i64* %15, align 8
  %24 = load i32, i32* @SHA1_SIZE, align 4
  %25 = zext i32 %24 to i64
  %26 = alloca i32, i64 %25, align 16
  store i64 %25, i64* %16, align 8
  %27 = load i32, i32* @SHA1_SIZE, align 4
  %28 = zext i32 %27 to i64
  %29 = alloca i32, i64 %28, align 16
  store i64 %28, i64* %17, align 8
  %30 = load i32, i32* @SHA1_SIZE, align 4
  %31 = zext i32 %30 to i64
  %32 = alloca i32, i64 %31, align 16
  store i64 %31, i64* %18, align 8
  %33 = call %struct.TYPE_9__* @ZeroMalloc(i32 192)
  store %struct.TYPE_9__* %33, %struct.TYPE_9__** %13, align 8
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 26
  %36 = load i32*, i32** %8, align 8
  %37 = call i32 @Copy(i32* %35, i32* %36, i32 4)
  %38 = load i8*, i8** %9, align 8
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 25
  store i8* %38, i8** %40, align 8
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 24
  %43 = load i32*, i32** %10, align 8
  %44 = call i32 @Copy(i32* %42, i32* %43, i32 4)
  %45 = load i8*, i8** %11, align 8
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 23
  store i8* %45, i8** %47, align 8
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 15
  %50 = load i32*, i32** %49, align 8
  %51 = load i32*, i32** %12, align 8
  %52 = load i32, i32* @SHA1_SIZE, align 4
  %53 = call i32 @Copy(i32* %50, i32* %51, i32 %52)
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 22
  store i64 0, i64* %55, align 8
  %56 = call i8* (...) @Tick64()
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 21
  store i8* %56, i8** %58, align 8
  %59 = call i8* (...) @Tick64()
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 20
  store i8* %59, i8** %61, align 8
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 0
  store i32 1, i32* %63, align 8
  %64 = load i32, i32* %7, align 4
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 4
  %67 = load i32, i32* @RUDPCompareSegmentList, align 4
  %68 = call i8* @NewList(i32 %67)
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 19
  store i8* %68, i8** %70, align 8
  %71 = load i32, i32* @RUDPCompareSegmentList, align 4
  %72 = call i8* @NewList(i32 %71)
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 18
  store i8* %72, i8** %74, align 8
  %75 = call %struct.TYPE_10__* (...) @NewBuf()
  store %struct.TYPE_10__* %75, %struct.TYPE_10__** %19, align 8
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %77 = load i32*, i32** %12, align 8
  %78 = load i32, i32* @SHA1_SIZE, align 4
  %79 = call i32 @WriteBuf(%struct.TYPE_10__* %76, i32* %77, i32 %78)
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %81 = call i32 @WriteBufStr(%struct.TYPE_10__* %80, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @Sha1(i32* %23, i32 %84, i32 %87)
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %90 = call i32 @FreeBuf(%struct.TYPE_10__* %89)
  %91 = call %struct.TYPE_10__* (...) @NewBuf()
  store %struct.TYPE_10__* %91, %struct.TYPE_10__** %19, align 8
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %93 = load i32*, i32** %12, align 8
  %94 = load i32, i32* @SHA1_SIZE, align 4
  %95 = call i32 @WriteBuf(%struct.TYPE_10__* %92, i32* %93, i32 %94)
  %96 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %97 = load i32, i32* @SHA1_SIZE, align 4
  %98 = call i32 @WriteBuf(%struct.TYPE_10__* %96, i32* %23, i32 %97)
  %99 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %100 = call i32 @WriteBufStr(%struct.TYPE_10__* %99, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @Sha1(i32* %26, i32 %103, i32 %106)
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %109 = call i32 @FreeBuf(%struct.TYPE_10__* %108)
  %110 = call %struct.TYPE_10__* (...) @NewBuf()
  store %struct.TYPE_10__* %110, %struct.TYPE_10__** %19, align 8
  %111 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %112 = load i32*, i32** %12, align 8
  %113 = load i32, i32* @SHA1_SIZE, align 4
  %114 = call i32 @WriteBuf(%struct.TYPE_10__* %111, i32* %112, i32 %113)
  %115 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %116 = call i32 @WriteBufStr(%struct.TYPE_10__* %115, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %117 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %117, i32 0, i32 17
  %119 = load i32*, i32** %118, align 8
  %120 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %124 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @Sha1(i32* %119, i32 %122, i32 %125)
  %127 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %128 = call i32 @FreeBuf(%struct.TYPE_10__* %127)
  %129 = call %struct.TYPE_10__* (...) @NewBuf()
  store %struct.TYPE_10__* %129, %struct.TYPE_10__** %19, align 8
  %130 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %131 = load i32*, i32** %12, align 8
  %132 = load i32, i32* @SHA1_SIZE, align 4
  %133 = call i32 @WriteBuf(%struct.TYPE_10__* %130, i32* %131, i32 %132)
  %134 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %135 = call i32 @WriteBufStr(%struct.TYPE_10__* %134, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  %136 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %137 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %136, i32 0, i32 16
  %138 = load i32*, i32** %137, align 8
  %139 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %140 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %143 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @Sha1(i32* %138, i32 %141, i32 %144)
  %146 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %147 = call i32 @FreeBuf(%struct.TYPE_10__* %146)
  %148 = load i32, i32* %7, align 4
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %150, label %157

150:                                              ; preds = %6
  %151 = call i32 (...) @Rand32()
  %152 = sext i32 %151 to i64
  %153 = or i64 -4294967296, %152
  %154 = trunc i64 %153 to i32
  %155 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %156 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %155, i32 0, i32 2
  store i32 %154, i32* %156, align 8
  br label %157

157:                                              ; preds = %150, %6
  %158 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %159 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %158, i32 0, i32 15
  %160 = load i32*, i32** %159, align 8
  %161 = load i32*, i32** %12, align 8
  %162 = load i32, i32* @SHA1_SIZE, align 4
  %163 = call i32 @Copy(i32* %160, i32* %161, i32 %162)
  %164 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %165 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %179

168:                                              ; preds = %157
  %169 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %170 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %169, i32 0, i32 14
  %171 = load i32*, i32** %170, align 8
  %172 = load i32, i32* @SHA1_SIZE, align 4
  %173 = call i32 @Copy(i32* %171, i32* %23, i32 %172)
  %174 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %175 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %174, i32 0, i32 13
  %176 = load i32*, i32** %175, align 8
  %177 = load i32, i32* @SHA1_SIZE, align 4
  %178 = call i32 @Copy(i32* %176, i32* %26, i32 %177)
  br label %190

179:                                              ; preds = %157
  %180 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %181 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %180, i32 0, i32 14
  %182 = load i32*, i32** %181, align 8
  %183 = load i32, i32* @SHA1_SIZE, align 4
  %184 = call i32 @Copy(i32* %182, i32* %26, i32 %183)
  %185 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %186 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %185, i32 0, i32 13
  %187 = load i32*, i32** %186, align 8
  %188 = load i32, i32* @SHA1_SIZE, align 4
  %189 = call i32 @Copy(i32* %187, i32* %23, i32 %188)
  br label %190

190:                                              ; preds = %179, %168
  %191 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %192 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %191, i32 0, i32 12
  %193 = load i32*, i32** %192, align 8
  %194 = call i32 @Rand(i32* %193, i32 8)
  %195 = call i32 @NewInt64List(i32 1)
  %196 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %197 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %196, i32 0, i32 11
  store i32 %195, i32* %197, align 8
  %198 = load i32, i32* @RUDP_KEEPALIVE_INTERVAL_MIN, align 4
  %199 = call i32 (...) @Rand32()
  %200 = load i32, i32* @RUDP_KEEPALIVE_INTERVAL_MAX, align 4
  %201 = load i32, i32* @RUDP_KEEPALIVE_INTERVAL_MIN, align 4
  %202 = sub nsw i32 %200, %201
  %203 = srem i32 %199, %202
  %204 = add nsw i32 %198, %203
  %205 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %206 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %205, i32 0, i32 3
  store i32 %204, i32* %206, align 4
  %207 = call i8* (...) @NewFifo()
  %208 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %209 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %208, i32 0, i32 10
  store i8* %207, i8** %209, align 8
  %210 = call i8* (...) @NewFifo()
  %211 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %212 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %211, i32 0, i32 9
  store i8* %210, i8** %212, align 8
  %213 = call i32 (...) @Rand16()
  %214 = srem i32 %213, 65535
  %215 = add nsw i32 %214, 1
  %216 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %217 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %216, i32 0, i32 4
  store i32 %215, i32* %217, align 8
  %218 = mul nuw i64 4, %28
  %219 = trunc i64 %218 to i32
  %220 = call i32 @Rand(i32* %29, i32 %219)
  %221 = mul nuw i64 4, %31
  %222 = trunc i64 %221 to i32
  %223 = call i32 @Rand(i32* %32, i32 %222)
  %224 = mul nuw i64 4, %28
  %225 = trunc i64 %224 to i32
  %226 = call i8* @NewSharedBuffer(i32* %29, i32 %225)
  %227 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %228 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %227, i32 0, i32 8
  store i8* %226, i8** %228, align 8
  %229 = mul nuw i64 4, %31
  %230 = trunc i64 %229 to i32
  %231 = call i8* @NewSharedBuffer(i32* %32, i32 %230)
  %232 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %233 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %232, i32 0, i32 7
  store i8* %231, i8** %233, align 8
  %234 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %235 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %234, i32 0, i32 6
  %236 = load i32*, i32** %235, align 8
  %237 = call i32 @Rand(i32* %236, i32 8)
  %238 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %239 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %238, i32 0, i32 5
  store i32 1, i32* %239, align 4
  %240 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %241 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %241)
  ret %struct.TYPE_9__* %240
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.TYPE_9__* @ZeroMalloc(i32) #2

declare dso_local i32 @Copy(i32*, i32*, i32) #2

declare dso_local i8* @Tick64(...) #2

declare dso_local i8* @NewList(i32) #2

declare dso_local %struct.TYPE_10__* @NewBuf(...) #2

declare dso_local i32 @WriteBuf(%struct.TYPE_10__*, i32*, i32) #2

declare dso_local i32 @WriteBufStr(%struct.TYPE_10__*, i8*) #2

declare dso_local i32 @Sha1(i32*, i32, i32) #2

declare dso_local i32 @FreeBuf(%struct.TYPE_10__*) #2

declare dso_local i32 @Rand32(...) #2

declare dso_local i32 @Rand(i32*, i32) #2

declare dso_local i32 @NewInt64List(i32) #2

declare dso_local i8* @NewFifo(...) #2

declare dso_local i32 @Rand16(...) #2

declare dso_local i8* @NewSharedBuffer(i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
