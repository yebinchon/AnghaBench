; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Hub.c_BuildRedirectToUrlPayload.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Hub.c_BuildRedirectToUrlPayload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_11__*, i32, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_12__ = type { i32, i32, i32, i32, i32, i32 }

@MAX_REDIRECT_URL_LEN = common dso_local global i32 0, align 4
@MAX_SIZE = common dso_local global i32 0, align 4
@ACCESS_LIST_URL_INFO_TAG = common dso_local global i32 0, align 4
@INFINITE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [36 x i8] c"%s|%s|%r|%04u%02u%02u%02u%02u%02u%s\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"|\00", align 1
@SHA1_SIZE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [122 x i8] c"<html><head><title>Object moved</title></head><body>\0D\0A<h2>Object moved to <a href=\22%s\22>here</a>.</h2>\0D\0A</body></html>\0D\0A\0D\0A\00", align 1
@.str.4 = private unnamed_addr constant [121 x i8] c"HTTP/1.1 302 Found\0D\0ALocation: %s\0D\0ACache-Control: private\0D\0AContent-Type: text/html; charset=utf-8\0D\0AContent-Length: %u\0D\0A\0D\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_14__* @BuildRedirectToUrlPayload(i32* %0, %struct.TYPE_13__* %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_14__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.TYPE_12__, align 4
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i8, align 1
  %22 = alloca i8*, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca %struct.TYPE_14__*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %6, align 8
  store i8* %2, i8** %7, align 8
  %26 = load i32, i32* @MAX_REDIRECT_URL_LEN, align 4
  %27 = mul nsw i32 %26, 2
  %28 = add nsw i32 %27, 1
  %29 = load i32, i32* @MAX_SIZE, align 4
  %30 = add nsw i32 %28, %29
  %31 = zext i32 %30 to i64
  %32 = call i8* @llvm.stacksave()
  store i8* %32, i8** %8, align 8
  %33 = alloca i8, i64 %31, align 16
  store i64 %31, i64* %9, align 8
  %34 = load i32, i32* @MAX_REDIRECT_URL_LEN, align 4
  %35 = mul nsw i32 %34, 2
  %36 = add nsw i32 %35, 1
  %37 = load i32, i32* @MAX_SIZE, align 4
  %38 = add nsw i32 %36, %37
  %39 = zext i32 %38 to i64
  %40 = alloca i8, i64 %39, align 16
  store i64 %39, i64* %10, align 8
  %41 = load i32, i32* @MAX_REDIRECT_URL_LEN, align 4
  %42 = mul nsw i32 %41, 2
  %43 = zext i32 %42 to i64
  %44 = alloca i8, i64 %43, align 16
  store i64 %43, i64* %11, align 8
  %45 = load i32*, i32** %5, align 8
  %46 = icmp eq i32* %45, null
  br i1 %46, label %53, label %47

47:                                               ; preds = %3
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %49 = icmp eq %struct.TYPE_13__* %48, null
  br i1 %49, label %53, label %50

50:                                               ; preds = %47
  %51 = load i8*, i8** %7, align 8
  %52 = icmp eq i8* %51, null
  br i1 %52, label %53, label %54

53:                                               ; preds = %50, %47, %3
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %4, align 8
  store i32 1, i32* %13, align 4
  br label %187

