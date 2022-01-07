; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Table.c_LoadLangList.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Table.c_LoadLangList.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i8** }
%struct.TYPE_9__ = type { i32*, i32, i32, i32, i32, i8* }

@LANGLIST_FILENAME = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [2 x i8] c"#\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"\09 \00", align 1
@.str.2 = private unnamed_addr constant [2 x i32] [i32 95, i32 0], align 4
@.str.3 = private unnamed_addr constant [2 x i32] [i32 32, i32 0], align 4
@.str.4 = private unnamed_addr constant [2 x i8] c",\00", align 1
@LANGLIST_FILENAME_WINE = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @LoadLangList() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = call i8* @NewListFast(i32* null)
  %13 = bitcast i8* %12 to i32*
  store i32* %13, i32** %2, align 8
  %14 = load i8*, i8** @LANGLIST_FILENAME, align 8
  store i8* %14, i8** %3, align 8
  %15 = load i8*, i8** %3, align 8
  %16 = call i32* @ReadDump(i8* %15)
  store i32* %16, i32** %4, align 8
  %17 = load i32*, i32** %4, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %0
  store i32* null, i32** %1, align 8
  br label %203

20:                                               ; preds = %0
  br label %21

21:                                               ; preds = %20, %196
  %22 = load i32*, i32** %4, align 8
  %23 = call i8* @CfgReadNextLine(i32* %22)
  store i8* %23, i8** %5, align 8
  %24 = load i8*, i8** %5, align 8
  %25 = icmp eq i8* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  br label %199

27:                                               ; preds = %21
  %28 = load i8*, i8** %5, align 8
  %29 = call i32 @Trim(i8* %28)
  %30 = load i8*, i8** %5, align 8
  %31 = call i32 @IsEmptyStr(i8* %30)
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %196

