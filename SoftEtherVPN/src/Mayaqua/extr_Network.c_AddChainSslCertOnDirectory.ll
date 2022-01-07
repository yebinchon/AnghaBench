; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Network.c_AddChainSslCertOnDirectory.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Network.c_AddChainSslCertOnDirectory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssl_ctx_st = type { i32 }
%struct.TYPE_5__ = type { i64, %struct.TYPE_6__** }
%struct.TYPE_6__ = type { i32, i8* }

@MAX_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i32] [i32 99, i32 104, i32 97, i32 105, i32 110, i32 95, i32 99, i32 101, i32 114, i32 116, i32 115, i32 0], align 4
@.str.1 = private unnamed_addr constant [23 x i32] [i32 82, i32 101, i32 97, i32 100, i32 109, i32 101, i32 95, i32 67, i32 104, i32 97, i32 105, i32 110, i32 95, i32 67, i32 101, i32 114, i32 116, i32 115, i32 46, i32 116, i32 120, i32 116, i32 0], align 4
@.str.2 = private unnamed_addr constant [17 x i32] [i32 124, i32 99, i32 104, i32 97, i32 105, i32 110, i32 95, i32 99, i32 101, i32 114, i32 116, i32 115, i32 46, i32 116, i32 120, i32 116, i32 0], align 4
@SHA1_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @AddChainSslCertOnDirectory(%struct.ssl_ctx_st* %0) #0 {
  %2 = alloca %struct.ssl_ctx_st*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_6__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  store %struct.ssl_ctx_st* %0, %struct.ssl_ctx_st** %2, align 8
  %21 = load i32, i32* @MAX_SIZE, align 4
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %3, align 8
  %24 = alloca i32, i64 %22, align 16
  store i64 %22, i64* %4, align 8
  %25 = load i32, i32* @MAX_SIZE, align 4
  %26 = zext i32 %25 to i64
  %27 = alloca i32, i64 %26, align 16
  store i64 %26, i64* %5, align 8
  %28 = load i32, i32* @MAX_SIZE, align 4
  %29 = zext i32 %28 to i64
  %30 = alloca i32, i64 %29, align 16
  store i64 %29, i64* %6, align 8
  %31 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %2, align 8
  %32 = icmp eq %struct.ssl_ctx_st* %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %1
  store i32 1, i32* %10, align 4
  br label %153

34:                                               ; preds = %1
  %35 = call i32* @NewListFast(i32* null)
  store i32* %35, i32** %8, align 8
  %36 = mul nuw i64 4, %26
  %37 = trunc i64 %36 to i32
  %38 = call i32 @GetExeDirW(i32* %27, i32 %37)
  %39 = mul nuw i64 4, %22
  %40 = trunc i64 %39 to i32
  %41 = call i32 @CombinePathW(i32* %24, i32 %40, i32* %27, i8* bitcast ([12 x i32]* @.str to i8*))
  %42 = call i32 @MakeDirExW(i32* %24)
  %43 = mul nuw i64 4, %29
  %44 = trunc i64 %43 to i32
  %45 = call i32 @CombinePathW(i32* %30, i32 %44, i32* %24, i8* bitcast ([23 x i32]* @.str.1 to i8*))
  %46 = call i32 @IsFileExistsW(i32* %30)
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %34
  %49 = call i32 @FileCopyW(i8* bitcast ([17 x i32]* @.str.2 to i8*), i32* %30)
  br label %50

50:                                               ; preds = %48, %34
  %51 = call %struct.TYPE_5__* @EnumDirW(i32* %24)
  store %struct.TYPE_5__* %51, %struct.TYPE_5__** %7, align 8
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %53 = icmp ne %struct.TYPE_5__* %52, null
  br i1 %53, label %54, label %135

54:                                               ; preds = %50
  store i64 0, i64* %9, align 8
  br label %55

55:                                               ; preds = %129, %54
  %56 = load i64, i64* %9, align 8
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp ult i64 %56, %59
  br i1 %60, label %61, label %132

61:                                               ; preds = %55
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 1
  %64 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %63, align 8
  %65 = load i64, i64* %9, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %64, i64 %65
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %66, align 8
  store %struct.TYPE_6__* %67, %struct.TYPE_6__** %11, align 8
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %128

72:                                               ; preds = %61
  %73 = load i32, i32* @MAX_SIZE, align 4
  %74 = zext i32 %73 to i64
  %75 = call i8* @llvm.stacksave()
  store i8* %75, i8** %12, align 8
  %76 = alloca i32, i64 %74, align 16
  store i64 %74, i64* %13, align 8
  %77 = mul nuw i64 4, %74
  %78 = trunc i64 %77 to i32
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 1
  %81 = load i8*, i8** %80, align 8
  %82 = call i32 @CombinePathW(i32* %76, i32 %78, i32* %24, i8* %81)
  %83 = call i32* @FileToXW(i32* %76)
  store i32* %83, i32** %14, align 8
  %84 = load i32*, i32** %14, align 8
  %85 = icmp ne i32* %84, null
  br i1 %85, label %86, label %126