54:                                               ; preds = %50
  %55 = trunc i64 %43 to i32
  %56 = load i8*, i8** %7, align 8
  %57 = call i32 @StrCpy(i8* %44, i32 %55, i8* %56)
  %58 = call i32 @Trim(i8* %44)
  %59 = load i32, i32* @ACCESS_LIST_URL_INFO_TAG, align 4
  %60 = call i64 @InStr(i8* %44, i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %173

62:                                               ; preds = %54
  %63 = load i32, i32* @MAX_SIZE, align 4
  %64 = zext i32 %63 to i64
  %65 = call i8* @llvm.stacksave()
  store i8* %65, i8** %14, align 8
  %66 = alloca i8, i64 %64, align 16
  store i64 %64, i64* %15, align 8
  %67 = load i32, i32* @MAX_SIZE, align 4
  %68 = zext i32 %67 to i64
  %69 = alloca i8, i64 %68, align 16
  store i64 %68, i64* %16, align 8
  %70 = load i64, i64* @INFINITE, align 8
  store i64 %70, i64* %20, align 8
  %71 = call i32 @SystemTime(%struct.TYPE_12__* %17)
  %72 = trunc i64 %64 to i32
  %73 = call i32 @ClearStr(i8* %66, i32 %72)
  %74 = call i64 @StrLen(i8* %44)
  store i64 %74, i64* %19, align 8
  store i64 0, i64* %18, align 8
  br label %75

75:                                               ; preds = %89, %62
  %76 = load i64, i64* %18, align 8
  %77 = load i64, i64* %19, align 8
  %78 = icmp ult i64 %76, %77
  br i1 %78, label %79, label %92

79:                                               ; preds = %75
  %80 = load i64, i64* %18, align 8
  %81 = getelementptr inbounds i8, i8* %44, i64 %80
  %82 = load i8, i8* %81, align 1
  store i8 %82, i8* %21, align 1
  %83 = load i8, i8* %21, align 1
  %84 = sext i8 %83 to i32
  %85 = icmp eq i32 %84, 124
  br i1 %85, label %86, label %88

86:                                               ; preds = %79
  %87 = load i64, i64* %18, align 8
  store i64 %87, i64* %20, align 8
  br label %88

88:                                               ; preds = %86, %79
  br label %89

89:                                               ; preds = %88
  %90 = load i64, i64* %18, align 8
  %91 = add i64 %90, 1
  store i64 %91, i64* %18, align 8
  br label %75

92:                                               ; preds = %75
  %93 = load i64, i64* %20, align 8
  %94 = load i64, i64* @INFINITE, align 8
  %95 = icmp ne i64 %93, %94
  br i1 %95, label %96, label %104

96:                                               ; preds = %92
  %97 = trunc i64 %64 to i32
  %98 = load i64, i64* %20, align 8
  %99 = getelementptr inbounds i8, i8* %44, i64 %98
  %100 = getelementptr inbounds i8, i8* %99, i64 1
  %101 = call i32 @StrCpy(i8* %66, i32 %97, i8* %100)
  %102 = load i64, i64* %20, align 8
  %103 = getelementptr inbounds i8, i8* %44, i64 %102
  store i8 0, i8* %103, align 1
  br label %104

104:                                              ; preds = %96, %92
  %105 = trunc i64 %68 to i32
  %106 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 4
  %109 = sext i32 %108 to i64
  %110 = inttoptr i64 %109 to i8*
  %111 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %115 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %114, i32 0, i32 0
  %116 = load %struct.TYPE_11__*, %struct.TYPE_11__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 5
  %119 = load i32, i32* %118, align 4
  %120 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 4
  %121 = load i32, i32* %120, align 4
  %122 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 3
  %123 = load i32, i32* %122, align 4
  %124 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 2
  %125 = load i32, i32* %124, align 4
  %126 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @IsEmptyStr(i8* %66)
  %131 = icmp ne i32 %130, 0
  %132 = zext i1 %131 to i64
  %133 = select i1 %131, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)
  %134 = call i32 (i8*, i32, i8*, i8*, ...) @Format(i8* %69, i32 %105, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i8* %110, i32 %113, i32* %117, i32 %119, i32 %121, i32 %123, i32 %125, i32 %127, i32 %129, i8* %133)
  %135 = call i32 @IsEmptyStr(i8* %66)
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %137, label %171

