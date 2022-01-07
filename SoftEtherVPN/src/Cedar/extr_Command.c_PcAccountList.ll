; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PcAccountList.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PcAccountList.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i64, %struct.TYPE_7__** }
%struct.TYPE_7__ = type { i64, i32, i64, i32, i32, i32, i32, i32 }

@ERR_NO_ERROR = common dso_local global i64 0, align 8
@ERR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"CM_ACCOUNT_COLUMN_1\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"CM_ACCOUNT_COLUMN_2\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"CM_ACCOUNT_COLUMN_3\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"CM_ACCOUNT_COLUMN_3_2\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"CM_ACCOUNT_COLUMN_4\00", align 1
@MAX_SIZE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"[%s]\00", align 1
@.str.7 = private unnamed_addr constant [8 x i32] [i32 37, i32 83, i32 32, i32 40, i32 37, i32 115, i32 41, i32 0], align 4
@.str.8 = private unnamed_addr constant [11 x i32] [i32 37, i32 83, i32 58, i32 37, i32 117, i32 32, i32 40, i32 37, i32 115, i32 41, i32 0], align 4
@.str.9 = private unnamed_addr constant [19 x i8] c"CM_ACCOUNT_OFFLINE\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"CM_ACCOUNT_ONLINE\00", align 1
@.str.11 = private unnamed_addr constant [22 x i8] c"CM_ACCOUNT_CONNECTING\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @PcAccountList(i32* %0, i8* %1, i32* %2, i8* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_9__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_8__, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_7__*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  %23 = load i8*, i8** %9, align 8
  %24 = bitcast i8* %23 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %24, %struct.TYPE_9__** %11, align 8
  %25 = load i64, i64* @ERR_NO_ERROR, align 8
  store i64 %25, i64* %12, align 8
  %26 = load i32*, i32** %6, align 8
  %27 = load i8*, i8** %7, align 8
  %28 = load i32*, i32** %8, align 8
  %29 = call i32* @ParseCommandList(i32* %26, i8* %27, i32* %28, i32* null, i32 0)
  store i32* %29, i32** %10, align 8
  %30 = load i32*, i32** %10, align 8
  %31 = icmp eq i32* %30, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %4
  %33 = load i64, i64* @ERR_INVALID_PARAMETER, align 8
  store i64 %33, i64* %5, align 8
  br label %190

34:                                               ; preds = %4
  %35 = call i32 @Zero(%struct.TYPE_8__* %13, i32 16)
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @CcEnumAccount(i32 %38, %struct.TYPE_8__* %13)
  store i64 %39, i64* %12, align 8
  %40 = load i64, i64* %12, align 8
  %41 = load i64, i64* @ERR_NO_ERROR, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %177

