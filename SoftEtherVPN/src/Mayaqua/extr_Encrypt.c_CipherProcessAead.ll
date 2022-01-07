; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Encrypt.c_CipherProcessAead.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Encrypt.c_CipherProcessAead.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i64 }

@.str = private unnamed_addr constant [64 x i8] c"CipherProcessAead(): EVP_CipherInit_ex() failed with error: %s\0A\00", align 1
@EVP_CTRL_AEAD_SET_TAG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [67 x i8] c"CipherProcessAead(): EVP_CIPHER_CTX_ctrl() failed to set the tag!\0A\00", align 1
@.str.2 = private unnamed_addr constant [63 x i8] c"CipherProcessAead(): EVP_CipherUpdate() failed with error: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [65 x i8] c"CipherProcessAead(): EVP_CipherFinal_ex() failed with error: %s\0A\00", align 1
@EVP_CTRL_AEAD_GET_TAG = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [67 x i8] c"CipherProcessAead(): EVP_CIPHER_CTX_ctrl() failed to get the tag!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @CipherProcessAead(%struct.TYPE_3__* %0, i8* %1, i8* %2, i64 %3, i8* %4, i8* %5, i64 %6, i8* %7, i64 %8) #0 {
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_3__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %11, align 8
  store i8* %1, i8** %12, align 8
  store i8* %2, i8** %13, align 8
  store i64 %3, i64* %14, align 8
  store i8* %4, i8** %15, align 8
  store i8* %5, i8** %16, align 8
  store i64 %6, i64* %17, align 8
  store i8* %7, i8** %18, align 8
  store i64 %8, i64* %19, align 8
  %22 = load i64, i64* %17, align 8
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %20, align 4
  store i32 0, i32* %21, align 4
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %25 = icmp eq %struct.TYPE_3__* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %9
  store i64 0, i64* %10, align 8
  br label %160

27:                                               ; preds = %9
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 3
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %27
  %33 = load i8*, i8** %15, align 8
  %34 = load i8*, i8** %16, align 8
  %35 = load i64, i64* %17, align 8
  %36 = call i32 @Copy(i8* %33, i8* %34, i64 %35)
  %37 = load i64, i64* %17, align 8
  store i64 %37, i64* %10, align 8
  br label %160

38:                                               ; preds = %27
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %61, label %43

43:                                               ; preds = %38
  %44 = load i8*, i8** %12, align 8
  %45 = icmp eq i8* %44, null
  br i1 %45, label %61, label %46

46:                                               ; preds = %43
  %47 = load i8*, i8** %13, align 8
  %48 = icmp eq i8* %47, null
  br i1 %48, label %61, label %49

49:                                               ; preds = %46
  %50 = load i64, i64* %14, align 8
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %61, label %52

52:                                               ; preds = %49
  %53 = load i8*, i8** %15, align 8
  %54 = icmp eq i8* %53, null
  br i1 %54, label %61, label %55

55:                                               ; preds = %52
  %56 = load i8*, i8** %16, align 8
  %57 = icmp eq i8* %56, null
  br i1 %57, label %61, label %58

58:                                               ; preds = %55
  %59 = load i64, i64* %17, align 8
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %58, %55, %52, %49, %46, %43, %38
  store i64 0, i64* %10, align 8
  br label %160

62:                                               ; preds = %58
  br label %63

63:                                               ; preds = %62
  br label %64

64:                                               ; preds = %63
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = load i8*, i8** %12, align 8
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @EVP_CipherInit_ex(i32 %67, i32* null, i32* null, i32* null, i8* %68, i32 %71)
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %64
  %75 = call i32 (...) @OpenSSL_Error()
  %76 = call i32 (i8*, ...) @Debug(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), i32 %75)
  store i64 0, i64* %10, align 8
  br label %160

77:                                               ; preds = %64
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %94

82:                                               ; preds = %77
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @EVP_CTRL_AEAD_SET_TAG, align 4
  %87 = load i64, i64* %14, align 8
  %88 = load i8*, i8** %13, align 8
  %89 = call i32 @EVP_CIPHER_CTX_ctrl(i32 %85, i32 %86, i64 %87, i8* %88)
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %82
  %92 = call i32 (i8*, ...) @Debug(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.1, i64 0, i64 0))
  store i64 0, i64* %10, align 8
  br label %160