137:                                              ; preds = %104
  %138 = load i32, i32* @SHA1_SIZE, align 4
  %139 = zext i32 %138 to i64
  %140 = call i8* @llvm.stacksave()
  store i8* %140, i8** %22, align 8
  %141 = alloca i32, i64 %139, align 16
  store i64 %139, i64* %23, align 8
  %142 = load i32, i32* @MAX_SIZE, align 4
  %143 = zext i32 %142 to i64
  %144 = alloca i8, i64 %143, align 16
  store i64 %143, i64* %24, align 8
  %145 = call %struct.TYPE_14__* (...) @NewBuf()
  store %struct.TYPE_14__* %145, %struct.TYPE_14__** %25, align 8
  %146 = load %struct.TYPE_14__*, %struct.TYPE_14__** %25, align 8
  %147 = call i64 @StrLen(i8* %69)
  %148 = call i32 @WriteBuf(%struct.TYPE_14__* %146, i8* %69, i64 %147)
  %149 = load %struct.TYPE_14__*, %struct.TYPE_14__** %25, align 8
  %150 = call i64 @StrLen(i8* %66)
  %151 = call i32 @WriteBuf(%struct.TYPE_14__* %149, i8* %66, i64 %150)
  %152 = load %struct.TYPE_14__*, %struct.TYPE_14__** %25, align 8
  %153 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.TYPE_14__*, %struct.TYPE_14__** %25, align 8
  %156 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = call i32 @Sha1(i32* %141, i32 %154, i32 %157)
  %159 = trunc i64 %143 to i32
  %160 = mul nuw i64 4, %139
  %161 = trunc i64 %160 to i32
  %162 = call i32 @BinToStr(i8* %144, i32 %159, i32* %141, i32 %161)
  %163 = load %struct.TYPE_14__*, %struct.TYPE_14__** %25, align 8
  %164 = call i32 @FreeBuf(%struct.TYPE_14__* %163)
  %165 = trunc i64 %68 to i32
  %166 = call i32 @StrCat(i8* %69, i32 %165, i8* %144)
  %167 = trunc i64 %43 to i32
  %168 = load i32, i32* @ACCESS_LIST_URL_INFO_TAG, align 4
  %169 = call i32 @ReplaceStrEx(i8* %44, i32 %167, i8* %44, i32 %168, i8* %69, i32 0)
  %170 = load i8*, i8** %22, align 8
  call void @llvm.stackrestore(i8* %170)
  br label %171

171:                                              ; preds = %137, %104
  %172 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %172)
  br label %173

173:                                              ; preds = %171, %54
  %174 = trunc i64 %31 to i32
  %175 = call i32 (i8*, i32, i8*, i8*, ...) @Format(i8* %33, i32 %174, i8* getelementptr inbounds ([122 x i8], [122 x i8]* @.str.3, i64 0, i64 0), i8* %44)
  %176 = trunc i64 %39 to i32
  %177 = call i64 @StrLen(i8* %44)
  %178 = call i32 (i8*, i32, i8*, i8*, ...) @Format(i8* %40, i32 %176, i8* getelementptr inbounds ([121 x i8], [121 x i8]* @.str.4, i64 0, i64 0), i8* %44, i64 %177)
  %179 = call %struct.TYPE_14__* (...) @NewBuf()
  store %struct.TYPE_14__* %179, %struct.TYPE_14__** %12, align 8
  %180 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %181 = call i64 @StrLen(i8* %40)
  %182 = call i32 @WriteBuf(%struct.TYPE_14__* %180, i8* %40, i64 %181)
  %183 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %184 = call i64 @StrLen(i8* %33)
  %185 = call i32 @WriteBuf(%struct.TYPE_14__* %183, i8* %33, i64 %184)
  %186 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  store %struct.TYPE_14__* %186, %struct.TYPE_14__** %4, align 8
  store i32 1, i32* %13, align 4
  br label %187

187:                                              ; preds = %173, %53
  %188 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %188)
  %189 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  ret %struct.TYPE_14__* %189
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @StrCpy(i8*, i32, i8*) #2

declare dso_local i32 @Trim(i8*) #2

declare dso_local i64 @InStr(i8*, i32) #2

declare dso_local i32 @SystemTime(%struct.TYPE_12__*) #2

declare dso_local i32 @ClearStr(i8*, i32) #2

declare dso_local i64 @StrLen(i8*) #2

declare dso_local i32 @Format(i8*, i32, i8*, i8*, ...) #2

declare dso_local i32 @IsEmptyStr(i8*) #2

declare dso_local %struct.TYPE_14__* @NewBuf(...) #2

declare dso_local i32 @WriteBuf(%struct.TYPE_14__*, i8*, i64) #2

declare dso_local i32 @Sha1(i32*, i32, i32) #2

declare dso_local i32 @BinToStr(i8*, i32, i32*, i32) #2

declare dso_local i32 @FreeBuf(%struct.TYPE_14__*) #2

declare dso_local i32 @StrCat(i8*, i32, i8*) #2

declare dso_local i32 @ReplaceStrEx(i8*, i32, i8*, i32, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
