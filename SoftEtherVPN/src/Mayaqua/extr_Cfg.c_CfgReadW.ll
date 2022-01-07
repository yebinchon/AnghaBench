; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Cfg.c_CfgReadW.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Cfg.c_CfgReadW.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i64 }

@MAX_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i32] [i32 37, i32 115, i32 46, i32 110, i32 101, i32 119, i32 0], align 4
@.str.1 = private unnamed_addr constant [7 x i32] [i32 37, i32 115, i32 46, i32 108, i32 111, i32 103, i32 0], align 4
@FILE_BEGIN = common dso_local global i32 0, align 4
@TAG_BINARY = common dso_local global i32* null, align 8
@SHA1_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @CfgReadW(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [8 x i32], align 16
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8, align 1
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  %22 = load i32, i32* @MAX_SIZE, align 4
  %23 = zext i32 %22 to i64
  %24 = call i8* @llvm.stacksave()
  store i8* %24, i8** %4, align 8
  %25 = alloca i32, i64 %23, align 16
  store i64 %23, i64* %5, align 8
  %26 = load i32, i32* @MAX_SIZE, align 4
  %27 = zext i32 %26 to i64
  %28 = alloca i32, i64 %27, align 16
  store i64 %27, i64* %6, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %15, align 4
  %29 = load i32*, i32** %3, align 8
  %30 = icmp eq i32* %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %1
  store i32* null, i32** %2, align 8
  store i32 1, i32* %16, align 4
  br label %203

32:                                               ; preds = %1
  %33 = mul nuw i64 4, %27
  %34 = trunc i64 %33 to i32
  %35 = load i32*, i32** %3, align 8
  %36 = call i32 @UniFormat(i32* %28, i32 %34, i8* bitcast ([7 x i32]* @.str to i8*), i32* %35)
  %37 = mul nuw i64 4, %23
  %38 = trunc i64 %37 to i32
  %39 = load i32*, i32** %3, align 8
  %40 = call i32 @UniFormat(i32* %25, i32 %38, i8* bitcast ([7 x i32]* @.str.1 to i8*), i32* %39)
  %41 = call i32* @FileOpenW(i32* %28, i32 0)
  store i32* %41, i32** %8, align 8
  %42 = load i32*, i32** %8, align 8
  %43 = icmp eq i32* %42, null
  br i1 %43, label %44, label %81

44:                                               ; preds = %32
  %45 = call i32* @FileOpenW(i32* %25, i32 0)
  store i32* %45, i32** %8, align 8
  %46 = load i32*, i32** %8, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %48, label %80

48:                                               ; preds = %44
  %49 = load i32*, i32** %8, align 8
  %50 = call i64 @FileSize(i32* %49)
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %17, align 4
  %52 = load i32, i32* %17, align 4
  %53 = icmp sge i32 %52, 2
  br i1 %53, label %54, label %79

54:                                               ; preds = %48
  %55 = load i32*, i32** %8, align 8
  %56 = load i32, i32* @FILE_BEGIN, align 4
  %57 = load i32, i32* %17, align 4
  %58 = sub nsw i32 %57, 1
  %59 = call i64 @FileSeek(i32* %55, i32 %56, i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %75

61:                                               ; preds = %54
  %62 = load i32*, i32** %8, align 8
  %63 = call i64 @FileRead(i32* %62, i8* %18, i32 1)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %75

65:                                               ; preds = %61
  %66 = load i8, i8* %18, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp eq i32 %67, 26
  br i1 %68, label %69, label %75

69:                                               ; preds = %65
  %70 = load i32*, i32** %8, align 8
  %71 = load i32, i32* @FILE_BEGIN, align 4
  %72 = call i64 @FileSeek(i32* %70, i32 %71, i32 0)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %69
  store i32 1, i32* %15, align 4
  br label %78

75:                                               ; preds = %69, %65, %61, %54
  %76 = load i32*, i32** %8, align 8
  %77 = call i32 @FileClose(i32* %76)
  store i32* null, i32** %8, align 8
  br label %78

78:                                               ; preds = %75, %74
  br label %79

79:                                               ; preds = %78, %48
  br label %80

80:                                               ; preds = %79, %44
  br label %82

81:                                               ; preds = %32
  store i32 1, i32* %12, align 4
  br label %82

82:                                               ; preds = %81, %80
  %83 = load i32*, i32** %8, align 8
  %84 = icmp eq i32* %83, null
  br i1 %84, label %85, label %88

85:                                               ; preds = %82
  %86 = load i32*, i32** %3, align 8
  %87 = call i32* @FileOpenW(i32* %86, i32 0)
  store i32* %87, i32** %8, align 8
  br label %98

88:                                               ; preds = %82
  %89 = load i32*, i32** %8, align 8
  %90 = call i64 @FileSize(i32* %89)
  %91 = icmp eq i64 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %88
  %93 = load i32*, i32** %8, align 8
  %94 = call i32 @FileClose(i32* %93)
  %95 = load i32*, i32** %3, align 8
  %96 = call i32* @FileOpenW(i32* %95, i32 0)
  store i32* %96, i32** %8, align 8
  br label %97

97:                                               ; preds = %92, %88
  br label %98

98:                                               ; preds = %97, %85
  %99 = load i32*, i32** %8, align 8
  %100 = icmp eq i32* %99, null
  br i1 %100, label %101, label %102

101:                                              ; preds = %98
  store i32* null, i32** %2, align 8
  store i32 1, i32* %16, align 4
  br label %203

102:                                              ; preds = %98
  %103 = load i32*, i32** %8, align 8
  %104 = call i64 @FileSize(i32* %103)
  %105 = trunc i64 %104 to i32
  store i32 %105, i32* %9, align 4
  %106 = load i32, i32* %15, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %102
  %109 = load i32, i32* %9, align 4
  %110 = sub nsw i32 %109, 1
  store i32 %110, i32* %9, align 4
  br label %111

111:                                              ; preds = %108, %102
  %112 = load i32, i32* %9, align 4
  %113 = call i8* @Malloc(i32 %112)
  store i8* %113, i8** %10, align 8
  %114 = load i32*, i32** %8, align 8
  %115 = load i8*, i8** %10, align 8
  %116 = load i32, i32* %9, align 4
  %117 = call i64 @FileRead(i32* %114, i8* %115, i32 %116)
  %118 = call %struct.TYPE_9__* (...) @NewBuf()
  store %struct.TYPE_9__* %118, %struct.TYPE_9__** %7, align 8
  %119 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %120 = load i8*, i8** %10, align 8
  %121 = load i32, i32* %9, align 4
  %122 = call i32 @WriteBuf(%struct.TYPE_9__* %119, i8* %120, i32 %121)
  %123 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %124 = call i32 @SeekBuf(%struct.TYPE_9__* %123, i32 0, i32 0)
  %125 = load i32*, i32** %8, align 8
  %126 = call i32 @FileClose(i32* %125)
  %127 = load i32, i32* %12, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %131

129:                                              ; preds = %111
  %130 = call i32 @FileDeleteW(i32* %28)
  br label %131

131:                                              ; preds = %129, %111
  %132 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %133 = getelementptr inbounds [8 x i32], [8 x i32]* %14, i64 0, i64 0
  %134 = call i32 @ReadBuf(%struct.TYPE_9__* %132, i32* %133, i32 32)
  %135 = getelementptr inbounds [8 x i32], [8 x i32]* %14, i64 0, i64 0
  %136 = load i32*, i32** @TAG_BINARY, align 8
  %137 = call i64 @Cmp(i32* %135, i32* %136, i32 8)
  %138 = icmp eq i64 %137, 0
  br i1 %138, label %139, label %177

139:                                              ; preds = %131
  %140 = load i32, i32* @SHA1_SIZE, align 4
  %141 = zext i32 %140 to i64
  %142 = call i8* @llvm.stacksave()
  store i8* %142, i8** %19, align 8
  %143 = alloca i32, i64 %141, align 16
  store i64 %141, i64* %20, align 8
  %144 = load i32, i32* @SHA1_SIZE, align 4
  %145 = zext i32 %144 to i64
  %146 = alloca i32, i64 %145, align 16
  store i64 %145, i64* %21, align 8
  store i32 1, i32* %13, align 4
  %147 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %148 = mul nuw i64 4, %141
  %149 = trunc i64 %148 to i32
  %150 = call i32 @ReadBuf(%struct.TYPE_9__* %147, i32* %143, i32 %149)
  %151 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %152 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %151, i32 0, i32 1
  %153 = load i64, i64* %152, align 8
  %154 = inttoptr i64 %153 to i32*
  %155 = getelementptr inbounds i32, i32* %154, i64 8
  %156 = load i32, i32* @SHA1_SIZE, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i32, i32* %155, i64 %157
  %159 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %160 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = sub nsw i32 %161, 8
  %163 = load i32, i32* @SHA1_SIZE, align 4
  %164 = sub nsw i32 %162, %163
  %165 = call i32 @Sha0(i32* %146, i32* %158, i32 %164)
  %166 = load i32, i32* @SHA1_SIZE, align 4
  %167 = call i64 @Cmp(i32* %143, i32* %146, i32 %166)
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %172

169:                                              ; preds = %139
  %170 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %171 = call i32 @FreeBuf(%struct.TYPE_9__* %170)
  store i32* null, i32** %2, align 8
  store i32 1, i32* %16, align 4
  br label %173

172:                                              ; preds = %139
  store i32 0, i32* %16, align 4
  br label %173

173:                                              ; preds = %172, %169
  %174 = load i8*, i8** %19, align 8
  call void @llvm.stackrestore(i8* %174)
  %175 = load i32, i32* %16, align 4
  switch i32 %175, label %203 [
    i32 0, label %176
  ]

176:                                              ; preds = %173
  br label %177

177:                                              ; preds = %176, %131
  %178 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %179 = call i32 @SeekBuf(%struct.TYPE_9__* %178, i32 0, i32 0)
  %180 = load i32, i32* %13, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %187

182:                                              ; preds = %177
  %183 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %184 = load i32, i32* @SHA1_SIZE, align 4
  %185 = add nsw i32 8, %184
  %186 = call i32 @SeekBuf(%struct.TYPE_9__* %183, i32 %185, i32 0)
  br label %187

187:                                              ; preds = %182, %177
  %188 = load i32, i32* %13, align 4
  %189 = icmp eq i32 %188, 0
  br i1 %189, label %190, label %193

190:                                              ; preds = %187
  %191 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %192 = call i32* @CfgBufTextToFolder(%struct.TYPE_9__* %191)
  store i32* %192, i32** %11, align 8
  br label %196

193:                                              ; preds = %187
  %194 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %195 = call i32* @CfgBufBinToFolder(%struct.TYPE_9__* %194)
  store i32* %195, i32** %11, align 8
  br label %196

196:                                              ; preds = %193, %190
  %197 = load i8*, i8** %10, align 8
  %198 = call i32 @Free(i8* %197)
  %199 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %200 = call i32 @FreeBuf(%struct.TYPE_9__* %199)
  %201 = call i32 @FileDeleteW(i32* %28)
  %202 = load i32*, i32** %11, align 8
  store i32* %202, i32** %2, align 8
  store i32 1, i32* %16, align 4
  br label %203

203:                                              ; preds = %196, %173, %101, %31
  %204 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %204)
  %205 = load i32*, i32** %2, align 8
  ret i32* %205
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @UniFormat(i32*, i32, i8*, i32*) #2

declare dso_local i32* @FileOpenW(i32*, i32) #2

declare dso_local i64 @FileSize(i32*) #2

declare dso_local i64 @FileSeek(i32*, i32, i32) #2

declare dso_local i64 @FileRead(i32*, i8*, i32) #2

declare dso_local i32 @FileClose(i32*) #2

declare dso_local i8* @Malloc(i32) #2

declare dso_local %struct.TYPE_9__* @NewBuf(...) #2

declare dso_local i32 @WriteBuf(%struct.TYPE_9__*, i8*, i32) #2

declare dso_local i32 @SeekBuf(%struct.TYPE_9__*, i32, i32) #2

declare dso_local i32 @FileDeleteW(i32*) #2

declare dso_local i32 @ReadBuf(%struct.TYPE_9__*, i32*, i32) #2

declare dso_local i64 @Cmp(i32*, i32*, i32) #2

declare dso_local i32 @Sha0(i32*, i32*, i32) #2

declare dso_local i32 @FreeBuf(%struct.TYPE_9__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

declare dso_local i32* @CfgBufTextToFolder(%struct.TYPE_9__*) #2

declare dso_local i32* @CfgBufBinToFolder(%struct.TYPE_9__*) #2

declare dso_local i32 @Free(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
