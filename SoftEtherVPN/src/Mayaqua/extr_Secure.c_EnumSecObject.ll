; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Secure.c_EnumSecObject.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Secure.c_EnumSecObject.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32*, i32, %struct.TYPE_7__*, i8* }
%struct.TYPE_7__ = type { i64 (i32, i8*, i32)*, i64 (i32, i64*, i32, i64*)*, i64 (i32, i64, i8*, i32)*, i32 (i32)* }
%struct.TYPE_8__ = type { i32, i32, i64, i64 }

@MAX_OBJ = common dso_local global i32 0, align 4
@CKA_TOKEN = common dso_local global i32 0, align 4
@SEC_ERROR_NO_SESSION = common dso_local global i8* null, align 8
@CKR_OK = common dso_local global i64 0, align 8
@SEC_ERROR_HARDWARE_ERROR = common dso_local global i8* null, align 8
@MAX_SIZE = common dso_local global i32 0, align 4
@CKA_LABEL = common dso_local global i32 0, align 4
@CKA_CLASS = common dso_local global i32 0, align 4
@CKA_PRIVATE = common dso_local global i32 0, align 4
@INFINITE = common dso_local global i64 0, align 8
@SEC_DATA = common dso_local global i64 0, align 8
@SEC_X = common dso_local global i64 0, align 8
@SEC_P = common dso_local global i64 0, align 8
@SEC_K = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @EnumSecObject(%struct.TYPE_9__* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca [1 x i8], align 1
  %12 = alloca [1 x i8], align 1
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca [3 x i8], align 1
  %20 = alloca i64, align 8
  %21 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store i32 1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %22 = load i32, i32* @MAX_OBJ, align 4
  %23 = zext i32 %22 to i64
  %24 = call i8* @llvm.stacksave()
  store i8* %24, i8** %6, align 8
  %25 = alloca i64, i64 %23, align 16
  store i64 %23, i64* %7, align 8
  %26 = getelementptr inbounds [1 x i8], [1 x i8]* %12, i64 0, i64 0
  %27 = load i32, i32* @CKA_TOKEN, align 4
  %28 = trunc i32 %27 to i8
  store i8 %28, i8* %26, align 1
  %29 = load i32, i32* @MAX_OBJ, align 4
  %30 = sext i32 %29 to i64
  store i64 %30, i64* %13, align 8
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %32 = icmp eq %struct.TYPE_9__* %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %1
  store i32* null, i32** %2, align 8
  store i32 1, i32* %14, align 4
  br label %198

34:                                               ; preds = %1
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %34
  %40 = load i8*, i8** @SEC_ERROR_NO_SESSION, align 8
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 4
  store i8* %40, i8** %42, align 8
  store i32* null, i32** %2, align 8
  store i32 1, i32* %14, align 4
  br label %198

43:                                               ; preds = %34
  %44 = getelementptr inbounds [1 x i8], [1 x i8]* %11, i64 0, i64 0
  %45 = call i32 @Zero(i8* %44, i32 1)
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %50, label %55

50:                                               ; preds = %43
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  %54 = call i32* @CloneEnumSecObject(i32* %53)
  store i32* %54, i32** %2, align 8
  store i32 1, i32* %14, align 4
  br label %198

55:                                               ; preds = %43
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 3
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = load i64 (i32, i8*, i32)*, i64 (i32, i8*, i32)** %59, align 8
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = getelementptr inbounds [1 x i8], [1 x i8]* %12, i64 0, i64 0
  %65 = call i64 %60(i32 %63, i8* %64, i32 1)
  store i64 %65, i64* %9, align 8
  %66 = load i64, i64* %9, align 8
  %67 = load i64, i64* @CKR_OK, align 8
  %68 = icmp ne i64 %66, %67
  br i1 %68, label %69, label %73

69:                                               ; preds = %55
  %70 = load i8*, i8** @SEC_ERROR_HARDWARE_ERROR, align 8
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 4
  store i8* %70, i8** %72, align 8
  store i32* null, i32** %2, align 8
  store i32 1, i32* %14, align 4
  br label %198

73:                                               ; preds = %55
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 3
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 1
  %78 = load i64 (i32, i64*, i32, i64*)*, i64 (i32, i64*, i32, i64*)** %77, align 8
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = mul nuw i64 8, %23
  %83 = udiv i64 %82, 8
  %84 = trunc i64 %83 to i32
  %85 = call i64 %78(i32 %81, i64* %25, i32 %84, i64* %13)
  %86 = load i64, i64* @CKR_OK, align 8
  %87 = icmp ne i64 %85, %86
  br i1 %87, label %88, label %101

88:                                               ; preds = %73
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 3
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 3
  %93 = load i32 (i32)*, i32 (i32)** %92, align 8
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = call i32 %93(i32 %96)
  %98 = load i8*, i8** @SEC_ERROR_HARDWARE_ERROR, align 8
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 4
  store i8* %98, i8** %100, align 8
  store i32* null, i32** %2, align 8
  store i32 1, i32* %14, align 4
  br label %198

101:                                              ; preds = %73
  %102 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 3
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 3
  %106 = load i32 (i32)*, i32 (i32)** %105, align 8
  %107 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = call i32 %106(i32 %109)
  %111 = call i32* @NewListFast(i32* null)
  store i32* %111, i32** %10, align 8
  store i64 0, i64* %8, align 8
  br label %112

112:                                              ; preds = %189, %101
  %113 = load i64, i64* %8, align 8
  %114 = load i64, i64* %13, align 8
  %115 = icmp slt i64 %113, %114
  br i1 %115, label %116, label %192

116:                                              ; preds = %112
  %117 = load i32, i32* @MAX_SIZE, align 4
  %118 = zext i32 %117 to i64
  %119 = call i8* @llvm.stacksave()
  store i8* %119, i8** %15, align 8
  %120 = alloca i8, i64 %118, align 16
  store i64 %118, i64* %16, align 8
  store i64 0, i64* %17, align 8
  store i32 0, i32* %18, align 4
  %121 = getelementptr inbounds [3 x i8], [3 x i8]* %19, i64 0, i64 0
  %122 = load i32, i32* @CKA_LABEL, align 4
  %123 = trunc i32 %122 to i8
  store i8 %123, i8* %121, align 1
  %124 = getelementptr inbounds i8, i8* %121, i64 1
  %125 = load i32, i32* @CKA_CLASS, align 4
  %126 = trunc i32 %125 to i8
  store i8 %126, i8* %124, align 1
  %127 = getelementptr inbounds i8, i8* %124, i64 1
  %128 = load i32, i32* @CKA_PRIVATE, align 4
  %129 = trunc i32 %128 to i8
  store i8 %129, i8* %127, align 1
  %130 = trunc i64 %118 to i32
  %131 = call i32 @Zero(i8* %120, i32 %130)
  %132 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %132, i32 0, i32 3
  %134 = load %struct.TYPE_7__*, %struct.TYPE_7__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 2
  %136 = load i64 (i32, i64, i8*, i32)*, i64 (i32, i64, i8*, i32)** %135, align 8
  %137 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %138 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 8
  %140 = load i64, i64* %8, align 8
  %141 = getelementptr inbounds i64, i64* %25, i64 %140
  %142 = load i64, i64* %141, align 8
  %143 = getelementptr inbounds [3 x i8], [3 x i8]* %19, i64 0, i64 0
  %144 = call i64 %136(i32 %139, i64 %142, i8* %143, i32 3)
  %145 = load i64, i64* @CKR_OK, align 8
  %146 = icmp eq i64 %144, %145
  br i1 %146, label %147, label %187

147:                                              ; preds = %116
  %148 = load i64, i64* @INFINITE, align 8
  store i64 %148, i64* %20, align 8
  %149 = load i64, i64* %17, align 8
  switch i64 %149, label %158 [
    i64 130, label %150
    i64 131, label %152
    i64 128, label %154
    i64 129, label %156
  ]

150:                                              ; preds = %147
  %151 = load i64, i64* @SEC_DATA, align 8
  store i64 %151, i64* %20, align 8
  br label %158

152:                                              ; preds = %147
  %153 = load i64, i64* @SEC_X, align 8
  store i64 %153, i64* %20, align 8
  br label %158

154:                                              ; preds = %147
  %155 = load i64, i64* @SEC_P, align 8
  store i64 %155, i64* %20, align 8
  br label %158

156:                                              ; preds = %147
  %157 = load i64, i64* @SEC_K, align 8
  store i64 %157, i64* %20, align 8
  br label %158

158:                                              ; preds = %147, %156, %154, %152, %150
  %159 = load i64, i64* %20, align 8
  %160 = load i64, i64* @INFINITE, align 8
  %161 = icmp ne i64 %159, %160
  br i1 %161, label %162, label %186

162:                                              ; preds = %158
  %163 = call %struct.TYPE_8__* @ZeroMalloc(i32 24)
  store %struct.TYPE_8__* %163, %struct.TYPE_8__** %21, align 8
  %164 = load i64, i64* %20, align 8
  %165 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %166 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %165, i32 0, i32 3
  store i64 %164, i64* %166, align 8
  %167 = load i64, i64* %8, align 8
  %168 = getelementptr inbounds i64, i64* %25, i64 %167
  %169 = load i64, i64* %168, align 8
  %170 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %171 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %170, i32 0, i32 2
  store i64 %169, i64* %171, align 8
  %172 = load i32, i32* %18, align 4
  %173 = icmp eq i32 %172, 0
  %174 = zext i1 %173 to i64
  %175 = select i1 %173, i32 0, i32 1
  %176 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %177 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %176, i32 0, i32 0
  store i32 %175, i32* %177, align 8
  %178 = call i32 @EnSafeStr(i8* %120, i8 signext 63)
  %179 = call i32 @TruncateCharFromStr(i8* %120, i8 signext 63)
  %180 = call i32 @CopyStr(i8* %120)
  %181 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %182 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %181, i32 0, i32 1
  store i32 %180, i32* %182, align 4
  %183 = load i32*, i32** %10, align 8
  %184 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %185 = call i32 @Add(i32* %183, %struct.TYPE_8__* %184)
  br label %186

186:                                              ; preds = %162, %158
  br label %187

187:                                              ; preds = %186, %116
  %188 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %188)
  br label %189

