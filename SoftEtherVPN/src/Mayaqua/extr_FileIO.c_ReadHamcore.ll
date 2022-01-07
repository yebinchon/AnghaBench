; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_FileIO.c_ReadHamcore.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_FileIO.c_ReadHamcore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8*, i8*, i64, i64, i32, i32 }

@MAX_SIZE = common dso_local global i32 0, align 4
@MAX_PATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\\\00", align 1
@.str.2 = private unnamed_addr constant [9 x i32] [i32 37, i32 115, i32 47, i32 37, i32 83, i32 47, i32 37, i32 83, i32 0], align 4
@HAMCORE_DIR_NAME = common dso_local global i32 0, align 4
@hamcore = common dso_local global i32 0, align 4
@hamcore_io = common dso_local global i32 0, align 4
@HAMCORE_CACHE_EXPIRES = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [3 x i8] c"Li\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @ReadHamcore(i8* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_6__, align 8
  %11 = alloca %struct.TYPE_6__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.TYPE_6__*, align 8
  store i8* %0, i8** %3, align 8
  %15 = load i32, i32* @MAX_SIZE, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %4, align 8
  %18 = alloca i32, i64 %16, align 16
  store i64 %16, i64* %5, align 8
  %19 = load i32, i32* @MAX_SIZE, align 4
  %20 = zext i32 %19 to i64
  %21 = alloca i32, i64 %20, align 16
  store i64 %20, i64* %6, align 8
  %22 = load i32, i32* @MAX_PATH, align 4
  %23 = zext i32 %22 to i64
  %24 = alloca i8, i64 %23, align 16
  store i64 %23, i64* %8, align 8
  %25 = load i8*, i8** %3, align 8
  %26 = icmp eq i8* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %1
  store i32* null, i32** %2, align 8
  store i32 1, i32* %9, align 4
  br label %221

28:                                               ; preds = %1
  %29 = load i8*, i8** %3, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 0
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %32, 124
  br i1 %33, label %34, label %37

34:                                               ; preds = %28
  %35 = load i8*, i8** %3, align 8
  %36 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %36, i8** %3, align 8
  br label %37

37:                                               ; preds = %34, %28
  %38 = load i8*, i8** %3, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 0
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp eq i32 %41, 47
  br i1 %42, label %49, label %43

43:                                               ; preds = %37
  %44 = load i8*, i8** %3, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 0
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp eq i32 %47, 92
  br i1 %48, label %49, label %52

49:                                               ; preds = %43, %37
  %50 = load i8*, i8** %3, align 8
  %51 = getelementptr inbounds i8, i8* %50, i32 1
  store i8* %51, i8** %3, align 8
  br label %52

52:                                               ; preds = %49, %43
  %53 = trunc i64 %23 to i32
  %54 = load i8*, i8** %3, align 8
  %55 = call i32 @StrCpy(i8* %24, i32 %53, i8* %54)
  %56 = trunc i64 %23 to i32
  %57 = call i32 @ReplaceStrEx(i8* %24, i32 %56, i8* %24, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 1)
  %58 = call i64 (...) @MayaquaIsMinimalMode()
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %52
  store i32* null, i32** %2, align 8
  store i32 1, i32* %9, align 4
  br label %221

61:                                               ; preds = %52
  %62 = mul nuw i64 4, %20
  %63 = trunc i64 %62 to i32
  %64 = call i32 @GetExeDirW(i32* %21, i32 %63)
  %65 = mul nuw i64 4, %16
  %66 = trunc i64 %65 to i32
  %67 = load i32, i32* @HAMCORE_DIR_NAME, align 4
  %68 = call i32 @UniFormat(i32* %18, i32 %66, i8* bitcast ([9 x i32]* @.str.2 to i8*), i32* %21, i32 %67, i8* %24)
  %69 = call i32* @ReadDumpW(i32* %18)
  store i32* %69, i32** %7, align 8
  %70 = load i32*, i32** %7, align 8
  %71 = icmp ne i32* %70, null
  br i1 %71, label %72, label %74

72:                                               ; preds = %61
  %73 = load i32*, i32** %7, align 8
  store i32* %73, i32** %2, align 8
  store i32 1, i32* %9, align 4
  br label %221

