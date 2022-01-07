; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Admin.c_AdminWebHandleFileRequest.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Admin.c_AdminWebHandleFileRequest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }

@MAX_PATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"..\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"//\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"\\\\\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"/\\\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"\\/\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"application/octet-stream\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"OK\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AdminWebHandleFileRequest(i32* %0, i32* %1, i32* %2, i32* %3, i8* %4, i8* %5, i8* %6, i8* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  %24 = alloca i8*, align 8
  %25 = alloca i64, align 8
  %26 = alloca i32, align 4
  %27 = alloca %struct.TYPE_6__*, align 8
  %28 = alloca i8*, align 8
  %29 = alloca i64, align 8
  %30 = alloca i8*, align 8
  %31 = alloca i64, align 8
  %32 = alloca %struct.TYPE_6__*, align 8
  %33 = alloca i8*, align 8
  store i32* %0, i32** %10, align 8
  store i32* %1, i32** %11, align 8
  store i32* %2, i32** %12, align 8
  store i32* %3, i32** %13, align 8
  store i8* %4, i8** %14, align 8
  store i8* %5, i8** %15, align 8
  store i8* %6, i8** %16, align 8
  store i8* %7, i8** %17, align 8
  store i32 0, i32* %18, align 4
  %34 = load i32, i32* @MAX_PATH, align 4
  %35 = zext i32 %34 to i64
  %36 = call i8* @llvm.stacksave()
  store i8* %36, i8** %19, align 8
  %37 = alloca i8, i64 %35, align 16
  store i64 %35, i64* %20, align 8
  %38 = load i32*, i32** %10, align 8
  %39 = icmp eq i32* %38, null
  br i1 %39, label %58, label %40

40:                                               ; preds = %8
  %41 = load i32*, i32** %11, align 8
  %42 = icmp eq i32* %41, null
  br i1 %42, label %58, label %43

43:                                               ; preds = %40
  %44 = load i32*, i32** %12, align 8
  %45 = icmp eq i32* %44, null
  br i1 %45, label %58, label %46

46:                                               ; preds = %43
  %47 = load i32*, i32** %13, align 8
  %48 = icmp eq i32* %47, null
  br i1 %48, label %58, label %49

49:                                               ; preds = %46
  %50 = load i8*, i8** %15, align 8
  %51 = icmp eq i8* %50, null
  br i1 %51, label %58, label %52

52:                                               ; preds = %49
  %53 = load i8*, i8** %16, align 8
  %54 = icmp eq i8* %53, null
  br i1 %54, label %58, label %55

55:                                               ; preds = %52
  %56 = load i8*, i8** %17, align 8
  %57 = icmp eq i8* %56, null
  br i1 %57, label %58, label %59

58:                                               ; preds = %55, %52, %49, %46, %43, %40, %8
  store i32 0, i32* %9, align 4
  store i32 1, i32* %23, align 4
  br label %181

59:                                               ; preds = %55
  %60 = trunc i64 %35 to i32
  %61 = load i8*, i8** %14, align 8
  %62 = call i32 @StrCpy(i8* %37, i32 %60, i8* %61)
  %63 = call i64 @StrLen(i8* %37)
  store i64 %63, i64* %22, align 8
  store i64 0, i64* %21, align 8
  br label %64

64:                                               ; preds = %78, %59
  %65 = load i64, i64* %21, align 8
  %66 = load i64, i64* %22, align 8
  %67 = icmp ult i64 %65, %66
  br i1 %67, label %68, label %81

68:                                               ; preds = %64
  %69 = load i64, i64* %21, align 8
  %70 = getelementptr inbounds i8, i8* %37, i64 %69
  %71 = load i8, i8* %70, align 1
  %72 = sext i8 %71 to i32
  %73 = icmp eq i32 %72, 92
  br i1 %73, label %74, label %77