93:                                               ; preds = %82
  br label %94

94:                                               ; preds = %93, %77
  %95 = load i8*, i8** %18, align 8
  %96 = icmp ne i8* %95, null
  br i1 %96, label %97, label %112

97:                                               ; preds = %94
  %98 = load i64, i64* %19, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %112

100:                                              ; preds = %97
  %101 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = load i8*, i8** %18, align 8
  %105 = load i64, i64* %19, align 8
  %106 = call i32 @EVP_CipherUpdate(i32 %103, i8* null, i32* %20, i8* %104, i64 %105)
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %100
  %109 = call i32 (...) @OpenSSL_Error()
  %110 = call i32 (i8*, ...) @Debug(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.2, i64 0, i64 0), i32 %109)
  store i64 0, i64* %10, align 8
  br label %160

111:                                              ; preds = %100
  br label %112

112:                                              ; preds = %111, %97, %94
  %113 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  %116 = load i8*, i8** %15, align 8
  %117 = load i8*, i8** %16, align 8
  %118 = load i64, i64* %17, align 8
  %119 = call i32 @EVP_CipherUpdate(i32 %115, i8* %116, i32* %20, i8* %117, i64 %118)
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %121, label %124

121:                                              ; preds = %112
  %122 = call i32 (...) @OpenSSL_Error()
  %123 = call i32 (i8*, ...) @Debug(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.2, i64 0, i64 0), i32 %122)
  store i64 0, i64* %10, align 8
  br label %160

124:                                              ; preds = %112
  %125 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 8
  %128 = load i8*, i8** %15, align 8
  %129 = bitcast i8* %128 to i32*
  %130 = load i32, i32* %20, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i32, i32* %129, i64 %131
  %133 = call i32 @EVP_CipherFinal_ex(i32 %127, i32* %132, i32* %21)
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %135, label %138

135:                                              ; preds = %124
  %136 = call i32 (...) @OpenSSL_Error()
  %137 = call i32 (i8*, ...) @Debug(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.3, i64 0, i64 0), i32 %136)
  store i64 0, i64* %10, align 8
  br label %160

138:                                              ; preds = %124
  %139 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %140 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %155

143:                                              ; preds = %138
  %144 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %145 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 8
  %147 = load i32, i32* @EVP_CTRL_AEAD_GET_TAG, align 4
  %148 = load i64, i64* %14, align 8
  %149 = load i8*, i8** %13, align 8
  %150 = call i32 @EVP_CIPHER_CTX_ctrl(i32 %146, i32 %147, i64 %148, i8* %149)
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %152, label %154

152:                                              ; preds = %143
  %153 = call i32 (i8*, ...) @Debug(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.4, i64 0, i64 0))
  store i64 0, i64* %10, align 8
  br label %160

154:                                              ; preds = %143
  br label %155

155:                                              ; preds = %154, %138
  %156 = load i32, i32* %20, align 4
  %157 = load i32, i32* %21, align 4
  %158 = add nsw i32 %156, %157
  %159 = sext i32 %158 to i64
  store i64 %159, i64* %10, align 8
  br label %160

160:                                              ; preds = %155, %152, %135, %121, %108, %91, %74, %61, %32, %26
  %161 = load i64, i64* %10, align 8
  ret i64 %161
}

declare dso_local i32 @Copy(i8*, i8*, i64) #1

declare dso_local i32 @EVP_CipherInit_ex(i32, i32*, i32*, i32*, i8*, i32) #1

declare dso_local i32 @Debug(i8*, ...) #1

declare dso_local i32 @OpenSSL_Error(...) #1

declare dso_local i32 @EVP_CIPHER_CTX_ctrl(i32, i32, i64, i8*) #1

declare dso_local i32 @EVP_CipherUpdate(i32, i8*, i32*, i8*, i64) #1

declare dso_local i32 @EVP_CipherFinal_ex(i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
