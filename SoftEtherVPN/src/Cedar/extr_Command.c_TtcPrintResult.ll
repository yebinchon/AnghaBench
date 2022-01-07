; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_TtcPrintResult.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_TtcPrintResult.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 (%struct.TYPE_8__*, i8*)* }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32, i32, i64, i32 }

@MAX_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"TTC_RES_TITLE\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"TTC_RES_COLUMN_1\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"TTC_RES_COLUMN_2\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"TTC_RES_COLUMN_3\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"TTC_RES_SPAN\00", align 1
@.str.5 = private unnamed_addr constant [1 x i32] zeroinitializer, align 4
@.str.6 = private unnamed_addr constant [14 x i8] c"TTC_RES_ETHER\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"SEC_NO\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"SEC_YES\00", align 1
@.str.9 = private unnamed_addr constant [9 x i32] [i32 37, i32 83, i32 32, i32 66, i32 121, i32 116, i32 101, i32 115, i32 0], align 4
@.str.10 = private unnamed_addr constant [23 x i8] c"TTC_RES_BYTES_DOWNLOAD\00", align 1
@.str.11 = private unnamed_addr constant [21 x i8] c"TTC_RES_BYTES_UPLOAD\00", align 1
@.str.12 = private unnamed_addr constant [20 x i8] c"TTC_RES_BYTES_TOTAL\00", align 1
@.str.13 = private unnamed_addr constant [15 x i8] c"TTC_RES_DOUBLE\00", align 1
@.str.14 = private unnamed_addr constant [7 x i32] [i32 37, i32 83, i32 32, i32 98, i32 112, i32 115, i32 0], align 4
@.str.15 = private unnamed_addr constant [6 x i8] c"Bytes\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"bps\00", align 1
@.str.17 = private unnamed_addr constant [21 x i8] c"TTC_RES_BPS_DOWNLOAD\00", align 1
@.str.18 = private unnamed_addr constant [19 x i8] c"TTC_RES_BPS_UPLOAD\00", align 1
@.str.19 = private unnamed_addr constant [18 x i8] c"TTC_RES_BPS_TOTAL\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @TtcPrintResult(%struct.TYPE_8__* %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %4, align 8
  %12 = load i32, i32* @MAX_SIZE, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %6, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %7, align 8
  %16 = load i32, i32* @MAX_SIZE, align 4
  %17 = zext i32 %16 to i64
  %18 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %8, align 8
  %19 = load i32, i32* @MAX_SIZE, align 4
  %20 = zext i32 %19 to i64
  %21 = alloca i8, i64 %20, align 16
  store i64 %20, i64* %9, align 8
  %22 = load i32, i32* @MAX_SIZE, align 4
  %23 = zext i32 %22 to i64
  %24 = alloca i8, i64 %23, align 16
  store i64 %23, i64* %10, align 8
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %26 = icmp eq %struct.TYPE_8__* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %2
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %29 = icmp eq %struct.TYPE_7__* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %27, %2
  store i32 1, i32* %11, align 4
  br label %195