189:                                              ; preds = %187
  %190 = load i64, i64* %8, align 8
  %191 = add nsw i64 %190, 1
  store i64 %191, i64* %8, align 8
  br label %112

192:                                              ; preds = %112
  %193 = load i32*, i32** %10, align 8
  %194 = call i32* @CloneEnumSecObject(i32* %193)
  %195 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %196 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %195, i32 0, i32 1
  store i32* %194, i32** %196, align 8
  %197 = load i32*, i32** %10, align 8
  store i32* %197, i32** %2, align 8
  store i32 1, i32* %14, align 4
  br label %198

198:                                              ; preds = %192, %88, %69, %50, %39, %33
  %199 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %199)
  %200 = load i32*, i32** %2, align 8
  ret i32* %200
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @Zero(i8*, i32) #2

declare dso_local i32* @CloneEnumSecObject(i32*) #2

declare dso_local i32* @NewListFast(i32*) #2

declare dso_local %struct.TYPE_8__* @ZeroMalloc(i32) #2

declare dso_local i32 @EnSafeStr(i8*, i8 signext) #2

declare dso_local i32 @TruncateCharFromStr(i8*, i8 signext) #2

declare dso_local i32 @CopyStr(i8*) #2

declare dso_local i32 @Add(i32*, %struct.TYPE_8__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
