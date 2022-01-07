; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Server.c_SiLoadCrlList.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Server.c_SiLoadCrlList.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i32* }
%struct.TYPE_11__ = type { i32, i32, i32, i32 }
%struct.TYPE_12__ = type { i32, i32 }

@MAX_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"CommonName\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"Organization\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"Unit\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"Country\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"State\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"Local\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"Serial\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"DigestMD5\00", align 1
@MD5_SIZE = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [11 x i8] c"DigestSHA1\00", align 1
@SHA1_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SiLoadCrlList(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.TYPE_12__*, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %18 = load i32*, i32** %3, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %2
  %21 = load i32*, i32** %4, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %20, %2
  br label %196

24:                                               ; preds = %20
  %25 = load i32*, i32** %3, align 8
  %26 = call i32 @LockList(i32* %25)
  %27 = load i32*, i32** %4, align 8
  %28 = call %struct.TYPE_10__* @CfgEnumFolderToTokenList(i32* %27)
  store %struct.TYPE_10__* %28, %struct.TYPE_10__** %6, align 8
  store i64 0, i64* %5, align 8
  br label %29

29:                                               ; preds = %188, %24
  %30 = load i64, i64* %5, align 8
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ult i64 %30, %33
  br i1 %34, label %35, label %191

35:                                               ; preds = %29
  %36 = load i32*, i32** %4, align 8
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = load i64, i64* %5, align 8
  %41 = getelementptr inbounds i32, i32* %39, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = call i32* @CfgGetFolder(i32* %36, i32 %42)
  store i32* %43, i32** %8, align 8
  %44 = load i32, i32* @MAX_SIZE, align 4
  %45 = zext i32 %44 to i64
  %46 = call i8* @llvm.stacksave()
  store i8* %46, i8** %9, align 8
  %47 = alloca i32, i64 %45, align 16
  store i64 %45, i64* %10, align 8
  %48 = load i32, i32* @MAX_SIZE, align 4
  %49 = zext i32 %48 to i64
  %50 = alloca i32, i64 %49, align 16
  store i64 %49, i64* %11, align 8
  %51 = load i32, i32* @MAX_SIZE, align 4
  %52 = zext i32 %51 to i64
  %53 = alloca i32, i64 %52, align 16
  store i64 %52, i64* %12, align 8
  %54 = load i32, i32* @MAX_SIZE, align 4
  %55 = zext i32 %54 to i64
  %56 = alloca i32, i64 %55, align 16
  store i64 %55, i64* %13, align 8
  %57 = load i32, i32* @MAX_SIZE, align 4
  %58 = zext i32 %57 to i64
  %59 = alloca i32, i64 %58, align 16
  store i64 %58, i64* %14, align 8
  %60 = load i32, i32* @MAX_SIZE, align 4
  %61 = zext i32 %60 to i64
  %62 = alloca i32, i64 %61, align 16
  store i64 %61, i64* %15, align 8
  %63 = load i32, i32* @MAX_SIZE, align 4
  %64 = zext i32 %63 to i64
  %65 = alloca i8, i64 %64, align 16
  store i64 %64, i64* %16, align 8
  %66 = load i32*, i32** %8, align 8
  %67 = icmp ne i32* %66, null
  br i1 %67, label %68, label %186

68:                                               ; preds = %35
  %69 = call %struct.TYPE_11__* @ZeroMalloc(i32 16)
  store %struct.TYPE_11__* %69, %struct.TYPE_11__** %7, align 8
  %70 = load i32*, i32** %8, align 8
  %71 = mul nuw i64 4, %45
  %72 = trunc i64 %71 to i32
  %73 = call i32 @CfgGetUniStr(i32* %70, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32* %47, i32 %72)
  %74 = load i32*, i32** %8, align 8
  %75 = mul nuw i64 4, %49
  %76 = trunc i64 %75 to i32
  %77 = call i32 @CfgGetUniStr(i32* %74, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32* %50, i32 %76)
  %78 = load i32*, i32** %8, align 8
  %79 = mul nuw i64 4, %52
  %80 = trunc i64 %79 to i32
  %81 = call i32 @CfgGetUniStr(i32* %78, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32* %53, i32 %80)
  %82 = load i32*, i32** %8, align 8
  %83 = mul nuw i64 4, %55
  %84 = trunc i64 %83 to i32
  %85 = call i32 @CfgGetUniStr(i32* %82, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32* %56, i32 %84)
  %86 = load i32*, i32** %8, align 8
  %87 = mul nuw i64 4, %58
  %88 = trunc i64 %87 to i32
  %89 = call i32 @CfgGetUniStr(i32* %86, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32* %59, i32 %88)
  %90 = load i32*, i32** %8, align 8
  %91 = mul nuw i64 4, %61
  %92 = trunc i64 %91 to i32
  %93 = call i32 @CfgGetUniStr(i32* %90, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32* %62, i32 %92)
  %94 = call i32 @NewName(i32* %47, i32* %50, i32* %53, i32* %56, i32* %59, i32* %62)
  %95 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 3
  store i32 %94, i32* %96, align 4
  %97 = load i32*, i32** %8, align 8
  %98 = trunc i64 %64 to i32
  %99 = call i64 @CfgGetStr(i32* %97, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8* %65, i32 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %124

101:                                              ; preds = %68
  %102 = call %struct.TYPE_12__* @StrToBin(i8* %65)
  store %struct.TYPE_12__* %102, %struct.TYPE_12__** %17, align 8
  %103 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %104 = icmp ne %struct.TYPE_12__* %103, null
  br i1 %104, label %105, label %123

105:                                              ; preds = %101
  %106 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = icmp sge i32 %108, 1
  br i1 %109, label %110, label %120

110:                                              ; preds = %105
  %111 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %115 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @NewXSerial(i32 %113, i32 %116)
  %118 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %118, i32 0, i32 2
  store i32 %117, i32* %119, align 4
  br label %120

120:                                              ; preds = %110, %105
  %121 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %122 = call i32 @FreeBuf(%struct.TYPE_12__* %121)
  br label %123

123:                                              ; preds = %120, %101
  br label %124

124:                                              ; preds = %123, %68
  %125 = load i32*, i32** %8, align 8
  %126 = trunc i64 %64 to i32
  %127 = call i64 @CfgGetStr(i32* %125, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i8* %65, i32 %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %153

129:                                              ; preds = %124
  %130 = call %struct.TYPE_12__* @StrToBin(i8* %65)
  store %struct.TYPE_12__* %130, %struct.TYPE_12__** %17, align 8
  %131 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %132 = icmp ne %struct.TYPE_12__* %131, null
  br i1 %132, label %133, label %152

133:                                              ; preds = %129
  %134 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %135 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = sext i32 %136 to i64
  %138 = load i64, i64* @MD5_SIZE, align 8
  %139 = icmp eq i64 %137, %138
  br i1 %139, label %140, label %149

140:                                              ; preds = %133
  %141 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %142 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %145 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = load i64, i64* @MD5_SIZE, align 8
  %148 = call i32 @Copy(i32 %143, i32 %146, i64 %147)
  br label %149

149:                                              ; preds = %140, %133
  %150 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %151 = call i32 @FreeBuf(%struct.TYPE_12__* %150)
  br label %152

152:                                              ; preds = %149, %129
  br label %153

153:                                              ; preds = %152, %124
  %154 = load i32*, i32** %8, align 8
  %155 = trunc i64 %64 to i32
  %156 = call i64 @CfgGetStr(i32* %154, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i8* %65, i32 %155)
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %182

158:                                              ; preds = %153
  %159 = call %struct.TYPE_12__* @StrToBin(i8* %65)
  store %struct.TYPE_12__* %159, %struct.TYPE_12__** %17, align 8
  %160 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %161 = icmp ne %struct.TYPE_12__* %160, null
  br i1 %161, label %162, label %181

162:                                              ; preds = %158
  %163 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %164 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = sext i32 %165 to i64
  %167 = load i64, i64* @SHA1_SIZE, align 8
  %168 = icmp eq i64 %166, %167
  br i1 %168, label %169, label %178

169:                                              ; preds = %162
  %170 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %171 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %174 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = load i64, i64* @SHA1_SIZE, align 8
  %177 = call i32 @Copy(i32 %172, i32 %175, i64 %176)
  br label %178

178:                                              ; preds = %169, %162
  %179 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %180 = call i32 @FreeBuf(%struct.TYPE_12__* %179)
  br label %181

181:                                              ; preds = %178, %158
  br label %182

182:                                              ; preds = %181, %153
  %183 = load i32*, i32** %3, align 8
  %184 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %185 = call i32 @Insert(i32* %183, %struct.TYPE_11__* %184)
  br label %186

186:                                              ; preds = %182, %35
  %187 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %187)
  br label %188

188:                                              ; preds = %186
  %189 = load i64, i64* %5, align 8
  %190 = add i64 %189, 1
  store i64 %190, i64* %5, align 8
  br label %29

191:                                              ; preds = %29
  %192 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %193 = call i32 @FreeToken(%struct.TYPE_10__* %192)
  %194 = load i32*, i32** %3, align 8
  %195 = call i32 @UnlockList(i32* %194)
  br label %196

196:                                              ; preds = %191, %23
  ret void
}

declare dso_local i32 @LockList(i32*) #1

declare dso_local %struct.TYPE_10__* @CfgEnumFolderToTokenList(i32*) #1

declare dso_local i32* @CfgGetFolder(i32*, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local %struct.TYPE_11__* @ZeroMalloc(i32) #1

declare dso_local i32 @CfgGetUniStr(i32*, i8*, i32*, i32) #1

declare dso_local i32 @NewName(i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i64 @CfgGetStr(i32*, i8*, i8*, i32) #1

declare dso_local %struct.TYPE_12__* @StrToBin(i8*) #1

declare dso_local i32 @NewXSerial(i32, i32) #1

declare dso_local i32 @FreeBuf(%struct.TYPE_12__*) #1

declare dso_local i32 @Copy(i32, i32, i64) #1

declare dso_local i32 @Insert(i32*, %struct.TYPE_11__*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @FreeToken(%struct.TYPE_10__*) #1

declare dso_local i32 @UnlockList(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
