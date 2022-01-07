; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PsClusterConnectionStatusGet.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PsClusterConnectionStatusGet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@MAX_SIZE = common dso_local global i32 0, align 4
@ERR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@ERR_NO_ERROR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [9 x i8] c"SM_FC_IP\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"SM_FC_NOT_CONNECTED\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"SM_FC_PORT\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"SM_FC_STATUS\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"SM_FC_ONLINE\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"SM_FC_OFFLINE\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"SM_FC_ERROR_TAG\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"SM_FC_LAST_ERROR\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"SM_FC_START_TIME\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"SM_FC_FIRST_TIME\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"SM_FC_CURRENT_TIME\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"SM_FC_NUM_TRY\00", align 1
@.str.12 = private unnamed_addr constant [20 x i8] c"SM_FC_NUM_CONNECTED\00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c"SM_FC_NUM_FAILED\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @PsClusterConnectionStatusGet(i32* %0, i8* %1, i32* %2, i8* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_6__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_5__, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  %20 = load i8*, i8** %9, align 8
  %21 = bitcast i8* %20 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %21, %struct.TYPE_6__** %11, align 8
  store i64 0, i64* %12, align 8
  %22 = load i32, i32* @MAX_SIZE, align 4
  %23 = zext i32 %22 to i64
  %24 = call i8* @llvm.stacksave()
  store i8* %24, i8** %14, align 8
  %25 = alloca i32, i64 %23, align 16
  store i64 %23, i64* %15, align 8
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
  store i32 1, i32* %16, align 4
  br label %167

34:                                               ; preds = %4
  %35 = call i32 @Zero(%struct.TYPE_5__* %13, i32 40)
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @ScGetFarmConnectionStatus(i32 %38, %struct.TYPE_5__* %13)
  store i64 %39, i64* %12, align 8
  %40 = load i64, i64* %12, align 8
  %41 = load i64, i64* @ERR_NO_ERROR, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %50

43:                                               ; preds = %34
  %44 = load i32*, i32** %6, align 8
  %45 = load i64, i64* %12, align 8
  %46 = call i32 @CmdPrintError(i32* %44, i64 %45)
  %47 = load i32*, i32** %10, align 8
  %48 = call i32 @FreeParamValueList(i32* %47)
  %49 = load i64, i64* %12, align 8
  store i64 %49, i64* %5, align 8
  store i32 1, i32* %16, align 4
  br label %167

50:                                               ; preds = %34
  %51 = call i32* (...) @CtNewStandard()
  store i32* %51, i32** %17, align 8
  %52 = load i32, i32* @MAX_SIZE, align 4
  %53 = zext i32 %52 to i64
  %54 = call i8* @llvm.stacksave()
  store i8* %54, i8** %18, align 8
  %55 = alloca i8, i64 %53, align 16
  store i64 %53, i64* %19, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %68

59:                                               ; preds = %50
  %60 = load i32*, i32** %17, align 8
  %61 = call i32* @_UU(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %62 = call i32* @_UU(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %63 = call i32 @CtInsert(i32* %60, i32* %61, i32* %62)
  %64 = load i32*, i32** %17, align 8
  %65 = call i32* @_UU(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %66 = call i32* @_UU(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %67 = call i32 @CtInsert(i32* %64, i32* %65, i32* %66)
  br label %85

68:                                               ; preds = %50
  %69 = trunc i64 %53 to i32
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 9
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @IPToStr32(i8* %55, i32 %69, i32 %71)
  %73 = mul nuw i64 4, %23
  %74 = trunc i64 %73 to i32
  %75 = call i32 @StrToUni(i32* %25, i32 %74, i8* %55)
  %76 = load i32*, i32** %17, align 8
  %77 = call i32* @_UU(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %78 = call i32 @CtInsert(i32* %76, i32* %77, i32* %25)
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 8
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @UniToStru(i32* %25, i32 %80)
  %82 = load i32*, i32** %17, align 8
  %83 = call i32* @_UU(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %84 = call i32 @CtInsert(i32* %82, i32* %83, i32* %25)
  br label %85

85:                                               ; preds = %68, %59
  %86 = load i32*, i32** %17, align 8
  %87 = call i32* @_UU(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %85
  %92 = call i32* @_UU(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  br label %95

93:                                               ; preds = %85
  %94 = call i32* @_UU(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  br label %95

95:                                               ; preds = %93, %91
  %96 = phi i32* [ %92, %91 ], [ %94, %93 ]
  %97 = call i32 @CtInsert(i32* %86, i32* %87, i32* %96)
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %114

101:                                              ; preds = %95
  %102 = mul nuw i64 4, %23
  %103 = trunc i64 %102 to i32
  %104 = call i32* @_UU(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0))
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 7
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @_E(i32 %106)
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 7
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @UniFormat(i32* %25, i32 %103, i32* %104, i32 %107, i32 %109)
  %111 = load i32*, i32** %17, align 8
  %112 = call i32* @_UU(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0))
  %113 = call i32 @CtInsert(i32* %111, i32* %112, i32* %25)
  br label %114

114:                                              ; preds = %101, %95
  %115 = mul nuw i64 4, %23
  %116 = trunc i64 %115 to i32
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 6
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @SystemToLocal64(i32 %118)
  %120 = call i32 @GetDateTimeStrEx64(i32* %25, i32 %116, i32 %119, i32* null)
  %121 = load i32*, i32** %17, align 8
  %122 = call i32* @_UU(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0))
  %123 = call i32 @CtInsert(i32* %121, i32* %122, i32* %25)
  %124 = mul nuw i64 4, %23
  %125 = trunc i64 %124 to i32
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 5
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @SystemToLocal64(i32 %127)
  %129 = call i32 @GetDateTimeStrEx64(i32* %25, i32 %125, i32 %128, i32* null)
  %130 = load i32*, i32** %17, align 8
  %131 = call i32* @_UU(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0))
  %132 = call i32 @CtInsert(i32* %130, i32* %131, i32* %25)
  %133 = mul nuw i64 4, %23
  %134 = trunc i64 %133 to i32
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 4
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @SystemToLocal64(i32 %136)
  %138 = call i32 @GetDateTimeStrEx64(i32* %25, i32 %134, i32 %137, i32* null)
  %139 = load i32*, i32** %17, align 8
  %140 = call i32* @_UU(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i64 0, i64 0))
  %141 = call i32 @CtInsert(i32* %139, i32* %140, i32* %25)
  %142 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 3
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @UniToStru(i32* %25, i32 %143)
  %145 = load i32*, i32** %17, align 8
  %146 = call i32* @_UU(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0))
  %147 = call i32 @CtInsert(i32* %145, i32* %146, i32* %25)
  %148 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 2
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @UniToStru(i32* %25, i32 %149)
  %151 = load i32*, i32** %17, align 8
  %152 = call i32* @_UU(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i64 0, i64 0))
  %153 = call i32 @CtInsert(i32* %151, i32* %152, i32* %25)
  %154 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = call i32 @UniToStru(i32* %25, i32 %155)
  %157 = load i32*, i32** %17, align 8
  %158 = call i32* @_UU(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i64 0, i64 0))
  %159 = call i32 @CtInsert(i32* %157, i32* %158, i32* %25)
  %160 = load i32*, i32** %17, align 8
  %161 = load i32*, i32** %6, align 8
  %162 = call i32 @CtFree(i32* %160, i32* %161)
  %163 = load i8*, i8** %18, align 8
  call void @llvm.stackrestore(i8* %163)
  br label %164

164:                                              ; preds = %114
  %165 = load i32*, i32** %10, align 8
  %166 = call i32 @FreeParamValueList(i32* %165)
  store i64 0, i64* %5, align 8
  store i32 1, i32* %16, align 4
  br label %167

167:                                              ; preds = %164, %43, %32
  %168 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %168)
  %169 = load i64, i64* %5, align 8
  ret i64 %169
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @ParseCommandList(i32*, i8*, i32*, i32*, i32) #2

declare dso_local i32 @Zero(%struct.TYPE_5__*, i32) #2

declare dso_local i64 @ScGetFarmConnectionStatus(i32, %struct.TYPE_5__*) #2

declare dso_local i32 @CmdPrintError(i32*, i64) #2

declare dso_local i32 @FreeParamValueList(i32*) #2

declare dso_local i32* @CtNewStandard(...) #2

declare dso_local i32 @CtInsert(i32*, i32*, i32*) #2

declare dso_local i32* @_UU(i8*) #2

declare dso_local i32 @IPToStr32(i8*, i32, i32) #2

declare dso_local i32 @StrToUni(i32*, i32, i8*) #2

declare dso_local i32 @UniToStru(i32*, i32) #2

declare dso_local i32 @UniFormat(i32*, i32, i32*, i32, i32) #2

declare dso_local i32 @_E(i32) #2

declare dso_local i32 @GetDateTimeStrEx64(i32*, i32, i32, i32*) #2

declare dso_local i32 @SystemToLocal64(i32) #2

declare dso_local i32 @CtFree(i32*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