74:                                               ; preds = %61
  %75 = load i32, i32* @hamcore, align 4
  %76 = call i32 @LockList(i32 %75)
  %77 = call i32 @Zero(%struct.TYPE_6__* %10, i32 40)
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  store i8* %24, i8** %78, align 8
  %79 = load i32, i32* @hamcore, align 4
  %80 = call %struct.TYPE_6__* @Search(i32 %79, %struct.TYPE_6__* %10)
  store %struct.TYPE_6__* %80, %struct.TYPE_6__** %11, align 8
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %82 = icmp eq %struct.TYPE_6__* %81, null
  br i1 %82, label %83, label %84

83:                                               ; preds = %74
  store i32* null, i32** %7, align 8
  br label %177

84:                                               ; preds = %74
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 1
  %87 = load i8*, i8** %86, align 8
  %88 = icmp ne i8* %87, null
  br i1 %88, label %89, label %104

89:                                               ; preds = %84
  %90 = call i32* (...) @NewBuf()
  store i32* %90, i32** %7, align 8
  %91 = load i32*, i32** %7, align 8
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 1
  %94 = load i8*, i8** %93, align 8
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 2
  %97 = load i64, i64* %96, align 8
  %98 = call i32 @WriteBuf(i32* %91, i8* %94, i64 %97)
  %99 = load i32*, i32** %7, align 8
  %100 = call i32 @SeekBuf(i32* %99, i32 0, i32 0)
  %101 = call i64 (...) @Tick64()
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 3
  store i64 %101, i64* %103, align 8
  br label %176

104:                                              ; preds = %84
  %105 = load i32, i32* @hamcore_io, align 4
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 5
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @FileSeek(i32 %105, i32 0, i32 %108)
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %104
  store i32* null, i32** %7, align 8
  br label %175

112:                                              ; preds = %104
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 4
  %115 = load i32, i32* %114, align 8
  %116 = call i8* @Malloc(i32 %115)
  store i8* %116, i8** %13, align 8
  %117 = load i32, i32* @hamcore_io, align 4
  %118 = load i8*, i8** %13, align 8
  %119 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 4
  %121 = load i32, i32* %120, align 8
  %122 = call i32 @FileRead(i32 %117, i8* %118, i32 %121)
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %127

124:                                              ; preds = %112
  %125 = load i8*, i8** %13, align 8
  %126 = call i32 @Free(i8* %125)
  store i32* null, i32** %7, align 8
  br label %174

127:                                              ; preds = %112
  %128 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 2
  %130 = load i64, i64* %129, align 8
  %131 = call i8* @ZeroMalloc(i64 %130)
  %132 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 1
  store i8* %131, i8** %133, align 8
  %134 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 1
  %136 = load i8*, i8** %135, align 8
  %137 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 2
  %139 = load i64, i64* %138, align 8
  %140 = load i8*, i8** %13, align 8
  %141 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 4
  %143 = load i32, i32* %142, align 8
  %144 = call i64 @Uncompress(i8* %136, i64 %139, i8* %140, i32 %143)
  %145 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i32 0, i32 2
  %147 = load i64, i64* %146, align 8
  %148 = icmp ne i64 %144, %147
  br i1 %148, label %149, label %156

149:                                              ; preds = %127
  %150 = load i8*, i8** %13, align 8
  %151 = call i32 @Free(i8* %150)
  %152 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %153 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %152, i32 0, i32 1
  %154 = load i8*, i8** %153, align 8
  %155 = call i32 @Free(i8* %154)
  store i32* null, i32** %7, align 8
  br label %173

156:                                              ; preds = %127
  %157 = load i8*, i8** %13, align 8
  %158 = call i32 @Free(i8* %157)
  %159 = call i32* (...) @NewBuf()
  store i32* %159, i32** %7, align 8
  %160 = load i32*, i32** %7, align 8
  %161 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %162 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %161, i32 0, i32 1
  %163 = load i8*, i8** %162, align 8
  %164 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %165 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %164, i32 0, i32 2
  %166 = load i64, i64* %165, align 8
  %167 = call i32 @WriteBuf(i32* %160, i8* %163, i64 %166)
  %168 = load i32*, i32** %7, align 8
  %169 = call i32 @SeekBuf(i32* %168, i32 0, i32 0)
  %170 = call i64 (...) @Tick64()
  %171 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %172 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %171, i32 0, i32 3
  store i64 %170, i64* %172, align 8
  br label %173

173:                                              ; preds = %156, %149
  br label %174

