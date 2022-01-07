; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Protocol.c_TryGetRootCertChain.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Protocol.c_TryGetRootCertChain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i64, i32 }
%struct.TYPE_18__ = type { i64, %struct.TYPE_19__** }
%struct.TYPE_19__ = type { i32, i8* }

@MAX_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i32] [i32 99, i32 104, i32 97, i32 105, i32 110, i32 95, i32 99, i32 101, i32 114, i32 116, i32 115, i32 0], align 4
@AUTO_DOWNLOAD_CERTS_PREFIX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"depth = %u, subject = %S\0A\00", align 1
@MAX_PATH = common dso_local global i32 0, align 4
@SHA1_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i32] [i32 46, i32 99, i32 101, i32 114, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @TryGetRootCertChain(i32* %0, %struct.TYPE_17__* %1, i32 %2, %struct.TYPE_17__** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_17__**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_18__*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.TYPE_19__*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i64, align 8
  %23 = alloca %struct.TYPE_17__*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i64, align 8
  %26 = alloca [128 x i8], align 16
  %27 = alloca [128 x i8], align 16
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  %30 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.TYPE_17__** %3, %struct.TYPE_17__*** %9, align 8
  store i32 0, i32* %10, align 4
  store i32* null, i32** %11, align 8
  store i32* null, i32** %12, align 8
  %31 = load i32*, i32** %6, align 8
  %32 = icmp eq i32* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %4
  %34 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %35 = icmp eq %struct.TYPE_17__* %34, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %33, %4
  store i32 0, i32* %5, align 4
  br label %208

37:                                               ; preds = %33
  %38 = call i32* @NewCertList(i32 0)
  store i32* %38, i32** %11, align 8
  %39 = load i32*, i32** %6, align 8
  %40 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %41 = load i32*, i32** %11, align 8
  %42 = call i32 @TryGetParentCertFromCertList(i32* %39, %struct.TYPE_17__* %40, i32* %41)
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* %10, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %202

45:                                               ; preds = %37
  %46 = load i32, i32* @MAX_SIZE, align 4
  %47 = zext i32 %46 to i64
  %48 = call i8* @llvm.stacksave()
  store i8* %48, i8** %15, align 8
  %49 = alloca i8, i64 %47, align 16
  store i64 %47, i64* %16, align 8
  %50 = load i32, i32* @MAX_SIZE, align 4
  %51 = zext i32 %50 to i64
  %52 = alloca i8, i64 %51, align 16
  store i64 %51, i64* %17, align 8
  %53 = trunc i64 %51 to i32
  %54 = call i32 @GetExeDirW(i8* %52, i32 %53)
  %55 = trunc i64 %47 to i32
  %56 = call i32 @CombinePathW(i8* %49, i32 %55, i8* %52, i8* bitcast ([12 x i32]* @.str to i8*))
  %57 = call i32 @MakeDirExW(i8* %49)
  %58 = load i32, i32* %8, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %110

60:                                               ; preds = %45
  %61 = call %struct.TYPE_18__* @EnumDirW(i8* %49)
  store %struct.TYPE_18__* %61, %struct.TYPE_18__** %14, align 8
  %62 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %63 = icmp ne %struct.TYPE_18__* %62, null
  br i1 %63, label %64, label %109

64:                                               ; preds = %60
  store i64 0, i64* %13, align 8
  br label %65

65:                                               ; preds = %103, %64
  %66 = load i64, i64* %13, align 8
  %67 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %68 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp ult i64 %66, %69
  br i1 %70, label %71, label %106

71:                                               ; preds = %65
  %72 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %73 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %72, i32 0, i32 1
  %74 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %73, align 8
  %75 = load i64, i64* %13, align 8
  %76 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %74, i64 %75
  %77 = load %struct.TYPE_19__*, %struct.TYPE_19__** %76, align 8
  store %struct.TYPE_19__* %77, %struct.TYPE_19__** %18, align 8
  %78 = load %struct.TYPE_19__*, %struct.TYPE_19__** %18, align 8
  %79 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %102

82:                                               ; preds = %71
  %83 = load %struct.TYPE_19__*, %struct.TYPE_19__** %18, align 8
  %84 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %83, i32 0, i32 1
  %85 = load i8*, i8** %84, align 8
  %86 = load i32, i32* @AUTO_DOWNLOAD_CERTS_PREFIX, align 4
  %87 = call i64 @UniStartWith(i8* %85, i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %101

89:                                               ; preds = %82
  %90 = load i32, i32* @MAX_SIZE, align 4
  %91 = zext i32 %90 to i64
  %92 = call i8* @llvm.stacksave()
  store i8* %92, i8** %19, align 8
  %93 = alloca i8, i64 %91, align 16
  store i64 %91, i64* %20, align 8
  %94 = trunc i64 %91 to i32
  %95 = load %struct.TYPE_19__*, %struct.TYPE_19__** %18, align 8
  %96 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %95, i32 0, i32 1
  %97 = load i8*, i8** %96, align 8
  %98 = call i32 @CombinePathW(i8* %93, i32 %94, i8* %49, i8* %97)
  %99 = call i32 @FileDeleteW(i8* %93)
  %100 = load i8*, i8** %19, align 8
  call void @llvm.stackrestore(i8* %100)
  br label %101

101:                                              ; preds = %89, %82
  br label %102

102:                                              ; preds = %101, %71
  br label %103

103:                                              ; preds = %102
  %104 = load i64, i64* %13, align 8
  %105 = add i64 %104, 1
  store i64 %105, i64* %13, align 8
  br label %65

106:                                              ; preds = %65
  %107 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %108 = call i32 @FreeDir(%struct.TYPE_18__* %107)
  br label %109

109:                                              ; preds = %106, %60
  br label %110

110:                                              ; preds = %109, %45
  %111 = call i32* @NewCertList(i32 0)
  store i32* %111, i32** %12, align 8
  %112 = load i32*, i32** %12, align 8
  %113 = call i32 @AddAllChainCertsToCertList(i32* %112)
  store i64 0, i64* %13, align 8
  br label %114

114:                                              ; preds = %197, %110
  %115 = load i64, i64* %13, align 8
  %116 = load i32*, i32** %11, align 8
  %117 = call i64 @LIST_NUM(i32* %116)
  %118 = icmp ult i64 %115, %117
  br i1 %118, label %119, label %200

119:                                              ; preds = %114
  %120 = load i32, i32* @MAX_SIZE, align 4
  %121 = zext i32 %120 to i64
  %122 = call i8* @llvm.stacksave()
  store i8* %122, i8** %21, align 8
  %123 = alloca i8, i64 %121, align 16
  store i64 %121, i64* %22, align 8
  %124 = load i32*, i32** %11, align 8
  %125 = load i64, i64* %13, align 8
  %126 = call %struct.TYPE_17__* @LIST_DATA(i32* %124, i64 %125)
  store %struct.TYPE_17__* %126, %struct.TYPE_17__** %23, align 8
  %127 = trunc i64 %121 to i32
  %128 = load %struct.TYPE_17__*, %struct.TYPE_17__** %23, align 8
  %129 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 8
  %131 = call i32 @GetAllNameFromName(i8* %123, i32 %127, i32 %130)
  %132 = load i64, i64* %13, align 8
  %133 = call i32 @Debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i64 %132, i8* %123)
  %134 = load i32, i32* %8, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %182

136:                                              ; preds = %119
  %137 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %138 = load %struct.TYPE_17__*, %struct.TYPE_17__** %23, align 8
  %139 = call i32 @CompareX(%struct.TYPE_17__* %137, %struct.TYPE_17__* %138)
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %141, label %182

141:                                              ; preds = %136
  %142 = load i32*, i32** %12, align 8
  %143 = load %struct.TYPE_17__*, %struct.TYPE_17__** %23, align 8
  %144 = call i32 @IsXInCertList(i32* %142, %struct.TYPE_17__* %143)
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %146, label %182

146:                                              ; preds = %141
  %147 = load i32, i32* @MAX_PATH, align 4
  %148 = zext i32 %147 to i64
  %149 = call i8* @llvm.stacksave()
  store i8* %149, i8** %24, align 8
  %150 = alloca i8, i64 %148, align 16
  store i64 %148, i64* %25, align 8
  %151 = load i32, i32* @SHA1_SIZE, align 4
  %152 = zext i32 %151 to i64
  %153 = alloca i32, i64 %152, align 16
  store i64 %152, i64* %28, align 8
  %154 = load i32, i32* @MAX_SIZE, align 4
  %155 = zext i32 %154 to i64
  %156 = alloca i8, i64 %155, align 16
  store i64 %155, i64* %29, align 8
  %157 = load %struct.TYPE_17__*, %struct.TYPE_17__** %23, align 8
  %158 = call i32 @GetXDigest(%struct.TYPE_17__* %157, i32* %153, i32 1)
  %159 = getelementptr inbounds [128 x i8], [128 x i8]* %26, i64 0, i64 0
  %160 = load i32, i32* @SHA1_SIZE, align 4
  %161 = call i32 @BinToStr(i8* %159, i32 128, i32* %153, i32 %160)
  %162 = getelementptr inbounds [128 x i8], [128 x i8]* %27, i64 0, i64 0
  %163 = getelementptr inbounds [128 x i8], [128 x i8]* %26, i64 0, i64 0
  %164 = call i32 @StrToUni(i8* %162, i32 128, i8* %163)
  %165 = trunc i64 %148 to i32
  %166 = load i32, i32* @AUTO_DOWNLOAD_CERTS_PREFIX, align 4
  %167 = call i32 @UniStrCpy(i8* %150, i32 %165, i32 %166)
  %168 = trunc i64 %148 to i32
  %169 = getelementptr inbounds [128 x i8], [128 x i8]* %27, i64 0, i64 0
  %170 = call i32 @UniStrCat(i8* %150, i32 %168, i8* %169)
  %171 = trunc i64 %148 to i32
  %172 = call i32 @UniStrCat(i8* %150, i32 %171, i8* bitcast ([5 x i32]* @.str.2 to i8*))
  %173 = trunc i64 %155 to i32
  %174 = call i32 @CombinePathW(i8* %156, i32 %173, i8* %49, i8* %150)
  %175 = load %struct.TYPE_17__*, %struct.TYPE_17__** %23, align 8
  %176 = call i32* @XToBuf(%struct.TYPE_17__* %175, i32 1)
  store i32* %176, i32** %30, align 8
  %177 = load i32*, i32** %30, align 8
  %178 = call i32 @DumpBufW(i32* %177, i8* %156)
  %179 = load i32*, i32** %30, align 8
  %180 = call i32 @FreeBuf(i32* %179)
  %181 = load i8*, i8** %24, align 8
  call void @llvm.stackrestore(i8* %181)
  br label %182

182:                                              ; preds = %146, %141, %136, %119
  %183 = load %struct.TYPE_17__*, %struct.TYPE_17__** %23, align 8
  %184 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %183, i32 0, i32 0
  %185 = load i64, i64* %184, align 8
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %195

187:                                              ; preds = %182
  %188 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %9, align 8
  %189 = icmp ne %struct.TYPE_17__** %188, null
  br i1 %189, label %190, label %194

190:                                              ; preds = %187
  %191 = load %struct.TYPE_17__*, %struct.TYPE_17__** %23, align 8
  %192 = call %struct.TYPE_17__* @CloneX(%struct.TYPE_17__* %191)
  %193 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %9, align 8
  store %struct.TYPE_17__* %192, %struct.TYPE_17__** %193, align 8
  br label %194

194:                                              ; preds = %190, %187
  br label %195

195:                                              ; preds = %194, %182
  %196 = load i8*, i8** %21, align 8
  call void @llvm.stackrestore(i8* %196)
  br label %197

197:                                              ; preds = %195
  %198 = load i64, i64* %13, align 8
  %199 = add i64 %198, 1
  store i64 %199, i64* %13, align 8
  br label %114

200:                                              ; preds = %114
  %201 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %201)
  br label %202

202:                                              ; preds = %200, %37
  %203 = load i32*, i32** %11, align 8
  %204 = call i32 @FreeCertList(i32* %203)
  %205 = load i32*, i32** %12, align 8
  %206 = call i32 @FreeCertList(i32* %205)
  %207 = load i32, i32* %10, align 4
  store i32 %207, i32* %5, align 4
  br label %208

208:                                              ; preds = %202, %36
  %209 = load i32, i32* %5, align 4
  ret i32 %209
}

