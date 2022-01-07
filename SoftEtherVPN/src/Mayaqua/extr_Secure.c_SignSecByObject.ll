; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Secure.c_SignSecByObject.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Secure.c_SignSecByObject.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i8*, i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64 (i32, %struct.TYPE_11__*, i32)*, i64 (i32, i32*, i32, i8*, i64*)* }
%struct.TYPE_11__ = type { i32, i32*, i32 }
%struct.TYPE_9__ = type { i64, i32, i64 }

@CKM_RSA_PKCS = common dso_local global i32 0, align 4
@SIGN_HASH_SIZE = common dso_local global i32 0, align 4
@SEC_ERROR_BAD_PARAMETER = common dso_local global i8* null, align 8
@SEC_ERROR_NO_SESSION = common dso_local global i8* null, align 8
@SEC_ERROR_NOT_LOGIN = common dso_local global i8* null, align 8
@SEC_K = common dso_local global i64 0, align 8
@CKR_OK = common dso_local global i64 0, align 8
@SEC_ERROR_HARDWARE_ERROR = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [24 x i8] c"C_SignInit Error: 0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"C_Sign Error: 0x%x  size:%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SignSecByObject(%struct.TYPE_10__* %0, %struct.TYPE_9__* %1, i8* %2, i8* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_11__, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %7, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  %17 = bitcast %struct.TYPE_11__* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %17, i8 0, i64 24, i1 false)
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 0
  %19 = load i32, i32* @CKM_RSA_PKCS, align 4
  store i32 %19, i32* %18, align 8
  %20 = load i32, i32* @SIGN_HASH_SIZE, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %14, align 8
  %23 = alloca i32, i64 %21, align 16
  store i64 %21, i64* %15, align 8
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %25 = icmp eq %struct.TYPE_10__* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  store i32 1, i32* %16, align 4
  br label %153

27:                                               ; preds = %5
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %29 = icmp eq %struct.TYPE_9__* %28, null
  br i1 %29, label %36, label %30

30:                                               ; preds = %27
  %31 = load i8*, i8** %9, align 8
  %32 = icmp eq i8* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %30
  %34 = load i8*, i8** %10, align 8
  %35 = icmp eq i8* %34, null
  br i1 %35, label %36, label %40

36:                                               ; preds = %33, %30, %27
  %37 = load i8*, i8** @SEC_ERROR_BAD_PARAMETER, align 8
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 2
  store i8* %37, i8** %39, align 8
  store i32 0, i32* %6, align 4
  store i32 1, i32* %16, align 4
  br label %153

40:                                               ; preds = %33
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %40
  %46 = load i8*, i8** @SEC_ERROR_NO_SESSION, align 8
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 2
  store i8* %46, i8** %48, align 8
  store i32 0, i32* %6, align 4
  store i32 1, i32* %16, align 4
  br label %153

49:                                               ; preds = %40
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %63

54:                                               ; preds = %49
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %54
  %60 = load i8*, i8** @SEC_ERROR_NOT_LOGIN, align 8
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 2
  store i8* %60, i8** %62, align 8
  store i32 0, i32* %6, align 4
  store i32 1, i32* %16, align 4
  br label %153

63:                                               ; preds = %54, %49
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @SEC_K, align 8
  %68 = icmp ne i64 %66, %67
  br i1 %68, label %69, label %73

69:                                               ; preds = %63
  %70 = load i8*, i8** @SEC_ERROR_BAD_PARAMETER, align 8
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 2
  store i8* %70, i8** %72, align 8
  store i32 0, i32* %6, align 4
  store i32 1, i32* %16, align 4
  br label %153

73:                                               ; preds = %63
  %74 = mul nuw i64 4, %21
  %75 = trunc i64 %74 to i32
  %76 = load i8*, i8** %10, align 8
  %77 = load i64, i64* %11, align 8
  %78 = call i32 @HashForSign(i32* %23, i32 %75, i8* %76, i64 %77)
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 4
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 0
  %83 = load i64 (i32, %struct.TYPE_11__*, i32)*, i64 (i32, %struct.TYPE_11__*, i32)** %82, align 8
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = call i64 %83(i32 %86, %struct.TYPE_11__* %12, i32 %89)
  store i64 %90, i64* %13, align 8
  %91 = load i64, i64* %13, align 8
  %92 = load i64, i64* @CKR_OK, align 8
  %93 = icmp ne i64 %91, %92
  br i1 %93, label %94, label %100