43:                                               ; preds = %34
  %44 = call i32* (...) @CtNew()
  store i32* %44, i32** %15, align 8
  %45 = load i32*, i32** %15, align 8
  %46 = call i32 @_UU(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %47 = call i32 @CtInsertColumn(i32* %45, i32 %46, i32 0)
  %48 = load i32*, i32** %15, align 8
  %49 = call i32 @_UU(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %50 = call i32 @CtInsertColumn(i32* %48, i32 %49, i32 0)
  %51 = load i32*, i32** %15, align 8
  %52 = call i32 @_UU(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %53 = call i32 @CtInsertColumn(i32* %51, i32 %52, i32 0)
  %54 = load i32*, i32** %15, align 8
  %55 = call i32 @_UU(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %56 = call i32 @CtInsertColumn(i32* %54, i32 %55, i32 0)
  %57 = load i32*, i32** %15, align 8
  %58 = call i32 @_UU(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  %59 = call i32 @CtInsertColumn(i32* %57, i32 %58, i32 0)
  store i64 0, i64* %14, align 8
  br label %60

60:                                               ; preds = %170, %43
  %61 = load i64, i64* %14, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp slt i64 %61, %63
  br i1 %64, label %65, label %173

65:                                               ; preds = %60
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 1
  %67 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %66, align 8
  %68 = load i64, i64* %14, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %67, i64 %68
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %69, align 8
  store %struct.TYPE_7__* %70, %struct.TYPE_7__** %16, align 8
  %71 = load i32, i32* @MAX_SIZE, align 4
  %72 = zext i32 %71 to i64
  %73 = call i8* @llvm.stacksave()
  store i8* %73, i8** %17, align 8
  %74 = alloca i32, i64 %72, align 16
  store i64 %72, i64* %18, align 8
  %75 = load i32, i32* @MAX_SIZE, align 4
  %76 = zext i32 %75 to i64
  %77 = alloca i32, i64 %76, align 16
  store i64 %76, i64* %19, align 8
  %78 = load i32, i32* @MAX_SIZE, align 4
  %79 = zext i32 %78 to i64
  %80 = alloca i32, i64 %79, align 16
  store i64 %79, i64* %20, align 8
  %81 = load i32, i32* @MAX_SIZE, align 4
  %82 = zext i32 %81 to i64
  %83 = alloca i8, i64 %82, align 16
  store i64 %82, i64* %22, align 8
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 7
  %86 = load i32, i32* %85, align 8
  %87 = call i64 @StrToIP6(i32* %21, i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %101

89:                                               ; preds = %65
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 7
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @StartWith(i32 %92, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %101

95:                                               ; preds = %89
  %96 = trunc i64 %82 to i32
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 7
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @Format(i8* %83, i32 %96, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i32 %99)
  br label %107

101:                                              ; preds = %89, %65
  %102 = trunc i64 %82 to i32
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 7
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @StrCpy(i8* %83, i32 %102, i32 %105)
  br label %107

107:                                              ; preds = %101, %95
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = icmp eq i64 %110, 0
  br i1 %111, label %112, label %121

112:                                              ; preds = %107
  %113 = mul nuw i64 4, %76
  %114 = trunc i64 %113 to i32
  %115 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 6
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @GetProtocolName(i32 %117)
  %119 = sext i32 %118 to i64
  %120 = call i32 (i32*, i32, i8*, i8*, i64, ...) @UniFormat(i32* %77, i32 %114, i8* bitcast ([8 x i32]* @.str.7 to i8*), i8* %83, i64 %119)
  br label %132

121:                                              ; preds = %107
  %122 = mul nuw i64 4, %76
  %123 = trunc i64 %122 to i32
  %124 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i32 0, i32 6
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @GetProtocolName(i32 %129)
  %131 = call i32 (i32*, i32, i8*, i8*, i64, ...) @UniFormat(i32* %77, i32 %123, i8* bitcast ([11 x i32]* @.str.8 to i8*), i8* %83, i64 %126, i32 %130)
  br label %132

132:                                              ; preds = %121, %112
  %133 = mul nuw i64 4, %79
  %134 = trunc i64 %133 to i32
  %135 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i32 0, i32 5
  %137 = load i32, i32* %136, align 8
  %138 = call i32 @StrToUni(i32* %80, i32 %134, i32 %137)
  %139 = mul nuw i64 4, %72
  %140 = trunc i64 %139 to i32
  %141 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %141, i32 0, i32 4
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @StrToUni(i32* %74, i32 %140, i32 %143)
  %145 = load i32*, i32** %15, align 8
  %146 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %147 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %146, i32 0, i32 3
  %148 = load i32, i32* %147, align 8
  %149 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %150 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 8
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %153, label %155

153:                                              ; preds = %132
  %154 = call i32 @_UU(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0))
  br label %166

155:                                              ; preds = %132
  %156 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %157 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %156, i32 0, i32 2
  %158 = load i64, i64* %157, align 8
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %162

160:                                              ; preds = %155
  %161 = call i32 @_UU(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i64 0, i64 0))
  br label %164

162:                                              ; preds = %155
  %163 = call i32 @_UU(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i64 0, i64 0))
  br label %164

164:                                              ; preds = %162, %160
  %165 = phi i32 [ %161, %160 ], [ %163, %162 ]
  br label %166

166:                                              ; preds = %164, %153
  %167 = phi i32 [ %154, %153 ], [ %165, %164 ]
  %168 = call i32 @CtInsert(i32* %145, i32 %148, i32 %167, i32* %77, i32* %80, i32* %74)
  %169 = load i8*, i8** %17, align 8
  call void @llvm.stackrestore(i8* %169)
  br label %170

170:                                              ; preds = %166
  %171 = load i64, i64* %14, align 8
  %172 = add nsw i64 %171, 1
  store i64 %172, i64* %14, align 8
  br label %60

173:                                              ; preds = %60
  %174 = load i32*, i32** %15, align 8
  %175 = load i32*, i32** %6, align 8
  %176 = call i32 @CtFreeEx(i32* %174, i32* %175, i32 1)
  br label %177

177:                                              ; preds = %173, %34
  %178 = call i32 @CiFreeClientEnumAccount(%struct.TYPE_8__* %13)
  %179 = load i64, i64* %12, align 8
  %180 = load i64, i64* @ERR_NO_ERROR, align 8
  %181 = icmp ne i64 %179, %180
  br i1 %181, label %182, label %186

182:                                              ; preds = %177
  %183 = load i32*, i32** %6, align 8
  %184 = load i64, i64* %12, align 8
  %185 = call i32 @CmdPrintError(i32* %183, i64 %184)
  br label %186

186:                                              ; preds = %182, %177
  %187 = load i32*, i32** %10, align 8
  %188 = call i32 @FreeParamValueList(i32* %187)
  %189 = load i64, i64* %12, align 8
  store i64 %189, i64* %5, align 8
  br label %190

190:                                              ; preds = %186, %32
  %191 = load i64, i64* %5, align 8
  ret i64 %191
}

declare dso_local i32* @ParseCommandList(i32*, i8*, i32*, i32*, i32) #1

declare dso_local i32 @Zero(%struct.TYPE_8__*, i32) #1

declare dso_local i64 @CcEnumAccount(i32, %struct.TYPE_8__*) #1

declare dso_local i32* @CtNew(...) #1

declare dso_local i32 @CtInsertColumn(i32*, i32, i32) #1

declare dso_local i32 @_UU(i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i64 @StrToIP6(i32*, i32) #1

declare dso_local i32 @StartWith(i32, i8*) #1

declare dso_local i32 @Format(i8*, i32, i8*, i32) #1

declare dso_local i32 @StrCpy(i8*, i32, i32) #1

declare dso_local i32 @UniFormat(i32*, i32, i8*, i8*, i64, ...) #1

declare dso_local i32 @GetProtocolName(i32) #1

declare dso_local i32 @StrToUni(i32*, i32, i32) #1

declare dso_local i32 @CtInsert(i32*, i32, i32, i32*, i32*, i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @CtFreeEx(i32*, i32*, i32) #1

declare dso_local i32 @CiFreeClientEnumAccount(%struct.TYPE_8__*) #1

declare dso_local i32 @CmdPrintError(i32*, i64) #1

declare dso_local i32 @FreeParamValueList(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