declare dso_local i32* @NewCertList(i32) #1

declare dso_local i32 @TryGetParentCertFromCertList(i32*, %struct.TYPE_17__*, i32*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @GetExeDirW(i8*, i32) #1

declare dso_local i32 @CombinePathW(i8*, i32, i8*, i8*) #1

declare dso_local i32 @MakeDirExW(i8*) #1

declare dso_local %struct.TYPE_18__* @EnumDirW(i8*) #1

declare dso_local i64 @UniStartWith(i8*, i32) #1

declare dso_local i32 @FileDeleteW(i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @FreeDir(%struct.TYPE_18__*) #1

declare dso_local i32 @AddAllChainCertsToCertList(i32*) #1

declare dso_local i64 @LIST_NUM(i32*) #1

declare dso_local %struct.TYPE_17__* @LIST_DATA(i32*, i64) #1

declare dso_local i32 @GetAllNameFromName(i8*, i32, i32) #1

declare dso_local i32 @Debug(i8*, i64, i8*) #1

declare dso_local i32 @CompareX(%struct.TYPE_17__*, %struct.TYPE_17__*) #1

declare dso_local i32 @IsXInCertList(i32*, %struct.TYPE_17__*) #1

declare dso_local i32 @GetXDigest(%struct.TYPE_17__*, i32*, i32) #1

declare dso_local i32 @BinToStr(i8*, i32, i32*, i32) #1

declare dso_local i32 @StrToUni(i8*, i32, i8*) #1

declare dso_local i32 @UniStrCpy(i8*, i32, i32) #1

declare dso_local i32 @UniStrCat(i8*, i32, i8*) #1

declare dso_local i32* @XToBuf(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @DumpBufW(i32*, i8*) #1

declare dso_local i32 @FreeBuf(i32*) #1

declare dso_local %struct.TYPE_17__* @CloneX(%struct.TYPE_17__*) #1

declare dso_local i32 @FreeCertList(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