31:                                               ; preds = %27
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = load i32 (%struct.TYPE_8__*, i8*)*, i32 (%struct.TYPE_8__*, i8*)** %33, align 8
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %36 = call i8* @_UU(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %37 = call i32 %34(%struct.TYPE_8__* %35, i8* %36)
  %38 = call i32* (...) @CtNew()
  store i32* %38, i32** %5, align 8
  %39 = load i32*, i32** %5, align 8
  %40 = call i8* @_UU(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %41 = call i32 @CtInsertColumn(i32* %39, i8* %40, i32 0)
  %42 = load i32*, i32** %5, align 8
  %43 = call i8* @_UU(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %44 = call i32 @CtInsertColumn(i32* %42, i8* %43, i32 1)
  %45 = load i32*, i32** %5, align 8
  %46 = call i8* @_UU(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  %47 = call i32 @CtInsertColumn(i32* %45, i8* %46, i32 1)
  %48 = trunc i64 %23 to i32
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 8
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @GetSpanStrMilli(i8* %24, i32 %48, i32 %51)
  %53 = trunc i64 %13 to i32
  %54 = call i32 @StrToUni(i8* %15, i32 %53, i8* %24)
  %55 = load i32*, i32** %5, align 8
  %56 = call i8* @_UU(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  %57 = call i32 @CtInsert(i32* %55, i8* %56, i8* %15, i8* bitcast ([1 x i32]* @.str.5 to i8*))
  %58 = load i32*, i32** %5, align 8
  %59 = call i8* @_UU(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 7
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %31
  %65 = call i8* @_UU(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  br label %68

66:                                               ; preds = %31
  %67 = call i8* @_UU(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0))
  br label %68

68:                                               ; preds = %66, %64
  %69 = phi i8* [ %65, %64 ], [ %67, %66 ]
  %70 = call i32 @CtInsert(i32* %58, i8* %59, i8* %69, i8* bitcast ([1 x i32]* @.str.5 to i8*))
  %71 = trunc i64 %23 to i32
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 6
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @ToStr3(i8* %24, i32 %71, i32 %74)
  %76 = trunc i64 %17 to i32
  %77 = call i32 @UniFormat(i8* %18, i32 %76, i8* bitcast ([9 x i32]* @.str.9 to i8*), i8* %24)
  %78 = trunc i64 %23 to i32
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 6
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @ToStrByte1000(i8* %24, i32 %78, i32 %81)
  %83 = trunc i64 %20 to i32
  %84 = call i32 @StrToUni(i8* %21, i32 %83, i8* %24)
  %85 = load i32*, i32** %5, align 8
  %86 = call i8* @_UU(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i64 0, i64 0))
  %87 = call i32 @CtInsert(i32* %85, i8* %86, i8* %18, i8* %21)
  %88 = trunc i64 %23 to i32
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 5
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @ToStr3(i8* %24, i32 %88, i32 %91)
  %93 = trunc i64 %17 to i32
  %94 = call i32 @UniFormat(i8* %18, i32 %93, i8* bitcast ([9 x i32]* @.str.9 to i8*), i8* %24)
  %95 = trunc i64 %23 to i32
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 5
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @ToStrByte1000(i8* %24, i32 %95, i32 %98)
  %100 = trunc i64 %20 to i32
  %101 = call i32 @StrToUni(i8* %21, i32 %100, i8* %24)
  %102 = load i32*, i32** %5, align 8
  %103 = call i8* @_UU(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0))
  %104 = call i32 @CtInsert(i32* %102, i8* %103, i8* %18, i8* %21)
  %105 = trunc i64 %23 to i32
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 4
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @ToStr3(i8* %24, i32 %105, i32 %108)
  %110 = trunc i64 %17 to i32
  %111 = call i32 @UniFormat(i8* %18, i32 %110, i8* bitcast ([9 x i32]* @.str.9 to i8*), i8* %24)
  %112 = trunc i64 %23 to i32
  %113 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 4
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @ToStrByte1000(i8* %24, i32 %112, i32 %115)
  %117 = trunc i64 %20 to i32
  %118 = call i32 @StrToUni(i8* %21, i32 %117, i8* %24)
  %119 = load i32*, i32** %5, align 8
  %120 = call i8* @_UU(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i64 0, i64 0))
  %121 = call i32 @CtInsert(i32* %119, i8* %120, i8* %18, i8* %21)
  %122 = load i32*, i32** %5, align 8
  %123 = call i8* @_UU(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i64 0, i64 0))
  %124 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %128, label %130

128:                                              ; preds = %68
  %129 = call i8* @_UU(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  br label %132

130:                                              ; preds = %68
  %131 = call i8* @_UU(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0))
  br label %132

132:                                              ; preds = %130, %128
  %133 = phi i8* [ %129, %128 ], [ %131, %130 ]
  %134 = call i32 @CtInsert(i32* %122, i8* %123, i8* %133, i8* bitcast ([1 x i32]* @.str.5 to i8*))
  %135 = trunc i64 %23 to i32
  %136 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i32 0, i32 3
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @ToStr3(i8* %24, i32 %135, i32 %138)
  %140 = trunc i64 %17 to i32
  %141 = call i32 @UniFormat(i8* %18, i32 %140, i8* bitcast ([7 x i32]* @.str.14 to i8*), i8* %24)
  %142 = trunc i64 %23 to i32
  %143 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %144 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %143, i32 0, i32 3
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @ToStrByte1000(i8* %24, i32 %142, i32 %145)
  %147 = trunc i64 %23 to i32
  %148 = call i32 @ReplaceStr(i8* %24, i32 %147, i8* %24, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i64 0, i64 0))
  %149 = trunc i64 %20 to i32
  %150 = call i32 @StrToUni(i8* %21, i32 %149, i8* %24)
  %151 = load i32*, i32** %5, align 8
  %152 = call i8* @_UU(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.17, i64 0, i64 0))
  %153 = call i32 @CtInsert(i32* %151, i8* %152, i8* %18, i8* %21)
  %154 = trunc i64 %23 to i32
  %155 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %156 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %155, i32 0, i32 2
  %157 = load i32, i32* %156, align 8
  %158 = call i32 @ToStr3(i8* %24, i32 %154, i32 %157)
  %159 = trunc i64 %17 to i32
  %160 = call i32 @UniFormat(i8* %18, i32 %159, i8* bitcast ([7 x i32]* @.str.14 to i8*), i8* %24)
  %161 = trunc i64 %23 to i32
  %162 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %163 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 8
  %165 = call i32 @ToStrByte1000(i8* %24, i32 %161, i32 %164)
  %166 = trunc i64 %23 to i32
  %167 = call i32 @ReplaceStr(i8* %24, i32 %166, i8* %24, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i64 0, i64 0))
  %168 = trunc i64 %20 to i32
  %169 = call i32 @StrToUni(i8* %21, i32 %168, i8* %24)
  %170 = load i32*, i32** %5, align 8
  %171 = call i8* @_UU(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i64 0, i64 0))
  %172 = call i32 @CtInsert(i32* %170, i8* %171, i8* %18, i8* %21)
  %173 = trunc i64 %23 to i32
  %174 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %175 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = call i32 @ToStr3(i8* %24, i32 %173, i32 %176)
  %178 = trunc i64 %17 to i32
  %179 = call i32 @UniFormat(i8* %18, i32 %178, i8* bitcast ([7 x i32]* @.str.14 to i8*), i8* %24)
  %180 = trunc i64 %23 to i32
  %181 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %182 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = call i32 @ToStrByte1000(i8* %24, i32 %180, i32 %183)
  %185 = trunc i64 %23 to i32
  %186 = call i32 @ReplaceStr(i8* %24, i32 %185, i8* %24, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i64 0, i64 0))
  %187 = trunc i64 %20 to i32
  %188 = call i32 @StrToUni(i8* %21, i32 %187, i8* %24)
  %189 = load i32*, i32** %5, align 8
  %190 = call i8* @_UU(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.19, i64 0, i64 0))
  %191 = call i32 @CtInsert(i32* %189, i8* %190, i8* %18, i8* %21)
  %192 = load i32*, i32** %5, align 8
  %193 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %194 = call i32 @CtFree(i32* %192, %struct.TYPE_8__* %193)
  store i32 0, i32* %11, align 4
  br label %195

195:                                              ; preds = %132, %30
  %196 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %196)
  %197 = load i32, i32* %11, align 4
  switch i32 %197, label %199 [
    i32 0, label %198
    i32 1, label %198
  ]

198:                                              ; preds = %195, %195
  ret void

199:                                              ; preds = %195
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @_UU(i8*) #2

declare dso_local i32* @CtNew(...) #2

declare dso_local i32 @CtInsertColumn(i32*, i8*, i32) #2

declare dso_local i32 @GetSpanStrMilli(i8*, i32, i32) #2

declare dso_local i32 @StrToUni(i8*, i32, i8*) #2

declare dso_local i32 @CtInsert(i32*, i8*, i8*, i8*) #2

declare dso_local i32 @ToStr3(i8*, i32, i32) #2

declare dso_local i32 @UniFormat(i8*, i32, i8*, i8*) #2

declare dso_local i32 @ToStrByte1000(i8*, i32, i32) #2

declare dso_local i32 @ReplaceStr(i8*, i32, i8*, i8*, i8*) #2

declare dso_local i32 @CtFree(i32*, %struct.TYPE_8__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