86:                                               ; preds = %72
  store i32 0, i32* %16, align 4
  %87 = load i32, i32* @SHA1_SIZE, align 4
  %88 = zext i32 %87 to i64
  %89 = call i8* @llvm.stacksave()
  store i8* %89, i8** %17, align 8
  %90 = alloca i32, i64 %88, align 16
  store i64 %88, i64* %18, align 8
  %91 = load i32*, i32** %14, align 8
  %92 = call i32 @GetXDigest(i32* %91, i32* %90, i32 1)
  store i64 0, i64* %15, align 8
  br label %93

93:                                               ; preds = %108, %86
  %94 = load i64, i64* %15, align 8
  %95 = load i32*, i32** %8, align 8
  %96 = call i64 @LIST_NUM(i32* %95)
  %97 = icmp ult i64 %94, %96
  br i1 %97, label %98, label %111

98:                                               ; preds = %93
  %99 = load i32*, i32** %8, align 8
  %100 = load i64, i64* %15, align 8
  %101 = call i32* @LIST_DATA(i32* %99, i64 %100)
  store i32* %101, i32** %19, align 8
  %102 = load i32*, i32** %19, align 8
  %103 = load i32, i32* @SHA1_SIZE, align 4
  %104 = call i64 @Cmp(i32* %90, i32* %102, i32 %103)
  %105 = icmp eq i64 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %98
  store i32 1, i32* %16, align 4
  br label %107

107:                                              ; preds = %106, %98
  br label %108

108:                                              ; preds = %107
  %109 = load i64, i64* %15, align 8
  %110 = add i64 %109, 1
  store i64 %110, i64* %15, align 8
  br label %93

111:                                              ; preds = %93
  %112 = load i32, i32* %16, align 4
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %122

114:                                              ; preds = %111
  %115 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %2, align 8
  %116 = load i32*, i32** %14, align 8
  %117 = call i32 @AddChainSslCert(%struct.ssl_ctx_st* %115, i32* %116)
  %118 = load i32*, i32** %8, align 8
  %119 = load i32, i32* @SHA1_SIZE, align 4
  %120 = call i32 @Clone(i32* %90, i32 %119)
  %121 = call i32 @Add(i32* %118, i32 %120)
  br label %122

122:                                              ; preds = %114, %111
  %123 = load i32*, i32** %14, align 8
  %124 = call i32 @FreeX(i32* %123)
  %125 = load i8*, i8** %17, align 8
  call void @llvm.stackrestore(i8* %125)
  br label %126

126:                                              ; preds = %122, %72
  %127 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %127)
  br label %128

128:                                              ; preds = %126, %61
  br label %129

129:                                              ; preds = %128
  %130 = load i64, i64* %9, align 8
  %131 = add i64 %130, 1
  store i64 %131, i64* %9, align 8
  br label %55

132:                                              ; preds = %55
  %133 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %134 = call i32 @FreeDir(%struct.TYPE_5__* %133)
  br label %135

135:                                              ; preds = %132, %50
  store i64 0, i64* %9, align 8
  br label %136

136:                                              ; preds = %147, %135
  %137 = load i64, i64* %9, align 8
  %138 = load i32*, i32** %8, align 8
  %139 = call i64 @LIST_NUM(i32* %138)
  %140 = icmp ult i64 %137, %139
  br i1 %140, label %141, label %150

141:                                              ; preds = %136
  %142 = load i32*, i32** %8, align 8
  %143 = load i64, i64* %9, align 8
  %144 = call i32* @LIST_DATA(i32* %142, i64 %143)
  store i32* %144, i32** %20, align 8
  %145 = load i32*, i32** %20, align 8
  %146 = call i32 @Free(i32* %145)
  br label %147

147:                                              ; preds = %141
  %148 = load i64, i64* %9, align 8
  %149 = add i64 %148, 1
  store i64 %149, i64* %9, align 8
  br label %136

150:                                              ; preds = %136
  %151 = load i32*, i32** %8, align 8
  %152 = call i32 @ReleaseList(i32* %151)
  store i32 0, i32* %10, align 4
  br label %153

153:                                              ; preds = %150, %33
  %154 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %154)
  %155 = load i32, i32* %10, align 4
  switch i32 %155, label %157 [
    i32 0, label %156
    i32 1, label %156
  ]

156:                                              ; preds = %153, %153
  ret void

157:                                              ; preds = %153
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @NewListFast(i32*) #2

declare dso_local i32 @GetExeDirW(i32*, i32) #2

declare dso_local i32 @CombinePathW(i32*, i32, i32*, i8*) #2

declare dso_local i32 @MakeDirExW(i32*) #2

declare dso_local i32 @IsFileExistsW(i32*) #2

declare dso_local i32 @FileCopyW(i8*, i32*) #2

declare dso_local %struct.TYPE_5__* @EnumDirW(i32*) #2

declare dso_local i32* @FileToXW(i32*) #2

declare dso_local i32 @GetXDigest(i32*, i32*, i32) #2

declare dso_local i64 @LIST_NUM(i32*) #2

declare dso_local i32* @LIST_DATA(i32*, i64) #2

declare dso_local i64 @Cmp(i32*, i32*, i32) #2

declare dso_local i32 @AddChainSslCert(%struct.ssl_ctx_st*, i32*) #2

declare dso_local i32 @Add(i32*, i32) #2

declare dso_local i32 @Clone(i32*, i32) #2

declare dso_local i32 @FreeX(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

declare dso_local i32 @FreeDir(%struct.TYPE_5__*) #2

declare dso_local i32 @Free(i32*) #2

declare dso_local i32 @ReleaseList(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