74:                                               ; preds = %68
  %75 = load i64, i64* %21, align 8
  %76 = getelementptr inbounds i8, i8* %37, i64 %75
  store i8 47, i8* %76, align 1
  br label %77

77:                                               ; preds = %74, %68
  br label %78

78:                                               ; preds = %77
  %79 = load i64, i64* %21, align 8
  %80 = add i64 %79, 1
  store i64 %80, i64* %21, align 8
  br label %64

81:                                               ; preds = %64
  %82 = call i64 @InStr(i8* %37, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %96, label %84

84:                                               ; preds = %81
  %85 = call i64 @InStr(i8* %37, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %96, label %87

87:                                               ; preds = %84
  %88 = call i64 @InStr(i8* %37, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %96, label %90

90:                                               ; preds = %87
  %91 = call i64 @InStr(i8* %37, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %96, label %93

93:                                               ; preds = %90
  %94 = call i64 @InStr(i8* %37, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %93, %90, %87, %84, %81
  %97 = load i32*, i32** %12, align 8
  %98 = load i32*, i32** %13, align 8
  %99 = call i32 @AdminWebSend404Error(i32* %97, i32* %98)
  store i32 %99, i32* %18, align 4
  br label %179

100:                                              ; preds = %93
  %101 = load i32, i32* @MAX_PATH, align 4
  %102 = zext i32 %101 to i64
  %103 = call i8* @llvm.stacksave()
  store i8* %103, i8** %24, align 8
  %104 = alloca i8, i64 %102, align 16
  store i64 %102, i64* %25, align 8
  store i32 0, i32* %26, align 4
  %105 = load i8*, i8** %16, align 8
  %106 = load i8*, i8** %17, align 8
  %107 = trunc i64 %102 to i32
  %108 = call %struct.TYPE_6__* @AdminWebTryFindAndReadFile(i8* %105, i8* %106, i8* %37, i8* %104, i32 %107, i32* %26)
  store %struct.TYPE_6__* %108, %struct.TYPE_6__** %27, align 8
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %110 = icmp eq %struct.TYPE_6__* %109, null
  br i1 %110, label %111, label %115

111:                                              ; preds = %100
  %112 = load i32*, i32** %12, align 8
  %113 = load i32*, i32** %13, align 8
  %114 = call i32 @AdminWebSend404Error(i32* %112, i32* %113)
  store i32 %114, i32* %18, align 4
  br label %177

115:                                              ; preds = %100
  %116 = load i32, i32* %26, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %135

118:                                              ; preds = %115
  %119 = call i32 @EndWith(i8* %37, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %121, label %135

121:                                              ; preds = %118
  %122 = load i32, i32* @MAX_PATH, align 4
  %123 = zext i32 %122 to i64
  %124 = call i8* @llvm.stacksave()
  store i8* %124, i8** %28, align 8
  %125 = alloca i8, i64 %123, align 16
  store i64 %123, i64* %29, align 8
  %126 = trunc i64 %123 to i32
  %127 = call i32 @StrCpy(i8* %125, i32 %126, i8* %37)
  %128 = trunc i64 %123 to i32
  %129 = call i32 @StrCat(i8* %125, i32 %128, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %130 = load i32*, i32** %12, align 8
  %131 = load i8*, i8** %15, align 8
  %132 = load i32*, i32** %13, align 8
  %133 = call i32 @AdminWebSend302Redirect(i32* %130, i8* %125, i8* %131, i32* %132)
  store i32 %133, i32* %18, align 4
  %134 = load i8*, i8** %28, align 8
  call void @llvm.stackrestore(i8* %134)
  br label %174

135:                                              ; preds = %118, %115
  %136 = load i32, i32* %26, align 4
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %138, label %153

138:                                              ; preds = %135
  %139 = call i32 @EndWith(i8* %37, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %153

141:                                              ; preds = %138
  %142 = load i32, i32* @MAX_PATH, align 4
  %143 = zext i32 %142 to i64
  %144 = call i8* @llvm.stacksave()
  store i8* %144, i8** %30, align 8
  %145 = alloca i8, i64 %143, align 16
  store i64 %143, i64* %31, align 8
  %146 = trunc i64 %143 to i32
  %147 = call i32 @TrimEndWith(i8* %145, i32 %146, i8* %37, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %148 = load i32*, i32** %12, align 8
  %149 = load i8*, i8** %15, align 8
  %150 = load i32*, i32** %13, align 8
  %151 = call i32 @AdminWebSend302Redirect(i32* %148, i8* %145, i8* %149, i32* %150)
  store i32 %151, i32* %18, align 4
  %152 = load i8*, i8** %30, align 8
  call void @llvm.stackrestore(i8* %152)
  br label %173

153:                                              ; preds = %138, %135
  %154 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %155 = call %struct.TYPE_6__* @AdminWebProcessServerSideInclude(%struct.TYPE_6__* %154, i8* %104, i32 0)
  store %struct.TYPE_6__* %155, %struct.TYPE_6__** %32, align 8
  %156 = call i8* @GetMimeTypeFromFileName(i8* %104)
  store i8* %156, i8** %33, align 8
  %157 = load i8*, i8** %33, align 8
  %158 = icmp eq i8* %157, null
  br i1 %158, label %159, label %160

159:                                              ; preds = %153
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0), i8** %33, align 8
  br label %160

160:                                              ; preds = %159, %153
  %161 = load i32*, i32** %12, align 8
  %162 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %163 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %166 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = load i8*, i8** %33, align 8
  %169 = load i32*, i32** %13, align 8
  %170 = call i32 @AdminWebSendBody(i32* %161, i32 200, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i32 %164, i32 %167, i8* %168, i32* null, i32* null, i32* %169)
  store i32 %170, i32* %18, align 4
  %171 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %172 = call i32 @FreeBuf(%struct.TYPE_6__* %171)
  br label %173

173:                                              ; preds = %160, %141
  br label %174

174:                                              ; preds = %173, %121
  %175 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %176 = call i32 @FreeBuf(%struct.TYPE_6__* %175)
  br label %177

177:                                              ; preds = %174, %111
  %178 = load i8*, i8** %24, align 8
  call void @llvm.stackrestore(i8* %178)
  br label %179

179:                                              ; preds = %177, %96
  %180 = load i32, i32* %18, align 4
  store i32 %180, i32* %9, align 4
  store i32 1, i32* %23, align 4
  br label %181

181:                                              ; preds = %179, %58
  %182 = load i8*, i8** %19, align 8
  call void @llvm.stackrestore(i8* %182)
  %183 = load i32, i32* %9, align 4
  ret i32 %183
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @StrCpy(i8*, i32, i8*) #2

declare dso_local i64 @StrLen(i8*) #2

declare dso_local i64 @InStr(i8*, i8*) #2

declare dso_local i32 @AdminWebSend404Error(i32*, i32*) #2

declare dso_local %struct.TYPE_6__* @AdminWebTryFindAndReadFile(i8*, i8*, i8*, i8*, i32, i32*) #2

declare dso_local i32 @EndWith(i8*, i8*) #2

declare dso_local i32 @StrCat(i8*, i32, i8*) #2

declare dso_local i32 @AdminWebSend302Redirect(i32*, i8*, i8*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

declare dso_local i32 @TrimEndWith(i8*, i32, i8*, i8*) #2

declare dso_local %struct.TYPE_6__* @AdminWebProcessServerSideInclude(%struct.TYPE_6__*, i8*, i32) #2

declare dso_local i8* @GetMimeTypeFromFileName(i8*) #2

declare dso_local i32 @AdminWebSendBody(i32*, i32, i8*, i32, i32, i8*, i32*, i32*, i32*) #2

declare dso_local i32 @FreeBuf(%struct.TYPE_6__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
