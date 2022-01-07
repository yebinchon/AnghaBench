; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PsCaps.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PsCaps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i64, i64 }

@ERR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@MAX_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"CT_%s\00", align 1
@.str.1 = private unnamed_addr constant [3 x i32] [i32 37, i32 83, i32 0], align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"b_\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"b_must_install_pcap\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"CAPS_NO\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"CAPS_YES\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @PsCaps(i32* %0, i8* %1, i32* %2, i8* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_7__*, align 8
  %12 = alloca %struct.TYPE_8__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.TYPE_9__*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca [256 x i8], align 16
  %19 = alloca i32, align 4
  %20 = alloca [64 x i32], align 16
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  %21 = load i8*, i8** %9, align 8
  %22 = bitcast i8* %21 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %22, %struct.TYPE_7__** %11, align 8
  %23 = load i32*, i32** %6, align 8
  %24 = load i8*, i8** %7, align 8
  %25 = load i32*, i32** %8, align 8
  %26 = call i32* @ParseCommandList(i32* %23, i8* %24, i32* %25, i32* null, i32 0)
  store i32* %26, i32** %10, align 8
  %27 = load i32*, i32** %10, align 8
  %28 = icmp eq i32* %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %4
  %30 = load i64, i64* @ERR_INVALID_PARAMETER, align 8
  store i64 %30, i64* %5, align 8
  br label %144

31:                                               ; preds = %4
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call %struct.TYPE_8__* @ScGetCapsEx(i32 %34)
  store %struct.TYPE_8__* %35, %struct.TYPE_8__** %12, align 8
  %36 = call i32* (...) @CtNewStandard()
  store i32* %36, i32** %14, align 8
  store i64 0, i64* %13, align 8
  br label %37

37:                                               ; preds = %133, %31
  %38 = load i64, i64* %13, align 8
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @LIST_NUM(i32 %41)
  %43 = icmp slt i64 %38, %42
  br i1 %43, label %44, label %136

44:                                               ; preds = %37
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i64, i64* %13, align 8
  %49 = call %struct.TYPE_9__* @LIST_DATA(i32 %47, i64 %48)
  store %struct.TYPE_9__* %49, %struct.TYPE_9__** %15, align 8
  %50 = load i32, i32* @MAX_SIZE, align 4
  %51 = zext i32 %50 to i64
  %52 = call i8* @llvm.stacksave()
  store i8* %52, i8** %16, align 8
  %53 = alloca i32, i64 %51, align 16
  store i64 %51, i64* %17, align 8
  %54 = getelementptr inbounds [256 x i8], [256 x i8]* %18, i64 0, i64 0
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = call i32 @Format(i8* %54, i32 256, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i64 %57)
  %59 = mul nuw i64 4, %51
  %60 = trunc i64 %59 to i32
  %61 = getelementptr inbounds [256 x i8], [256 x i8]* %18, i64 0, i64 0
  %62 = call i32* @_UU(i8* %61)
  %63 = call i32 @UniStrCpy(i32* %53, i32 %60, i32* %62)
  %64 = call i64 @UniIsEmptyStr(i32* %53)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %86

66:                                               ; preds = %44
  %67 = mul nuw i64 4, %51
  %68 = trunc i64 %67 to i32
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = call i32 @StrLen(i64 %71)
  %73 = icmp sge i32 %72, 2
  br i1 %73, label %74, label %79

74:                                               ; preds = %66
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = add nsw i64 %77, 2
  br label %83

79:                                               ; preds = %66
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  br label %83

83:                                               ; preds = %79, %74
  %84 = phi i64 [ %78, %74 ], [ %82, %79 ]
  %85 = call i32 @UniFormat(i32* %53, i32 %68, i8* bitcast ([3 x i32]* @.str.1 to i8*), i64 %84)
  br label %86

86:                                               ; preds = %83, %44
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = call i64 @StartWith(i64 %89, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %122

92:                                               ; preds = %86
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = icmp eq i64 %95, 0
  %97 = zext i1 %96 to i64
  %98 = select i1 %96, i32 0, i32 1
  store i32 %98, i32* %19, align 4
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = call i64 @StrCmpi(i64 %101, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %103 = icmp eq i64 %102, 0
  br i1 %103, label %104, label %109

104:                                              ; preds = %92
  %105 = load i32, i32* %19, align 4
  %106 = icmp ne i32 %105, 0
  %107 = xor i1 %106, true
  %108 = zext i1 %107 to i32
  store i32 %108, i32* %19, align 4
  br label %109

109:                                              ; preds = %104, %92
  %110 = load i32*, i32** %14, align 8
  %111 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = icmp eq i64 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %109
  %116 = call i32* @_UU(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  br label %119

117:                                              ; preds = %109
  %118 = call i32* @_UU(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  br label %119

119:                                              ; preds = %117, %115
  %120 = phi i32* [ %116, %115 ], [ %118, %117 ]
  %121 = call i32 @CtInsert(i32* %110, i32* %53, i32* %120)
  br label %131

122:                                              ; preds = %86
  %123 = getelementptr inbounds [64 x i32], [64 x i32]* %20, i64 0, i64 0
  %124 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = call i32 @UniToStru(i32* %123, i64 %126)
  %128 = load i32*, i32** %14, align 8
  %129 = getelementptr inbounds [64 x i32], [64 x i32]* %20, i64 0, i64 0
  %130 = call i32 @CtInsert(i32* %128, i32* %53, i32* %129)
  br label %131

131:                                              ; preds = %122, %119
  %132 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %132)
  br label %133

133:                                              ; preds = %131
  %134 = load i64, i64* %13, align 8
  %135 = add nsw i64 %134, 1
  store i64 %135, i64* %13, align 8
  br label %37

136:                                              ; preds = %37
  %137 = load i32*, i32** %14, align 8
  %138 = load i32*, i32** %6, align 8
  %139 = call i32 @CtFree(i32* %137, i32* %138)
  %140 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %141 = call i32 @FreeCapsList(%struct.TYPE_8__* %140)
  %142 = load i32*, i32** %10, align 8
  %143 = call i32 @FreeParamValueList(i32* %142)
  store i64 0, i64* %5, align 8
  br label %144

144:                                              ; preds = %136, %29
  %145 = load i64, i64* %5, align 8
  ret i64 %145
}

declare dso_local i32* @ParseCommandList(i32*, i8*, i32*, i32*, i32) #1

declare dso_local %struct.TYPE_8__* @ScGetCapsEx(i32) #1

declare dso_local i32* @CtNewStandard(...) #1

declare dso_local i64 @LIST_NUM(i32) #1

declare dso_local %struct.TYPE_9__* @LIST_DATA(i32, i64) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @Format(i8*, i32, i8*, i64) #1

declare dso_local i32 @UniStrCpy(i32*, i32, i32*) #1

declare dso_local i32* @_UU(i8*) #1

declare dso_local i64 @UniIsEmptyStr(i32*) #1

declare dso_local i32 @UniFormat(i32*, i32, i8*, i64) #1

declare dso_local i32 @StrLen(i64) #1

declare dso_local i64 @StartWith(i64, i8*) #1

declare dso_local i64 @StrCmpi(i64, i8*) #1

declare dso_local i32 @CtInsert(i32*, i32*, i32*) #1

declare dso_local i32 @UniToStru(i32*, i64) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @CtFree(i32*, i32*) #1

declare dso_local i32 @FreeCapsList(%struct.TYPE_8__*) #1

declare dso_local i32 @FreeParamValueList(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