94:                                               ; preds = %73
  %95 = load i8*, i8** @SEC_ERROR_HARDWARE_ERROR, align 8
  %96 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 2
  store i8* %95, i8** %97, align 8
  %98 = load i64, i64* %13, align 8
  %99 = call i32 (i8*, i64, ...) @Debug(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i64 %98)
  store i32 0, i32* %6, align 4
  store i32 1, i32* %16, align 4
  br label %153

100:                                              ; preds = %73
  store i64 128, i64* %11, align 8
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 4
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 1
  %105 = load i64 (i32, i32*, i32, i8*, i64*)*, i64 (i32, i32*, i32, i8*, i64*)** %104, align 8
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 8
  %109 = mul nuw i64 4, %21
  %110 = trunc i64 %109 to i32
  %111 = load i8*, i8** %9, align 8
  %112 = call i64 %105(i32 %108, i32* %23, i32 %110, i8* %111, i64* %11)
  store i64 %112, i64* %13, align 8
  %113 = load i64, i64* %13, align 8
  %114 = load i64, i64* @CKR_OK, align 8
  %115 = icmp ne i64 %113, %114
  br i1 %115, label %116, label %135

116:                                              ; preds = %100
  %117 = load i64, i64* %11, align 8
  %118 = icmp slt i64 128, %117
  br i1 %118, label %119, label %135

119:                                              ; preds = %116
  %120 = load i64, i64* %11, align 8
  %121 = icmp sle i64 %120, 512
  br i1 %121, label %122, label %135

122:                                              ; preds = %119
  %123 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %124 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %123, i32 0, i32 4
  %125 = load %struct.TYPE_8__*, %struct.TYPE_8__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i32 0, i32 1
  %127 = load i64 (i32, i32*, i32, i8*, i64*)*, i64 (i32, i32*, i32, i8*, i64*)** %126, align 8
  %128 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %129 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %128, i32 0, i32 3
  %130 = load i32, i32* %129, align 8
  %131 = mul nuw i64 4, %21
  %132 = trunc i64 %131 to i32
  %133 = load i8*, i8** %9, align 8
  %134 = call i64 %127(i32 %130, i32* %23, i32 %132, i8* %133, i64* %11)
  store i64 %134, i64* %13, align 8
  br label %135

135:                                              ; preds = %122, %119, %116, %100
  %136 = load i64, i64* %13, align 8
  %137 = load i64, i64* @CKR_OK, align 8
  %138 = icmp ne i64 %136, %137
  br i1 %138, label %145, label %139

139:                                              ; preds = %135
  %140 = load i64, i64* %11, align 8
  %141 = icmp eq i64 %140, 0
  br i1 %141, label %145, label %142

142:                                              ; preds = %139
  %143 = load i64, i64* %11, align 8
  %144 = icmp sgt i64 %143, 512
  br i1 %144, label %145, label %152

145:                                              ; preds = %142, %139, %135
  %146 = load i8*, i8** @SEC_ERROR_HARDWARE_ERROR, align 8
  %147 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %148 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %147, i32 0, i32 2
  store i8* %146, i8** %148, align 8
  %149 = load i64, i64* %13, align 8
  %150 = load i64, i64* %11, align 8
  %151 = call i32 (i8*, i64, ...) @Debug(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i64 %149, i64 %150)
  store i32 0, i32* %6, align 4
  store i32 1, i32* %16, align 4
  br label %153

152:                                              ; preds = %142
  store i32 1, i32* %6, align 4
  store i32 1, i32* %16, align 4
  br label %153

153:                                              ; preds = %152, %145, %94, %69, %59, %45, %36, %26
  %154 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %154)
  %155 = load i32, i32* %6, align 4
  ret i32 %155
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @HashForSign(i32*, i32, i8*, i64) #3

declare dso_local i32 @Debug(i8*, i64, ...) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