33:                                               ; preds = %27
  %34 = load i8*, i8** %5, align 8
  %35 = call i32 @StartWith(i8* %34, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %196

37:                                               ; preds = %33
  %38 = load i8*, i8** %5, align 8
  %39 = call %struct.TYPE_8__* @ParseToken(i8* %38, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store %struct.TYPE_8__* %39, %struct.TYPE_8__** %6, align 8
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %41 = icmp ne %struct.TYPE_8__* %40, null
  br i1 %41, label %42, label %195

42:                                               ; preds = %37
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp eq i32 %45, 6
  br i1 %46, label %47, label %192

47:                                               ; preds = %42
  %48 = call %struct.TYPE_9__* @ZeroMalloc(i32 32)
  store %struct.TYPE_9__* %48, %struct.TYPE_9__** %7, align 8
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 1
  %51 = load i8**, i8*** %50, align 8
  %52 = getelementptr inbounds i8*, i8** %51, i64 0
  %53 = load i8*, i8** %52, align 8
  %54 = call i8* @ToInt(i8* %53)
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 5
  store i8* %54, i8** %56, align 8
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 4
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 1
  %62 = load i8**, i8*** %61, align 8
  %63 = getelementptr inbounds i8*, i8** %62, i64 1
  %64 = load i8*, i8** %63, align 8
  %65 = call i32 @StrCpy(i32 %59, i32 4, i8* %64)
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 1
  %71 = load i8**, i8*** %70, align 8
  %72 = getelementptr inbounds i8*, i8** %71, i64 2
  %73 = load i8*, i8** %72, align 8
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 1
  %76 = load i8**, i8*** %75, align 8
  %77 = getelementptr inbounds i8*, i8** %76, i64 2
  %78 = load i8*, i8** %77, align 8
  %79 = call i32 @StrLen(i8* %78)
  %80 = call i32 @Utf8ToUni(i32 %68, i32 4, i8* %73, i32 %79)
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 1
  %86 = load i8**, i8*** %85, align 8
  %87 = getelementptr inbounds i8*, i8** %86, i64 3
  %88 = load i8*, i8** %87, align 8
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 1
  %91 = load i8**, i8*** %90, align 8
  %92 = getelementptr inbounds i8*, i8** %91, i64 3
  %93 = load i8*, i8** %92, align 8
  %94 = call i32 @StrLen(i8* %93)
  %95 = call i32 @Utf8ToUni(i32 %83, i32 4, i8* %88, i32 %94)
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @UniReplaceStrEx(i32 %98, i32 4, i32 %101, i8* bitcast ([2 x i32]* @.str.2 to i8*), i8* bitcast ([2 x i32]* @.str.3 to i8*), i32 1)
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @UniReplaceStrEx(i32 %105, i32 4, i32 %108, i8* bitcast ([2 x i32]* @.str.2 to i8*), i8* bitcast ([2 x i32]* @.str.3 to i8*), i32 1)
  %110 = call i32 @NewIntList(i32 0)
  %111 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i32 0, i32 1
  store i32 %110, i32* %112, align 8
  %113 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 1
  %115 = load i8**, i8*** %114, align 8
  %116 = getelementptr inbounds i8*, i8** %115, i64 4
  %117 = load i8*, i8** %116, align 8
  %118 = call %struct.TYPE_8__* @ParseToken(i8* %117, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  store %struct.TYPE_8__* %118, %struct.TYPE_8__** %8, align 8
  %119 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %120 = icmp ne %struct.TYPE_8__* %119, null
  br i1 %120, label %121, label %149

121:                                              ; preds = %47
  store i64 0, i64* %9, align 8
  br label %122

122:                                              ; preds = %143, %121
  %123 = load i64, i64* %9, align 8
  %124 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = sext i32 %126 to i64
  %128 = icmp ult i64 %123, %127
  br i1 %128, label %129, label %146

129:                                              ; preds = %122
  %130 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 1
  %132 = load i8**, i8*** %131, align 8
  %133 = load i64, i64* %9, align 8
  %134 = getelementptr inbounds i8*, i8** %132, i64 %133
  %135 = load i8*, i8** %134, align 8
  %136 = call i8* @ToInt(i8* %135)
  %137 = ptrtoint i8* %136 to i64
  store i64 %137, i64* %10, align 8
  %138 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %139 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 8
  %141 = load i64, i64* %10, align 8
  %142 = call i32 @AddIntDistinct(i32 %140, i64 %141)
  br label %143

143:                                              ; preds = %129
  %144 = load i64, i64* %9, align 8
  %145 = add i64 %144, 1
  store i64 %145, i64* %9, align 8
  br label %122

146:                                              ; preds = %122
  %147 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %148 = call i32 @FreeToken(%struct.TYPE_8__* %147)
  br label %149

149:                                              ; preds = %146, %47
  %150 = call i8* @NewListFast(i32* null)
  %151 = bitcast i8* %150 to i32*
  %152 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %153 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %152, i32 0, i32 0
  store i32* %151, i32** %153, align 8
  %154 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %155 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %154, i32 0, i32 1
  %156 = load i8**, i8*** %155, align 8
  %157 = getelementptr inbounds i8*, i8** %156, i64 5
  %158 = load i8*, i8** %157, align 8
  %159 = call %struct.TYPE_8__* @ParseToken(i8* %158, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  store %struct.TYPE_8__* %159, %struct.TYPE_8__** %8, align 8
  %160 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %161 = icmp ne %struct.TYPE_8__* %160, null
  br i1 %161, label %162, label %188

162:                                              ; preds = %149
  store i64 0, i64* %11, align 8
  br label %163

163:                                              ; preds = %182, %162
  %164 = load i64, i64* %11, align 8
  %165 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %166 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = sext i32 %167 to i64
  %169 = icmp ult i64 %164, %168
  br i1 %169, label %170, label %185

170:                                              ; preds = %163
  %171 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %172 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %171, i32 0, i32 0
  %173 = load i32*, i32** %172, align 8
  %174 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %175 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %174, i32 0, i32 1
  %176 = load i8**, i8*** %175, align 8
  %177 = load i64, i64* %11, align 8
  %178 = getelementptr inbounds i8*, i8** %176, i64 %177
  %179 = load i8*, i8** %178, align 8
  %180 = call %struct.TYPE_9__* @CopyStr(i8* %179)
  %181 = call i32 @Add(i32* %173, %struct.TYPE_9__* %180)
  br label %182

182:                                              ; preds = %170
  %183 = load i64, i64* %11, align 8
  %184 = add i64 %183, 1
  store i64 %184, i64* %11, align 8
  br label %163

185:                                              ; preds = %163
  %186 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %187 = call i32 @FreeToken(%struct.TYPE_8__* %186)
  br label %188

188:                                              ; preds = %185, %149
  %189 = load i32*, i32** %2, align 8
  %190 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %191 = call i32 @Add(i32* %189, %struct.TYPE_9__* %190)
  br label %192

192:                                              ; preds = %188, %42
  %193 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %194 = call i32 @FreeToken(%struct.TYPE_8__* %193)
  br label %195

195:                                              ; preds = %192, %37
  br label %196

196:                                              ; preds = %195, %33, %27
  %197 = load i8*, i8** %5, align 8
  %198 = call i32 @Free(i8* %197)
  br label %21

199:                                              ; preds = %26
  %200 = load i32*, i32** %4, align 8
  %201 = call i32 @FreeBuf(i32* %200)
  %202 = load i32*, i32** %2, align 8
  store i32* %202, i32** %1, align 8
  br label %203

203:                                              ; preds = %199, %19
  %204 = load i32*, i32** %1, align 8
  ret i32* %204
}

declare dso_local i8* @NewListFast(i32*) #1

declare dso_local i32* @ReadDump(i8*) #1

declare dso_local i8* @CfgReadNextLine(i32*) #1

declare dso_local i32 @Trim(i8*) #1

declare dso_local i32 @IsEmptyStr(i8*) #1

declare dso_local i32 @StartWith(i8*, i8*) #1

declare dso_local %struct.TYPE_8__* @ParseToken(i8*, i8*) #1

declare dso_local %struct.TYPE_9__* @ZeroMalloc(i32) #1

declare dso_local i8* @ToInt(i8*) #1

declare dso_local i32 @StrCpy(i32, i32, i8*) #1

declare dso_local i32 @Utf8ToUni(i32, i32, i8*, i32) #1

declare dso_local i32 @StrLen(i8*) #1

declare dso_local i32 @UniReplaceStrEx(i32, i32, i32, i8*, i8*, i32) #1

declare dso_local i32 @NewIntList(i32) #1

declare dso_local i32 @AddIntDistinct(i32, i64) #1

declare dso_local i32 @FreeToken(%struct.TYPE_8__*) #1

declare dso_local i32 @Add(i32*, %struct.TYPE_9__*) #1

declare dso_local %struct.TYPE_9__* @CopyStr(i8*) #1

declare dso_local i32 @Free(i8*) #1

declare dso_local i32 @FreeBuf(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