174:                                              ; preds = %173, %124
  br label %175

175:                                              ; preds = %174, %111
  br label %176

176:                                              ; preds = %175, %89
  br label %177

177:                                              ; preds = %176, %83
  store i64 0, i64* %12, align 8
  br label %178

178:                                              ; preds = %214, %177
  %179 = load i64, i64* %12, align 8
  %180 = load i32, i32* @hamcore, align 4
  %181 = call i64 @LIST_NUM(i32 %180)
  %182 = icmp slt i64 %179, %181
  br i1 %182, label %183, label %217

183:                                              ; preds = %178
  %184 = load i32, i32* @hamcore, align 4
  %185 = load i64, i64* %12, align 8
  %186 = call %struct.TYPE_6__* @LIST_DATA(i32 %184, i64 %185)
  store %struct.TYPE_6__* %186, %struct.TYPE_6__** %14, align 8
  %187 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %188 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %187, i32 0, i32 1
  %189 = load i8*, i8** %188, align 8
  %190 = icmp ne i8* %189, null
  br i1 %190, label %191, label %213

191:                                              ; preds = %183
  %192 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %193 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %192, i32 0, i32 3
  %194 = load i64, i64* %193, align 8
  %195 = load i64, i64* @HAMCORE_CACHE_EXPIRES, align 8
  %196 = add nsw i64 %194, %195
  %197 = call i64 (...) @Tick64()
  %198 = icmp sle i64 %196, %197
  br i1 %198, label %205, label %199

199:                                              ; preds = %191
  %200 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %201 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %200, i32 0, i32 0
  %202 = load i8*, i8** %201, align 8
  %203 = call i64 @StartWith(i8* %202, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %212

205:                                              ; preds = %199, %191
  %206 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %207 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %206, i32 0, i32 1
  %208 = load i8*, i8** %207, align 8
  %209 = call i32 @Free(i8* %208)
  %210 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %211 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %210, i32 0, i32 1
  store i8* null, i8** %211, align 8
  br label %212

212:                                              ; preds = %205, %199
  br label %213

213:                                              ; preds = %212, %183
  br label %214

214:                                              ; preds = %213
  %215 = load i64, i64* %12, align 8
  %216 = add nsw i64 %215, 1
  store i64 %216, i64* %12, align 8
  br label %178

217:                                              ; preds = %178
  %218 = load i32, i32* @hamcore, align 4
  %219 = call i32 @UnlockList(i32 %218)
  %220 = load i32*, i32** %7, align 8
  store i32* %220, i32** %2, align 8
  store i32 1, i32* %9, align 4
  br label %221

221:                                              ; preds = %217, %72, %60, %27
  %222 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %222)
  %223 = load i32*, i32** %2, align 8
  ret i32* %223
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @StrCpy(i8*, i32, i8*) #2

declare dso_local i32 @ReplaceStrEx(i8*, i32, i8*, i8*, i8*, i32) #2

declare dso_local i64 @MayaquaIsMinimalMode(...) #2

declare dso_local i32 @GetExeDirW(i32*, i32) #2

declare dso_local i32 @UniFormat(i32*, i32, i8*, i32*, i32, i8*) #2

declare dso_local i32* @ReadDumpW(i32*) #2

declare dso_local i32 @LockList(i32) #2

declare dso_local i32 @Zero(%struct.TYPE_6__*, i32) #2

declare dso_local %struct.TYPE_6__* @Search(i32, %struct.TYPE_6__*) #2

declare dso_local i32* @NewBuf(...) #2

declare dso_local i32 @WriteBuf(i32*, i8*, i64) #2

declare dso_local i32 @SeekBuf(i32*, i32, i32) #2

declare dso_local i64 @Tick64(...) #2

declare dso_local i32 @FileSeek(i32, i32, i32) #2

declare dso_local i8* @Malloc(i32) #2

declare dso_local i32 @FileRead(i32, i8*, i32) #2

declare dso_local i32 @Free(i8*) #2

declare dso_local i8* @ZeroMalloc(i64) #2

declare dso_local i64 @Uncompress(i8*, i64, i8*, i32) #2

declare dso_local i64 @LIST_NUM(i32) #2

declare dso_local %struct.TYPE_6__* @LIST_DATA(i32, i64) #2

declare dso_local i64 @StartWith(i8*, i8*) #2

declare dso_local i32 @UnlockList(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
